package com.rjsk.mvc.data.bo;
import org.springframework.stereotype.Service;

import com.rjsk.mvc.data.entities.User;
@Service
public interface UserBo {
	void addUser(User user);
	User checkUser(User user);
}
