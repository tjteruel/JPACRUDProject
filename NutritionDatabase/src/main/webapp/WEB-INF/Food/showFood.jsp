<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nutrition Database</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body>

	<div class="container-fluid">
		<h5>${food.name}, Serving Size: (${food.servingSize})</h5>
		<table class="table table-striped">
			<thead class="thead thead-dark">
				<tr>
					<th>Calories Per Serving</th>
					<th>Carbohydrates</th>
					<th>Fats</th>
					<th>Protein</th>
				</tr>
			<tbody>
				<tr>
					<td>${food.calories} calories</td>
					<td>${food.carbohydrates} grams</td>
					<td>${food.fats} grams</td>
					<td>${food.proteins} grams</td>
				</tr>
			</thead>
			</tbody>
		</table>
	</div>

<!-- Updates Food -->
	<form action="updatePage.do" method="POST">
		<input type="hidden" value="${food.id}" name="food" /> <input
			type="submit" value="Update" class="btn btn-primary" />
	</form>

<!-- Deletes Food -->
	<form action="deleteFood.do" method="POST">
		<input type="hidden" value="${food.id}" name="food"/>
		<input type="submit" value="Delete" class="btn btn-primary"/>
	</form>
	</tbody>
	</table>

</body>
</html>