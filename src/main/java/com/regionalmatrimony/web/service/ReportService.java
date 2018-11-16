package com.regionalmatrimony.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.regionalmatrimony.web.dao.BrideRepository;
import com.regionalmatrimony.web.dao.GroomRepository;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;

@Service
public class ReportService {

	@Autowired
	GroomRepository groomRepo;
	
	@Autowired
	BrideRepository brideRepo;
	
	public List<Groom> getGroomReport(String agencyId) {
		return groomRepo.findGroomByAgency(agencyId);
	}
	
	public List<Bride> getBrideReport(String agencyId) {
		return brideRepo.findBrideByAgency(agencyId);
	}
	
	
}
