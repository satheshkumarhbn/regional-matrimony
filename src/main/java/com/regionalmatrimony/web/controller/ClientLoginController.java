package com.regionalmatrimony.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.model.User;
import com.regionalmatrimony.web.security.UserAuthenticationProvider;
import com.regionalmatrimony.web.service.ClientLoginService;

@Controller
@SessionAttributes("member")
public class ClientLoginController {

	protected static final Logger logger = LoggerFactory.getLogger(ClientLoginController.class);

	@Autowired
	ClientLoginService service;

	@Autowired
	UserAuthenticationProvider authenticationProvider;

	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public String loginMember(HttpServletRequest request, @Validated User user, Model model) {
		logger.info("request mapping /memberLogin");
		try {
			UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(user.getMemberId(),
					user.getPassword());
			token.setDetails(new WebAuthenticationDetails(request));
			Authentication auth = authenticationProvider.authenticate(token);
			SecurityContextHolder.getContext().setAuthentication(auth);
			if (auth.getName().startsWith("G") || auth.getName().startsWith("g")) {
				Groom groom = service.getGroomById(user.getMemberId());
				user.setEmail(groom.getEmail());
				user.setAgencyId(groom.getAgencyId());
				user.setMobileNumber(groom.getMobileNumber());
				user.setFullName(groom.getFirstName());
				List<Bride> recAddBrideList = service.getRecentlyAddedBrides();
				model.addAttribute("member", user);
				model.addAttribute("recAddBrideList", recAddBrideList);
				logger.info("Groom login success");
				return "homepage";
			} else if (auth.getName().startsWith("B") || auth.getName().startsWith("b")) {
				Bride bride = service.getBrideById(user.getMemberId());
				user.setEmail(bride.getEmail());
				user.setAgencyId(bride.getAgencyId());
				user.setMobileNumber(bride.getMobileNumber());
				user.setFullName(bride.getFirstName());
				List<Groom> recAddGroomList = service.getRecentlyAddedGrooms();
				model.addAttribute("member", user);
				model.addAttribute("recAddGroomList", recAddGroomList);
				logger.info("Bride login success");
				return "homepage";
			} else {
				logger.info("Member id wrong");
				model.addAttribute("errormsg", "PLease check member id/ password and try again!");
			}
		} catch(BadCredentialsException e) {
			logger.error("Eception while authentication--", e.getMessage());
			model.addAttribute("errormsg", e.getMessage());
		}
		return "login";
	}

	@GetMapping(value = "/registerUser")
	public String registerUser(Model model) {
		return "userregistration";
	}

	@GetMapping(value = "/logout")
	public String userLogout() {
		SecurityContextHolder.getContext().setAuthentication(null);
		return "login";
	}
}
