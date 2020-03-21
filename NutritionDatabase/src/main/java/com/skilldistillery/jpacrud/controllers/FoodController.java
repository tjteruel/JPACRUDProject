package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.NutritionDAO;
import com.skilldistillery.jpacrud.entities.Food;

@Controller
public class FoodController {
	
	@Autowired
	private NutritionDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("food", dao.findAll());
		return "index";
	}
	
	@RequestMapping(path = "createFoodPage.do")
	public String createPage() {
		return "Food/createFood";
	}
	
	@RequestMapping(path = "listFoods.do")
	public String showFilm(Model model) {
		model.addAttribute("foods", dao.findAll());
		return "Food/listAllFoods";
	}
	
	@RequestMapping(path = "addFood.do", method = RequestMethod.POST)
	public ModelAndView addFood(Food food) {
		dao.addFood(food);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

}
