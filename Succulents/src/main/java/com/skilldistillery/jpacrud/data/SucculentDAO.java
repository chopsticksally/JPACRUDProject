package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpasucculents.entities.Succulent;

public interface SucculentDAO {
	
	Succulent succulent = new Succulent();
	
	Succulent getSucculentById(int id);
	
	boolean deleteSucculent(int id);
	
	Succulent addASucculent(Succulent succulent);
	
	Succulent editASucculent(int id, Succulent succulent);

	List<Succulent> getAllSucculents();

}
