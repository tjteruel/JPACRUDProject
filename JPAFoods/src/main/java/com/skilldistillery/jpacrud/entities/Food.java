package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Food {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	@Column(name = "serving_size")
	private String servingSize;
	
	private Integer calories;
	
	private Integer carbohydrates;
	
	private Integer fats;
	
	private Integer proteins;
	
	
	//Constructors
	public Food() {		
	}

	public Food(int id, String name, String servingSize, Integer calories, Integer carbohydrates, Integer fats,
			Integer proteins) {
		super();
		this.id = id;
		this.name = name;
		this.servingSize = servingSize;
		this.calories = calories;
		this.carbohydrates = carbohydrates;
		this.fats = fats;
		this.proteins = proteins;
	}

	//Getters and Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getServingSize() {
		return servingSize;
	}

	public void setServingSize(String servingSize) {
		this.servingSize = servingSize;
	}

	public Integer getCalories() {
		return calories;
	}

	public void setCalories(Integer calories) {
		this.calories = calories;
	}

	public Integer getCarbohydrates() {
		return carbohydrates;
	}

	public void setCarbohydrates(Integer carbohydrates) {
		this.carbohydrates = carbohydrates;
	}

	public Integer getFats() {
		return fats;
	}

	public void setFats(Integer fats) {
		this.fats = fats;
	}

	public Integer getProteins() {
		return proteins;
	}

	public void setProteins(Integer proteins) {
		this.proteins = proteins;
	}

	//toString
	@Override
	public String toString() {
		return "Food [id=" + id + ", name=" + name + ", servingSize=" + servingSize + ", calories=" + calories
				+ ", carbohydrates=" + carbohydrates + ", fats=" + fats + ", proteins=" + proteins + "]";
	}

}
