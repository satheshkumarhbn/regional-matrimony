package com.regionalmatrimony.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.regionalmatrimony.web.dao.BrideRepository;
import com.regionalmatrimony.web.dao.GroomRepository;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;

@Service
public class ClientLoginService {

	@Autowired
	GroomRepository groomRepo;
	
	@Autowired
	BrideRepository brideRepo;
	
	public Groom getGroomById(String memberId) {
		return groomRepo.findGroomByMemberId(memberId);
	}
	
	public Bride getBrideById(String memberId) {
		return brideRepo.findBrideByMemberId(memberId);
	}
}
