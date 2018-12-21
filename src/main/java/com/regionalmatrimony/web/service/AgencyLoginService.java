package com.regionalmatrimony.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.regionalmatrimony.web.dao.AgencyLoginRepository;
import com.regionalmatrimony.web.model.Agency;
import com.regionalmatrimony.web.utils.Utils;

@Service
public class AgencyLoginService {
	
	@Autowired
	AgencyLoginRepository agencyRepo;
	
	
	public Agency getAgencyDetail(String agencyId) {
		return agencyRepo.getAgencyDetail(agencyId);
	}
	
	public Agency registerAgency(Agency agency) {
		
		Agency user = agencyRepo.getAgencyByMobNdEmail(agency.getMobileNumber(), agency.getEmail());
		if(user == null) {
			agency.setAgencyId(setAgencyId());
			agency.setActive(false);
			agency.setPassword(Utils.generateRandomPassword());
			return agencyRepo.save(agency);
		} else {
			return user;
		}
	}
	
	private String setAgencyId() {
		String postfix = Integer.toString(Integer.parseInt(agencyRepo.getLastUpdatedAgencyId(agencyRepo.getMaxId()).substring(6,8))+1);
		return "agent"+postfix;
	}
}
