<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

	function myFunction() {
		alert("button clicked");
		$.ajax({
			url: "ajaxTest",
			data:{test:"hussain"},
			success: function(result){
			alert(result);

		}});
	}
</script>
</head>
<body>
	<input type="button" value="Ajax Test" onclick="myFunction()">
</body>
</html>