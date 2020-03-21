<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Food to Nutrition Database</title>
</head>
<body>
	<h1>Nutrition Database - Add Food</h1>
	<form action="addFood.do" method="post">
		<div class="form-group">
			<label for="name">Name: </label> <input type="text" name="name"
				id="name" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="breed">Serving Size: </label> <input type="text"
				name="breed" id="breed" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="age">Calories: </label> <input type="number" name="age"
				id="age" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="color">Carbohydrates: </label> <input type="text"
				name="color" id="color" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="color">fats: </label> <input type="text" name="color"
				id="color" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="color">Proteins: </label> <input type="text" name="color"
				id="color" class="form-control" required />
		</div>
		<input type="submit" value="Add Cat" class="btn btn-primary" />
	</form>
</body>
</html>