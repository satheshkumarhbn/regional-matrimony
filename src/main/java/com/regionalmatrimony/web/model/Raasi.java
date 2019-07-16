package com.regionalmatrimony.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RAASI")
public class Raasi {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Id
	@Column(name = "RAASINAME")
	private String raasiName;
	@Column(name = "DISPLAYNAME")
	private String displayName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRaasiName() {
		return raasiName;
	}
	public void setRaasiName(String raasiName) {
		this.raasiName = raasiName;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	@Override
	public String toString() {
		return "Raasi [id=" + id + ", raasiName=" + raasiName + ", displayName=" + displayName + "]";
	}
}
