<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>POOL MANAGEMENT</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style>
*{
	font-family: helvetica, arial, verdana, sans-serif;
}
html,
body {
/*   height: 100%; */
  /*font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;*/
  padding: 0 !important;
  margin: 0 !important;
  overflow: auto;
/*   background:blue; */
  width: 100%;
  height: 100%;
  overflow-x: hidden;
  font-size: 14px;
/*   width: 100%; */
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/eazee-Logo.png"/>">
<div class="container-fluid" style="margin: 0 !important; padding: 0 !important; width:100vw">
	<div style="display:flex; justify-content: space-between; width:100vw; margin-bottom:-10px; background: #3a3a3a; float:left">
<%-- 		<img alt="logo" draggable="false" src="<c:url value="resources/images/logo.png"/>" width="15px" height="15px" style="margin-top:1px;"> --%>
		<div>
			<p style="margin-left: 5px"><img draggable="false" alt="logo"  width="50px" src="<c:url value="/resources/images/eazee-Logo.png"/>"></p>
		</div>
		<div id="google_translate_element" style="margin-right:2%"></div>
<!-- 		<span><a href="lang=rtl">RTL View</span> -->
	</div>
	
	
	<nav class="navbar navbar-expand-lg navbar-expand-sm navbar-light bg-light" style="margin-left:-17px; background: #f2f2f2; height: 48px">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav">
		    <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="main_nav" style="margin-top:-10px">
			<ul class="navbar-nav">
			<li class="nav-item dropdown unselectable">
			    <a class="nav-link" href="#" data-toggle="dropdown" draggable="false">  <spring:message code="file" />  </a>
			    <ul class="dropdown-menu" style="background:#f2f2f2">
				  <li><a class="dropdown-item" href="#" draggable="false"> <spring:message code="new" /> </a></li>
				  <li><a class="dropdown-item" href="#" draggable="false"> <spring:message code="open" /> </a>
				  <li><a onclick="saveAll();" class="dropdown-item" href="#" draggable="false"> <spring:message code="save_all" /> </a></li>
				  <li><a class="dropdown-item" href="logout" draggable="false"> <spring:message code="logout" /> </a></li>
			    </ul>
			</li>
<%-- 			<li class="nav-item unselectable"> <a onclick="matrixname();" class="nav-link" href="#" draggable="false"> <spring:message code="matrix"/> </a> </li> --%>
			<li class="nav-item unselectable orgainzationTab"> <a class="nav-link" href="#" draggable="false" onclick="orgainzationTab();"> <spring:message code="organizational_portal"/> </a></li>
			<li class="nav-item unselectable homeTab" style="display:none;"> <a class="nav-link" href="#" draggable="false" onclick="homeTab();"> <spring:message code="home"/> </a></li>
<!-- 			<li class="nav-item unselectable"> <a class="nav-link" href="#" draggable="false"> Window </a> </li> -->
			<li class="nav-item unselectable"> <a class="nav-link" href="#" draggable="false"> <spring:message code="help"/> </a></li>
			<li class="nav-item unselectable"> <a class="nav-link" href="fromExcel" draggable="false"> <spring:message code="from_excel"/> </a></li>
			<li class="nav-item unselectable"> <a class="nav-link" href="lang=rtl" draggable="false"> <spring:message code="arabic"/> </a></li>
			<li class="nav-item unselectable"> <a class="nav-link" href="linechart" draggable="false"> Charts </a></li>
			
			<sec:authorize access="hasRole('ROLE_SUPER_ADMIN')">
				<li class="nav-item unselectable"> <a class="nav-link" href="/EAZee/EAXEE_Admin/registration" draggable="false"> Register New User </a>
				</li>
			</sec:authorize>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<li class="nav-item unselectable"> <a class="nav-link" href="/EAZee/admin/createRepository" draggable="false"> Create New Repository </a>
				</li>
				<li class="nav-item unselectable" onclick="readerMode()"> <a class="nav-link" href="/EAZee/admin/registerArchitect" draggable="false"> Register New Architect </a>
				</li>
			</sec:authorize>
			<sec:authorize access="hasRole('ROLE_READER')"  var="hasRoleReader"></sec:authorize>
			</ul>
			
		</div> <!-- navbar-collapse. -->

		<div id="history_tab" style="margin-right: 1%; display: none; float: right;" class="btn-group dropdown">	  
 			<button  type="button" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="displaydiv();">
 				<img alt="schema" width="20px" height="20px" src="<c:url value="resources/images/tabs.svg"/>"/>
<!--   				<span style="background:#e9e9e9" class="history_page_no badge badge-light">9</span> -->
					<span style="background:#e9e9e9" class="history_page_no badge badge-light">0</span>
 			</button>
		</div>
	</nav>
	<div class="navbar" style="background:#e1e6f6; width:100%">
		<div class="bs-example leftSideButtons" style="margin-left:-20px">
		</div>
		<div>
			<span id="element_title" style="display: none"></span>
		</div>
		<div style="height: 30px;">	
	    	<span class="alert_message"></span>
		</div>

	</div>
<div class=container>

</div>
</div>
</body>
</html>