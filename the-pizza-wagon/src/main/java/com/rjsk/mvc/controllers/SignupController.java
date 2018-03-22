package com.rjsk.mvc.controllers;

import java.util.ArrayList;

import java.util.List;

import javax.validation.Valid;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.rjsk.mvc.data.bo.UserBo;
import com.rjsk.mvc.data.entities.User;
import com.rjsk.mvc.data.validators.SignupValidator;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;

@Controller
public class SignupController {
	
    private final static String ACCOUNT_SID = "YOUR_ACCOUNT_SID"; 
    private final static String AUTH_TOKEN = "YOUR_AUTH_TOKEN"; 

	@Autowired
	SignupValidator validator;
	@Autowired
	UserBo bo;
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String goSignup(Model model){
		model.addAttribute("user",new User());
		return "signup";
	}
	@RequestMapping(value="/", method=RequestMethod.POST)
	public String goRegister(@Valid @ModelAttribute User user,BindingResult result){
		validator.validate(user, result);
		if (result.hasErrors()) {
	        return "signup";
	    }
		bo.addUser(user);
        try {
            TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
        
            // Build a filter for the MessageList
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            params	.add(new BasicNameValuePair("Body", "Thank you for Registering with us,"+user.getUsername()));
            params.add(new BasicNameValuePair("To", "+91"+user.getPhone()));
            params.add(new BasicNameValuePair("From", "+"+TWILIO_MOBILE_NO"));
        
            MessageFactory messageFactory = client.getAccount().getMessageFactory();
            messageFactory.create(params);
        } 
        catch (TwilioRestException e) {
            System.out.println(e.getErrorMessage());
        }
		return "login";
	}
}
