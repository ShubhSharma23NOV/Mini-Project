package com.example.Mini_Project.exception;

import java.util.NoSuchElementException;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class Globalexceptionhandler {
	@ExceptionHandler(UserNotFoundException.class)
	public String handleUserNotFoundException(UserNotFoundException ue){
		return ue.getMessage();	
		}
	@ExceptionHandler(org.springframework.web.servlet.resource.NoResourceFoundException.class)
	public String handleaNoResourceFoundException(org.springframework.web.servlet.resource.NoResourceFoundException e) {
		return "Page Not Found";
	}
	@RestControllerAdvice
	public class GlobalExceptionHandler {

	    @ExceptionHandler(NoSuchElementException.class)
	    public String handleNoSuchElementException(NoSuchElementException ex) {
	        return ex.getMessage();
	    }
	}

	
}