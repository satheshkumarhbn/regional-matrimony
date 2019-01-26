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
@Table(name = "CASTE")
public class Caste {

	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@Id
	@Column(name = "castename")
	private String casteName;
	@Column(name = "displayname")
	private String displayName;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "SUBCASTE", joinColumns = @JoinColumn(name = "castename"), inverseJoinColumns = @JoinColumn(name = "subcastename"))
	private List<SubCaste> subCaste = new ArrayList<>();
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCasteName() {
		return casteName;
	}
	public void setCasteName(String casteName) {
		this.casteName = casteName;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	public List<SubCaste> getSubCaste() {
		return subCaste;
	}
	public void setSubCaste(List<SubCaste> subCaste) {
		this.subCaste = subCaste;
	}
	@Override
	public String toString() {
		return "Caste [id=" + id + ", casteName=" + casteName + ", displayName=" + displayName + "]";
	}
}
