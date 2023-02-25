package net.lt.eaze.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.lt.eaze.dao.EnterpriseDAO;
import net.lt.eaze.dao.namedLicenseValidation;
import net.lt.eaze.model.userManagement;
import net.lt.eaze.repositoryManagement.namedLicenses;
import net.lt.eaze.repositoryManagement.pools;
import net.lt.eaze.userManagement.roleDetails;

@Controller
public class administrationController {
	@Autowired
	private EnterpriseDAO enterpriseDAO;
	public boolean isUserLoggedIn() {
		return (SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof UserDetails);
	}
	
	@RequestMapping(value = "/administration", method = RequestMethod.GET)
	public ModelAndView administration(ModelAndView model, HttpSession session) {
		if (!isUserLoggedIn()) {
			model.setViewName("login");
			return model;
		}
		
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			username = userDetail.getUsername();
		}
		List<net.lt.eaze.model.userprofile> getuserprofiledetails = enterpriseDAO.getuserprofiledetails(username);
		model.addObject("userProfileDetials", getuserprofiledetails.get(0));
		model.setViewName("administration");
		
		/// License Check on module click START
		methods methodObj = new methods();
		boolean isNamedAllowed = false;
		List<namedLicenseValidation> namedLicenseDetails = enterpriseDAO.getNamedLicenseDetails(username);
		if(namedLicenseDetails.size()>0) {
			if( methodObj.isLicenseNotExpired(namedLicenseDetails.get(0))==true ) {
				String company_name = (String) session.getAttribute("company_name");
				roleDetails role_details = enterpriseDAO.getRoleDetails(namedLicenseDetails.get(0).getUser_role(),username,company_name).get(0);
				if(role_details.isAdmin() == true) {
					isNamedAllowed = true;
					session.setAttribute("role_details", role_details);
				}
			}
		} 
		if(isNamedAllowed == true) {
			return model;
		}else {
			boolean isConcurrentAllowed = false;
			String company_name = (String) session.getAttribute("company_name");
			List<pools> pools = enterpriseDAO.getPoolNameAndRolesForLicenseCheck(company_name);
			String user_id = enterpriseDAO.getUserId(username).get(0);
			for(pools p:pools) {
				String poolName = p.getPool_name();
				String poolRole = p.getRole_type();
				String poolUsersTableName = "pool_"+poolName+"_users";
				String poolLicenseTableName = "pool_"+poolName+"_license";
				String poolActiveUsers = "pool_"+poolName+"_active_users";
				roleDetails role_details = enterpriseDAO.getRoleDetails(poolRole,username,company_name).get(0);
				if(role_details.isAdmin() == true) {
					List<String> poolUsers = enterpriseDAO.checkIfUserExistInPool(poolUsersTableName,user_id);
					if(poolUsers.size()>0) {
						List<namedLicenseValidation> concurrentLicenseDetails = enterpriseDAO.getConcurrentLicenseDetails(poolActiveUsers,poolLicenseTableName);
						List<String> user_check = enterpriseDAO.checkIfUserAlreadyExistsInActiveUsersTable(poolActiveUsers,user_id);
						if(user_check.size()>0) {
							isConcurrentAllowed = true;
							break;
						}
						if(concurrentLicenseDetails.size()==0) {
							continue;
						}
						if( methodObj.isLicenseNotExpired(concurrentLicenseDetails.get(0))==true ) {
							System.out.println(poolActiveUsers+ concurrentLicenseDetails.get(0).getId()+ user_id);
							enterpriseDAO.insertValuesInActivePoolUsers(poolActiveUsers, concurrentLicenseDetails.get(0).getId(), user_id);
							isConcurrentAllowed = true;
							session.setAttribute("role_details", role_details);
							break;
						}
					}
				}
			}
			if(isConcurrentAllowed == true) {
				return model;
			}else {
				model.setViewName("redirect:/home");
				return model;
			}
		}
		/// License Check on module click END
	}
	
	@RequestMapping(value = "/poolManager", method = RequestMethod.GET)
	public ModelAndView poolManager(ModelAndView model) {
		if (!isUserLoggedIn()) {
			model.setViewName("login");
			return model;
		}
		model.setViewName("poolManager");
		return model;
	}
	
	@RequestMapping(value = "/getPools", method = RequestMethod.GET)
	public @ResponseBody List<pools> getPools(HttpSession session){
		String company_name = (String) session.getAttribute("company_name");
		List<pools> pools = enterpriseDAO.getPoolNameAndRoles(company_name);
		System.out.println(pools);
		return pools;
	}
		
	@RequestMapping(value = "/deletePool", method = RequestMethod.GET)
	public @ResponseBody int deletePool(String poolName){
		if (!isUserLoggedIn()) {
			return 0;
		}
		int pools = enterpriseDAO.deletePool(poolName);
		System.out.println(pools);
		return 1;
	}
	
	@RequestMapping(value = "/getPoolLicenseAndUsers", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, ArrayList<String>> getPoolLicenseAndUsers(String poolName,HttpSession session){
		String poolLicenseTableName = "pool_"+poolName+"_license";
		String poolUsersTableName = "pool_"+poolName+"_users";
		
		List<String> poolLicense = enterpriseDAO.getPoolLicense(poolLicenseTableName);
		
		List<String> poolUsers = enterpriseDAO.getPoolUsers(poolUsersTableName);
		
		List<String> poolRoleType = enterpriseDAO.getPoolUserType(poolName);
		
		List<String> pools = enterpriseDAO.getPoolsFromRole(poolRoleType.get(0));
		
		List<String> allPoolLicenses = new ArrayList<String>();
		for(String pool:pools) {
			pool = "pool_"+pool+"_license";
			allPoolLicenses.addAll(enterpriseDAO.getPoolLicense(pool));
		}
		
		List<String> allConcurrentLicenses = enterpriseDAO.getConcurrentLicensesFromRole(poolRoleType.get(0));
		System.out.println("allPoolLicenses: "+allPoolLicenses);
		System.out.println("allConcurrentLicenses: "+allConcurrentLicenses);
		allConcurrentLicenses.removeAll(allPoolLicenses);
		String company_name = (String) session.getAttribute("company_name");
		System.out.println("company_name: "+company_name);
		List<String> allUserLicenses = enterpriseDAO.getUsersFromCompanyName(company_name);
		allUserLicenses.removeAll(poolUsers);
		
		
		HashMap<String, ArrayList<String>> allData = new HashMap<String, ArrayList<String>>();
		allData.put("poolLicense",(ArrayList<String>) poolLicense);
		allData.put("poolUsers",(ArrayList<String>) poolUsers);
		allData.put("poolRoleType",(ArrayList<String>) poolRoleType);
		allData.put("availableLicense",(ArrayList<String>) allConcurrentLicenses);
		allData.put("availableUsers",(ArrayList<String>) allUserLicenses);
		
		return allData;
	}
	
	@RequestMapping(value = "/check_poolname_when_registration")
	public @ResponseBody String check_poolname_when_registration(String poolName) {
		poolName = "pool_"+poolName+"_license";
		List<String> ab = enterpriseDAO.check_poolname_when_registration(poolName);
		if(ab.size()!=0) {
			return "Not Available";
		}else {
			return "Available";
		}
	}
	
	@RequestMapping(value = "/create_pool")
	public @ResponseBody HashMap<String, ArrayList<String>> create_pool(String poolName,String poolType,HttpSession session) {
		if (!isUserLoggedIn()) {
			return null;
		}
//		poolName = "pool_"+poolName+"_license";
		poolName = poolName.replaceAll("\\s+", "_");
		String poolActiveUsers = "pool_"+poolName+"_active_users";
		String poolLicense = "pool_"+poolName+"_license";
		String poolUsers = "pool_"+poolName+"_users";
		
		System.out.println("poolType: "+poolType);
		
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		String company_name = (String) session.getAttribute("company_name");
		int ab = enterpriseDAO.createPoolTables(poolActiveUsers, poolLicense, poolUsers,poolName,poolType,username,company_name);
		
		List<String> pools = enterpriseDAO.getPoolsFromRole(poolType);
		List<String> allPoolLicenses = new ArrayList<String>();
		for(String pool:pools) {
			pool = "pool_"+pool+"_license";
			allPoolLicenses.addAll(enterpriseDAO.getPoolLicense(pool));
		}
		List<String> allConcurrentLicenses = enterpriseDAO.getConcurrentLicensesFromRole(poolType);
		System.out.println("allPoolLicenses: "+allPoolLicenses);
		System.out.println("allConcurrentLicenses: "+allConcurrentLicenses);
		allConcurrentLicenses.removeAll(allPoolLicenses);
		System.out.println("company_name: "+company_name);
		List<String> allUserLicenses = enterpriseDAO.getUsersFromCompanyName(company_name);
		HashMap<String, ArrayList<String>> allData = new HashMap<String, ArrayList<String>>();
		allData.put("availableLicense",(ArrayList<String>) allConcurrentLicenses);
		allData.put("availableUsers",(ArrayList<String>) allUserLicenses);
		return allData;
	}
	
	@RequestMapping(value = "/updatePoolDetails", method = RequestMethod.POST)
	public @ResponseBody int updatePoolDetails(@RequestParam(value = "poolLicenses[]") List<String> poolLicenses,@RequestParam(value = "poolUsers[]") List<String> poolUsers,String poolNameGlobal){
		String poolLicenseTable = "pool_"+poolNameGlobal+"_license";
		String poolUsersTable = "pool_"+poolNameGlobal+"_users";
		
		int ab = enterpriseDAO.updatePoolDetails(poolLicenseTable,poolUsersTable,poolLicenses,poolUsers);
		return 0;
	}
	
	@RequestMapping(value = "/getAllocatedNamedLicenses", method = RequestMethod.GET)
	public @ResponseBody List<namedLicenses> getAllocatedLicenses(HttpSession session){
		String company_name = (String) session.getAttribute("company_name");
		List<namedLicenses> allocatedLicenses = enterpriseDAO.getAllocatedLicenses(company_name);
		return allocatedLicenses;
	}
	
	@RequestMapping(value = "/deAllocateNamedLicense", method = RequestMethod.GET)
	public @ResponseBody List<namedLicenses> deAllocateLicenses(String row_id,String username){
		String loggedInUser = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			loggedInUser = userDetail.getUsername();
		}
		if( loggedInUser.equals(username) ) {
			
		}
		
		enterpriseDAO.deAllocateNamedLicense(row_id);
		System.out.println(row_id);
		return null;
	}
	
	@RequestMapping(value = "/getAvailableNamedLicenses", method = RequestMethod.GET)
	public @ResponseBody List<namedLicenses> getAvailableNamedLicenses(HttpSession session){
		String company_name = (String) session.getAttribute("company_name");
		List<namedLicenses> availableNamedLicenses = enterpriseDAO.getAvailableNamedLicenses(company_name);
		return availableNamedLicenses;
	}
	@RequestMapping(value = "/getActiveUsers", method = RequestMethod.GET)
	public @ResponseBody List<String> getActiveUsers(HttpSession session){
		String company_name = (String) session.getAttribute("company_name");
		List<String> activeUsers = enterpriseDAO.getUsersFromCompanyName(company_name);
		return activeUsers;
	}
	
	@RequestMapping(value = "/allocateNamedLicense", method = RequestMethod.POST)
	public @ResponseBody int allocateNamedLicense(String license_key, String username,HttpSession session){
		String company_name = (String) session.getAttribute("company_name");
		enterpriseDAO.allocateNamedLicense(company_name,license_key,username);
		return 0;
	}
	
	@RequestMapping(value = "/getUsers", method = RequestMethod.POST)
	public @ResponseBody List<userManagement> getUsers(HttpSession session){
		String company_name = (String) session.getAttribute("company_name");
		List<userManagement> allUsers = enterpriseDAO.getUsers_adminModule(company_name);
		System.out.println(allUsers);
		return allUsers;
	}
	
	@RequestMapping(value = "/updateUserStatus", method = RequestMethod.GET)
	public @ResponseBody int updateUserStatus(String username, String action,HttpSession session){
		String company_name = (String) session.getAttribute("company_name");
		if(action.equals("deactivate")) {
			enterpriseDAO.updateUserStatus(username,"0");
		}else {
			enterpriseDAO.updateUserStatus(username,"1");
		}
		return 0;
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public @ResponseBody int addUser(String fullName, String username,String email,HttpSession session){
		String company_name = (String) session.getAttribute("company_name");
		String loggedInUser = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			loggedInUser = userDetail.getUsername();
		}
		String metamodel = enterpriseDAO.getUserDetails(loggedInUser).get(0);
		String password = "12345678";
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);
		
		enterpriseDAO.addUser(username,email,company_name,metamodel,"EAXEE",hashedPassword,"1",fullName);
		System.out.println(loggedInUser);
		return 0;
	}
	
	@RequestMapping(value = "/removeUser", method = RequestMethod.GET)
	public @ResponseBody int removeUser(String username,HttpSession session){
		String user_id = enterpriseDAO.getUserId(username).get(0);
		enterpriseDAO.deleteUserFromNamedLicenseTable(user_id);
		String company_name = (String) session.getAttribute("company_name");
		List<pools> pools = enterpriseDAO.getPoolNameAndRoles(company_name);
		for(pools p:pools) {
			String poolName = p.getPool_name();
			String poolUsersTableName = "pool_"+poolName+"_users";
			enterpriseDAO.deleteUserFromConcurrentLicenseTables(user_id,poolUsersTableName);
		}
		enterpriseDAO.deleteUserFromUsersAndUserRoles(username);
		return 0;
	}
	
	@RequestMapping(value = "/updateUserPassword", method = RequestMethod.POST)
	public @ResponseBody int addUser(String username, String passwordValue){
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(passwordValue);
		enterpriseDAO.updateUserPassword(username,hashedPassword);
		return 0;
	}
	
	@RequestMapping(value = "/check_username_when_registration")
	public @ResponseBody String check_username_when_registration(String username) {
		System.out.println(username);
		List<String> ab = enterpriseDAO.check_username_when_registration(username);
		System.out.println(ab);
		if(ab.size()!=0) {
			return "Not Available";
		}else {
			return "Available";
		}
	}
	
	
}