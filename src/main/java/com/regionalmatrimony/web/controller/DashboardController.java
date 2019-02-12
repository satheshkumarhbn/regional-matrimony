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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.regionalmatrimony.web.dto.MatchPreferenceDto;
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
	public String registerGroomForm(@Validated Groom groom, @ModelAttribute("agency") Agency agency, Model model,
			RedirectAttributes redirectAttributes) {
		logger.info("requestMapping /registerGroomForm");
		groom.setAgencyId(agency.getAgencyId());
		groom.setGender("male");
		groom.setCreationDate(Utils.getCurrentTimeStamp());
		String lastGroomId = service.getLastGroomId();
		groom.setMemberId(Utils.createMemberId(groom.getGender(), lastGroomId));
		groom.setPassword(Utils.generateRandomPassword());
		Groom registeredUser = service.registerGroom(groom);
		if (registeredUser.getMemberId() != null) {
			model.addAttribute("groomId", registeredUser.getMemberId());
			redirectAttributes.addFlashAttribute("groomId", registeredUser.getMemberId());
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
	public String registerBride(@Validated Bride bride, @ModelAttribute("agency") Agency agency, Model model,
			RedirectAttributes redirectAttributes) {
		logger.info("requestMapping /registerBrideForm");
		bride.setAgencyId(agency.getAgencyId());
		bride.setGender("female");
		bride.setCreationDate(Utils.getCurrentTimeStamp());
		String lastBrideId = service.getLastBrideId();
		bride.setMemberId(Utils.createMemberId(bride.getGender(), lastBrideId));
		bride.setPassword(Utils.generateRandomPassword());
		Bride registeredUser = service.registerBride(bride);
		if (registeredUser.getMemberId() != null) {
			model.addAttribute("brideId", registeredUser.getMemberId());
			redirectAttributes.addFlashAttribute("brideId", registeredUser.getMemberId());
			return "redirect:/viewMatPre";
		}
		model.addAttribute("errorMessage", "Bride is not registered. Please try again!");
		return "redirect:/timeline";
	}

	@RequestMapping(value = "/timeline", method = RequestMethod.GET)
	public String showTimeline(@ModelAttribute("agency") Agency agency, Model model) {
		logger.info("request mapping /timeline");
		Integer groomCount = service.countGroom(agency.getAgencyId());
		// Integer groomCount = 2;
		// Integer brideCount = 3;
		model.addAttribute("groomcount", Integer.toString(groomCount));
		Integer brideCount = service.countBride(agency.getAgencyId());
		model.addAttribute("bridecount", Integer.toString(brideCount));
		return "timeline";
	}

	@RequestMapping(value = "/viewMatPre", method = RequestMethod.GET)
	public String viewMatchPre(@ModelAttribute("agency") Agency agency, @ModelAttribute("groomId") String groomId,
			@ModelAttribute("brideId") String brideId, Model model, RedirectAttributes redirectAttributes) {
		logger.info("request /viewMatPre");
		model.addAttribute("castelist", service.getCaste());
		model.addAttribute("subcastelist", service.getSubCaste());
		model.addAttribute("divisionlist", service.getDivision());
		model.addAttribute("dietylist", service.getDiety());
		model.addAttribute("starlist", service.getStar());
		model.addAttribute("raasilist", service.getRaasi());
		model.addAttribute("workloclist", service.getWorkLocation());
		model.addAttribute("occupationlist", service.getOccupation());
		model.addAttribute("educationlist", service.getEducation());
		model.addAttribute("groomId", groomId);
		model.addAttribute("brideId", brideId);
		return "matchpreference";
	}

	@RequestMapping(value = "/matchPreference", method = RequestMethod.POST)
	public String registerMatchPreference(@ModelAttribute("agency") Agency agency,
			@Validated MatchPreferenceDto matPreferenceDto, Model model) {
		logger.info("request /matchPreference");
		MatchPreference matPreference = new MatchPreference();
		if (matPreferenceDto != null) {
			StringBuilder sb = null;
			matPreference.setStartAge(matPreferenceDto.getMpStartAge());
			matPreference.setEndAge(matPreferenceDto.getMpEndAge());
			matPreference.setHeight(matPreferenceDto.getMpHeight());
			matPreference.setWeight(matPreferenceDto.getMpWeight());
			if (matPreferenceDto.getMpCaste() != null) {
				sb = new StringBuilder();
				for (String caste : matPreferenceDto.getMpCaste()) {
					if (sb.length() == 0) {
						sb.append(caste);
					} else
						sb.append(":").append(caste);
				}
			}
			matPreference.setCaste(sb.toString());
			if (matPreferenceDto.getMpSubCaste() != null) {
				sb = new StringBuilder();
				for (String subCaste : matPreferenceDto.getMpSubCaste()) {
					if (sb.length() == 0) {
						sb.append(subCaste);
					} else
						sb.append(":").append(subCaste);
				}
			}
			matPreference.setSubCaste(sb.toString());
			if (matPreferenceDto.getMpDivision() != null) {
				sb = new StringBuilder();
				for (String division : matPreferenceDto.getMpDivision()) {
					if (sb.length() == 0) {
						sb.append(division);
					} else
						sb.append(":").append(division);
				}
			}
			matPreference.setDivision(sb.toString());
			if (matPreferenceDto.getMpDiety() != null) {
				sb = new StringBuilder();
				for (String diety : matPreferenceDto.getMpDiety()) {
					if (sb.length() == 0) {
						sb.append(diety);
					} else
						sb.append(":").append(diety);
				}
			}
			matPreference.setDiety(sb.toString());
			if (matPreferenceDto.getMpWorkLocation() != null) {
				sb = new StringBuilder();
				for (String workLocation : matPreferenceDto.getMpWorkLocation()) {
					if (sb.length() == 0) {
						sb.append(workLocation);
					} else
						sb.append(":").append(workLocation);
				}
			}
			matPreference.setWorkLocation(sb.toString());
			if (matPreferenceDto.getMpOccupation() != null) {
				sb = new StringBuilder();
				for (String occupation : matPreferenceDto.getMpOccupation()) {
					if (sb.length() == 0) {
						sb.append(occupation);
					} else
						sb.append(":").append(occupation);
				}
			}
			matPreference.setOccupation(sb.toString());
			if (matPreferenceDto.getMpEducation() != null) {
				sb = new StringBuilder();
				for (String education : matPreferenceDto.getMpEducation()) {
					if (sb.length() == 0) {
						sb.append(education);
					} else
						sb.append(":").append(education);
				}
			}
			matPreference.setEducation(sb.toString());
			if (matPreferenceDto.getMpMaritalStatus() != null) {
				sb = new StringBuilder();
				for (String maritalStatus : matPreferenceDto.getMpMaritalStatus()) {
					if (sb.length() == 0) {
						sb.append(maritalStatus);
					} else
						sb.append(":").append(maritalStatus);
				}
			}
			matPreference.setMaritalStatus(sb.toString());
			if (matPreferenceDto.getMpDisability() != null) {
				sb = new StringBuilder();
				for (String disability : matPreferenceDto.getMpDisability()) {
					if (sb.length() == 0) {
						sb.append(disability);
					} else
						sb.append(":").append(disability);
				}
			}
			matPreference.setDisability(sb.toString());
			if (matPreferenceDto.getMpStar() != null) {
				sb = new StringBuilder();
				for (String star : matPreferenceDto.getMpStar()) {
					if (sb.length() == 0) {
						sb.append(star);
					} else
						sb.append(":").append(star);
				}
			}
			matPreference.setStar(sb.toString());
			if (matPreferenceDto.getMpRaasi() != null) {
				sb = new StringBuilder();
				for (String raasi : matPreferenceDto.getMpRaasi()) {
					if (sb.length() == 0) {
						sb.append(raasi);
					} else
						sb.append(":").append(raasi);
				}
			}
			matPreference.setRaasi(sb.toString());
		}

		Groom groom = null;
		Bride bride = null;
		if (matPreferenceDto.getMemberId().startsWith("G")) {
			groom = service.getGroomById(matPreferenceDto.getMemberId());
		} else if (matPreferenceDto.getMemberId().startsWith("B")) {
			bride = service.getBrideById(matPreferenceDto.getMemberId());
		}

		if (groom != null && matPreference != null) {
			matPreference.setMemberId(groom.getMemberId());
			MatchPreference regMatPre = service.registerMatchPreferencce(matPreference);
			if (regMatPre != null) {
				model.addAttribute("message",
						"Groom added successfully. Confirmation has been sent to your mobile number("
								+ groom.getMobileNumber() + ") and email(" + groom.getEmail() + ")");
			}
		} else if (bride != null && matPreference != null) {
			matPreference.setMemberId(bride.getMemberId());
			MatchPreference regMatPre = service.registerMatchPreferencce(matPreference);
			if (regMatPre != null) {
				model.addAttribute("message",
						"Bride added successfully. Confirmation has been sent to your mobile number("
								+ bride.getMobileNumber() + ") and email(" + bride.getEmail() + ")");
			}
		} else if (groom == null || bride == null) {
			model.addAttribute("message", "Member doesn't exist. Please register the member");
		} else {
			model.addAttribute("message", "Some unexpected issue. Please try again after some time!");
		}
		return "redirect:/timeline";
	}

}