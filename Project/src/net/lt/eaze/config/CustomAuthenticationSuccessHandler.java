
package net.lt.eaze.config;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionInformation;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import net.lt.eaze.dao.EnterpriseDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;


@Configuration
public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
	@Autowired
	private EnterpriseDAO enterpriseDAO;
	
//	private List<SessionInformation> getActiveSessions(SessionRegistry sessionRegistry) {
//		  final List<Object> principals = sessionRegistry.getAllPrincipals();
//		  if (principals != null) {
//		    List<SessionInformation> sessions = new ArrayList<>();
//		    for (Object principal : principals) {
//		      sessions.addAll(sessionRegistry.getAllSessions(principal,     false));
//		    }
//		    return sessions;
//		  }
//		  return Collections.emptyList();
//		}
 	@Autowired
	@Qualifier("sessionRegistry")
	private SessionRegistry sessionRegistry;
 	
    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
    	
    	String username = "";
    	String userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities().toArray()[0].toString();
		}
    	
    	List<String> getUserOnlineStatus = enterpriseDAO.getUserOnlineStatus(username);
    	
    	System.out.println(getUserOnlineStatus);
    	
//    	if(getUserOnlineStatus.get(0).equals("0")) {
    		int userOnlineStatus = enterpriseDAO.updateUserOnlineStatus(username,1);
    		
    		httpServletRequest.getSession(false).setMaxInactiveInterval( 10 * 60 );
//    		httpServletRequest.getSession(false).setMaxInactiveInterval( 30 ); 
        	httpServletResponse.sendRedirect("home");
//    	}else {
//    		httpServletRequest.getSession(false).setMaxInactiveInterval( 1 ); 
//        	httpServletResponse.sendRedirect("home");
//    	}
    	
    	
    	//condition change for pool 10-Feb
    	/*
    	
    	String username = "";
    	String userRole = null;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			username = userDetail.getUsername();
			userRole = userDetail.getAuthorities().toArray()[0].toString();
		}
		System.out.println("User: "+username);
		String user_id = enterpriseDAO.getUserId(username).get(0);
		String license_id = enterpriseDAO.getLicenseId(user_id).get(0);
		List<String> licenseStatus = enterpriseDAO.getLicenseStatus(license_id);
		
		
		
		///new work for license
		
		
		List<String> pools = enterpriseDAO.getPoolsFromRole(userRole);
		System.out.println(pools);
		for(String p:pools) {
			String poolUsersTableName = "pool_"+p+"_users";
			List<String> poolUsers = enterpriseDAO.checkIfUserExistInPool(poolUsersTableName,user_id);
			if(poolUsers.size()>0) {
				System.out.println("poolUsersTableName: "+poolUsersTableName);
				System.out.println("poolUsers: "+poolUsers);
				
				break;
			}
		}
		
		
		System.out.println("\n\n\n\n\n\n\n\ncc\n\n\n");
		/////// new work for license end
		
		
		if(licenseStatus.contains("1")) {
//			System.out.println("all current users: "+usersNamesList);
//			String activeUserString = usersNamesList.toString();
//			activeUserString = activeUserString.replaceAll("\\[", "\\('").replaceAll("\\]","'\\)").replaceAll(",","','").replaceAll("\\s", "");
//			List<String> idsOfLoggedInUsers = enterpriseDAO.getIdsOfLoggedInUsers(activeUserString);
//			System.out.println("all current users ids: "+idsOfLoggedInUsers);
//			String idsOfLoggedInUsersStr = idsOfLoggedInUsers.toString();
//			idsOfLoggedInUsersStr = idsOfLoggedInUsersStr.replaceAll("\\[", "\\('").replaceAll("\\]","'\\)").replaceAll("'","");
//			
//			List<Integer> onlineUsersStatus = enterpriseDAO.getLoggedInUsersStatus(idsOfLoggedInUsersStr,license_id);
//			System.out.println("onlineUsersStatus: "+onlineUsersStatus);
//			if(onlineUsersStatus.contains(1)) {
//				System.out.println("contains 1");
//			}
			
			
//			select * from employee where emp_id in (1,2,3)
			System.out.println("license already in use");
			httpServletResponse.sendRedirect("logout");
		}else {
			
			String license_expiration_date = enterpriseDAO.getLicenseExpirationDate(license_id).get(0);
			SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
			Date expirationDate = null;
			Date currentDate = null;
			try {
				expirationDate = sdformat.parse(license_expiration_date);
				Date date = new Date();  
			    System.out.println(sdformat.format(date));  
			    String date1 = sdformat.format(date);
			    currentDate = sdformat.parse(date1);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (expirationDate.compareTo(currentDate) > 0 || expirationDate.compareTo(currentDate) == 0) {
				System.out.println("not expired");
				httpServletResponse.sendRedirect("index");
				enterpriseDAO.updateLicenseStatusOne(license_id,user_id);
			} else{
				System.out.println("expired");
				httpServletResponse.sendRedirect("logout");
			}
			
			
			System.out.println("license_expiration_date: "+license_expiration_date);
			System.out.println("license is free");
		}
		
//		condition change for pool 10-Feb 
		*/
//         if (roles.contains("ROLE_ADMIN")) {
//            httpServletResponse.sendRedirect("admin");
//        } else {
//            httpServletResponse.sendRedirect("index");
            
//        }
    }


}
