package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.SucculentDAO;
import com.skilldistillery.jpasucculents.entities.Succulent;


@Controller
public class SucculentController {
	
	@Autowired
	private SucculentDAO dao;
	
	@RequestMapping(path = "index.do", method=RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message","Take a look around");
		mv.setViewName("WEB-INF/Views/home.jsp");
		return mv;
	}



Succulent s = dao.retrieveById("id",id);