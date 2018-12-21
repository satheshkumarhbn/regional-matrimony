package com.regionalmatrimony.web.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.model.User;
import com.regionalmatrimony.web.service.SearchService;

@Controller
@SessionAttributes("member")
public class ClientHomepageController {

	protected static final Logger logger = LoggerFactory.getLogger(ClientHomepageController.class);
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("request mapping /");
		return "login";
	}
		
	@RequestMapping(value = "/clienthomepage", method = RequestMethod.GET)
	public String initializeClientHomepage(Model model) {
		logger.info("request mapping /clienthomepage");
		return "clienthomepage";
	}
	
	@RequestMapping(value = "/profileslist", method = RequestMethod.GET)
	public String productlist(Model model) {
		logger.info("request mapping /productlist");
		return "profileslist";
	}
	
	@RequestMapping(value="/getAllProfiles", method = RequestMethod.GET)
	public String getAllProfiles(@ModelAttribute("member") User user, Model model) {
		if(user != null) {
			if(user.getMemberId() != null) {
				String prefix = user.getMemberId().substring(0, 1);
				if(prefix.equalsIgnoreCase("G")) {
					List<Bride> memberList = searchService.getAllBride();
					model.addAttribute("memberList", memberList);
				} else if(prefix.equalsIgnoreCase("B")) {
					List<Groom> memberList = searchService.getAllGroom();
					model.addAttribute("memberList", memberList);
				}
			} 
		} else {
			model.addAttribute("user", "Guest");
			model.addAttribute("message", "Please login to get better result");
		}
		return "profileslist";
	}
	
	@RequestMapping(value="/header", method = RequestMethod.GET)
	public String getHeader(Model model) {
		logger.info("requestMapping /header");
		return "header";
	}
	
	@RequestMapping(value="/profile", method = RequestMethod.GET)
	public String getProfile(Model model) {
		logger.info("requestMapping /profile");
		return "profile";
	}
	
}
