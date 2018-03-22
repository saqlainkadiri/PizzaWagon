package com.rjsk.mvc.data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import javax.sql.DataSource;

import com.rjsk.mvc.data.entities.Review;

public class ReviewDaoImpl implements ReviewDao {
	private DataSource dataSource;
	public ReviewDaoImpl(DataSource ds){
		this.dataSource=ds;
	}
	@Override
	public Review addReview(Review review) {
		try {
		  Connection con=null;
		  try {
			  con=(Connection) dataSource.getConnection();
		  } catch (SQLException e) {
			  System.out.println("error getting connection object");
			  e.printStackTrace();
		  }
		  String query = "INSERT INTO reviews(username,review) VALUES (?, ?)";
		  PreparedStatement preparedStmt = con.prepareStatement(query);
		  preparedStmt.setString(1,review.getUsername());
		  preparedStmt.setString(2,review.getReview());
		  preparedStmt.execute();
		  con.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	  return review;
	}
	public List<Review> displayReview() {
		Review review = null;
		List<Review> reviews = new LinkedList<Review>();
		try {
			Connection con=null;
			  try {
				  con=(Connection) dataSource.getConnection();
			  } catch (SQLException e) {
				  System.out.println("error getting connection object");
				  e.printStackTrace();
			  }
			  Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from reviews"); 
			while(rs.next())  {
				review = new Review();
				review.setUsername(rs.getString(2));
				review.setReview(rs.getString(3));
				review.setDate(rs.getString(4));
				reviews.add(review);					
			}
			con.close();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return reviews;  
	}
}
