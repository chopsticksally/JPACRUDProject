package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpasucculents.entities.Succulent;

@Transactional
@Component
public class SucculentDAOImpl implements SucculentDAO {

	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Succulent retrieveById(int id) {
		Succulent succulent = em.find(Succulent.class,id);
		return succulent;
	}

	@Override
	public List<Succulent> retrieveAll() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public boolean delete(Succulent succulent) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
