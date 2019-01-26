package com.regionalmatrimony.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "STAR")
public class Star {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Id
	@Column(name = "starname")
	private String starname;
	@Column(name = "displayname")
	private String displayName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStarname() {
		return starname;
	}
	public void setStarname(String starname) {
		this.starname = starname;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	@Override
	public String toString() {
		return "Star [id=" + id + ", starname=" + starname + ", displayName=" + displayName + "]";
	}
}
