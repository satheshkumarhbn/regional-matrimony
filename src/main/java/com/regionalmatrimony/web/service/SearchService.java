package com.regionalmatrimony.web.service;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.regionalmatrimony.web.dao.BrideRepository;
import com.regionalmatrimony.web.dao.GroomRepository;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;

@Service
public class SearchService {
	
	protected static final Logger logger = LoggerFactory.getLogger(SearchService.class);
	
	@Autowired
	GroomRepository groomRepo;
	
	@Autowired
	BrideRepository brideRepo;
	
	public List<Groom> getAllGroom() {
		return groomRepo.findAll();
	}
	
	public List<Bride> getAllBride() {
		return brideRepo.findAll();
	}
		
	public Groom getGroomUsingId(String memberId) {
		logger.info("service method called getGroomUsingId({})", memberId);
		return groomRepo.findOne(Long.parseLong(memberId));
	}
	
	public Bride getBrideUsingId(String memberId) {
		logger.info("service method called getBrideUsingId({})", memberId);
		return brideRepo.findOne(Long.parseLong(memberId));
	}
	
	public List<Groom> getGroomByFullName(String firstName, String lastName, String agencyId) {
		logger.info("service method called getGroomByFullName({}, {}, {})", firstName, lastName, agencyId);
		return groomRepo.findGroomByFullName(firstName, lastName, agencyId);
	}
	
	public List<Bride> getBrideUsingName(String firstName, String lastName, String agencyId) {
		logger.info("service method called getBrideByFullName({}, {}, {})", firstName, lastName, agencyId);
		return brideRepo.findBrideByFullName(firstName, lastName, agencyId);
	}
	
	public List<Groom> getGroomUsingMobileNumber(String mobileNumber, String agencyId) {
		logger.info("service method called getGroomUsingMobileNumber({},{})", mobileNumber, agencyId);
		return groomRepo.findByMobileNumber(mobileNumber, agencyId);
	}
	
	public List<Bride> getBrideUsingMobileNumber(String mobileNumber, String agencyId) {
		logger.info("service method called getBrideUsingMobileNumber({},{})", mobileNumber, agencyId);
		return brideRepo.findByMobileNumber(mobileNumber, agencyId);
	}

	public List<Groom> getGroomByStarNdRaasi(String star, String raasi, String agencyId) {
		logger.info("service method called getGroomByStarNdRaasi({},{},{})", star, raasi, agencyId);
		return groomRepo.findGroomByStarNdRaasi(star, raasi, agencyId);
	}
	
	public List<Bride> getBrideByStarNdRaasi(String star, String raasi, String agencyId) {
		logger.info("service method called getBrideByStarNdRaasi({},{},{})", star, raasi, agencyId);
		return brideRepo.findBrideByStarNdRaasi(star, raasi, agencyId);
	}

}
