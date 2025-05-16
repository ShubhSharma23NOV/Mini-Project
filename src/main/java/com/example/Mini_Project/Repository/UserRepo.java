package com.example.Mini_Project.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.Mini_Project.entity.User;

public interface UserRepo extends JpaRepository<User,String>{
	public User findByUserName(String userName);

	public List<User> findByName(String name);
}	
