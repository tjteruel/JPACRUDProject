package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	
	
	@RequestMapping(path = "getFood.do", method = RequestMethod.GET, params = "fid")
	public String showFilm(@RequestParam Integer fid, Model model) {
		Food food = dao.findById(fid);
		model.addAttribute("food", food);
		return "Food/showFood";
	}
	
	@RequestMapping(path = "addFoodPage.do", method = RequestMethod.POST)
	public String addFoodPage() {
		return"Food/addFood";
	}
	
	@RequestMapping(path = "addFood.do", method = RequestMethod.POST)
	public ModelAndView addFood(Food food) {
		dao.addFood(food);
		ModelAndView mv = new ModelAndView();
		mv.addObject("food",food);
		mv.setViewName("Food/foodAdded");
		return mv;
	}
	
	@RequestMapping(path = "updatePage.do", method = RequestMethod.POST)
	public ModelAndView updateFood(@RequestParam("food") int id) {
		Food food = dao.findById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("food", food);
		mv.setViewName("Food/updateFood");
		return mv;
	}
	
	@RequestMapping(path = "updateFood.do", method = RequestMethod.POST)
	public String updateFood(@RequestParam("id")int id, Food food) {
		dao.updateFood(food, id);
		return "Food/foodAdded";
	}

	@RequestMapping(path = "deleteFood.do", method = RequestMethod.POST)
	public String deleteFood(@RequestParam("food") int id) {
		Food food = dao.findById(id);
		dao.deleteFood(food);
		return "Food/foodAdded";
	}

}
