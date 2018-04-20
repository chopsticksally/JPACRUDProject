package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpasucculents.entities.Succulent;

public interface SucculentDAO {
	
	Succulent succulent = new Succulent();
	
	Succulent retrieveById(int id);
	
	List<Succulent>retrieveAll();
	
	boolean delete(Succulent succulent);
	
	Succulent addASucculent(Succulent succulent);
	
	Succulent editASucculent(Succulent succulent);

}
