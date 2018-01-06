<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" >

<title>User Page</title>
</head>
<body>

<spring:url value="/user/add" var="addURL"/>


<div class="container">
<h1>User List</h1>
<table class="table">
	<thead>
		<tr>
			<th>Id</th>
			<th>Firstname</th>
			<th>Lastname</th>
			<th>Address</th>		
			<th class="text-center" colspan="2">Action</th>
		</tr>	
	</thead>
	<tbody>
		<c:forEach items="${listUser}" var="user">
		<tr>
			<td>${user.id}</td>
			<td>${user.firstname}</td>
			<td>${user.lastname}</td>
			<td>${user.address}</td>
			<td class="text-center">
				<spring:url value="/user/update/${user.id}" var="updateURL"></spring:url>
				<a href="${updateURL}">Update</a>
			</td>
			<td class="text-center">
				<spring:url value="/user/delete/${user.id}" var="deleteURL"></spring:url>
				<a href="${deleteURL}">Delete</a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
	<a href="${addURL}">Add User</a>
</div>
</body>
</html>