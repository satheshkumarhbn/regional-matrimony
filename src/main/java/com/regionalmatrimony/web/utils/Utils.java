package com.regionalmatrimony.web.utils;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.passay.CharacterRule;
import org.passay.EnglishCharacterData;
import org.passay.PasswordGenerator;
import org.springframework.beans.factory.annotation.Autowired;

import com.regionalmatrimony.web.dao.BrideRepository;
import com.regionalmatrimony.web.dao.GroomRepository;

public class Utils {
	
	@Autowired
	GroomRepository groomRepo;
	
	@Autowired
	BrideRepository brideRepo;

	public static String generateRandomPassword() {

        List<CharacterRule> rules = Arrays.asList(new CharacterRule(EnglishCharacterData.UpperCase, 1),
                new CharacterRule(EnglishCharacterData.LowerCase, 1));

        PasswordGenerator generator = new PasswordGenerator();
        String password = generator.generatePassword(6, rules);
        return password;
    }
	
	public static Date getCurrentTimeStamp() {
		return new Timestamp(new Date().getTime());
	}

	public static String createMemberId(String gender, String lastMemberId) {
		String memberId = null;
		String postfix = null;
		if(gender.equals("male")) {
			if(lastMemberId == null) {
				postfix = String.format("%05d", 1);
			} else {
				postfix = String.format("%05d",Integer.parseInt(lastMemberId.substring(lastMemberId.length()-5))+1);
			}
			String year = Integer.toString(Calendar.getInstance().get(Calendar.YEAR)).substring(2,4);
			memberId =  "G"+year+postfix;
		} else if(gender.equals("female")) {
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
}
