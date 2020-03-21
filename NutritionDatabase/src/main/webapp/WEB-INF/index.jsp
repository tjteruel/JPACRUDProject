<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nutrition Database</title>
</head>
<body>
	<h1>Nutrition Database</h1>
	<form action="listFoods.do" method="GET" class="form">
		<input type="submit" value="List All Foods" class="form-control" />
	</form>
		<form action="getFood.do" method="GET" class="form">
			Cat ID: <input type="text" name="fid" class="form-control" /> <input
				type="submit" value="Show Food" class="form-control" />
		</form>
		<form action="createFoodPage.do" method="GET" class="form">
			<input type="submit" value="Add Food" class="form-control" />
		</form>
				<table class="table table-striped">
			<thead class="thead thead-dark">
				<tr>
					<th>Food Name</th>
					<th>Calories</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="food" items="${foods}">
					<tr>
						<td><a href="getCat.do?cid=${food.id}">${food.name}</a></td>
						<td>${food.calories}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
</html>