package com.rjsk.mvc.data.entities;

public class Review {
	String username;
	String review;
	String date;
	String userDisp;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getUserDisp() {
		return userDisp;
	}
	public void setUserDisp(String userDisp) {
		this.userDisp = userDisp;
	}
	@Override
	public String toString() {
		return "Review [username=" + username + ", review=" + review + ", date=" + date + ", userDisp=" + userDisp
				+ "]";
	}
}
