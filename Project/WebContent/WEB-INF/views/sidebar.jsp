<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code=""/>
<!doctype html>
<html lang="en">
  <head>
  	<title>Sidebar</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
		
  </head>
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	          <i class="fa fa-bars"></i>
	          <span class="sr-only">Toggle Menu</span>
	        </button>
        </div>
				<div class="p-4">
		  		<h1><a href="index.html" class="logo"><img src="/EAZee/resources/images/eazee-Logo.png" style="width:13vw"></a></h1>
	        <ul class="list-unstyled components mb-5">
	          <li class="active">
	            <a href="#"><span class="fa fa-home mr-3"></span> Home</a>
	          </li>
	          <li>
	              <a href="#"><span class="fa fa-user mr-3"></span> About</a>
	          </li>
	          <li>
              <a href="#"><span class="fa fa-briefcase mr-3"></span> Works</a>
	          </li>
	          <li>
              <a href="#"><span class="fa fa-sticky-note mr-3"></span> Blog</a>
	          </li>
	          <li>
              <a href="#"><span class="fa fa-suitcase mr-3"></span> Gallery</a>
	          </li>
	          <li>
              <a href="#"><span class="fa fa-cogs mr-3"></span> Services</a>
	          </li>
	          <li>
              <a href="#"><span class="fa fa-paper-plane mr-3"></span> Contacts</a>
	          </li>
	        </ul>
	        
<!-- 	        news letter -->
<!-- 	        <div class="mb-5"> -->
<!-- 						<h3 class="h6 mb-3">Subscribe for newsletter</h3> -->
<!-- 						<form action="#" class="subscribe-form"> -->
<!-- 	            <div class="form-group d-flex"> -->
<!-- 	            	<div class="icon"><span class="icon-paper-plane"></span></div> -->
<!-- 	              <input type="text" class="form-control" placeholder="Enter Email Address"> -->
<!-- 	            </div> -->
<!-- 	          </form> -->
<!-- 					</div> -->
<!--    			  //news letter// -->
   			  
	        <div class="footer">
	         <p>Copyrights © 2021 EAXEE. All Rights Reserved</p>
	        </div>

	      </div>
    	</nav>

        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">
        <jsp:include page="/WEB-INF/views/explorer.jsp"></jsp:include>
      </div>
		</div>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/popper.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/sidebar.js" />"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	
  </body>
</html>