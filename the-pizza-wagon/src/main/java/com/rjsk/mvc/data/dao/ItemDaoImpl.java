package com.rjsk.mvc.data.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import javax.sql.DataSource;
import com.rjsk.mvc.data.entities.Item;
public class ItemDaoImpl implements ItemDao {
	private DataSource dataSource;
	public ItemDaoImpl(DataSource ds){
		this.dataSource=ds;
	}
	public List<Item> displayItems() {
		Item item = null;
		List<Item> items = new LinkedList<Item>();
		try {
			Connection con=null;
			try {
				con=(Connection) dataSource.getConnection();
			} 
			catch (SQLException e) {
				System.out.println("error getting connection object");
				e.printStackTrace();
			}
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select * from items"); 
			while(rs.next())  {
				item = new Item();
				item.setItemId(rs.getInt(1));
				item.setItemName(rs.getString(2));
				item.setPrice(rs.getInt(3));
				item.setCategory(rs.getString(4));
				item.setDescription(rs.getString(5));
				items.add(item);
			}
			con.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return items;  
	}
}
