package com.example.Mini_Project.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class User {
	@Id
private String userName;
	@Column
private String name;
	@Column
private String password;
public User() {}
public User(String userName, String name, String password) {
	super();
	this.userName = userName;
	this.name = name;
	this.password = password;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "User [userName=" + userName + ", name=" + name + ", password=" + password + "]";
}

}
