package com.regionalmatrimony.web.utils;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.passay.CharacterRule;
import org.passay.EnglishCharacterData;
import org.passay.PasswordGenerator;

public class Utils {

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
	
}
