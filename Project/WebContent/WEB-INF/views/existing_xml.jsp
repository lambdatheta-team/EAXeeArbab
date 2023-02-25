<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form method="POST" action="add_from_xml" enctype="multipart/form-data">
		<h3>Add From XML</h3>
			<div class="form-group">
				<label>Add From XML</label>
				<input type="file" name="file"/>
			</div>
		    <button type="submit" class="btn btn-default">Submit</button>
		</form>
		<a href="xml"><button id="back_button" class="btn btn-primary"> Back </button></a>
	</div>
</body>
</html>