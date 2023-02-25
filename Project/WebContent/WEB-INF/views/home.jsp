<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code=""/>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <!-- Title Page-->
    <title>EAXEE</title>

    <!-- Fontfaces CSS--> 
	<link href="<c:url value="/resources/css/material-design-iconic-font.min.css"/>" rel="stylesheet">
	<link rel="icon" href="<c:url value="resources/images/snapping-removebg.png"/>" type="image/icon type" >
    <!-- Bootstrap CSS-->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <!-- Main CSS-->
    <link href="<c:url value="/resources/css/theme.css"/>" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
	<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/home/home-default.css"/>">
     

</head>
<body class="animsition" onload="changeTheme()" oncontextmenu="return false;">
<!--     <div class="page-wrapper"> -->
    <div class="">
        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
              <div>
<!--               	<a href="home">					 -->
				<a>
	              	<p class="image1" style="margin-left: 0px;margin-top:-5px">
						<img draggable="false" alt="logo"  width="155px" src="<c:url value="/resources/images/logo-login.png"/>">
					</p>
				</a>
              </div>
            
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <div class="header-button">
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">${userProfileDetials.userFullName} <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">${userProfileDetials.userFullName}</a>
                                                    </h5>
                                                    <span class="email">${userProfileDetials.emailAddress}</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="userprofile" onclick="saveCurrentUrlToLocalStorage()"><i class="fa fa-user" aria-hidden="true"></i>Profile</a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="logout"><i class="fa fa-power-off" aria-hidden="true"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <main class="site-wrapper">
            
  						<div class="pt-table desktop-768">
					<div class="pt-tablecell page-home relative" style="background-image: url(/EAZee/resources/images/logo-login.png); background-position: center;	background-size: auto;">
                    <div class="overlay"></div>
                    
                    <div id="sessionExpiredDialog" style="display:none" title="Session Expired!">
						<p><span class="ui-icon ui-icon-alert" style="float:left; margin:3px 3px 20px 0;"></span>Session Expired! Please Login again.</p>
					</div>
                    
                    
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
                                <div class="page-title  home text-center">
<!--                                   <span class="heading-page"> Eaxee Suite </span> -->
                                  <span class="heading-page"> <img draggable="false" alt="logo"  width="300px" src="<c:url value="/resources/images/logo-login.png"/>"> </span>
                                  
<!--                                     <p class="mt20">EAXEE is an Enterprise Architecture Management tool, providing functionalities and methods for enterprise analysis, design, planning, and implementation.</p> -->
                                </div>

                                <div class="hexagon-menu clear">
                                    <div id="zz" class="hexagon-item module disabled" style="cursor:default;">
<!--                                         <div class="hex-item"> -->
<!--                                             <div></div> -->
<!--                                             <div></div> -->
<!--                                             <div></div> -->
<!--                                         </div> -->
<!--                                         <div class="hex-item"> -->
<!--                                             <div></div> -->
<!--                                             <div></div> -->
<!--                                             <div></div> -->
<!--                                         </div> -->
<!--                                         <a  class="hex-content"  href="index"> -->
<!--                                             <span class="hex-content-inner"> -->
<!--                                                 <span class="icon"> -->
<!-- <!--                                                     <i class="fa fa-universal-access"></i> --> 
<!--                                                 </span> -->
<!--                                                 <span class="title">Enterprise Architecture Portal</span> -->
<!--                                             </span> -->
<!--                                             <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#0d7e8a"></path></svg> -->
<!--                                         </a> -->
                                    </div>
                                    <div id="eaPortal" class="hexagon-item module disabled">
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <a id="explorerModule" href="index" class="hex-content">
                                            <span class="hex-content-inner">
                                                <span class="icon">
<!--                                                     <i class="fa fa-bullseye"></i> -->
                                                </span>
                                                <span class="title" title="Enterprise Architecture Portal">Eaxee Enterprise Architecture</span>
                                            </span>
                                            <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path class="view-box" d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#0d7e8a"></path></svg>
                                        </a>
                                    </div>
                                    <div id="import_export" class="hexagon-item module disabled">
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <a id="fromExcelModule" href="fromExcel" class="hex-content">
                                            <span class="hex-content-inner">
                                                <span class="icon">
<!--                                                     <i class="fa fa-braille"></i> -->
                                                </span>
                                                <span class="title" title="Import & Export Portal">Eaxee ImpEx</span>
                                            </span>
                                            <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path class="view-box" d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#0d7e8a"></path></svg>
                                        </a>    
                                    </div>
                                    <div class="hexagon-item module disabled" style="cursor:default;">
<!--                                         <div class="hex-item"> -->
<!--                                             <div></div> -->
<!--                                             <div></div> -->
<!--                                             <div></div> -->
<!--                                         </div> -->
<!--                                         <div class="hex-item"> -->
<!--                                             <div></div> -->
<!--                                             <div></div> -->
<!--                                             <div></div> -->
<!--                                         </div> -->
<!--                                         <a  class="hex-content"> -->
<!--                                             <span class="hex-content-inner"> -->
<!--                                                 <span class="icon"> -->
<!-- <!--                                                     <i class="fa fa-id-badge"></i> --> 
<!--                                                 </span> -->
<!--                                                 <span class="title">License Management</span> -->
<!--                                             </span> -->
<!--                                             <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#0d7e8a"></path></svg> -->
<!--                                         </a> -->
                                    </div>
                                    <div id="admin" class="hexagon-item module disabled">
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <a id="administrationModule" href="administration" class="hex-content">
                                            <span class="hex-content-inner">
                                                <span class="icon">
<!--                                                     <i class="fa fa-life-ring"></i> -->
                                                </span>
                                                <span class="title" title="Administration Portal">Eaxee Administration</span>
                                            </span>
                                            <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path class="view-box" d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#0d7e8a"></path></svg>
                                        </a>
                                    </div>
                                    <div id="userManagement"  class="hexagon-item module disabled">
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <a href="EAXEE_Admin/role_details"  class="hex-content">
                                            <span class="hex-content-inner">
                                                <span class="icon">
<!--                                                     <i class="fa fa-clipboard"></i> -->
                                                </span>
                                                <span class="title" title="Role Management Portal">Eaxee<br>Meta Modeler</span>
                                            </span>
                                            <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path class="view-box" d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#0d7e8a"></path></svg>
                                        </a>
                                    </div>
                                    <div id="organizationalPortal" class="hexagon-item module disabled">
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <div class="hex-item">
                                            <div></div>
                                            <div></div>
                                            <div></div>
                                        </div>
                                        <a id="organizationalPortalModule" href="organizationalPortal"  class="hex-content" >
                                            <span class="hex-content-inner">
                                                <span class="icon">
<!--                                                     <i class="fa fa-map-signs"></i> -->
                                                </span>
                                                <span class="title" title="Organizational Portal">Eaxee Organization</span>
                                            </span>
                                            <svg viewBox="0 0 173.20508075688772 200" height="200" width="174" version="1.1" xmlns="http://www.w3.org/2000/svg"><path class="view-box" d="M86.60254037844386 0L173.20508075688772 50L173.20508075688772 150L86.60254037844386 200L0 150L0 50Z" fill="#0d7e8a"></path></svg>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
  </main>
<!--             <div class="row"> -->
<!--                 <div class="col-md-12"> -->
<!--                 </div> -->
<!--             </div>        -->
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>
    </div>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/animsition.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>
    
    <!--  Global JS FILE	 -->
	<script type="text/javascript" src="<c:url value="/resources/js/global.js" />"></script>
    
    <script type="text/javascript">

    

    function changeTheme(){
    	
   //// session time out alert
	    inactivityTime();
	    resetTimer();
	    document.body.onclick = resetServerSessionTimeOut;
	    
    	  document. addEventListener("keydown", function (event) {
    	    	if (event. ctrlKey) {
    	    	event. preventDefault();
    	    	}
    	    	});
//     	let themeURL = '';
//     	var themeLink = document.getElementById("switcher-id");
//     	$.ajax({
//     	    url: "getThemeName", // url: "/findTables?dbName="+db_name,
//     	  	method: 'get',
//     	  	async: true,
//     	    data: {},
//     	    success: function (data) {
//     		  	console.log(data)
//     		  	if(data=='dark'){
//     				themeURL = '<c:url value="/resources/css/home/home-dark.css"/>';
//     			}
//     			else if(data=='light'){
//     				themeURL ='<c:url value="/resources/css/home/home-light.css"/>';
//     			}
//     			else if(data=='default'){
//     				themeURL ='<c:url value="/resources/css/home/home-default.css"/>';
//     			}
//     		},
//             async: false
//     	  });
//     	themeLink.href = themeURL;
    }   
    
    
    
    $( document ).ready(function() {
    	var getModulesMap= $.ajax({
    		url: "getModulesMap",
    		data: {},
    		type: "POST",
    		success: function(result) {
    			console.log(result)
    		},
    		async: false
    	});
    	getModulesMap = getModulesMap.responseJSON;
    	console.log('getModulesMap',getModulesMap);
    	
//     	$(".module").attr("hidden",true);
    	
    	if(getModulesMap["admin"]==true){
    		$("#admin").removeClass("disabled");
    	}
    	if(getModulesMap["eaPortal"]==true){
    		$("#eaPortal").removeClass("disabled");
    	}
    	if(getModulesMap["import_export"]==true){
    		$("#import_export").removeClass("disabled");
    	}
    	if(getModulesMap["organizationalPortal"]==true){
    		$("#organizationalPortal").removeClass("disabled");
    	}
    	if(getModulesMap["userManagement"]==true){
//     		$("#userManagement").removeClass("disabled");
    	}
    	if(getModulesMap["userProfile"]==true){
//     		$("#userProfile").removeClass("disabled");
    	}
    	
    	///////////////////////////////////////////////////////
    	var explorerId = 'explorerModule'
    	var fromExcelId = 'fromExcelModule'
    	var administrationId = 'administrationModule'
		var organizationalPortalId = 'organizationalPortalModule'

		describeLanguageToModule(explorerId)
    	describeLanguageToModule(fromExcelId)
    	describeLanguageToModule(administrationId)
    	describeLanguageToModule(organizationalPortalId)
    	///////////////////////////////////////////////////////
    	


    	

    });
    
    
	function describeLanguageToModule(moduleId){
		var globalLanguage = ""
   		var localStorageLanguage = localStorage.getItem("language");
   		
   		if(localStorageLanguage == null){
   	 		localStorage.setItem("language", "En");
   	 		globalLanguage = "?lang="+localStorage.getItem("language")
   		}else{
   			globalLanguage = "?lang="+localStorage.getItem("language")
   		}
   		
   		var moduleHref = document.getElementById(moduleId);
   		moduleHref.href += globalLanguage;
	}
    
	function saveCurrentUrlToLocalStorage(){
	    localStorage.setItem("prevUrl", window.location.href);
	}    
    
    </script>
    
    
    
    
</body>

</html>
<!-- end document-->