package com.regionalmatrimony.web.dto;

import java.util.List;

public class MatchPreferenceDto {

	private int mpId;
	private int mpStartAge;
	private int mpEndAge;
	private List<String> mpEducation;
	private List<String> mpOccupation;
	private List<String> mpWorkLocation;
	private String mpHeight;
	private String mpWeight;
	private List<String> mpMaritalStatus;
	private List<String> mpDisability;
	private List<String> mpCaste;
	private List<String> mpSubCaste;
	private List<String> mpDivision;
	private List<String> mpDiety;
	private List<String> mpStar;
	private List<String> mpRaasi;
	private String memberId; 
	public int getMpId() {
		return mpId;
	}
	public void setMpId(int mpId) {
		this.mpId = mpId;
	}
	public int getMpStartAge() {
		return mpStartAge;
	}
	public void setMpStartAge(int mpStartAge) {
		this.mpStartAge = mpStartAge;
	}
	public int getMpEndAge() {
		return mpEndAge;
	}
	public void setMpEndAge(int mpEndAge) {
		this.mpEndAge = mpEndAge;
	}
	public List<String> getMpEducation() {
		return mpEducation;
	}
	public void setMpEducation(List<String> mpEducation) {
		this.mpEducation = mpEducation;
	}
	public List<String> getMpOccupation() {
		return mpOccupation;
	}
	public void setMpOccupation(List<String> mpOccupation) {
		this.mpOccupation = mpOccupation;
	}
	public List<String> getMpWorkLocation() {
		return mpWorkLocation;
	}
	public void setMpWorkLocation(List<String> mpWorkLocation) {
		this.mpWorkLocation = mpWorkLocation;
	}
	public String getMpHeight() {
		return mpHeight;
	}
	public void setMpHeight(String mpHeight) {
		this.mpHeight = mpHeight;
	}
	public String getMpWeight() {
		return mpWeight;
	}
	public void setMpWeight(String mpWeight) {
		this.mpWeight = mpWeight;
	}
	public List<String> getMpMaritalStatus() {
		return mpMaritalStatus;
	}
	public void setMpMaritalStatus(List<String> mpMaritalStatus) {
		this.mpMaritalStatus = mpMaritalStatus;
	}
	public List<String> getMpDisability() {
		return mpDisability;
	}
	public void setMpDisability(List<String> mpDisability) {
		this.mpDisability = mpDisability;
	}
	public List<String> getMpCaste() {
		return mpCaste;
	}
	public void setMpCaste(List<String> mpCaste) {
		this.mpCaste = mpCaste;
	}
	public List<String> getMpSubCaste() {
		return mpSubCaste;
	}
	public void setMpSubCaste(List<String> mpSubCaste) {
		this.mpSubCaste = mpSubCaste;
	}
	public List<String> getMpDivision() {
		return mpDivision;
	}
	public void setMpDivision(List<String> mpDivision) {
		this.mpDivision = mpDivision;
	}
	public List<String> getMpDiety() {
		return mpDiety;
	}
	public void setMpDiety(List<String> mpDiety) {
		this.mpDiety = mpDiety;
	}
	public List<String> getMpStar() {
		return mpStar;
	}
	public void setMpStar(List<String> mpStar) {
		this.mpStar = mpStar;
	}
	public List<String> getMpRaasi() {
		return mpRaasi;
	}
	public void setMpRaasi(List<String> mpRaasi) {
		this.mpRaasi = mpRaasi;
	}
	@Override
	public String toString() {
		return "MatchPreferenceDto [mpId=" + mpId + ", mpStartAge=" + mpStartAge + ", mpEndAge=" + mpEndAge
				+ ", mpEducation=" + mpEducation + ", mpOccupation=" + mpOccupation + ", mpWorkLocation="
				+ mpWorkLocation + ", mpHeight=" + mpHeight + ", mpWeight=" + mpWeight + ", mpMaritalStatus="
				+ mpMaritalStatus + ", mpDisability=" + mpDisability + ", mpCaste=" + mpCaste + ", mpSubCaste="
				+ mpSubCaste + ", mpDivision=" + mpDivision + ", mpDiety=" + mpDiety + ", mpStar=" + mpStar
				+ ", mpRaasi=" + mpRaasi + "]";
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
}
