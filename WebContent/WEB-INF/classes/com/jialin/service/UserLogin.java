package com.jialin.service;

import java.util.List;
import com.jialin.entity.User;

public interface UserLogin {
	public List<User> Login(String name, String pass);

}
