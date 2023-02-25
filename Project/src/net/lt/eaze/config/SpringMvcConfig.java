package net.lt.eaze.config;

import javax.sql.DataSource;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.annotation.Order;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.session.SessionRegistryImpl;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.multipart.support.MultipartFilter;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.theme.ThemeChangeInterceptor;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import net.lt.eaze.dao.EnterpriseDAO;
import net.lt.eaze.dao.EnterpriseDAOImpl;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "net.lt.eaze")
public class SpringMvcConfig implements WebMvcConfigurer{
//	    @Override
//	    protected void configure(final HttpSecurity http) throws Exception {
//	        // ...
//	        http.sessionManagement().maximumSessions(1).sessionRegistry(sessionRegistry());
//	    }
//
//	    @Bean
//	    public SessionRegistry sessionRegistry() {
//	        return new SessionRegistryImpl();
//	    }
//
//	    @Bean
//	    public ServletListenerRegistrationBean<HttpSessionEventPublisher> httpSessionEventPublisher() {
//	        return new ServletListenerRegistrationBean<HttpSessionEventPublisher>(new HttpSessionEventPublisher());
//	    }
	
	@Bean
	public SessionRegistry sessionRegistry() {
	    return new SessionRegistryImpl();
	}
	
	//    jdbc:mysql://localhost:3306/db_name?useUnicode=yes&characterEncoding=UTF-8
	
	@Bean
	public DataSource getDataSource(){
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		
		//LOCALHOST 
		dataSource.setUrl("jdbc:mysql://localhost:3306?useUnicode=yes&characterEncoding=UTF-8");
		dataSource.setUsername("root");
		dataSource.setPassword("");
////		 ONLINE
//		dataSource.setPassword("lambdatheta");
//		dataSource.setUrl("jdbc:mysql://159.223.192.8:3306?useUnicode=yes&characterEncoding=UTF-8&useSSL=false");
		
//		dataSource.setUrl("jdbc:mysql://159.223.192.8:3306?autoReconnect=true&amp;useUnicode=true&amp;useJDBCCompliantTimezoneShift=true&amp;useLegacyDatetimeCode=false&amp;serverTimezone=UTC");
//		dataSource.setUrl("jdbc:mysql://159.223.192.8:3306?useUnicode=yes&characterEncoding=UTF-8&useSSL=false");
//		dataSource.setUsername("checking");
//		dataSource.setPassword("checking123");
		
//		dataSource.setUrl("jdbc:mysql://159.223.192.8:3306?useUnicode=yes&characterEncoding=UTF-8&allowPublicKeyRetrieval=true&useSSL=false");
//		dataSource.setUsername("checking");
//		dataSource.setPassword("checking123");
		
//		dataSource.setUrl("jdbc:mysql://64.227.7.157:3306?useUnicode=yes&characterEncoding=UTF-8&allowPublicKeyRetrieval=true&useSSL=false");
//		dataSource.setUsername("checking");
//		dataSource.setPassword("checking123");
		
//		dataSource.setUrl("jdbc:mysql://192.168.18.218:3306?useUnicode=yes&characterEncoding=UTF-8");
//		dataSource.setUsername("lambdaT");
//		dataSource.setPassword("lambdatheta");
		
//		dataSource.setUrl("jdbc:mysql://192.168.18.184:3306?useUnicode=yes&characterEncoding=UTF-8");
//		dataSource.setUsername("eaxee");
//		dataSource.setPassword("lambdatheta");
		
		//// SAUDI DEPLOYMENT 
//		dataSource.setUrl("jdbc:mysql://192.168.10.33:3306?useUnicode=yes&characterEncoding=UTF-8");
//		dataSource.setUsername("EEATool");
//		dataSource.setPassword("EEATool@123");
//		
		return dataSource;
	}
	
	@Bean
	public ViewResolver getViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Bean
	public EnterpriseDAO getEnterpriseDAO() {
		return new EnterpriseDAOImpl(getDataSource());
	}
	
	@Bean
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver multipart = new CommonsMultipartResolver();
        multipart.setMaxUploadSize(3 * 10024 * 10024); return multipart;
    }

    @Bean
    @Order(0)
    public MultipartFilter multipartFilter() {
        MultipartFilter multipartFilter = new MultipartFilter();
        multipartFilter.setMultipartResolverBeanName("multipartResoâ€Œâ€‹lver");
        return multipartFilter;
    }
    
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
//        registry.addViewController("/").setViewName("explorer");
        registry.addViewController("/index").setViewName("explorer");
//        registry.addViewController("/index_rtl").setViewName("explorer_rtl");
        registry.addViewController("/admin").setViewName("admin");
//        registry.addViewController("/login").setViewName("login");
    }
	
     
	
	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
	
	// Add language starts here
   @Bean("messageSource")
   public MessageSource messageSource() {
      ReloadableResourceBundleMessageSource messageSource=new ReloadableResourceBundleMessageSource();
      messageSource.setBasename("classpath:net/lt/eaze/resources/locale/messages");
      messageSource.setDefaultEncoding("UTF-8");
      messageSource.setUseCodeAsDefaultMessage(true);
      return messageSource;
   }

   @Bean
   public LocaleResolver localeResolver() {
      CookieLocaleResolver localeResolver = new CookieLocaleResolver();
      return localeResolver;
   }

   @Override
   public void addInterceptors(InterceptorRegistry registry) {
      ThemeChangeInterceptor themeChangeInterceptor = new ThemeChangeInterceptor();
      themeChangeInterceptor.setParamName("theme");
      registry.addInterceptor(themeChangeInterceptor);

      LocaleChangeInterceptor localeChangeInterceptor = new LocaleChangeInterceptor();
      localeChangeInterceptor.setParamName("lang");
      registry.addInterceptor(localeChangeInterceptor);
   }
   // Add language ends here
}