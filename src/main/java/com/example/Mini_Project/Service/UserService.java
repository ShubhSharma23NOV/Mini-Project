package com.example.Mini_Project.Service;

import java.util.List;

import com.example.Mini_Project.entity.User;

public interface UserService {
	public void register(String userName, String name, String password);
	public User login(String user_name, String password);
	public List<User> find(String name);
}
