package com.jialin.service;

import com.jialin.entity.User;

public interface UserManage {
	public void addUser(User user);
	public void modifyUser(User user);
	public void deleteUser(User user);
	public User getUserByName(String name);
}
