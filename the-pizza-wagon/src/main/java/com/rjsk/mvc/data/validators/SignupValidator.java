package com.rjsk.mvc.data.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import com.rjsk.mvc.data.entities.User;;
public class SignupValidator extends Object implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}
	@Override
	public void validate(Object obj, Errors errors) {
		User user = (User) obj;
		if(user.getUsername().length() < 5){
			errors.rejectValue("username", "user.username", "The username should be minimum 5 characters!");
		}
		if(user.getPassword().length() < 8){
			errors.rejectValue("password", "user.password", "Password should be minimum 8 characters!");
		}
	}
}
