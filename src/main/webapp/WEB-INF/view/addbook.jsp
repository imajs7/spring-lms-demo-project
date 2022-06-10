<%@page import="com.lms.model.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Save Book</title>
<link rel="stylesheet" 
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
			crossorigin="anonymous">
</head>
<body>

	<div class="container mt-3">
	
		<h3>Save Book</h3>
		
		<form action="${pageContext.request.contextPath }/save" method="POST">
			<input type="hidden" name ="id" value="${book.id}" />
			<div class="form-inline">
				<input type="text" name ="name" value="${book.name}" placeholder="Book name" class="form-control mb-4 col-4" />
			</div>
			<div class="form-inline">
				<input type="text" name ="author" value="${book.author}" placeholder="Author name" class="form-control mb-4 col-4" />
			</div>
			<div class="form-inline">
				<input type="text" name ="category" value="${book.category}" placeholder="Book category" class="form-control mb-4 col-4" />
			</div>
			<button type="submit" class="btn btn-info col-2">Save</button>
		</form>
		
		<a href="home">Back to Book list</a>
		
	</div>

</body>
</html>