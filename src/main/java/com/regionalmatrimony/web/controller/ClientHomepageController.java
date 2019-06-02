package com.regionalmatrimony.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.model.User;
import com.regionalmatrimony.web.service.DashboardService;
import com.regionalmatrimony.web.service.SearchService;

@Controller
@SessionAttributes("member")
public class ClientHomepageController {

	protected static final Logger logger = LoggerFactory.getLogger(ClientHomepageController.class);

	@Autowired
	SearchService searchService;

	@Autowired
	DashboardService dashService;

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
	public String productlist(@ModelAttribute("groomlist") ArrayList<Groom> groomList,
			@ModelAttribute("bridelist") ArrayList<Bride> brideList, @ModelAttribute("member") User user,
			@ModelAttribute("message") String message, Model model, RedirectAttributes redirAttr) {
		logger.info("request mapping /profileslist");
		
		if(!groomList.isEmpty()) {
			model.addAttribute("groomlist", groomList);
			model.addAttribute("user", user);
			logger.info(user.toString());
		} else if(!brideList.isEmpty()) {
			model.addAttribute("bridelist", brideList);
			model.addAttribute("user", user);
			logger.info(user.toString());
		} else {
			model.addAttribute("user", user);
			model.addAttribute("message", message);
		}
		logger.info("passing to profileslist view");
		return "profileslist";
	}

	@RequestMapping(value = "/getAllProfiles", method = RequestMethod.GET)
	public String getAllProfiles(@ModelAttribute("member") User user, Model model, RedirectAttributes redirAttr) {
		if (user != null) {
			if (user.getMemberId() != null) {
				String prefix = user.getMemberId().substring(0, 1);
				if (prefix.equalsIgnoreCase("G")) {
					List<Bride> memberList = searchService.getAllBride();
					redirAttr.addFlashAttribute("bridelist", memberList);
				} else if (prefix.equalsIgnoreCase("B")) {
					List<Groom> memberList = searchService.getAllGroom();
					redirAttr.addFlashAttribute("groomlist", memberList);
				}
			}
		} else {
			redirAttr.addFlashAttribute("user", "Guest");
			redirAttr.addFlashAttribute("message", "Please login to get better result");

		}
		return "redirect:/profileslist";
	}

	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String getHeader(Model model) {
		logger.info("requestMapping /header");
		return "header";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String getProfile(@RequestParam("memberid") String memberId, Model model) {
		logger.info("requestMapping /profile/{memberid}");
		if (memberId.startsWith("G")) {
			Groom groom = dashService.getGroomById(memberId);
			model.addAttribute("member", groom);
		} else if (memberId.startsWith("B")) {
			Bride bride = dashService.getBrideById(memberId);
			model.addAttribute("member", bride);
		} else {
			model.addAttribute("message", "Something went wrong! please try again after sometime");
		}
		return "profile";
	}
	
	@RequestMapping(value = "/abc", method = RequestMethod.GET)
	public String getAbc(Model model) {
		logger.info("request mapping /abc");
		Groom groom = dashService.getGroomById("G1900001");
		model.addAttribute("groomlist", searchService.getAllGroom());
		model.addAttribute("bridelist", searchService.getAllBride());
		model.addAttribute("groom", groom);
		return "profileslist";
	}
}
