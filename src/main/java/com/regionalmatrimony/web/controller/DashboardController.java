package com.regionalmatrimony.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.regionalmatrimony.web.model.Agency;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.model.MatchPreference;
import com.regionalmatrimony.web.service.DashboardService;

@Controller
@SessionAttributes("agency")
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
	public String registerGroomForm(@Validated Groom groom, @ModelAttribute("agency") Agency agency, Model model) {
		logger.info("requestMapping /registerGroomForm");
		groom.setAgencyId(agency.getAgencyId());
		groom.setGender("male");
		Groom registeredUser = service.registerGroom(groom);
		model.addAttribute("registrar","Groom");
		model.addAttribute("fullName", registeredUser.getFirstName().toUpperCase().concat(" ").concat(registeredUser.getLastName()).toUpperCase());
		if(registeredUser.getMemberId() != null) {
			model.addAttribute("userId", registeredUser.getMemberId());
			model.addAttribute("whatsappNumber", registeredUser.getWhatsappNumber());
			model.addAttribute("email", registeredUser.getEmail().toLowerCase());
			return "redirect:/timeline";
		}
		model.addAttribute("errorMessage", "Groom is not registered. Please try again!");
		return "redirect:/timeline";
	}
	
	@RequestMapping(value= "/registerBride", method = RequestMethod.GET)
	public String registerBride(Model model) {
		logger.info("requestMapping /registerBride");
		return "registerbride";
	}
	
	@RequestMapping(value = "/registerBrideForm", method = RequestMethod.POST)
	public String registerBride(@Validated Bride bride, @ModelAttribute("agency") Agency agency, Model model) {
		logger.info("requestMapping /registerBrideForm");
		bride.setAgencyId(agency.getAgencyId());
		bride.setGender("female");
		Bride registeredUser = service.registerBride(bride);
		model.addAttribute("registrar","Bride");
		model.addAttribute("fullName", registeredUser.getFirstName().toUpperCase().concat(" ").concat(registeredUser.getLastName()).toUpperCase());
		if(registeredUser.getMemberId() != null) {
			model.addAttribute("userId", registeredUser.getMemberId());
			model.addAttribute("whatsappNumber", registeredUser.getWhatsappNumber());
			model.addAttribute("email", registeredUser.getEmail().toLowerCase());
			return "redirect:/timeline";
		}
		model.addAttribute("errorMessage", "Bride is not registered. Please try again!");
		return "redirect:/timeline";
	}
	
	@RequestMapping(value = "/timeline", method = RequestMethod.GET)
	public String showTimeline(@ModelAttribute("agency") Agency agency, Model model) {
		logger.info("request mapping /timeline");
		Integer groomCount = service.countGroom(agency.getAgencyId());
		model.addAttribute("groomcount", Integer.toString(groomCount));
		Integer brideCount = service.countBride(agency.getAgencyId());
		model.addAttribute("bridecount", Integer.toString(brideCount));
		return "timeline";
	}
	
	@RequestMapping(value = "/matchPreference", method = RequestMethod.GET)
	public String registerMatchPreference(@ModelAttribute("agency") Agency agency, @Validated MatchPreference matPreference, Model model) {
		logger.info("request /matchPreference");
		MatchPreference matchPreference = service.registerMatchPreferencce(matPreference);
		if(matchPreference != null) {
			model.addAttribute("message", "Please add Match Preference!");
			return "matchpreference";
		}
		return "redirect:/timeline";
	}
	
}