package com.rjsk.mvc.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rjsk.mvc.data.entities.User;

@Controller
public class HomeController {
	@RequestMapping("/findus")
	public String findUs() {
		return "findus";
	}
	@RequestMapping("/home")
	public String goHome(Model model,HttpSession session){
		if(session.getAttribute("user")!=null) {
			User user=new User();
			user=(User) session.getAttribute("user");
			model.addAttribute("user", user);
			return "home";
		}
		return "redirect:/";
	}
	@RequestMapping(value = "/saveResult")
    @ResponseBody
    public String authorInfo(Model model) {
        return "saved";
    }
}