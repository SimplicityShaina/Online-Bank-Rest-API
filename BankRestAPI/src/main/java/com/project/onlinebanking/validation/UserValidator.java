package com.project.onlinebanking.validation;

import org.springframework.stereotype.Component;


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.project.onlinebanking.domain.User;

@Component
public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		
		return User.class.equals(arg0);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "user.username", "name is required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "user.password", "password is required");
		

	}
}
