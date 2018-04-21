package com.skilldistillery.jpasucculents.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Description {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String color;
	private String texture;
	@Column(name= "bloom_color")
	private String bloomColor;
	private String appearance;
	private int fragility;
	
Description(){}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getColor() {
	return color;
}

public void setColor(String color) {
	this.color = color;
}

public String getTexture() {
	return texture;
}

public void setTexture(String texture) {
	this.texture = texture;
}

public String getBloomColor() {
	return bloomColor;
}

public void setBloomColor(String bloomColor) {
	this.bloomColor = bloomColor;
}

public String getAppearance() {
	return appearance;
}

public void setAppearance(String appearance) {
	this.appearance = appearance;
}

public int getFragility() {
	return fragility;
}

public void setFragility(int fragility) {
	this.fragility = fragility;
}

@Override
public String toString() {
	return "Description [id=" + id + ", color=" + color + ", texture=" + texture + ", bloom color=" + bloomColor
			+ ", appearance=" + appearance + ", fragility=" + fragility + "]";
}





}
