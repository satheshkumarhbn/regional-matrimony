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

import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.model.User;
import com.regionalmatrimony.web.service.ClientLoginService;

@Controller
@SessionAttributes("member")
public class ClientLoginController {
	
	protected static final Logger logger = LoggerFactory.getLogger(ClientLoginController.class);
	
	@Autowired
	ClientLoginService service;

	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public String loginMember(@Validated User user, Model model) {
		logger.info("request mapping /memberLogin");
		if(user.getMemberId().startsWith("G")) {
			Groom groom = service.getGroomById(user.getMemberId());
			if(groom != null) {
				if(groom.getPassword().equals(user.getPassword())) {
					user.setEmail(groom.getEmail());
					user.setAgencyId(groom.getAgencyId());
					user.setMobileNumber(groom.getMobileNumber());
					user.setFullName(groom.getFirstName().concat(" ".concat(groom.getLastName())));
					model.addAttribute("member", user);
					logger.info("Groom login success");
					return "homepage";
				} else {
					logger.info("Password Failure");
					model.addAttribute("errormsg","Password Failure");
				}
			} else {
				logger.info("Member not found");
				model.addAttribute("errormsg", "Member not found. PLease contact helpdesk!");
			}
		} else if(user.getMemberId().startsWith("B")) {
			Bride bride = service.getBrideById(user.getMemberId());
			if(bride != null) {
				if(bride.getPassword().equals(user.getPassword())) {
					user.setEmail(bride.getEmail());
					user.setAgencyId(bride.getAgencyId());
					user.setMobileNumber(bride.getMobileNumber());
					user.setFullName(bride.getFirstName().concat(" ".concat(bride.getLastName())));
					model.addAttribute("member", user);
					logger.info("Bride login success");
					return "homepage";
				} else {
					logger.info("Password Failure");
					model.addAttribute("errormsg","Password Failure");
				}
			} else {
				logger.info("Member not found");
				model.addAttribute("errormsg", "Member not found. PLease contact helpdesk!");
			}
		}
		return "login";
	}
}
