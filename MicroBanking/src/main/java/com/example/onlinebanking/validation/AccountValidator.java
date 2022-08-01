package com.example.onlinebanking.validation;

import java.util.Calendar;


import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.example.onlinebanking.domain.Account;
import com.example.onlinebanking.service.AccountService;





@Component
public class AccountValidator implements Validator {

	 private Pattern pattern;  
	 private Matcher matcher;  
	 String MOBILE_PATTERN = "[0-9]{10}";  
	 
	@Autowired
	@Qualifier(value="accountServiceJpa")
	AccountService accountService;
	
	
	public boolean supports(Class<?> arg0) {
	
		return Account.class.equals(arg0);
	}

	public void validate(Object obj, Errors errors) {
		Account account=(Account)obj;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "accno", "account.accno","Account number is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "accBalance", "account.accBalance.value","Account balance is required");
		
		if(account.getAccBalance()<1000)
		{
			errors.rejectValue("accBalance", "account.accBalance.value", "Account balance should be more than or equal to 1000 ");
		}
		
		
		if((account.getAccno()==0)){
			errors.rejectValue("accno", "account.accno.empty", "account number not be empty");
			
		}

		if(accountService.exists(account.getAccno()))
		
		{
			errors.rejectValue("accno", "account.accno.value", "account number already exist");
		}
		
		  ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobile",  
				    "required.mobile", "mobile is required.");  
				  
				// phone number validation  
				  if (!(account.getMobile()!= 0)) {  
				   pattern = Pattern.compile(MOBILE_PATTERN);  
				   matcher = pattern.matcher(MOBILE_PATTERN);
				   if (!matcher.matches()) {  
				    errors.rejectValue("mobile", "mobile.incorrect",  
				      "Enter a correct mobile number");  
				   }  
				  } 
	}
	
	

		public boolean isValidDate(Date value){
			  Calendar calendar = Calendar.getInstance(); 
		        calendar.set(Calendar.HOUR_OF_DAY, 0);
		        calendar.set(Calendar.MINUTE, 0);
		        calendar.set(Calendar.SECOND, 0);
		        Date today = calendar.getTime();
		        System.out.println("today date"+today);
		        System.out.println("@@@@@" +value.before(today));
			return value.before(today);
			
		}
		public boolean isValidDatefuture(Date value){
			  Calendar calendar = Calendar.getInstance(); 
		        calendar.set(Calendar.HOUR_OF_DAY, 0);
		        calendar.set(Calendar.MINUTE, 0);
		        calendar.set(Calendar.SECOND, 0);
		        Date today = calendar.getTime();
		        System.out.println("today date"+today);
		        System.out.println("@@@@@" +value.after(today));
			return value.after(today);

		}
		

}



