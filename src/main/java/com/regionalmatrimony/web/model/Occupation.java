package com.regionalmatrimony.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "OCCUPATION")
public class Occupation {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Id
	@Column(name = "occupation")
	private String occupation;
	@Column(name = "displayname")
	private String displayName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	@Override
	public String toString() {
		return "Occupation [id=" + id + ", occupation=" + occupation + ", displayName=" + displayName + "]";
	} 
}
