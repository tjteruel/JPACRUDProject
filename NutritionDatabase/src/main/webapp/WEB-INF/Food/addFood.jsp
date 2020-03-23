<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Food to Nutrition Database</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body>
	<h1>Nutrition Database - Add Food</h1>
	<form action="addFood.do" method="POST">
		<div class="form-group">
			<label for="name">Name: </label> 
			<input type="text" name="name" id="name" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="servingSize">Serving Size: </label> 
			<input type="text" name="servingSize" id="servingSize" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="calories">Calories Per Serving: </label> 
			<input type="number" name="calories" id="calories" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="carbohydrates">Carbohydrates In Grams: </label> 
			<input type="text" name="carbohydrates" id="carbohydrates" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="fats">Fats In Grams: </label> 
			<input type="text" name="fats" id="fats" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="proteins">Proteins In Grams: </label> 
			<input type="text" name="proteins" id="proteins" class="form-control" required />
		</div>
		<input type="submit" value="Add Food" class="btn btn-primary" />
	</form>
</body>
</html>