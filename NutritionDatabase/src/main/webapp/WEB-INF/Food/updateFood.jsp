<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nutrition Database - Update Food</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body>
<h3 align="center">Update This Food</h3>
	<form action="updateFood.do" method="POST">
		<div class="form-group">
			<label for="name">Name: </label> 
			<input type="text" value="${food.name}" name="name" id="name" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="serving">Serving Size: </label> 
			<input type="text" value="${food.servingSize}"name="serving" id="serving" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="calories">Calories Per Serving: </label> 
			<input type="number" value="${food.calories}"name="calories" id="calories" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="carbohydrates">Carbohydrates In Grams: </label> 
			<input type="number" value="${food.carbohydrates}"name="carbohydrates" id="carbohydrates" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="fats">Fats In Grams: </label> 
			<input type="text" value="${food.fats}" name="fats"id="fats" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="proteins">Proteins In Grams: </label> 
			<input type="text" name="proteins" value="${food.proteins}"id="proteins" class="form-control" required />
		</div>
		
		<input type = "hidden" name = "id" value = "${food.id}"/>
		<input type="submit" value="Update Food" class="btn btn-primary" />

</body>
</html>