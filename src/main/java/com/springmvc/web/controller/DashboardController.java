package com.springmvc.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.web.model.Bride;
import com.springmvc.web.model.Groom;
import com.springmvc.web.service.DashboardService;

public class DashboardController {
	
	@Autowired
	DashboardService service;
	
	@RequestMapping(value = "/registerGroom", method = RequestMethod.POST)
	public String registerGroom(@Validated Groom groom, Model model) {
		Groom registeredUser = service.registerGroom(groom);
		model.addAttribute("groomName", registeredUser.getFirstName().concat(" ").concat(registeredUser.getLastName()));
		if(registeredUser.getId() != null) {
			model.addAttribute("userId", registeredUser.getId());
			model.addAttribute("whatsappNumber", registeredUser.getWhatsappNumber());
			return "timeline";
		}
		model.addAttribute("errorMessage", "Groom is not registered. Please try again!");
		return "timeline";
	}
	
	@RequestMapping(value = "/registerBride", method = RequestMethod.POST)
	public String registerBride(@Validated Bride bride, Model model) {
		Bride registeredUser = service.registerBride(bride);
		model.addAttribute("brideName", registeredUser.getFirstName().concat(" ").concat(registeredUser.getLastName()));
		if(registeredUser.getId() != null) {
			model.addAttribute("userId", registeredUser.getId());
			model.addAttribute("whatsappNumber", registeredUser.getWhatsappNumber());
			return "timeline";
		}
		model.addAttribute("errorMessage", "Bride is not registered. Please try again!");
		return "timeline";
	}
}