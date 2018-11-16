package com.regionalmatrimony.web.controller;

import java.util.ArrayList;
import java.util.Collections;
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

import com.regionalmatrimony.web.model.Agency;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.service.ReportService;

@Controller
@SessionAttributes("agency")
public class ReportController {
	
	protected static final Logger logger = LoggerFactory.getLogger(ReportController.class);
	
	@Autowired
	ReportService service;
	
	@RequestMapping(value = "/getAllUserReport", method = RequestMethod.GET)
	public String getAllUserReport(@ModelAttribute("agency") Agency agency, Model model) {
		logger.info("request mapping /getAllUserReport");
		List<Groom> groomList = service.getGroomReport(agency.getAgencyId());
		List<Bride> brideList = service.getBrideReport(agency.getAgencyId());
		List<Object> combineReport = new ArrayList<>();
		Collections.addAll(combineReport, groomList);
		Collections.addAll(combineReport, brideList);
		if(!combineReport.isEmpty()) {
			model.addAttribute("combinereport", combineReport);
		} else {
			model.addAttribute("report404", "No groom/Bride registered with your agency");
		}
		return "reportresult";
	}
	
	@RequestMapping(value = "/getGroomReport", method = RequestMethod.GET)
	public String getGroomReport(@ModelAttribute("agency") Agency agency, Model model) {
		logger.info("request mapping /getGroomReport");
		List<Groom> groomList = service.getGroomReport(agency.getAgencyId());
		if(!groomList.isEmpty()) {
			model.addAttribute("groomreport", groomList);
		} else {
			model.addAttribute("report404", "No grooms registered with your agency");
		}
		return "reportresult";
	}
	
	@RequestMapping(value = "/getBrideReport", method = RequestMethod.GET)
	public String getBrideReport(@ModelAttribute("agency") Agency agency, Model model) {
		logger.info("request mapping /getBrideReport");
		List<Bride> brideList = service.getBrideReport(agency.getAgencyId());
		if(!brideList.isEmpty()) {
			model.addAttribute("bridereport", brideList);
		} else {
			model.addAttribute("report404", "No brides registered with your agency");
		}
		return "reportresult";
	}

}
