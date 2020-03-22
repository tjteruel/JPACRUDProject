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
				name="serving" id="serving" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="age">Calories: </label> <input type="number" name="calories"
				id="serving" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="carbohydrates">Carbohydrates: </label> <input type="text"
				name="carbohydrates" id="carbohydrates" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="fats">Fats: </label> <input type="text" name="fats"
				id="fats" class="form-control" required />
		</div>
		<div class="form-group">
			<label for="proteins">Proteins: </label> <input type="text" name="proteins"
				id="proteins" class="form-control" required />
		</div>
		<input type="submit" value="Add Food" class="btn btn-primary" />
	</form>
</body>
</html>