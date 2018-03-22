package com.rjsk.mvc.controllers;

import java.util.ArrayList;
import java.util.Arrays;


import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rjsk.mvc.data.bo.ItemBo;
import com.rjsk.mvc.data.bo.OrderBo; 
import com.rjsk.mvc.data.entities.Item;
import com.rjsk.mvc.data.entities.Order;
import com.rjsk.mvc.data.entities.User;

@Controller
@RequestMapping("/order")
public class OrderController{
	private List<Order> orders;
	private List<Item> items;
	@Autowired
	OrderBo orderBo;
	@Autowired
	ItemBo itemBo;
	@RequestMapping(value="/find")
	public String find(Model model,HttpSession session){
		if(session.getAttribute("user")!=null) {
			User user=(User)session.getAttribute("user");
			String username=user.getUsername();
			orders = new LinkedList<Order>();
			orders = orderBo.displayOrder(username);
			model.addAttribute("orders", orders);
			return "placedorders";
		}
		return "redirect:/";
	}
	@RequestMapping(value="/add")
	public String add(Model model,HttpSession session){
		if(session.getAttribute("user")!=null) {
			items = new LinkedList<Item>();
			items = itemBo.displayItems();
			model.addAttribute("items", items);
			List<String> categoryList = new LinkedList<String>(Arrays.asList(new String[]{
				"Veg", "Nonveg"
			}));
			model.addAttribute("categoryList", categoryList);
			List<String> sizeList = new LinkedList<String>(Arrays.asList(new String[]{
				"8", "10", "12"
			}));
			List<String> checks = new LinkedList<String>(Arrays.asList(new String[]{
				"Soft Crust", "Extra Cheese", "Veg Topping"	
			}));
			model.addAttribute("checkOptions", checks);			
			model.addAttribute("sizeList", sizeList);
			model.addAttribute("order",new Order());
			return "items";
		}
		return "redirect:/";
	}
	@RequestMapping(value="/confirmorder", method=RequestMethod.POST)
	public String saveOrder(@Valid @ModelAttribute Order order,BindingResult result,HttpSession session,Model model){
		if(session.getAttribute("user")!=null) {
			List<String> categoryList = new LinkedList<String>(Arrays.asList(new String[]{
				"Veg", "Nonveg"
			}));
			model.addAttribute("categoryList", categoryList);
			List<String> sizeList = new LinkedList<String>(Arrays.asList(new String[]{
				"8", "10", "12"
			}));
			model.addAttribute("sizeList", sizeList);
			List<String> checks = new LinkedList<String>(Arrays.asList(new String[]{
				"Soft Crust", "Extra Cheese", "Veg Topping"	
			}));
			model.addAttribute("checkOptions", checks);				
			User user=(User)session.getAttribute("user");
			order.setUsername(user.getUsername());
			String resultview = orderBo.addOrder(order);
			model.addAttribute("order", order);
			return resultview;
		}
		return "redirect:/";
	}
	@RequestMapping(value = "/downloadPDF", method = RequestMethod.POST)
	public ModelAndView downloadPDF(HttpSession session) {
		User user=(User)session.getAttribute("user");
		Order order = orderBo.lastOrder(user.getUsername());
		List<Order> listOrders = new ArrayList<Order>();
		listOrders.add(order);
		// return a view which will be resolved by an pdf view resolver
		return new ModelAndView("pdfView", "listOrders", listOrders);
	}	
}