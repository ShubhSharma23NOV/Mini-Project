package com.example.Mini_Project.Implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Mini_Project.Repository.UserRepo;
import com.example.Mini_Project.Service.UserService;
import com.example.Mini_Project.entity.User;
import com.example.Mini_Project.exception.UserNotFoundException;

@Service
public class UserServiceImpl implements UserService{

	@Autowired 
	private UserRepo u1; 
	public void register(String userName, String name, String password) {
		User u=new User(userName,name,password);
		u1.save(u);
		
	}

	public User login(String user_name, String password) {
		User user=u1.findByUserName(user_name);
		if (user != null && user.getPassword().equals(password)) return user;
	
	throw new UserNotFoundException("User Not found");
	}
}
