package com.rjsk.mvc.data.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.sql.DataSource;

import com.rjsk.mvc.data.entities.Order;

public class OrderDaoImpl implements OrderDao {
	private DataSource dataSource;
	public OrderDaoImpl(DataSource ds){
		this.dataSource=ds;
	}
	@Override
	public String addOrder(Order order) {
		try {
		  Connection con=null;
		  try {
			  con=(Connection) dataSource.getConnection();
		  } catch (SQLException e) {
			  System.out.println("error getting connection object");
			  e.printStackTrace();
		  }
		  String query = "INSERT INTO orders(username,item_id,item_name,item_category,item_price,item_quantity,item_size,toppings) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		  PreparedStatement preparedStmt = con.prepareStatement(query);
		  preparedStmt.setString(1,order.getUsername());
		  preparedStmt.setInt(2,order.getItemId());
		  preparedStmt.setString(3, order.getItemName());
		  preparedStmt.setString(4, order.getCategory());
		  preparedStmt.setInt(5,(order.getPrice()));
		  preparedStmt.setInt(6,order.getQuantity());
		  preparedStmt.setInt(7,order.getSize());
		  preparedStmt.setString(8,Arrays.toString(order.getToppings()));
		  preparedStmt.execute();
		  con.close();
		  return "order_done";
		} 
		catch (Exception e) {
			e.printStackTrace();
			return "order_error";
		}
	}
	public List<Order> displayOrder(String username) {
		Order order = null;
		List<Order> orders = new LinkedList<Order>();
		try {
			Connection con=null;
			  try {
				  con=(Connection) dataSource.getConnection();
			  } catch (SQLException e) {
				  System.out.println("error getting connection object");
				  e.printStackTrace();
			  }
			  Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from orders"); 
			while(rs.next())  {
				order = new Order();
				if(rs.getString(2).equals(username)) {
					order.setOrderNo(rs.getInt(1));
					order.setUsername(rs.getString(2));
					order.setItemId(rs.getInt(3));
					order.setItemName(rs.getString(4));
					order.setCategory(rs.getString(5));
					order.setPrice(rs.getInt(6));
					order.setQuantity(rs.getInt(7));
					order.setSize(rs.getInt(8));
					String temp_toppings[] = rs.getString(9).replace("[","").replace("]","").split(",");
					String final_toppings[] = new String[3];
					for(int j=0;j<3;j++) {
						final_toppings[j] = "No";
					}
					for(int j=0;j<temp_toppings.length;j++) {
						String temp = temp_toppings[j].replace(" ","");
						if(temp.equals("SoftCrust")){
							final_toppings[0]="Yes";							
						}
						if(temp.equals("ExtraCheese")){
							final_toppings[1]="Yes";							
						}
						if(temp.equals("VegTopping")){
							final_toppings[2]="Yes";							
						}
					}
					order.setToppings(final_toppings);
					order.setDt_made(rs.getString(10));
					orders.add(order);					
				}
			}
			con.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return orders;  
	}
	@Override
	public Order lastOrder(String username) {
		Order order = null;
		try {
			Connection con=null;
			  try {
				  con=(Connection) dataSource.getConnection();
			  } catch (SQLException e) {
				  System.out.println("error getting connection object");
				  e.printStackTrace();
			  }
			  Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM orders where username=\""+username+"\" ORDER BY id DESC LIMIT 1;"); 
			while(rs.next())  {
				order = new Order();
				if(rs.getString(2).equals(username)) {
					order.setOrderNo(rs.getInt(1));
					order.setUsername(rs.getString(2));
					order.setItemId(rs.getInt(3));
					order.setItemName(rs.getString(4));
					order.setCategory(rs.getString(5));
					order.setPrice(rs.getInt(6));
					order.setQuantity(rs.getInt(7));
					order.setSize(rs.getInt(8));
					String temp_toppings[] = rs.getString(9).replace("[","").replace("]","").split(",");
					String final_toppings[] = new String[3];
					for(int j=0;j<3;j++) {
						final_toppings[j] = "No";
					}
					for(int j=0;j<temp_toppings.length;j++) {
						String temp = temp_toppings[j].replace(" ","");
						if(temp.equals("SoftCrust")){
							final_toppings[0]="Yes";							
						}
						if(temp.equals("ExtraCheese")){
							final_toppings[1]="Yes";							
						}
						if(temp.equals("VegTopping")){
							final_toppings[2]="Yes";							
						}
					}
					order.setToppings(final_toppings);
					order.setDt_made(rs.getString(10));
				}
			}
			con.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return order;
	}
}
