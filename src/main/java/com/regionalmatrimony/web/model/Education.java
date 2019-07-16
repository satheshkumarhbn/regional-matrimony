package com.regionalmatrimony.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EDUCATION")
public class Education {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Id
	@Column(name = "EDUCATION")
	private String education;
	@Column(name = "DISPLAYNAME")
	private String displayName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	@Override
	public String toString() {
		return "Education [id=" + id + ", education=" + education + ", displayName=" + displayName + "]";
	}
}
