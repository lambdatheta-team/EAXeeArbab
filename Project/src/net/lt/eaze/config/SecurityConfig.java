package net.lt.eaze.config;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.session.HttpSessionEventPublisher;

import net.lt.eaze.dao.EnterpriseDAO;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private EnterpriseDAO enterpriseDAO;
	@Autowired
	DataSource dataSource;
	private AuthenticationSuccessHandler authenticationSuccessHandler;
	
	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
		
		auth.jdbcAuthentication().dataSource(dataSource)
		.passwordEncoder(passwordEncoder())
			.usersByUsernameQuery("select username,password, enabled from EEATool.users where username=?")
			.authoritiesByUsernameQuery("select username, role from EEATool.user_roles where username=?");
	}
	
	 @Autowired
	    public SecurityConfig(DataSource dataSource,AuthenticationSuccessHandler authenticationSuccessHandler) throws SQLException {
	        this.authenticationSuccessHandler = authenticationSuccessHandler;
	        this.dataSource = dataSource;
	    }
	
//	 @Autowired
//	    private CustomLogoutSuccessHandler logoutSuccessHandler;   
	 
	@Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()
                .antMatchers( "/css/**").permitAll()
//        .antMatchers("/admin/**").hasRole("hasRole("ADMIN") or hasRole('SUPER_ADMIN')")
        .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_SUPER_ADMIN')")
//        .antMatchers("/admin/**").hasRole("SUPER_ADMIN")
        .antMatchers("/EAXEE_Admin/**").hasRole("SUPER_ADMIN")
//                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .successHandler(authenticationSuccessHandler)
                .permitAll()
                .and()
                .logout()
                .logoutSuccessHandler(new LogoutSuccessHandler() {
                    @Override
                    public void onLogoutSuccess(HttpServletRequest request,
                                HttpServletResponse response, Authentication authentication)
                            throws IOException, ServletException {
                        response.sendRedirect("login");
                    }
                })
                .permitAll()
                .and().csrf().disable()
                .sessionManagement()
				.maximumSessions(1)
				.maxSessionsPreventsLogin(true)
				.sessionRegistry(sessionRegistry()); // we'll enable this in a later blog post
    }
	
	@Bean
    public SessionRegistry sessionRegistry() {
        return new SessionRegistryImpl();
    }
	
	@Bean
    public HttpSessionEventPublisher httpSessionEventPublisher() {
        return new HttpSessionEventPublisher();
    }
	
//	@Bean
//	public ServletListenerRegistrationBean<HttpSessionEventPublisher> httpSessionEventPublisher1() {
//	    return new ServletListenerRegistrationBean<HttpSessionEventPublisher>(new HttpSessionEventPublisher());
//	}
	
	@Bean
	public PasswordEncoder passwordEncoder(){
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		return encoder;
	}
}