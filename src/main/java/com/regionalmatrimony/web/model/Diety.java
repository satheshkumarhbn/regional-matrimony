package com.regionalmatrimony.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DIETY")
public class Diety {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@Id
	@Column(name = "diety")
	private String diety;
	@Column(name = "displayname")
	private String displayName;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDiety() {
		return diety;
	}
	public void setDiety(String diety) {
		this.diety = diety;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	@Override
	public String toString() {
		return "Diety [id=" + id + ", diety=" + diety + ", displayName=" + displayName + "]";
	}
}
