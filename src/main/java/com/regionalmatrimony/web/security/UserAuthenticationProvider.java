package com.regionalmatrimony.web.security;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import com.regionalmatrimony.web.model.Bride;
import com.regionalmatrimony.web.model.Groom;
import com.regionalmatrimony.web.service.ClientLoginService;

@Component
public class UserAuthenticationProvider implements AuthenticationProvider {

	@Autowired
	ClientLoginService service;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		Authentication token = null;
		String username = authentication.getName();
		String password = authentication.getCredentials().toString();
		if (username.startsWith("G") || username.startsWith("g")) {
			Groom groom = service.getGroomById(username);
			if (groom != null) {
				if (groom.getMemberId().equalsIgnoreCase(username) && groom.getPassword().equals(password)) {
					token = new UsernamePasswordAuthenticationToken(username, password, Collections.emptyList());
				} else {
					throw new BadCredentialsException("Invalid credentials!");
				}
			} else {
				throw new BadCredentialsException("Member not found!");
			}
		} else if (username.startsWith("B") || username.startsWith("b")) {
			Bride bride = service.getBrideById(username);
			if (bride != null) {
				if (bride.getMemberId().equalsIgnoreCase(username) && bride.getPassword().equals(password)) {
					token = new UsernamePasswordAuthenticationToken(username, password, Collections.emptyList());
				} else {
					throw new BadCredentialsException("Invalid credentials!");
				}
			} else {
				throw new BadCredentialsException("Member not found!");
			}
		} else {
			throw new BadCredentialsException("Please check Member id!");
		}
		return token;
	}

	@Override
	public boolean supports(Class<?> aClass) {
		return aClass.equals(UsernamePasswordAuthenticationToken.class);
	}

}
