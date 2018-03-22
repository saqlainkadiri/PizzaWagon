package com.rjsk.mvc.data.bo;
import java.util.List;
import com.rjsk.mvc.data.dao.OrderDao;
import com.rjsk.mvc.data.entities.Order;
public class OrderBoImpl implements OrderBo{
	private final OrderDao orderDao;
	public OrderBoImpl(OrderDao dao){
		this.orderDao=dao;
	}
	@Override
	public String addOrder(Order order) {
		return orderDao.addOrder(order);
	}
	@Override
	public List<Order> displayOrder(String username) {
		return orderDao.displayOrder(username);
	}
	@Override
	public Order lastOrder(String username) {
		return orderDao.lastOrder(username);
	}
}
