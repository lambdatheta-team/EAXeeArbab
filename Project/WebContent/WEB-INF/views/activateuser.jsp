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
<!-- <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"></script> -->
<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>

*{
	font-family: helvetica, arial, verdana, sans-serif;
}
html,
body{
    background: #c7c3c3;
}
.emp-profile{
    padding: 3%;
    margin-top: 3%;
    margin-bottom: 3%;
    border-radius: 0.5rem;
    background: #fff;
}
.profile-img{
    text-align: center;
}
.profile-img img{
    width: 70%;
    height: 100%;
}
.profile-img .file {
    position: relative;
    overflow: hidden;
    margin-top: -20%;
    width: 70%;
    border: none;
    border-radius: 0;
    font-size: 15px;
    background: #212529b8;
}
.profile-img .file input {
    position: absolute;
    opacity: 0;
    right: 0;
    top: 0;
}
.profile-head h5{
    color: #333;
}
.profile-head h6{
    color: #0062cc;
}
.profile-edit-btn{
    border: none;
    border-radius: 1.5rem;
    width: 70%;
    padding: 2%;
    font-weight: 600;
    color: #6c757d;
    cursor: pointer;
}
.proile-rating{
    font-size: 12px;
    color: #818182;
    margin-top: 5%;
}
.proile-rating span{
    color: #495057;
    font-size: 15px;
    font-weight: 600;
}
.profile-head .nav-tabs{
    margin-bottom:5%;
}
.profile-head .nav-tabs .nav-link{
    font-weight:600;
    border: none;
}
.profile-head .nav-tabs .nav-link.active{
    border: none;
    border-bottom:2px solid #0062cc;
}
.profile-work{
    padding: 14%;
    margin-top: -15%;
}
.profile-work p{
    font-size: 12px;
    color: #818182;
    font-weight: 600;
    margin-top: 10%;
}
.profile-work a{
    text-decoration: none;
    color: #495057;
    font-weight: 600;
    font-size: 14px;
}
.profile-work ul{
    list-style: none;
}
.profile-tab label{
    font-weight: 600;
}
.profile-tab p{
    font-weight: 600;
    color: #0062cc;
}
</style>
<script type="text/javascript">
function editUserDetails(){
	
	$(".ptext").css("display","none");
	$(".inputtext").css("display","block");
	$(".updatebtn").css("display","block");
	$(".editbtn").css("display","none");
}

$(document).ready(function() {

	$(".inputtext").css("display","none");
	$(".updatebtn").css("display","none");
	
});

function updateUserDetails(){
	
	var userFullName = $("#userFullName").val();
	var emailAddress = $("#emailAddress").val();
	var cellNumber = $("#cellNumber").val();
	var phoneNumber = $("#phoneNumber").val();
	var extension = $("#extension").val();
	
	$.ajax({
				url: "updateUserProfile",
				data:{'userFullName':userFullName,'emailAddress':emailAddress,'cellNumber':cellNumber,'phoneNumber':phoneNumber,'extension':extension},
				type: "POST",
				success: function(){
					
				}
			});
	alert("Your Details Successfully Updated");
	location.reload();
	}
</script>
</head>
<body>
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
<div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                    <p class="ptext">${userProfileDetials.userFullName}</p>
                                     <input id="userFullName" value="${userProfileDetials.userFullName}" type="email" class="form-control inputtext"></input>
                                    </h5>
                                    <h6>
                                        <p>${userProfileDetials.userRole}</p>
                                    </h6>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
<!--                                     <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Information</a> -->
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Activate Your Account</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
<!--                         <input type="button" onclick="editUserDetails();" class="profile-edit-btn editbtn" name="btnAddMore" value="Edit Profile"/> -->
<!--                         <a href="logout"><input type="button" class="profile-edit-btn editbtn" name="btnAddMore" value="Sign out"/></a>        -->
<!--                         <input type="button"  onclick="updateUserDetails();" class="profile-edit-btn updatebtn" name="btnAddMore" value="Save"/> -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
<!--                         <div class="profile-work"> -->
<!--                             <p>WORK LINK</p> -->
<!--                             <a href="">Website Link</a><br/> -->
<!--                             <a href="">Bootsnipp Profile</a><br/> -->
<!--                             <a href="">Bootply Profile</a> -->
<!--                             <p>SKILLS</p> -->
<!--                             <a href="">Web Designer</a><br/> -->
<!--                             <a href="">Web Developer</a><br/> -->
<!--                             <a href="">WordPress</a><br/> -->
<!--                             <a href="">WooCommerce</a><br/> -->
<!--                             <a href="">PHP, .Net</a><br/> -->
<!--                         </div> -->
                    </div>
                    <div class="col-md-12">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Full name</label>
                                            </div>
                                            <div class="col-md-6">
                                               <input type="text" class="form-control" >
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Enter Password</label>
                                            </div>
                                            <div class="col-md-6">
                                               <input type="text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Retype Password</label>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" class="form-control">
                                            </div>
                                        </div>
                          		</div>
                        </div>
              			  <button type="button" class="btn btn-primary">Primary</button>
                    </div>
                </div>
            </form>           
        </div>
</div>
</div>
</body>
</html>