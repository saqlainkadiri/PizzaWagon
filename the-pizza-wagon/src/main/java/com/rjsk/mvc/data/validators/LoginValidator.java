package com.rjsk.mvc.data.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import com.rjsk.mvc.data.entities.User;;
public class LoginValidator extends Object implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}
	@Override
	public void validate(Object obj, Errors errors) {
		User user = (User) obj;
		if(user.getUsername().length() == 0) {
			errors.rejectValue("password", "user.username", "You must enter a Username");
		}
		else if(user.getPassword().length() == 0) {
			errors.rejectValue("password", "user.password", "You must enter a Password");
		}
	}
}
