package net.lt.eaze.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import net.lt.eaze.dao.EnterpriseDAO;
import net.lt.eaze.model_metamodel2.Relationships;
import net.lt.eaze.userManagement.roleDetails;

@RequestMapping(value = "/EAXEE_Admin")
@Controller
public class superAdminController {
	@Autowired
	private EnterpriseDAO enterpriseDAO;
	
	String username = "";
	Collection<? extends GrantedAuthority> role;
	@RequestMapping(value = "/existing_xml")
	public ModelAndView existing_XML(ModelAndView model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			
//			System.out.println(userDetail);
			username = userDetail.getUsername();
			role = userDetail.getAuthorities();
		}
		System.out.println(role);
		model.setViewName("existing_xml");
		return model;
	}
	
	@RequestMapping(value = "/role_details")
	public ModelAndView role_details(ModelAndView model) {
		model.setViewName("role_details");
		return model;
	}
	
	@RequestMapping(value = "/getSpecificRoleDetails", method = RequestMethod.POST)
	public @ResponseBody roleDetails getUserRoles(String role_type,HttpSession session){
		String username1 = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			
//			System.out.println(userDetail);
			username1 = userDetail.getUsername();
			role = userDetail.getAuthorities();
		}
		String company_name = enterpriseDAO.getCompanyName(username1).get(0);
		roleDetails role_details = enterpriseDAO.getSpecificRoleDetails(role_type,company_name).get(0);
		System.out.println(role_details);
		return role_details;
	}
	
	@RequestMapping(value = "/updateRoleDetails", method = RequestMethod.POST)
	public @ResponseBody String updateRoleDetails(@RequestBody Map<String, String> roleDict){
		int update_role_details = enterpriseDAO.updateRoleDetails(roleDict);
		return "";
	}
	
	@RequestMapping(value = "/registration")
	public ModelAndView registration(ModelAndView model) {
		model.setViewName("registration");
		return model;
	}
	
}