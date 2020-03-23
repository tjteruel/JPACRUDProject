<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" class="h-100">
<head>
<meta charset="UTF-8">
<title>Nutrition Database</title>
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
		<div class="btn-group;text-center" role="group" style="text-align:center" >
		<button type="button" class="btn btn-info btn-sm" >
		<form action="updatePage.do" method="POST" class="form-group">
			<input type="hidden" value="${food.id}" name="food" /> <input
				type="submit" value="Update" class="btn btn-info" />
		</form>
		</button>

		<!-- Deletes Food -->
				<button type="button" class="btn btn-info btn-sm" >
		<form action="deleteFood.do" method="POST" class="form-group">
			<input type="hidden" value="${food.id}" name="food" /> <input
				type="submit" value="Delete" class="btn btn-info" />
		</form>
		</button>
		
		<!-- Home Button -->
				<button type="button" class="btn btn-info btn-sm" >
		<form action="home.do" method="POST" class="form-group">
			<input type="hidden" name="food" /> <input
				type="submit" value="Home" class="btn btn-info" />
				
		</form>
		</button>
		</div>
		
	</div>
	</div>
	</div>

</body>
</html>