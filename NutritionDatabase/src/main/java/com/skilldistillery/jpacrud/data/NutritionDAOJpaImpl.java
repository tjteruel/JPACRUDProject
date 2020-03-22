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
		List <Food> foods = em.createQuery(query, Food.class).getResultList();
		return foods;
	}
	
	@Override
	public Food addFood(Food food) {
		System.out.println("Before persist" + food);
		em.getTransaction().begin();
		em.persist(food);
		em.flush();
		em.getTransaction().commit();
		em.close();
		System.out.println("New food item added to the Nutrition Database!");
		return food;
	}

}
