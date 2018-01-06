<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" >

<title>User Form</title>
</head>
<body>
	<spring:url value="/user/save" var="saveURL"/>
	
	<div class="container">
	<h1>User Form</h1>
	
	<form:form modelAttribute="userForm" method="POST" action="${saveURL}">
	<form:hidden path="id"/>
	
			<div class="form-group">
			<form:label path="firstname">Firstname</form:label>
			<form:input class="form-control" path="firstname" />
			</div>
			
			<div class="form-group">
			<form:label path="lastname">Lastname</form:label>
			<form:input class="form-control" path="lastname" />
			</div>
			
			<div class="form-group">
			<form:label path="address">Address</form:label>
			<form:input class="form-control" path="address" />
			</div>
			
			<button class="btn" type="submit">Save</button>
	
	</form:form>
	</div>
</body>
</html>