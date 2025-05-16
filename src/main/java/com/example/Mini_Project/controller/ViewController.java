package com.example.Mini_Project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Mini_Project.Implementation.UserServiceImpl;
import com.example.Mini_Project.entity.User;

@Controller
public class ViewController {
	
	@Autowired
	private UserServiceImpl u1;
	
	@RequestMapping("/")
	public String page1() {
		return "pag1";
	}
	
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
	@RequestMapping("/profile")
	public String profile() {
		return "profile";
	}
	
	@PostMapping("/register")
	public String register(@RequestParam String user_name, @RequestParam String name, @RequestParam String password) {
		u1.register(user_name, name, password);
		return "redirect:/login-page";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String user_name, @RequestParam String password, Model model) {
		User user = u1.login(user_name, password);
		model.addAttribute("user", user);
		return "/home";
	}
	@GetMapping("/find")
	public	String find_users(@RequestParam String name, Model model) {
		List<User> user = u1.find(name);
		model.addAttribute("user", user);
		return "users";
	}
}
