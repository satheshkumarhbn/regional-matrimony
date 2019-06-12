package com.regionalmatrimony.web.service;

import java.util.ArrayList;
import java.util.List;

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

	public List<Bride> getRecentlyAddedBrides() {
		List<Bride> recAddedBrideList = null;
		List<Bride> brideList = brideRepo.findRecentlyAddedBride();
		if (brideList.size() <= 6 && brideList != null) {
			recAddedBrideList = brideList;
		} else if (brideList != null) {
			recAddedBrideList = new ArrayList<Bride>();
			for (int i = 0; i < 6; i++) {
				recAddedBrideList.add(brideList.get(i));
			}
		}
		return recAddedBrideList;
	}
	
	public List<Groom> getRecentlyAddedGrooms() {
		List<Groom> recAddedGroomList = null;
		List<Groom> groomList = groomRepo.findRecentlyAddedGroom();
		if (groomList.size() <= 6 && groomList != null) {
			recAddedGroomList = groomList;
		} else if (groomList != null) {
			recAddedGroomList = new ArrayList<Groom>();
			for (int i = 0; i < 6; i++) {
				recAddedGroomList.add(groomList.get(i));
			}
		}
		return recAddedGroomList;
	}
}
