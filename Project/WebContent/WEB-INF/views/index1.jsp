<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Title</title>
</head>
<body>
	<div class="container">
  	<h2>Main Page</h2>
  	
  	<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h3>
				<a href="logout" style="float:right; "><button>LOG OUT...</button></a>
			</h3>
		</c:if>
  	<br><br><br><br><br><br>
  	
		<a href="createDatabase"><button>Create Database</button></a>
		<a href="createTable"><button>Create Table</button></a>
		<a href="createAttributes"><button>Add Attributes</button></a>
		<a href="add_rows"><button>Add Rows</button></a>
  		<a href="add_relations"><button>Add Relations</button></a>
  		<a href="xml"><button>From XML</button></a>
  		<a href="fromExcel"><button>From Excel</button></a>
  		<a href="userpanel"><button>CRUD</button></a>
  		<a href="admin/metamodel2"><button>MetaModel 2 (Only For Admin)</button></a>
  		<a href="interactive_shapes"><button>Draw Shapes</button></a>
  		
  		
  		
  		
  		
	</div>
</body>
</html>