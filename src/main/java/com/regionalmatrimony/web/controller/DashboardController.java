package com.regionalmatrimony.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.service.DashboardService;

@Controller
public class DashboardController {
	
	protected static final Logger logger = LoggerFactory.getLogger(DashboardController.class);
	@Autowired
	DashboardService service;
	
	@RequestMapping(value= "/registerGroom", method = RequestMethod.GET)
	public String registerGroom(Model model) {
		logger.info("requestMapping /registerGroom");
		return "registergroom";
	}
	
	@RequestMapping(value = "/registerGroomForm", method = RequestMethod.POST)
	public String registerGroomForm(@Validated Groom grom, Model model) {
		logger.info("requestMapping /registerGroomForm");
		Groom registeredUser = service.registerGroom(grom);
		model.addAttribute("registrar","Groom");
		model.addAttribute("fullName", registeredUser.getFirstName().toUpperCase().concat(" ").concat(registeredUser.getLastName()).toUpperCase());
		if(registeredUser.getId() !=0) {
			model.addAttribute("userId", registeredUser.getId());
			model.addAttribute("whatsappNumber", registeredUser.getWhatsappNumber());
			model.addAttribute("email", registeredUser.getEmail().toLowerCase());
			return "timeline";
		}
		model.addAttribute("errorMessage", "Groom is not registered. Please try again!");
		return "timeline";
	}
	
	@RequestMapping(value= "/registerBride", method = RequestMethod.GET)
	public String registerBride(Model model) {
		logger.info("requestMapping /registerBride");
		return "registerbride";
	}
	
	@RequestMapping(value = "/registerBrideForm", method = RequestMethod.POST)
	public String registerBride(@Validated Bride bride, Model model) {
		logger.info("requestMapping /registerBrideForm");
		Bride registeredUser = service.registerBride(bride);
		model.addAttribute("registrar","Bride");
		model.addAttribute("fullName", registeredUser.getFirstName().toUpperCase().concat(" ").concat(registeredUser.getLastName()).toUpperCase());
		if(registeredUser.getId() != 0) {
			model.addAttribute("userId", registeredUser.getId());
			model.addAttribute("whatsappNumber", registeredUser.getWhatsappNumber());
			model.addAttribute("email", registeredUser.getEmail().toLowerCase());
			return "timeline";
		}
		model.addAttribute("errorMessage", "Bride is not registered. Please try again!");
		return "timeline";
	}
}