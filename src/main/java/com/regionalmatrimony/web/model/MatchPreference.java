package com.regionalmatrimony.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MATCHREFERENCE")
public class MatchPreference {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int mpId;
	@Column(name = "startage")
	private int startAge;
	@Column(name = "endage")
	private int endAge;
	@Column(name = "education")
	private String education;
	@Column(name = "occupation")
	private String occupation;
	@Column(name = "worklocation")
	private String workLocation;
	@Column(name = "height")
	private String height;
	@Column(name = "weight")
	private String weight;
	@Column(name = "maritalstatus")
	private String maritalStatus;
	@Column(name = "disability")
	private String disability;
	@Column(name = "caste")
	private String caste;
	@Column(name = "subcaste")
	private String subCaste;
	@Column(name = "division")
	private String division;
	@Column(name = "diety")
	private String diety;
	@Column(name = "star")
	private String star;
	@Column(name = "raasi")
	private String raasi;
	public int getMpId() {
		return mpId;
	}
	public void setMpId(int mpId) {
		this.mpId = mpId;
	}
	public int getStartAge() {
		return startAge;
	}
	public void setStartAge(int startAge) {
		this.startAge = startAge;
	}
	public int getEndAge() {
		return endAge;
	}
	public void setEndAge(int endAge) {
		this.endAge = endAge;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getWorkLocation() {
		return workLocation;
	}
	public void setWorkLocation(String workLocation) {
		this.workLocation = workLocation;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getDisability() {
		return disability;
	}
	public void setDisability(String disability) {
		this.disability = disability;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	public String getSubCaste() {
		return subCaste;
	}
	public void setSubCaste(String subCaste) {
		this.subCaste = subCaste;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getDiety() {
		return diety;
	}
	public void setDiety(String diety) {
		this.diety = diety;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getRaasi() {
		return raasi;
	}
	public void setRaasi(String raasi) {
		this.raasi = raasi;
	}
}
