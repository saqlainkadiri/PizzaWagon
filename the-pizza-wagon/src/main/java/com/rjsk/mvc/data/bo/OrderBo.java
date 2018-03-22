package com.rjsk.mvc.data.bo;

import java.util.List;

import org.springframework.stereotype.Service;

import com.rjsk.mvc.data.entities.Order;

@Service
public interface OrderBo {
	String addOrder(Order order);
	List<Order> displayOrder(String username);
	Order lastOrder(String username);
}