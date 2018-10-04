package com.springmvc.web.service;

import org.springframework.stereotype.Service;

import com.springmvc.web.model.User;

@Service
public class LoginService {
	 public boolean validateUser(User user) {
	     return user.getUserName().equalsIgnoreCase("admin")&& user.getPassword().equalsIgnoreCase("123");
	 }
}
