package net.lt.eaze.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.lt.eaze.dao.EnterpriseDAO;
import net.lt.eaze.model.dbModel;

@RequestMapping(value = "/admin")
@Controller
public class adminController {
	@Autowired
	private EnterpriseDAO enterpriseDAO;
	public boolean isUserLoggedIn() {
		return (SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof UserDetails);
	}
	@RequestMapping(value = "/existing_xml")
	public ModelAndView existing_XML(ModelAndView model) {
		model.setViewName("existing_xml");
		return model;
	}
	
	@RequestMapping(value = "/createRepository")
	public ModelAndView metaModel2(ModelAndView model) {
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);
		model.setViewName("metamodel2");
		return model;
	}
	
	@RequestMapping(value = "/registerArchitect")
	public ModelAndView registerArchitect(ModelAndView model) {
		List<dbModel> dbList = enterpriseDAO.listDb();
		model.addObject("dbList", dbList);
		model.setViewName("architectRegistration");
		return model;
	}
	
	@RequestMapping(value = "/architect_register")
	public String user_register(String username, String email, String company_name, String metamodel_name,String user_type, String phone_no, String company_address, String password, String confirm_password) {
		System.out.println("admin cn");
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode(password);
		int ab = enterpriseDAO.userRegister(username,email,company_name,metamodel_name,phone_no,company_address,hashedPassword);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/getMetaModel")
	public @ResponseBody List<dbModel> getMetaModel() {
		List<dbModel> dbList = enterpriseDAO.listDb();
		System.out.println("dbList"+dbList);
		return dbList;
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
	@RequestMapping(value = "/getSpecificRoleDetails")
	public @ResponseBody String getSpecificRoleDetails(String roleType) {
		
		return "Available";
	}
	@RequestMapping(value = "/check_email_when_registration")
	public @ResponseBody String check_email_when_registration(String email) {
		System.out.println(email);
		List<String> ab = enterpriseDAO.check_email_when_registration(email);
		System.out.println(ab);
		if(ab.size()!=0) {
			return "Not Available";
		}else {
			return "Available";
		}
	}
	@RequestMapping(value = "/getCompanyNameForArchitectRegistration")
	public @ResponseBody String getCompanyNameForArchitectRegistration() {
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
		}
		
		List<String> company_name = enterpriseDAO.getCompanyName(username);
		System.out.println("dbList"+company_name);
		return company_name.get(0);
	}
}
