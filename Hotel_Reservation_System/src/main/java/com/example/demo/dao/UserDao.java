package com.example.demo.dao;

import com.example.demo.model.User;


public interface UserDao {

	public int registerUser(User user);
	public String UserLogin(User user);
	
}
