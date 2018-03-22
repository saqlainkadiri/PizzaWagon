package com.rjsk.mvc.controllers;

import javax.servlet.http.HttpSession;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rjsk.mvc.data.bo.UserBo;
import com.rjsk.mvc.data.entities.User;
import com.rjsk.mvc.data.validators.LoginValidator;
@Controller
public class LoginController {
	@Autowired
	UserBo bo;
	@Autowired
	LoginValidator validator;
	@RequestMapping("/")
	public String goLogin(Model model){	
		model.addAttribute("user",new User());
		return "login";
	}
	@RequestMapping("/logout")
	public String LogOut(Model model){	
		model.addAttribute("user",new User());
		return "login";
	}
	@RequestMapping(value="/home", method=RequestMethod.POST)
	public String goHomeCheckUser(@Valid @ModelAttribute User user,BindingResult result,HttpSession session){
		validator.validate(user, result);
		if(bo.checkUser(user)==null || result.hasErrors()) {
	        return "login";
		}
		User logged_user=bo.checkUser(user);
		session.setAttribute("user", logged_user);
		return "redirect:home";	
	}
}
