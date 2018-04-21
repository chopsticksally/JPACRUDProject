package com.skilldistillery.jpacrud.controllers;

import java.util.List;

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

	@RequestMapping(path = "home.do", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "Take a look around");
		mv.addObject("list", dao.getAllSucculents());
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping(path = "succulent.do", method = RequestMethod.GET)
	public ModelAndView getSucculentbyId(@RequestParam(name = "id") Integer succulentId) {
		ModelAndView mv = new ModelAndView();
		Succulent succulent = dao.getSucculentById(succulentId);
		mv.addObject("succulent", succulent);
		mv.setViewName("displayInfo");
		return mv;
	}

	@RequestMapping(path = "succulents.do", method = RequestMethod.GET)
	public ModelAndView getAllSucculents() {
		ModelAndView mv = new ModelAndView();
		List<Succulent> succulents = dao.getAllSucculents();
		mv.addObject("succulents", succulents);
		mv.setViewName("displayAll"); 
		return mv;
	}

	@RequestMapping(path = "add.do", method = RequestMethod.POST)
	public ModelAndView addASucculent(Succulent succulent) {
		ModelAndView mv = new ModelAndView();
		Succulent s = dao.addASucculent(succulent);
		mv.addObject("succulent", s);
		//mv.addObject("images/pink2.jpeg",dao.setImgUrl();
		mv.setViewName("redirect:home.do");
		return mv;

	}
	@RequestMapping(path = "add.do", method = RequestMethod.GET)
	public ModelAndView addASucculent() {
		ModelAndView mv = new ModelAndView();
		Succulent s = new Succulent();
		mv.addObject("succulent", s);
		mv.setViewName("add");
		return mv;
	}

	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public ModelAndView deleteSucculent(@RequestParam(name = "id") Integer succulentId) {
		ModelAndView mv = new ModelAndView();
		dao.deleteSucculent(succulentId);
		mv.addObject("message", "Take a look around");
		mv.addObject("list", dao.getAllSucculents());
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public ModelAndView editASucculent(@RequestParam(name = "id") Integer succulentId, Succulent succulent) {
		ModelAndView mv = new ModelAndView();
		Succulent s = dao.editASucculent(succulentId, succulent);
		mv.addObject("succulent", s);
		System.out.println(s);
		mv.setViewName("displayInfo");
		return mv;
	}
}