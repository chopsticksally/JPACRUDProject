package com.skilldistilleryjpasucculents.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpasucculents.entities.Succulent;

class SucculentTest {
	private EntityManagerFactory emf;
	private EntityManager em;

	@BeforeEach
	void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("SucculentApp");
		em = emf.createEntityManager();

	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		emf.close();
	}

	@Test
	@DisplayName("Test Succulent entity mappings")
	void test_succulent_mappings() {
		Succulent succulent = em.find(Succulent.class, 1);
		assertEquals("Split Rock", succulent.getCommonName());
		assertEquals("Pleiospilos nelii",succulent.getScientificName());
		assertEquals("South Africa",succulent.getOrigin());
		assertEquals("3.2” tall",succulent.getHeight());
		assertEquals("4” diameter",succulent.getDiameter());
		assertEquals("yes",succulent.getColdHardiness());
		assertEquals("full",succulent.getSunExposure());
		assertEquals("",succulent.getCareInstructionsUrl());
		assertEquals("images/splitrock.jpg",succulent.getImgUrl());
		
		

	}
}
