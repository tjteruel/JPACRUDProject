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
	<h1>Nutrition Database</h1>

<!-- Lookup food by ID -->
	<form action="getFood.do" method="GET" class="form">
		Look Up Food By ID: <input type="text" name="fid" class="form-control" />
		<input type="submit" value="Show Food" class="form-control" />
	</form>

<!-- add Food to db -->
	<h3>Add Food to Database</h3>
	<form action="addFoodPage.do" method="POST" class="form">
		<input type="submit" value="Add Food" class="form-control" />
	</form>

<!-- Lists entire db -->
	<h3>All Foods in Database</h3>
	<table class="table table-striped">
		<thead class="thead thead-dark">
			<tr>
				<th>Food ID</th>
				<th>Food Name</th>
				<th>Calories Per Serving</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="f" items="${food}">
				<tr>
					<td>${f.id}</td>
					<td><a href="getFood.do?fid=${f.id}">${f.name}</a></td>
					<td>${f.calories}</td>
				</tr>
			</c:forEach>
		</tbody>
		</tbody>
	</table>
</body>
</html>