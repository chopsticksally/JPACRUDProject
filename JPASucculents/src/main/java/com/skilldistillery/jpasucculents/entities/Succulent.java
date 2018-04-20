package com.skilldistillery.jpasucculents.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Succulent {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	//@Column(name)
	private String commonName;
	private String ScientificName;
	private String origin;
	private double height;
	private String coldHardiness;
	private String sun_exposure;
	private String careInstructionsUrl;
	

}
//no arg
//get/setters
//tostring
