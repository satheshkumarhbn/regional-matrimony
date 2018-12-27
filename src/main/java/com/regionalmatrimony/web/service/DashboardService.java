package com.regionalmatrimony.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.regionalmatrimony.web.dao.BrideRepository;
import com.regionalmatrimony.web.dao.GroomRepository;
import com.regionalmatrimony.web.dao.MatchPreferenceRepository;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.model.MatchPreference;

@Service
public class DashboardService {

	@Autowired
	GroomRepository groomRepo;

	@Autowired
	BrideRepository brideRepo;

	@Autowired
	MatchPreferenceRepository matPreRepo;

	public Groom registerGroom(Groom groom) {
		return groomRepo.save(groom);
	}

	public int countGroom(String agencyId) {
		return groomRepo.countGroom(agencyId);
	}

	public Bride registerBride(Bride bride) {
		return brideRepo.save(bride);
	}

	public int countBride(String agencyId) {
		return brideRepo.countBride(agencyId);
	}

	public MatchPreference registerMatchPreferencce(MatchPreference matPreference) {
		return matPreRepo.save(matPreference);
	}

	public String getLastGroomId() {
		return groomRepo.getLastUpdatedGroomId();
	}

	public String getLastBrideId() {
		return brideRepo.getLastUpdatedBrideId();
	}
}
