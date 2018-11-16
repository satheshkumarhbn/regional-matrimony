package com.regionalmatrimony.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.regionalmatrimony.web.model.Agency;
import com.regionalmatrimony.web.service.AgencyLoginService;

@Controller
@SessionAttributes("agency")
public class AgencyLoginController {
	
	protected static final Logger logger = LoggerFactory.getLogger(AgencyLoginController.class);
	
	@Autowired
	AgencyLoginService service;
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("request mapping /");
		return "home";
	}

	@RequestMapping(value = "/agencyLogin", method = RequestMethod.POST)
	public String user(@Validated Agency agency, Model model) {
		logger.info("request mapping /agencyLogin");
		Agency user = service.getAgencyDetail(agency.getAgencyId());
		if(user == null) {
			model.addAttribute("errorMessage", "No agency found with specified ID");
			return "home";
		}else if(user.isActive() && user.getAgencyId().equals(agency.getAgencyId())) {
			if(user.getPassword().equals(agency.getPassword())) {
				model.addAttribute("agency", user);
				return "timeline";
			} else {
				model.addAttribute("errorMessage", "Password Failure. Please try again!");
				return "home";
			}
		}
		model.addAttribute("errorMessage", "Agency is not active. Please contact helpdesk!");
		return "home";
	}
	
	@RequestMapping(value="/agencyRegistration", method = RequestMethod.POST)
	public String register(@Validated Agency agency, Model model) {
		logger.info("request mapping /agencyRegistration");
		Agency validatedUser = service.registerAgency(agency);
		if(!(validatedUser.getMobileNumber().equals(agency.getMobileNumber()) && validatedUser.getEmail().equals(agency.getEmail()))) {
			model.addAttribute("message", "User registered Successfully");
			return "home";
		}
		model.addAttribute("message", "User already exist with mobile number and email");
		return "register";
	}
}
