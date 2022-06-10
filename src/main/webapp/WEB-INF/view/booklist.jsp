<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Book List</title>
<link rel="stylesheet" 
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
			crossorigin="anonymous">
</head>
<body>

	<div class="container mt-3">
	
		<h3>Book List</h3>
		<a href="addbook" class="btn btn-primary btn-sm mb-3">Add Book</a>
		
		<table class="table table-bordered table-striped">
		
			<thead class="thead-dark">
				<tr>
					<th>Name</th>
					<th>Author</th>
					<th>Category</th>
					<th>Action</th>
				</tr>
			</thead>
			
			<tbody>
			
				<c:forEach items="${books}" var = "book">
				
					<tr>
						<td><c:out value="${book.name}"></c:out></td>
						<td><c:out value="${book.author}"></c:out></td>
						<td><c:out value="${book.category}"></c:out></td>
						<td>
							<a href="edit/${book.id}" class="btn btn-info btn-sm">Edit</a>
							<a href="delete/${book.id}" onclick="if (!(confirm('Are you sure you want to delete this book?'))) return false" class="btn btn-danger btn-sm">Delete</a>
						</td>
					</tr>
				
				</c:forEach>
				
			</tbody>
		
		</table>
	
	</div>

</body>
</html>