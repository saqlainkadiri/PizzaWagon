package com.rjsk.mvc.data.dao;

import com.rjsk.mvc.data.entities.User;

public interface UserDao {
	void addUser(User user);
	User checkUser(User user);
}
