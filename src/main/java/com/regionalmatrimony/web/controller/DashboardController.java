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
import com.regionalmatrimony.web.utils.Utils;

@Controller
@SessionAttributes("agency")
public class DashboardController {

	protected static final Logger logger = LoggerFactory.getLogger(DashboardController.class);
	@Autowired
	DashboardService service;

	@RequestMapping(value = "/registerGroom", method = RequestMethod.GET)
	public String registerGroom(Model model) {
		logger.info("requestMapping /registerGroom");
		return "registergroom";
	}

	@RequestMapping(value = "/registerGroomForm", method = RequestMethod.POST)
	public String registerGroomForm(@Validated Groom groom, @ModelAttribute("agency") Agency agency, Model model) {
		logger.info("requestMapping /registerGroomForm");
		groom.setAgencyId(agency.getAgencyId());
		groom.setGender("male");
		groom.setCreationDate(Utils.getCurrentTimeStamp());
		String lastGroomId = service.getLastGroomId();
		groom.setMemberId(Utils.createMemberId(groom.getGender(), lastGroomId));
		groom.setPassword(Utils.generateRandomPassword());
		// Groom registeredUser = service.registerGroom(groom);
		if (groom.getMemberId() != null) {
			model.addAttribute("groom", groom);
			return "redirect:/viewMatPre";
		}
		model.addAttribute("errorMessage", "Groom is not registered. Please try again!");
		return "redirect:/timeline";
	}

	@RequestMapping(value = "/registerBride", method = RequestMethod.GET)
	public String registerBride(Model model) {
		logger.info("requestMapping /registerBride");
		return "registerbride";
	}

	@RequestMapping(value = "/registerBrideForm", method = RequestMethod.POST)
	public String registerBride(@Validated Bride bride, @ModelAttribute("agency") Agency agency, Model model) {
		logger.info("requestMapping /registerBrideForm");
		bride.setAgencyId(agency.getAgencyId());
		bride.setGender("female");
		bride.setCreationDate(Utils.getCurrentTimeStamp());
		String lastBrideId = service.getLastBrideId();
		bride.setMemberId(Utils.createMemberId(bride.getGender(), lastBrideId));
		bride.setPassword(Utils.generateRandomPassword());

		// Bride registeredUser = service.registerBride(bride);
		if (bride.getMemberId() != null) {
			model.addAttribute("bride", bride);
			return "redirect:/viewMatPre";
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

	@RequestMapping(value = "/viewMatPre", method = RequestMethod.GET)
	public String viewMatchPre(@ModelAttribute("agency") Agency agency, Model model) {
		logger.info("request /viewMatPre");
		//model.addAttribute("groom", groom);
		//model.addAttribute("bride", bride);
		return "matchpreference";
	}

	@RequestMapping(value = "/matchPreference", method = RequestMethod.POST)
	public String registerMatchPreference(@ModelAttribute("agency") Agency agency, @ModelAttribute("groom") Groom groom,
			@ModelAttribute("bride") Bride bride, @Validated MatchPreference matPreference, Model model) {
		logger.info("request /matchPreference");
		if (groom != null && matPreference != null) {
			groom.setMatchPreference(matPreference);
			groom.setAgencyId(agency.getAgencyId());
			Groom regGroom = service.registerGroom(groom);
			if (regGroom != null) {
				model.addAttribute("message",
						"Groom added successfully. Confirmation has been sent to your mobile number("
								+ groom.getMobileNumber() + ") and email(" + groom.getEmail() + ")");
			}
		} else if (bride != null && matPreference != null) {
			bride.setMatchPreference(matPreference);
			bride.setAgencyId(agency.getAgencyId());
			Bride regBride = service.registerBride(bride);
			if (regBride != null) {
				model.addAttribute("message",
						"Bride added successfully. Confirmation has been sent to your mobile number("
								+ bride.getMobileNumber() + ") and email(" + bride.getEmail() + ")");
			}
		} else {
			model.addAttribute("message", "Some unexpected issue. Please try again after some time!");
		}
		return "redirect:/timeline";
	}

}