package com.regionalmatrimony.web.model;

import java.util.List;

public class User {

	private String memberId;
	private String fullName;
	private String mobileNumber;
	private String email;
	private String agencyId;
	private String password;
	private List<String> grantedMembers;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAgencyId() {
		return agencyId;
	}
	public void setAgencyId(String agencyId) {
		this.agencyId = agencyId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<String> getGrantedMembers() {
		return grantedMembers;
	}
	public void setGrantedMembers(List<String> grantedMembers) {
		this.grantedMembers = grantedMembers;
	}
	@Override
	public String toString() {
		return "User [memberId=" + memberId + ", mobileNumber=" + mobileNumber + ", email=" + email + ", agencyId="
				+ agencyId + ", password=" + password + "]";
	}
}
