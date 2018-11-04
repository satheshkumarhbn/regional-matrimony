package com.regionalmatrimony.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.regionalmatrimony.web.dao.BrideRepository;
import com.regionalmatrimony.web.dao.GroomRepository;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;

@Service
public class DashboardService {
	
	@Autowired
	GroomRepository groomRepo;
	
	@Autowired
	BrideRepository brideRepo;
	
	public Groom registerGroom(Groom groom) {
		String id = "1".concat(groom.getMobileNumber());
		groom.setMemberId(Long.parseLong(id));
		return groomRepo.save(groom);
	}
	
	public Bride registerBride(Bride bride) {
		bride.setMemberId(Long.parseLong("2".concat(bride.getMobileNumber())));
		return brideRepo.save(bride);
	}
	
}
