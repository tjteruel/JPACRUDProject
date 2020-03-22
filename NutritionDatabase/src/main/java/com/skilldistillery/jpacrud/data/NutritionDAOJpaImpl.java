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
		em.persist(food);
		em.flush();
		em.close();
		System.out.println("New food added " + food);
		return food;
	}

	@Override
	public Food updateFood(Food food, int id) {
		String query = "SELECT f FROM Food f WHERE f.id = :updateId";
		Food updating = em.createQuery(query, Food.class).setParameter("updateId", id).getSingleResult();
		updating.setName(food.getName());
		updating.setServingSize(food.getServingSize());
		updating.setCalories(food.getCalories());
		updating.setCarbohydrates(food.getCarbohydrates());
		updating.setFats(food.getFats());
		updating.setProteins(food.getProteins());
		em.flush();
		return updating;
	}
	
	@Override
	public void deleteFood(Food food) {
		System.out.println("Deleting " + food);
		em.remove(food);
		em.flush();
	}

}
