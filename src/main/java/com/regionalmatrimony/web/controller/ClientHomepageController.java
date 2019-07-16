package com.regionalmatrimony.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.model.User;
import com.regionalmatrimony.web.service.BusinessLogicService;
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

	@Autowired
	BusinessLogicService bisService;

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

		if (!groomList.isEmpty()) {
			model.addAttribute("groomlist", groomList);
			model.addAttribute("user", user);
			logger.info(user.toString());
			model = getRecentlyAddedProfiles(user, model);
		} else if (!brideList.isEmpty()) {
			model.addAttribute("bridelist", brideList);
			model.addAttribute("user", user);
			logger.info(user.toString());
			model = getRecentlyAddedProfiles(user, model);
		} else {
			model.addAttribute("user", user);
			model.addAttribute("message", message);
		}
		logger.info("passing to profileslist view");
		return "profileslist";
	}

	private Model getRecentlyAddedProfiles(User user, Model model) {
		if (user.getMemberId().startsWith("G") || user.getMemberId().startsWith("g")) {
			List<Bride> brideList = bisService.getRecentlyAddedBrides();
			model.addAttribute("recAddBrideList", brideList);
		} else if (user.getMemberId().startsWith("B") || user.getMemberId().startsWith("b")) {
			List<Groom> groomList = bisService.getRecentlyAddedGrooms();
			model.addAttribute("recAddGroomList", groomList);
		}
		return model;
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

	@RequestMapping(value = "/profile", params = { "memberid" }, method = RequestMethod.GET)
	public String getProfile(@RequestParam("memberid") String memberId, @ModelAttribute("member") User user,
			Model model) {
		logger.info("requestMapping /profile/{}", memberId);
		if (memberId.startsWith("G") || memberId.startsWith("g")) {
			Groom groom = dashService.getGroomById(memberId);
			model = getRecentlyAddedProfiles(user, model);
			model.addAttribute("mem", groom);
			model.addAttribute("user", user);
		} else if (memberId.startsWith("B") || memberId.startsWith("b")) {
			Bride bride = dashService.getBrideById(memberId);
			model.addAttribute("mem", bride);
			model.addAttribute("user", user);
			model = getRecentlyAddedProfiles(user, model);
		} else {
			model.addAttribute("message", "Something went wrong! please try again after sometime");
		}
		return "profile";
	}

	@GetMapping("/editProfile")
	public String editProfile(Model model, @ModelAttribute("member") User user) {
		if (user.getMemberId().startsWith("G") || user.getMemberId().startsWith("g")) {
			Groom groom = dashService.getGroomById(user.getMemberId());
			model.addAttribute("groom", groom);
			model.addAttribute("user", user);
			model = getRecentlyAddedProfiles(user, model);
		} else if (user.getMemberId().startsWith("B") || user.getMemberId().startsWith("b")) {
			Bride bride = dashService.getBrideById(user.getMemberId());
			model.addAttribute("bride", bride);
			model.addAttribute("user", user);
			model = getRecentlyAddedProfiles(user, model);
		}
		return "editmyprofile";
	}

	@RequestMapping(value = "/abc", method = RequestMethod.GET)
	public String getAbc(Model model, @ModelAttribute("member") User user) {
		logger.info("request mapping /abc");
		Groom groom = dashService.getGroomById("G1900001");
		model.addAttribute("groom", groom);
		model.addAttribute("user", user);
		return "editmyprofile";
	}
	
	@GetMapping("/myprofile")
	public String getMyProfile(Model model, @ModelAttribute("member") User user) {
		if (user.getMemberId().startsWith("G") || user.getMemberId().startsWith("g")) {
			Groom groom = dashService.getGroomById(user.getMemberId());
			model.addAttribute("mem", groom);
			model.addAttribute("user", user);
			model = getRecentlyAddedProfiles(user, model);
		} else if (user.getMemberId().startsWith("B") || user.getMemberId().startsWith("b")) {
			Bride bride = dashService.getBrideById(user.getMemberId());
			model.addAttribute("mem", bride);
			model.addAttribute("user", user);
			model = getRecentlyAddedProfiles(user, model);
		}
		return "myprofile";
	}

	@PostMapping("/updategroomprofile")
	public String updateGroomProfile(@Validated Groom groom, Model model, @ModelAttribute("member") User user) {
		if (groom.getMemberId().startsWith("G") || groom.getMemberId().startsWith("g")) {
			groom = dashService.registerGroom(groom);
			model.addAttribute("mem", groom);
			model.addAttribute("user", user);
		}
		return "myprofile";
	}

	@PostMapping("/updatebrideprofile")
	public String updateBrideProfile(@Validated Bride bride, Model model, @ModelAttribute("member") User user) {
		if (bride.getMemberId().startsWith("B") || bride.getMemberId().startsWith("b")) {
			bride = dashService.registerBride(bride);
			model.addAttribute("mem", bride);
			model.addAttribute("user", user);
		}
		return "myprofile";
	}

	@PostMapping("/simplesearch")
	public String getSimpleSearchResults(@RequestParam("education") String education,
			@RequestParam("occupation") String occupation, @RequestParam("mobileNumber") String mobileNumber,
			@RequestParam("subCaste") String subCaste, @RequestParam("star") String star,
			@RequestParam("raasi") String raasi, @ModelAttribute("member") User user, Model model,
			RedirectAttributes redirAttr) {
		if (user.getMemberId().startsWith("G") || user.getMemberId().startsWith("g")) {
			List<Bride> brideList = searchService.getBrideSimpleSearch(education, occupation, mobileNumber, subCaste,
					star, raasi);
			redirAttr.addFlashAttribute("bridelist", brideList);
			logger.info("Bride count--", brideList.size());
		} else if (user.getMemberId().startsWith("B") || user.getMemberId().startsWith("b")) {
			List<Groom> groomList = searchService.getGroomSimpleSearch(education, occupation, mobileNumber, subCaste,
					star, raasi);
			redirAttr.addFlashAttribute("groomlist", groomList);
			logger.info("Groom count--", groomList.size());
		}
		return "redirect:/profileslist";
	}
}
