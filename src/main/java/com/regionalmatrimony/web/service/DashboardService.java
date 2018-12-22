package com.regionalmatrimony.web.service;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.regionalmatrimony.web.dao.BrideRepository;
import com.regionalmatrimony.web.dao.GroomRepository;
import com.regionalmatrimony.web.dao.MatchPreferenceRepository;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.model.MatchPreference;
import com.regionalmatrimony.web.utils.Utils;

@Service
public class DashboardService {
	
	@Autowired
	GroomRepository groomRepo;
	
	@Autowired
	BrideRepository brideRepo;
	
	@Autowired
	MatchPreferenceRepository matPreRepo;
	
	public Groom registerGroom(Groom groom) {
		groom.setMemberId(createMemberId(groom.getGender()));
		groom.setPassword(Utils.generateRandomPassword());
		return groomRepo.save(groom);
	}
	
	public int countGroom(String agencyId) {
		return groomRepo.countGroom(agencyId);
	}
	
	public Bride registerBride(Bride bride) {
		bride.setMemberId(createMemberId(bride.getGender()));
		bride.setPassword(Utils.generateRandomPassword());
		return brideRepo.save(bride);
	}
	
	public int countBride(String agencyId) {
		return brideRepo.countBride(agencyId);
	}
	
	public String createMemberId(String gender) {
		String memberId = null;
		String postfix = null;
		if(gender.equals("male")) {
			String lastMemberId = groomRepo.getLastUpdatedGroomId();
			if(lastMemberId == null) {
				postfix = String.format("%05d", 1);
			} else {
				postfix = String.format("%05d",Integer.parseInt(lastMemberId.substring(lastMemberId.length()-5))+1);
			}
			String year = Integer.toString(Calendar.getInstance().get(Calendar.YEAR)).substring(2,4);
			memberId =  "G"+year+postfix;
		} else if(gender.equals("female")) {
			String lastMemberId = brideRepo.getLastUpdatedBrideId();
			if(lastMemberId == null) {
				postfix = String.format("%05d", 1);
			} else {
				postfix = String.format("%05d",Integer.parseInt(lastMemberId.substring(lastMemberId.length()-5))+1);
			}
			String year = Integer.toString(Calendar.getInstance().get(Calendar.YEAR)).substring(2,4);
			memberId =  "B"+year+postfix;
		}
		return memberId;
	}
	
	public MatchPreference registerMatchPreferencce(MatchPreference matPreference) {
		return matPreRepo.save(matPreference);
	}
}
