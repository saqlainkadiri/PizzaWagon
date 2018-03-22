package com.rjsk.mvc.data.bo;
import com.rjsk.mvc.data.dao.UserDao;
import com.rjsk.mvc.data.entities.User;
public class UserBoImpl implements UserBo{
	private final UserDao userDao;
	public UserBoImpl(UserDao dao){
		this.userDao=dao;
	}
	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}
	@Override
	public User checkUser(User user) {
		return userDao.checkUser(user);
	}

}
