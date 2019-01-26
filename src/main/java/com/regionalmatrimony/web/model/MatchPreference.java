package com.regionalmatrimony.web.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MATCHPREFERENCE")
public class MatchPreference {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int mpId;
	@Column(name = "startage")
	private int startAge;
	@Column(name = "endage")
	private int endAge;
	@Column(name = "education")
	private List<String> education;
	@Column(name = "occupation")
	private List<String> occupation;
	@Column(name = "worklocation")
	private List<String> workLocation;
	@Column(name = "height")
	private String height;
	@Column(name = "weight")
	private String weight;
	@Column(name = "maritalstatus")
	private String maritalStatus;
	@Column(name = "disability")
	private String disability;
	@Column(name = "caste")
	private List<String> caste;
	@Column(name = "subcaste")
	private List<String> subCaste;
	@Column(name = "division")
	private List<String> division;
	@Column(name = "diety")
	private List<String> diety;
	@Column(name = "star")
	private List<String> star;
	@Column(name = "raasi")
	private List<String> raasi;
	
}
