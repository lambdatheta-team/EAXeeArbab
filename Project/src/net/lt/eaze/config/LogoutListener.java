package net.lt.eaze.config;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.session.SessionDestroyedEvent;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import net.lt.eaze.dao.EnterpriseDAO;

@Component
public class LogoutListener implements ApplicationListener<SessionDestroyedEvent> {
	@Autowired
	private EnterpriseDAO enterpriseDAO;
    @Override
    public void onApplicationEvent(SessionDestroyedEvent event)
    {
        List<SecurityContext> lstSecurityContext = event.getSecurityContexts();
        UserDetails ud;
        for (SecurityContext securityContext : lstSecurityContext)
        {
            ud = (UserDetails) securityContext.getAuthentication().getPrincipal();
            String username = ud.getUsername();
            System.out.println("The user " + username + " has logged out.");
            String user_id = enterpriseDAO.getUserId(username).get(0);
//            enterpriseDAO.updateLicenseStatusZero(user_id);
//            enterpriseDAO.updateUserOnlineStatus(username,0);
            
            String activePoolDetails = enterpriseDAO.getActivePoolDetails(user_id);
            if(activePoolDetails != null) {
            	String[] activePoolDetailsList = activePoolDetails.split(",");
            	enterpriseDAO.removeValuesFromActivePoolUsers(activePoolDetailsList);
            }
        }
    }

}