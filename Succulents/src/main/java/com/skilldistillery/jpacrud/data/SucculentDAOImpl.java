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
	
	
	@Override//show
	public Succulent getSucculentById(int id) {
		Succulent succulent = em.find(Succulent.class,id);
		return succulent;
	}

	@Override//index
	public List<Succulent> getAllSucculents() {
		String query = "select s from Succulent s";
		List<Succulent> succulents = em.createQuery(query,Succulent.class).getResultList();
		return succulents;
	}


	@Override
	public boolean deleteSucculent(int id) {
		
			Succulent s = em.find(Succulent.class, id);
			//em.getTransaction().begin();
			try {
				em.remove(s);
				//em.getTransaction().commit();
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			}
			s.getCommonName();
			return true;
		}

	

	@Override
	public Succulent addASucculent(Succulent succulent) {
		//em.getTransaction().begin();
		succulent.setImgUrl("images/default.jpeg");
		em.persist(succulent);
		em.flush();
		//em.getTransaction().commit();
		return succulent;
	}

	@Override
	public Succulent editASucculent(int id, Succulent succulent) {
		//em.getTransaction().begin();
		Succulent managedSucculent = em.find(Succulent.class, id);
		managedSucculent.setCommonName(succulent.getCommonName());
	    managedSucculent.setScientificName(succulent.getScientificName());
	    managedSucculent.setOrigin(succulent.getOrigin());
	    managedSucculent.setHeight(succulent.getHeight());
	    managedSucculent.setDiameter(succulent.getDiameter());
	    managedSucculent.setColdHardiness(succulent.getColdHardiness());
	    
	    em.persist(managedSucculent);
	    em.flush();
	    
	   // em.getTransaction().commit();
		return managedSucculent;
	}
	

}
