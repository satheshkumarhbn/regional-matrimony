package com.regionalmatrimony.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.regionalmatrimony.web.dao.BrideRepository;
import com.regionalmatrimony.web.dao.CasteRepository;
import com.regionalmatrimony.web.dao.DietyRepository;
import com.regionalmatrimony.web.dao.DivisionRepository;
import com.regionalmatrimony.web.dao.EducationRepository;
import com.regionalmatrimony.web.dao.GroomRepository;
import com.regionalmatrimony.web.dao.MatchPreferenceRepository;
import com.regionalmatrimony.web.dao.OccupationRepository;
import com.regionalmatrimony.web.dao.RaasiRepository;
import com.regionalmatrimony.web.dao.StarRepository;
import com.regionalmatrimony.web.dao.SubCasteRepository;
import com.regionalmatrimony.web.dao.WorkLocationRepository;
import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Caste;
import com.regionalmatrimony.web.model.Diety;
import com.regionalmatrimony.web.model.Division;
import com.regionalmatrimony.web.model.Education;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.model.MatchPreference;
import com.regionalmatrimony.web.model.Occupation;
import com.regionalmatrimony.web.model.Raasi;
import com.regionalmatrimony.web.model.Star;
import com.regionalmatrimony.web.model.SubCaste;
import com.regionalmatrimony.web.model.WorkLocation;

@Service
public class DashboardService {

	@Autowired
	GroomRepository groomRepo;

	@Autowired
	BrideRepository brideRepo;

	@Autowired
	MatchPreferenceRepository matPreRepo;
	
	@Autowired
	CasteRepository casteRepo;
	
	@Autowired
	SubCasteRepository subcasteRepo;
	
	@Autowired
	DivisionRepository divRepo;
	
	@Autowired
	DietyRepository dietyRepo;
	
	@Autowired
	StarRepository starRepo;
	
	@Autowired
	RaasiRepository raasiRepo;
	
	@Autowired
	WorkLocationRepository workLocRepo;
	
	@Autowired
	OccupationRepository occuRepo;
	
	@Autowired
	EducationRepository eduRepo;

	public Groom registerGroom(Groom groom) {
		return groomRepo.save(groom);
	}

	public int countGroom(String agencyId) {
		return groomRepo.countGroom(agencyId);
	}
	
	public Groom getGroomById(String groomId) {
		return groomRepo.findOne(groomId);
	}

	public Bride registerBride(Bride bride) {
		return brideRepo.save(bride);
	}

	public int countBride(String agencyId) {
		return brideRepo.countBride(agencyId);
	}
	
	public Bride getBrideById(String brideId) {
		return brideRepo.findOne(brideId);
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
	
	public List<Caste> getCaste() {
		return (List<Caste>) casteRepo.findAll();
	}
	
	public List<SubCaste> getSubCaste() {
		return (List<SubCaste>) subcasteRepo.findAll();
	}
	
	public List<Division> getDivision() {
		return (List<Division>) divRepo.findAll();
	}
	
	public List<Diety> getDiety() {
		return (List<Diety>) dietyRepo.findAll();
	}
	
	public List<Star> getStar() {
		return (List<Star>) starRepo.findAll();
	}
	
	public List<Raasi> getRaasi() {
		return (List<Raasi>) raasiRepo.findAll();
	}
	
	public List<WorkLocation> getWorkLocation() {
		return (List<WorkLocation>) workLocRepo.findAll();
	}
	
	public List<Occupation> getOccupation() {
		return (List<Occupation>) occuRepo.findAll();
	}
	
	public List<Education> getEducation() {
		return (List<Education>) eduRepo.findAll();
	}
}
