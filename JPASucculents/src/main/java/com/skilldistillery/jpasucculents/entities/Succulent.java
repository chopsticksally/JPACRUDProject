package com.skilldistillery.jpasucculents.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Succulent {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "common_name")
	private String commonName;
	@Column(name = "scientific_name")
	private String scientificName;
	private String origin;
	private String height;
	private String diameter;
	@Column(name = "cold_hardiness")
	private String coldHardiness;
	@Column(name = "sun_exposure")
	private String sunExposure;
	@Column(name = "care_instructions_url")
	private String careInstructionsUrl;
	@Column(name = "img_url")
	private String imgUrl;

	public Succulent() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCommonName() {
		return commonName;
	}

	public void setCommonName(String commonName) {
		this.commonName = commonName;
	}

	public String getScientificName() {
		return scientificName;
	}

	public void setScientificName(String scientificName) {
		this.scientificName = scientificName;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getDiameter() {
		return diameter;
	}

	public void setDiameter(String diameter) {
		this.diameter = diameter;
	}

	public String getColdHardiness() {
		return coldHardiness;
	}

	public void setColdHardiness(String coldHardiness) {
		this.coldHardiness = coldHardiness;
	}

	public String getSunExposure() {
		return sunExposure;
	}

	public void setSunExposure(String sunExposure) {
		this.sunExposure = sunExposure;
	}

	public String getCareInstructionsUrl() {
		return careInstructionsUrl;
	}

	public void setCareInstructionsUrl(String careInstructionsUrl) {
		this.careInstructionsUrl = careInstructionsUrl;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	@Override
	public String toString() {
		return "Succulent [id=" + id + ", commonName=" + commonName + ", scientificName=" + scientificName + ", origin="
				+ origin + ", height=" + height + ", diameter=" + diameter + ", coldHardiness=" + coldHardiness
				+ ", sunExposure=" + sunExposure + ", careInstructionsUrl=" + careInstructionsUrl + ", imgUrl=" + imgUrl
				+ "]";
	}
	
	
	}
	

