package com.example.Mini_Project.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.Mini_Project.entity.User;

public interface UserRepo extends JpaRepository<User,String>{
	public User findByUserName(String userName);
}	
