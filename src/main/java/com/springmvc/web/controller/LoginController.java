package com.springmvc.web.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.web.model.User;
import com.springmvc.web.service.LoginService;

@Controller
public class LoginController {
	
	protected static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("request mapping /");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		return "home";
	}

	@RequestMapping(value = "/userLogin", method = RequestMethod.POST)
	public String user(@Validated User user, Model model) {
		logger.info("request mapping /userLogin");
        boolean isValidUser = service.validateUser(user);

        if (!isValidUser) {
            model.addAttribute("errorMessage", "Invalid Credentials");
            return "home";
        }

        model.addAttribute("name", user.getUserName());
        model.addAttribute("password", user.getPassword());

        return "dashboard";
	}
}
