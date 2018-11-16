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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.regionalmatrimony.web.model.Agency;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.service.SearchService;

@Controller
@SessionAttributes("agency")
public class SearchController {
	protected static final Logger logger = LoggerFactory.getLogger(SearchController.class);

	@Autowired
	SearchService service;
	
	@RequestMapping(value= "/search", method = RequestMethod.GET)
	public String showSearch(Model model) {
		logger.info("requestMapping /search");
		return "search";
	}
	
	@RequestMapping(value="/searchByMemberId", method = RequestMethod.POST)
	public String searchMemberId(@RequestParam("memberid") String memberId,@ModelAttribute("agency") Agency agency, Model model) {
		logger.info("requestMapping /searchMemberId/{}",memberId);
		String fullName = null;
		if(memberId != null) {
			String prefix = memberId.substring(0, 1);
			if(prefix.equals("1")) {
				Groom groom = service.getGroomUsingId(memberId);
				if(groom.getAgencyId().equals(agency.getAgencyId())) {
					fullName = groom.getFirstName().concat(groom.getLastName());
					model.addAttribute("fullname", fullName);
					model.addAttribute("searchresult", groom);
				} else {
					model.addAttribute("errormessage", "groom is not registered with your agency");
				}
			} else if(prefix.equals("2")) {
				Bride bride = service.getBrideUsingId(memberId);
				if(bride.getAgencyId().equals(agency.getAgencyId())) {
					fullName = bride.getFirstName().concat(bride.getLastName());
					model.addAttribute("fullname", fullName);
					model.addAttribute("searchresult", bride);
				} else {
					model.addAttribute("errormessage", "bride is not registered with your agency");
				}
			}
		} 
		return "searchresult";
	}
	
	@RequestMapping(value="/searchByFullName", method = RequestMethod.POST)
	public String searchFullName(@RequestParam("name") String name,@ModelAttribute("agency") Agency agency, Model model) {
		logger.info("requestMapping /searchByFullName/{}",name);
		if(name != null) {
			String lastName=name.split(" ")[name.split(" ").length-1];
		    String firstName = name.substring(0, name.length() - lastName.length());
			List<Groom> groomList = service.getGroomByFullName(firstName, lastName, agency.getAgencyId());
			List<Bride> brideList = service.getBrideUsingName(firstName, lastName, agency.getAgencyId());
			if(!groomList.isEmpty()) {
				model.addAttribute("searchresult", groomList);
			}
			if(!brideList.isEmpty()) {
				model.addAttribute("searchresult", brideList);
			}
			if(groomList.isEmpty() && brideList.isEmpty()){
				model.addAttribute("member404", "No groom or bride registered with search name");
			}
		} 
		return "searchresult";
	}
	
	@RequestMapping(value="/searchByMobileNumber", method = RequestMethod.POST)
	public String searchMobileNumber(@RequestParam("mobileNumber") String mobileNumber,@ModelAttribute("agency") Agency agency, Model model) {
		logger.info("requestMapping /searchByMobileNumber/{}",mobileNumber);
		if(mobileNumber != null) {
			List<Groom> groomList = service.getGroomUsingMobileNumber(mobileNumber, agency.getAgencyId());
			List<Bride> brideList = service.getBrideUsingMobileNumber(mobileNumber, agency.getAgencyId());
			if(!groomList.isEmpty()) {
				model.addAttribute("searchresult", groomList);
			}
			if(!brideList.isEmpty()) {
				model.addAttribute("searchresult", brideList);
			}
			if(groomList.isEmpty() && brideList.isEmpty()){
				model.addAttribute("member404", "No groom or bride registered with this mobile number");
			}
		}
		return "searchresult";
	}
	@RequestMapping(value="/searchByStarRaasi", method = RequestMethod.POST)
	public String searchByStarNdRaasi(@RequestParam("member") String member, @RequestParam("star") String star, @RequestParam("raasi") String raasi, @ModelAttribute("agency") Agency agency, Model model) {
		logger.info("requestMapping /searchByStarRaasi/{}/{}", star, raasi);
		if(member.equals("groom")) {
			List<Groom> groomList = service.getGroomByStarNdRaasi(star, raasi, agency.getAgencyId());
			model.addAttribute("searchresult", groomList);
		} else if(member.equals("bride")) {
			List<Bride> brideList = service.getBrideByStarNdRaasi(star, raasi, agency.getAgencyId());
			model.addAttribute("searchresult", brideList);
		} else {
			model.addAttribute("member404", "No "+ member +" registered with this specified star and raasi");
		}
		return "searchresult";
	}
	
}
