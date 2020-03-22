<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<h2>List of Food</h2>
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
			<c: forEach var="food" items="${foods}">
			<tr>
					<td>${food.name}</td>					
					<td>${food.servingSize}</td>
					<td>${food.calories}</td>
					<td>${food.carbohydrates}</td>
					<td>${food.fats}</td>
					<td>${food.proteins}</td>	
					</tr>
					</c: forEach>		
					</tbody>
					</table>
					
</body>
</html>