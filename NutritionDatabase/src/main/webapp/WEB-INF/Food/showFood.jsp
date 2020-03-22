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
		<h5>${food.name}	Serving Size: (${food.servingSize})</h5>
		<table class="table table-striped">
			<thead class="thead thead-dark">
				<tr>
					<th>Calories</th>
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
	<%-- 	<h2>List of Food</h2>
	<table class="table table-striped">
		<thead class="thead thead-dark">
			<tr>
				<th>Name</th>
				<th>Serving Size</th>
				<th>Calories</th>
				<th>Carbohydrates</th>
				<th>Fats</th>
				<th>Protein</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="f" items="${foods}">
				<tr>
					<td>${f.name}</td>
					<td>${f.servingSize}</td>
					<td>${f.calories}</td>
					<td>${f.carbohydrates}</td>
					<td>${f.fats}</td>
					<td>${f.proteins}</td>
				</tr>
			</c:forEach> --%>
	</tbody>
	</table>

</body>
</html>