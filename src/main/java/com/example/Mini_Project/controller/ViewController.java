package com.example.Mini_Project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Mini_Project.Implementation.UserServiceImpl;
import com.example.Mini_Project.entity.User;

@Controller
public class ViewController {
	
	@Autowired
	private UserServiceImpl u1;
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	@RequestMapping("/login-page")
	public String loginpage() {
		
		return "Login";
	}
	@RequestMapping("/regis-page")
	public String regispage() {
		return "Registration";
	}
	@PostMapping("/register")
	public String register(@RequestParam String user_name,@RequestParam String name,@RequestParam String password) {
		u1.register(user_name,name,password);
		return "redirect:/login-page";
	}
	@PostMapping("/login")
	public String login(@RequestParam String user_name,@RequestParam String password,Model model){
		User user=u1.login(user_name, password);
		model.addAttribute("user",user);
		return "/home";
	}
	
}
