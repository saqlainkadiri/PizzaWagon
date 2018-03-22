package com.rjsk.mvc.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rjsk.mvc.data.bo.ReviewBo;
import com.rjsk.mvc.data.entities.Review;
@Controller
public class ReviewController {
	@Autowired
	ReviewBo bo;

	@RequestMapping("/review")
	public String goReview(Model model,HttpSession session){
		if(session.getAttribute("user")!=null) {
			model.addAttribute("review",new Review());
			model.addAttribute("reviewlist",bo.displayReview());
			return "review";
		}
		return "redirect:/";
	}
	@RequestMapping("/submitreview")
	public String goSubmitReview(@ModelAttribute Review review,BindingResult result,HttpSession session,Model model){
		Review review2 = bo.addReview(review);
		model.addAttribute("review",review2);
		return "redirect:/review";
	}
}