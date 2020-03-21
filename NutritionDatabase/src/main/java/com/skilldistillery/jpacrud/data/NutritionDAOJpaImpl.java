package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Food;

@Service
@Transactional
public class NutritionDAOJpaImpl implements NutritionDAO {

	@PersistenceContext
	EntityManager em;
	
	@Override
	public Food findById(int id) {
		return em.find(Food.class, id);
	}
	
	@Override
	public List<Food> findAll() {
		String query = "SELECT f FROM Food f";
		return em.createQuery(query, Food.class).getResultList();
	}
	
	@Override
	public void addFood(Food food) {
		em.persist(food);
		em.flush();
		System.out.println("New food item added to the Nutrition Database!");
	}

}
