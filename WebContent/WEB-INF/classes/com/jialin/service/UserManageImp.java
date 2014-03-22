package com.jialin.service;

import javax.annotation.Resource;

import com.jialin.service.UserManage;
import com.jialin.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class UserManageImp implements UserManage {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Resource  
	private UserManage userManager;
	
	public UserManage getUserDao() {
		return userManager;
	}

	public void setUserDao(UserManage userManager) {
		this.userManager = userManager;
	}

	@Override
	public void addUser(User user) {
		userManager.addUser(user);
	}

	@Override
	public void modifyUser(User user) {
		userManager.modifyUser(user);
	}

	@Override
	public void deleteUser(User user) {
		userManager.deleteUser(user);
	}

	@Override
	public User getUserByName(String name) {
		
		return null;
	}
}
