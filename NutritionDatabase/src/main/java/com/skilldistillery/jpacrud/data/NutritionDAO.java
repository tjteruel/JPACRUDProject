package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Food;

public interface NutritionDAO {
	Food findById(int id);
	List<Food> findAll();
	public Food addFood(Food food);
	public Food updateFood(Food food, int id);
	public void deleteFood(Food food);
}
