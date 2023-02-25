<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>XML</title>
</head>
<body>
	<div class="container">
	<h3>Add Data To XML</h3>
		<a href="from_xml"><button>Create New XML</button></a>
	  	<a href="existing_xml"><button>Add Data In Existing XML</button></a>
	  	<br><br><hr><br><hr>
		<form method="POST" action="upload" enctype="multipart/form-data">
			<h3>Add Data From XML To Database</h3>
			<div class="form-group">
		            <label>Select a file to upload</label>
		            <input type="file" name="file" />
			</div>
		          <button type="submit" class="btn btn-default">Submit</button>
		</form>
		<a href="back_button"><button id="back_button" class="btn btn-primary"> Back </button></a>
  	</div>
</body>
</html>