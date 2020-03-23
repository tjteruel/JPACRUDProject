<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en" class="h-100">
<head>
<meta charset="UTF-8">
<title>Nutrition Database - Update Food</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body class="h-100">
<div class="container h-100">
    <div class="row h-100 justify-content-center align-items-center">
        <div class="col-10 col-md-8 col-lg-6">
<h3 align="center">Update This Food</h3>
	<form action="updateFood.do" method="POST">
		<div class="form-inline"class="form-inline">
			<label for="name">Name: </label> 
			<input type="text" value="${food.name}" name="name" id="name" class="form-group" required />
		</div>
		<div class="form-inline">
			<label for="servingSize">Serving Size: </label> 
			<input type="text" value="${food.servingSize}"name="servingSize" id="servingSize" class="servingSize" required />
		</div>
		<div class="form-inline">
			<label for="calories">Calories Per Serving: </label> 
			<input type="number" value="${food.calories}"name="calories" id="calories" class="form-group" required />
		</div>
		<div class="form-inline"">
			<label for="carbohydrates">Carbohydrates In Grams: </label> 
			<input type="number" value="${food.carbohydrates}"name="carbohydrates" id="carbohydrates" class="form-group" required />
		</div>
		<div class="form-inline">
			<label for="fats">Fats In Grams: </label> 
			<input type="text" value="${food.fats}" name="fats"id="fats" class="form-group" required />
		</div>
		<div class="form-inline">
			<label for="proteins">Proteins In Grams: </label> 
			<input type="text" name="proteins" value="${food.proteins}"id="proteins" class="form-group" required />
		</div>
		
		<input type = "hidden" name = "id" value = "${food.id}"/>
		<input type="submit" value="Update Food" class="text-center;btn btn-info" />

		</form>
		</div>
		</div>
		</div>



</body>
</html>