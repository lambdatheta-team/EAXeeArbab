package net.lt.eaze.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import net.lt.eaze.dao.EnterpriseDAO;
import net.lt.eaze.dao.namedLicenseValidation;
import net.lt.eaze.userManagement.roleDetails;

public class methods {
	@Autowired
	private EnterpriseDAO enterpriseDAO;
	
	private static BCryptPasswordEncoder passwordEcorder = new BCryptPasswordEncoder();


	   public String bcryptEncryptor(String plainText) {
	       return passwordEcorder.encode(plainText);
	   }

	   public Boolean doPasswordsMatch(String rawPassword,String encodedPassword) {
	      return passwordEcorder.matches(rawPassword, encodedPassword);
	   }
	
	static HashMap<String, Integer> findRepeating(List<String> allActualValues, int size){
	    // Hash map to store the  
	    // frequency of elements 
	    HashMap<String, Integer> frequency = new HashMap<String,Integer>(); 
	      
	    // Loop to store the frequency of  
	    // elements of array 
	  
	    for(int i = 0; i < size; i++)  
	    {
	        if(frequency.containsKey(allActualValues.get(i))) 
	        {
	            frequency.put(allActualValues.get(i), frequency.get(allActualValues.get(i)) + 1); 
	        } 
	        else
	        {
	            frequency.put(allActualValues.get(i), 1); 
	        } 
	    } 
	    return frequency; 
	}
	
	boolean isLicenseNotExpired(namedLicenseValidation namedLicenseDetails) {
//		if(namedLicenseDetails.size()>0) {
			String license_expiration_date = namedLicenseDetails.getExpiration_date();
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
				e.printStackTrace();
			}
			if (expirationDate.compareTo(currentDate) > 0 || expirationDate.compareTo(currentDate) == 0) {
				return true;
			} else{
				System.out.println("expired");
				return false;
			}
//		}else {
//			System.out.println("License Do not exist");
//			return false;
//		}
	}
}
