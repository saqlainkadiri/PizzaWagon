package com.rjsk.mvc.data.entities;

import java.util.Arrays;

public class Order {
	int itemId;
	String itemName;
	int price;
	String category;
	int orderNo;
	int size;
	int quantity;
	String[] toppings;
	String username;
	String dt_made;
	public Order() {
		
	}
	public Order(int itemId, String itemName, int price, String category, int size, int quantity, 
			String username, String dt_made) {
		super();
		this.itemId = itemId;
		this.itemName = itemName;
		this.price = price;
		this.category = category;
		this.size = size;
		this.quantity = quantity;
		this.username = username;
		this.dt_made = dt_made;
	}
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getDt_made() {
		return dt_made;
	}
	public void setDt_made(String dt_made) {
		this.dt_made = dt_made;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String[] getToppings() {
		return toppings;
	}
	public void setToppings(String toppings[]) {
		this.toppings = toppings;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	@Override
	public String toString() {
		return "Order [itemId=" + itemId + ", itemName=" + itemName + ", price=" + price + ", category=" + category
				+ ", size=" + size + ", quantity=" + quantity + ", toppings=" + Arrays.toString(toppings)
				+ ", username=" + username + ", dt_made=" + dt_made + "]";
	}
	
}
