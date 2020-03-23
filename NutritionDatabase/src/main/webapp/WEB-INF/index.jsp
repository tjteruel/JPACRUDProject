<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
Nutrition Database - Home
</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body>
<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-4">Nutrition Database</h1>
    <p class="lead">SD25 JPA CRUD Assignment</p>
    <span class="border-bottom"></span>
  </div>
</div>

<!-- Lookup food by ID -->
<h3>Look Up Food By ID</h3>
	<form action="getFood.do" method="GET" class="form-inline">		
		<input type="text" value="Input Food ID" name="fid" class="form-group" />
		<input type="submit" value="Search" class="btn btn-info; form-group" />
	</form>
	<hr>

<!-- add Food to db -->
	<h3>Add Food to Database</h3>
	<form action="addFoodPage.do" method="POST" class="form">
	<div class="form-inline">
		<input type="submit" value="Add Food" class="btn btn-info; form-group" />
	</form>
	</div>
	<hr>

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