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
		
	public Groom getGroomUsingId(String memberId) {
		logger.info("service method called getGroomUsingId({})", memberId);
		return groomRepo.findOne(Long.parseLong(memberId));
	}
	
	public Bride getBrideUsingId(String memberId) {
		logger.info("service method called getBrideUsingId({})", memberId);
		return brideRepo.findOne(Long.parseLong(memberId));
	}
	
	public List<Groom> getGroomByFullName(String firstName, String lastName) {
		logger.info("service method called getGroomByFullName({} {})", firstName, lastName);
		return groomRepo.findGroomByFullName(firstName, lastName);
	}
	
	public List<Bride> getBrideUsingName(String firstName, String lastName) {
		logger.info("service method called getBrideByFullName({} {})", firstName, lastName);
		return brideRepo.findBrideByFullName(firstName, lastName);
	}
	
	public List<Groom> getGroomUsingMobileNumber(String mobileNumber) {
		logger.info("service method called getGroomUsingMobileNumber({})", mobileNumber);
		return groomRepo.findByMobileNumber(mobileNumber);
	}
	
	public List<Bride> getBrideUsingMobileNumber(String mobileNumber) {
		logger.info("service method called getBrideUsingMobileNumber({})", mobileNumber);
		return brideRepo.findByMobileNumber(mobileNumber);
	}

	public List<Groom> getGroomByStarNdRaasi(String star, String raasi) {
		logger.info("service method called getGroomByStarNdRaasi({},{})", star, raasi);
		return groomRepo.findGroomByStarNdRaasi(star, raasi);
	}
	
	public List<Bride> getBrideByStarNdRaasi(String star, String raasi) {
		logger.info("service method called getBrideByStarNdRaasi({},{})", star, raasi);
		return brideRepo.findBrideByStarNdRaasi(star, raasi);
	}

}
