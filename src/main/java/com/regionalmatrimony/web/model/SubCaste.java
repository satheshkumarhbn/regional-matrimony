package com.regionalmatrimony.web.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "SUBCASTE")
public class SubCaste {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@Id
	@Column(name = "SUBCASTENAME")
	private String subCasteName;
	@Column(name = "DISPLAYNAME")
	private String displayName;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "DIVISION", joinColumns = @JoinColumn(name = "SUBCASTENAME"), inverseJoinColumns = @JoinColumn(name = "DIVISION"))
	private List<Division> division = new ArrayList<>();
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSubCasteName() {
		return subCasteName;
	}
	public void setSubCasteName(String subCasteName) {
		this.subCasteName = subCasteName;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	public List<Division> getDivision() {
		return division;
	}
	public void setDivision(List<Division> division) {
		this.division = division;
	}
	@Override
	public String toString() {
		return "SubCaste [id=" + id + ", subCasteName=" + subCasteName + ", displayName=" + displayName + "]";
	}
	
}
