<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create New Table</title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
	<h1>Create New Table</h1>
	<form:form action="newTable" method="post" modelAttribute="createTable">
		<div class="form-group">
				<label>Select Database</label>
					<form:select class="form-control" type="text" path="dbName">
						<c:forEach items="${dbList}" var="contact" varStatus="status">
							<form:option value="${contact.dbName}"/>
						</c:forEach>
					</form:select>
		</div>
		<div class="form-group">
				<label>Enter Table Name</label>
				<form:input class="form-control" type="text" path="tableName" required="required"/>
		</div>
				<button  type="submit" class="btn btn-default">Submit</button>
	</form:form>
	<a href="back_button"><button id="back_button" class="btn btn-primary"> Back </button></a>
	</div>
</body>
</html>