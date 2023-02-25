package net.lt.eaze.controller;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.lt.eaze.dao.EnterpriseDAO;
import net.lt.eaze.userManagement.roleDetails;

@Controller
public class homeController {
	@Autowired
	private EnterpriseDAO enterpriseDAO;
	public boolean isUserLoggedIn() {
		return (SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof UserDetails);
	}
	
	public HashMap<String, Boolean> setModulesMap(HashMap<String,Boolean> getCatalogTableFromXML, roleDetails role_details) {
		
		if(role_details.isEaPortal()==true) {
			getCatalogTableFromXML.put("eaPortal", role_details.isEaPortal());
		}
		if(role_details.isImport_export()==true) {
			getCatalogTableFromXML.put("import_export", role_details.isImport_export());
		}
		if(role_details.isAdmin()==true) {
			getCatalogTableFromXML.put("admin", role_details.isAdmin());
		}
		if(role_details.isUserManagement()==true) {
			getCatalogTableFromXML.put("userManagement", role_details.isUserManagement());
		}
		if(role_details.isUserProfile()==true) {
			getCatalogTableFromXML.put("userProfile", role_details.isUserProfile());
		}
		if(role_details.isOrganizationalPortal()==true) {
			getCatalogTableFromXML.put("organizationalPortal", role_details.isOrganizationalPortal());
		}
		return getCatalogTableFromXML;
	}
	
	@RequestMapping(value = {"home" , "/"}, method = RequestMethod.GET)
	public ModelAndView home(ModelAndView model,HttpSession session) throws JAXBException, FileNotFoundException {
		if (!isUserLoggedIn()) {
			model.setViewName("login");
			return model;
		}
		
		HashMap<String, Boolean> modulesMap = new HashMap<String,Boolean>();
		modulesMap.put("eaPortal", false);
		modulesMap.put("import_export", false);
		modulesMap.put("admin", false);
		modulesMap.put("userManagement", false);
		modulesMap.put("userProfile", false);
		modulesMap.put("organizationalPortal", false);
		
		String username = "";
		String userRole = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities().toArray()[0].toString();
		}
		if(userRole.equals("ROLE_SUPER_ADMIN")) {
			modulesMap.put("eaPortal", true);
			modulesMap.put("import_export", true);
			modulesMap.put("admin", true);
			modulesMap.put("userManagement", true);
			modulesMap.put("userProfile", true);
			modulesMap.put("organizationalPortal", true);
			session.setAttribute("modulesMap", modulesMap);
			model.setViewName("home");
			return model;
		}
		
		
		String company_name = enterpriseDAO.getCompanyName(username).get(0);
		session.setAttribute("company_name", company_name);
		String user_id = enterpriseDAO.getUserId(username).get(0);
		List<String> namedLicenseRole = enterpriseDAO.checkNamedLicenseAndRole(user_id);
		
		if(namedLicenseRole.size()!=0) {
			roleDetails role_details = enterpriseDAO.getRoleDetails(namedLicenseRole.get(0),username,company_name).get(0);
			modulesMap = setModulesMap(modulesMap,role_details);
			System.out.println("Named Licesne");
		}else {
			System.out.println("named License do not exist");
			System.out.println("modulesMap: "+modulesMap);
		}
		List<String> pools = enterpriseDAO.getPoolsFromPoolsTable(company_name);
		List<String> poolsInWhichUserExists = new ArrayList<String>();
		for(String pool:pools) {
			String poolUsersTableName = "pool_"+pool+"_users";
			List<String> poolUsers = enterpriseDAO.checkIfUserExistInPool(poolUsersTableName,user_id);
			if(poolUsers.size()>0) {
				poolsInWhichUserExists.add(pool);
			}
		}
		String poolsInWhichUserExistsStr = "(";
		for(String pool:poolsInWhichUserExists) {
			poolsInWhichUserExistsStr += "'"+pool+"',";
		}
		poolsInWhichUserExistsStr = poolsInWhichUserExistsStr.substring(0, poolsInWhichUserExistsStr.length() - 1);
		poolsInWhichUserExistsStr += ")";
		
		List<String> poolsRoles = new ArrayList<String>();
		if(poolsInWhichUserExists.size()>0)
			poolsRoles = enterpriseDAO.getPoolRolesFromPoolNames(poolsInWhichUserExistsStr);/////
		System.out.println("poolsRoles: "+poolsRoles);
		System.out.println("modulesMap: "+modulesMap);
		for(String poolsRole:poolsRoles) {
			roleDetails role_details = enterpriseDAO.getRoleDetails(poolsRole,username,company_name).get(0);
			modulesMap = setModulesMap(modulesMap,role_details);
			System.out.println("modulesMap inside loop: "+modulesMap);
		}
		List<String> getuserDetails = enterpriseDAO.getUserDetails(username);
		JAXBContext context = JAXBContext.newInstance(net.lt.eaze.model_metamodel2.Schema.class);
		String path = session.getServletContext().getRealPath("/");
		Unmarshaller um = context.createUnmarshaller();
		System.out.println("getuserDetails.get(0), "+getuserDetails.get(0));
		net.lt.eaze.model_metamodel2.Schema unif = new net.lt.eaze.model_metamodel2.Schema();
		try {
			unif = (net.lt.eaze.model_metamodel2.Schema) um
				.unmarshal(new FileReader(path + "/" + ""+getuserDetails.get(0)+".xml"));
		} catch (Exception e) {
			model.setViewName("redirect:/metamodel_user");
			return model;
		}
//		unif = (net.lt.eaze.model_metamodel2.Schema) um
//				.unmarshal(new FileReader(path + "/" + ""+getuserDetails.get(0)+".xml"));
		session.setAttribute("unif", unif);
		System.out.println("unif set");
		System.out.println("unif: "+unif);
		System.out.println("unif elements: "+unif.getElements());
		session.setAttribute("modulesMap", modulesMap);
		model.addObject("modulesMap", modulesMap);
		
		List<net.lt.eaze.model.userprofile> getuserprofiledetails = enterpriseDAO.getuserprofiledetails(username);
//		String userRoleStr = userRole.toArray()[0].toString();
//		if(userRoleStr.equals("ROLE_ADMIN")) {
//			userRoleStr = "Repository Admin";
//		}
//		else if(userRoleStr.equals("ROLE_USER")) {
//			
//			userRoleStr = "Architect";
//		}
		getuserprofiledetails.get(0).setUserRole("ROLE_USER");
		model.addObject("userProfileDetials", getuserprofiledetails.get(0));
		
		String activePoolDetails = enterpriseDAO.getActivePoolDetails(user_id);
        if(activePoolDetails != null) {
        	String[] activePoolDetailsList = activePoolDetails.split(",");
        	enterpriseDAO.removeValuesFromActivePoolUsers(activePoolDetailsList);
        }
        System.out.println("Inside....");
        String dbName;
        dbName = unif.getDbName();
        int creatingBusinessProcessModelTable = enterpriseDAO.createTableForBusinessProcessModel(dbName, username, company_name);
        
		model.setViewName("home");
		return model;
	}
	
	@RequestMapping(value = "/getModulesMap", method = RequestMethod.POST)
	public @ResponseBody Object getModulesMap(HttpSession session){
		Object modulesMap = session.getAttribute("modulesMap");
		System.out.println(modulesMap);
		return modulesMap;
	}
}
