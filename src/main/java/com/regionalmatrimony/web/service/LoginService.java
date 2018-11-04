package com.regionalmatrimony.web.service;

import org.springframework.stereotype.Service;

import com.regionalmatrimony.web.model.User;

@Service
public class LoginService {
	 public boolean validateUser(User user) {
	     return user.getUserName().equalsIgnoreCase("admin")&& user.getPassword().equalsIgnoreCase("123");
	 }
}
