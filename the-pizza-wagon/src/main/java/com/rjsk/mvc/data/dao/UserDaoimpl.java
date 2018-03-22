package com.rjsk.mvc.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.sql.DataSource;
import com.rjsk.mvc.data.entities.User;
public class UserDaoimpl implements UserDao {
	private DataSource dataSource;
	public UserDaoimpl(DataSource ds){
		this.dataSource=ds;
	}
	@Override
	public void addUser(User user) {
		try {
			Connection con=null;
			try {
				con=(Connection) dataSource.getConnection();
			} catch (SQLException e) {
				System.out.println("Database connection error");
				e.printStackTrace();
			}
			String query = " insert into users (username, password, email, phone)" + " values (?, ?, ?, ?)";
			PreparedStatement preparedStmt = con.prepareStatement(query);
			preparedStmt.setString(1, user.getUsername());
			preparedStmt.setString(2,user.getPassword());
			preparedStmt.setString(3,user.getEmail());
			preparedStmt.setString(4,user.getPhone());
			preparedStmt.execute();
			con.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Override
	public User checkUser(User user) {
		try {
			  Connection con=null;
			  try {
				  con=(Connection) dataSource.getConnection();
			  } catch (SQLException e) {
				  System.out.println("error getting connection object");
				  e.printStackTrace();
			  }
			  Statement stmt=con.createStatement();  
			  ResultSet rs=stmt.executeQuery("select * from users");  
			  while(rs.next())  {
				  if(user.getUsername().equals(rs.getString(2)) && user.getPassword().equals(rs.getString(3))) {
					  User logged_user=new User();
					  logged_user.setUsername(rs.getString(2));
					  logged_user.setPassword(rs.getString(3));
					  logged_user.setEmail(rs.getString(4));
					  logged_user.setPhone(rs.getString(5));
					  return logged_user;
				  }
			  }
			  con.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
