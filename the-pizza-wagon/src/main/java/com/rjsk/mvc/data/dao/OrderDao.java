package com.rjsk.mvc.data.dao;

import java.util.List;


import com.rjsk.mvc.data.entities.Order;

public interface OrderDao {
	String addOrder(Order order);
	List<Order> displayOrder(String username);
	Order lastOrder(String username);
}
