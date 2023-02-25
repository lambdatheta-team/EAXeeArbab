<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code=""/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><spring:message code="user_profile"/></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="<c:url value="resources/images/snapping-removebg.png"/>" type="image/icon type" >
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<!-- <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"></script> -->
<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%-- <link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/display-none.css"/>"> --%>
<link rel="stylesheet" type="text/css" id="" href="<c:url value="/resources/css/userprofile/userprofile-default.css"/>">
<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/userprofile/userprofile-default.css"/>">

<script type="text/javascript">

	var successfully_updated = '<spring:message code="successfully_updated" />';
	var password_successfully_updated = '<spring:message code="password_successfully_updated" />';
	var current_password_is_not_correct = '<spring:message code="current_password_is_not_correct" />';

function changeTheme(){
	
// 	document.addEventListener("keydown", function (event) {
// 		if (event.ctrlKey) {
// 		event.preventDefault();
// 		}
// 	});	
	
// 	let themeURL = '';
// 	var themeLink = document.getElementById("switcher-id");
// 	$.ajax({
// 	    url: "getThemeName", // url: "/findTables?dbName="+db_name,
// 	  	method: 'get',
// 	  	async: true,
// 	    data: {},
// 	    success: function (data) {
// 		  	console.log(data)
// 		  	$("#themeSelect").val(data);
// 		  	if(data=='dark'){
// 				themeURL = '<c:url value="/resources/css/userprofile/userprofile-dark.css"/>';
// 			}
// 			else if(data=='light'){
// 				themeURL ='<c:url value="/resources/css/userprofile/userprofile-light.css"/>';
// 			}
// 			else if(data=='default'){
// 				themeURL ='<c:url value="/resources/css/userprofile/userprofile-default.css"/>';
// 			}
// 		},
//         async: false
// 	  });
// 	themeLink.href = themeURL;
}  

function editUserDetails(){
	$("#edit_button").css("display","none");
	$("#save_button").css("display","block");
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
	$("#edit_button").css("display","block");
	$("#save_button").css("display","none");
// 	var userFullName = $("#userFullName").val();
	var emailAddress = $("#emailAddress").val();
	var cellNumber = $("#cellNumber").val();
	var phoneNumber = $("#phoneNumber").val();
	var extension = $("#extension").val();
	
	$.ajax({
		url: "updateUserProfile",
// 		data:{'userFullName':userFullName,'emailAddress':emailAddress,'cellNumber':cellNumber,'phoneNumber':phoneNumber,'extension':extension},
		data:{'emailAddress':emailAddress,'cellNumber':cellNumber,'phoneNumber':phoneNumber,'extension':extension},
		type: "POST",
		success: function(){
			
		}
	});
	$(".alert_message").html('<div class="alert alert-secondary" role="alert">'+successfully_updated+'</div>');
	alert_message_function();
	
// 	location.reload();
	setTimeout(function() { location.reload();}, 2501);
	}
	function alert_message_function(){
		setTimeout(function() { $(".alert_message").html(""); }, 2500);
	}
	
	function theme(){
		var themeName = $("#themeSelect").val();
		location.reload();		
		$.ajax({
		    url: "saveThemeName",
			method: 'post',
		    data: {'themeName':themeName},
		    success: function (data) {
		    	}
		 });
	}
	
	function changePassword(){
		$("#passwordErrorMessage").html("");
		var oldPassword = $("#oldPassword").val();
		var newPassword = $("#newPassword").val();
		var confirmNewPassword = $("#confirmNewPassword").val();
		if(newPassword == confirmNewPassword && newPassword.length>=8){
			$.ajax({
				url : "changePassword",
				method : 'post',
				data : {oldPassword,newPassword},
				success : function(data) {
					if(data=='success'){
						$(".alert_message").html('<div class="alert alert-success" role="alert">'+password_successfully_updated+'</div>');
				    	alert_message_function();
				    	$("#oldPassword").val('');
				    	$("#newPassword").val('');
				    	$("#confirmNewPassword").val('');
					}else{

						$("#passwordErrorMessage").html(current_password_is_not_correct);
					}
				}
			});
		}else if(newPassword.length<8){
			$("#passwordErrorMessage").html('Minimum 8 Characters Are Required');
		}else if(confirmNewPassword == '' ||  newPassword == ''){
			$("#passwordErrorMessage").html('Fields Can\'t Be Empty');
		}else if ( (newPassword != confirmNewPassword) && newPassword != ''){
			$("#passwordErrorMessage").html('Password Doesn\'t Match');
		}
		
	}

</script>
</head>
<body onload="changeTheme()">
<div class="container-fluid" style="margin: 0 !important; padding: 0 !important; width:100vw; height: 100%">
	<div class="header">
<%-- 		<img alt="logo" draggable="false" src="<c:url value="resources/images/logo.png"/>" width="15px" height="15px" style="margin-top:1px;"> --%>
		<div>
			<a href="home">
<!-- 				<p class="image1" style="margin-left: 5px;margin-top: 3px"> -->
<%-- 					<img draggable="false" alt="logo"  width="155px" src="<c:url value="/resources/images/main-logo-removebg.png"/>"> --%>
<!-- 				</p> -->
				<p class="image1" style="margin-left: 0px;margin-top:-5px">
					<img draggable="false" alt="logo"  width="155px" src="<c:url value="/resources/images/logo-login.png"/>">
				</p>
			</a>
		</div>
	

		<div style="display:flex;justify-content: space-between; padding-right:10px">
			<div id="home-btn">
				<a  class="fa fa-angle-double-left fa-2x" onclick="goBackWithLanguage()" draggable="false" title="Back"  style="cursor:pointer"></a>
			</div>
			<div id="home-btn">
				<a href="home" class="fa fa-home fa-2x" draggable="false" title="<spring:message code="module_page"/>" ></a>
			</div>
		</div>
<!-- 		<div id="google_translate_element" style="margin-right:2%"></div> -->
<!-- 		<span><a href="lang=rtl">RTL View</span> -->
	</div>
<div class="container">
	<div style="height: 30px; width:max-content; margin:0 auto;">	
		<span class="alert_message"></span>
	</div>
<div class="container emp-profile">
<!--             <form method="post"> -->
                <div class="row d-flex justify-content-center">
<!--                     <div class="col-md-4"> -->
<!--                         <div class="profile-img"> -->
<%--                             <img style="border-radius: 50%;height:150px;width:150px;"src="${userProfileDetials.username}.jpg" alt=""/> --%>
<!--                             <div> -->
<!--                             <br> -->
<!--                             <i type="file" id="myFile" name="filename" class="fa fa-pencil-square-o fa-lg editprofile" aria-hidden="true"></i> -->
<!-- 							  <form method="POST" action="save_user_profile_picture" enctype="multipart/form-data"> -->
<!-- 								  <input type="file" id="profile_image" name="file" accept=".png, .jpg, .jpeg"> -->
<!-- 								  <input type="submit" id="uploadpicture"> -->
<!-- 							  </form> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
                    <div class="col-md-8">
                        <div class="profile-head">
                                    <h5>
                                    <p class="">${userProfileDetials.userFullName}</p>
<%--                                      <input id="userFullName" value="${userProfileDetials.userFullName}" type="email" class="form-control"></input> --%>
                                    </h5>
<!--                                     <h6> -->
<%--                                         <p>${userProfileDetials.userRole}</p> --%>
<!--                                     </h6> -->
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><spring:message code="information"/></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><spring:message code="password"/></a>
                                </li>
	                                <li class="nav-item">
	                                    <a class="nav-link" id="language-tab" data-toggle="tab" href="#language" role="tab" aria-controls="language" aria-selected="false"><spring:message code="language"/></a>
	                                </li>
<!--                                 <li class="nav-item"> -->
<!--                                     <a class="nav-link" id="theme-tab" data-toggle="tab" href="#theme" role="tab" aria-controls="Theme" aria-selected="false">Theme</a> -->
<!--                                 </li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                        
                    </div>
                </div>
                <div class="row d-flex justify-content-center">
<!--                     <div class="col-md-4"> -->
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
<!--                     </div> -->
                    <div class="col-md-10 ml-5">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
<!-- 			                            <p class="edit-profile" onclick="editUserDetails();" class="profile-edit-btn editbtn" name="btnAddMore" >Edit Profile</p> -->
<!-- 			                       		<input type="button"  onclick="updateUserDetails();" class="profile-edit-btn updatebtn update-profile" name="btnAddMore" value="Save"/> -->
<!-- 			                       		<button style="cursor: pointer; position: absolute;right: 10px;top: 5px;" title="Save" id="save_button" class="btn" onclick="updateUserDetails()"> -->
											<i id="edit_button" class="fa fa-edit" style="font-size:30px;cursor: pointer; position: absolute;right: 10px;top: 5px;color:#0d7e8a" onclick="editUserDetails()"></i>
											<i id="save_button" class="fa fa-floppy-o" style="font-size:30px;cursor: pointer; position: absolute;right: 10px;top: 5px;color:#0d7e8a;display:none;" onclick="updateUserDetails()"></i>
<!-- 										</button> -->
										<br>
										<br>
					<div class="row textAlignRight">
                                            <div class="col-md-5">
                                                <label><spring:message code="email"/></label>
                                            </div>
                                            <div class="col-md-5">
                                                <p class="ptext">${userProfileDetials.emailAddress}</p>
                                                <input id="emailAddress" value="${userProfileDetials.emailAddress}" type="email" class="form-control inputtext"></input>
                                            </div>
                                        </div>
					<div class="row textAlignRight">
                                            <div class="col-md-5">
                                                <label><spring:message code="cell_no"/></label>
                                            </div>
                                            <div class="col-md-5">
                                               <p class="ptext">${userProfileDetials.cellNumber}</p>
                                                <input id="cellNumber" value="${userProfileDetials.cellNumber}" type="text" class="form-control inputtext"></input>
                                            </div>
                                        </div>
					<div class="row textAlignRight">
                                            <div class="col-md-5">
                                                <label><spring:message code="phone_no"/></label>
                                            </div>
                                            <div class="col-md-5">
                                              <p class="ptext">${userProfileDetials.phoneNumber}</p>
                                               <input id="phoneNumber" value="${userProfileDetials.phoneNumber}" type="text" class="form-control inputtext"></input>
                                            </div>
                                        </div>
					<div class="row textAlignRight">
                                            <div class="col-md-5">
                                                <label><spring:message code="extension"/></label>
                                            </div>
                                            <div class="col-md-5">
                                               <p class="ptext">${userProfileDetials.extension}</p>
                                                <input id="extension" value="${userProfileDetials.extension}" type="text" class="form-control inputtext"></input>
                                            </div>
                                        </div>
					<div class="row textAlignRight">
                                            <div class="col-md-5">
                                                <label><spring:message code="organization_unit_name"/></label>
                                            </div>
                                            <div class="col-md-5">
                                              <p class="ptext">${userProfileDetials.organizationUnitName}</p>
                                                <input value="${userProfileDetials.organizationUnitName}" type="text" class="form-control inputtext"></input>
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="row textAlignRight">
                                            <div class="col-md-5">
                                                <label><spring:message code="current_password"/></label>
                                            </div>
                                            <div class="col-md-5">
                                               <input id="oldPassword" type="password" class="form-control">
                                            </div>
                                        </div>
					<div class="row textAlignRight">
                                            <div class="col-md-5">
                                                <label><spring:message code="new_password"/></label>
                                            </div>
                                            <div class="col-md-5">
                                               <input id="newPassword" type="password" class="form-control">
                                            </div>
                                        </div>
					<div class="row textAlignRight">
                                            <div class="col-md-5">
                                                <label><spring:message code="confirm_password"/></label>
                                            </div>
                                            <div class="col-md-5">
                                                <input id="confirmNewPassword" type="password" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row">
                                        	 <div class="col-md-5">
                                                <br>
                                            </div>
                                            <div class="col-md-5">
                                                <span id="passwordErrorMessage"> <br> </span>
                                            </div>
                                        </div>
                                        <div class="row">
                                        	<div  class="col-md-10">
							<input style="margin-top: 5px;float: right;" type="button" onclick="changePassword();" class="btn btn-primary mb-2 theme-submit floatLeft" value="<spring:message code="change"/>">
                          		</div>
                                        </div>
                          		</div>
									<div class="tab-pane fade" id="language" role="tabpanel" aria-labelledby="language-tab" onchange="toggleLanguageSelection()">
									    <div class="row textAlignRight">
                                            <div class="col-md-6">
                                                <label><spring:message code="language"/></label>
                                            </div>
                                            <div class="col-md-6">
									            <select class="form-control" id="languageSelect">
<%-- 									                <option value="En"><spring:message code="english"/></option> --%>
<%-- 									                <option value="Ar"><spring:message code="arabic"/></option> --%>
									                <option value="En">English</option>
									                <option value="Ar">عربي</option>
													<!-- <option>French</option> -->
                                              </select>
                                            </div>
                                        </div>
                            		 </div>
                            		      <div class="tab-pane fade" id="theme" role="tabpanel" aria-labelledby="theme-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label><spring:message code="select_theme"/></label>
                                            </div>
                                            <div class="col-md-6">
                                              <select disabled id="themeSelect" class="form-control">
                                              <option value="default"><spring:message code="default"/></option>
                                              <option value="light"><spring:message code="light"/></option>
                                              <option value="dark"><spring:message code="dark"/></option>
                                              </select>
                                              <input style="margin-top: 5px;float: right;" type="button" onclick="theme();" class="btn btn-primary mb-2 theme-submit" value="Apply">
                                            </div>
                                        </div>
                            		 </div>
                        </div>
                    </div>
                </div>
<!--             </form>            -->
        </div>
</div>
</div>
<script>

		function setLanguageDropdownValue(id, value){
	
			var mySelect = document.getElementById('languageSelect');
	
			for(var i, j = 0; i = mySelect.options[j]; j++) {
			  if(i.value == value) {
			    mySelect.selectedIndex = j;
			    break;
			  }
			}
		}

	
		function getLanguageFromLocalStorage(){
			var localStorageLanguage = localStorage.getItem("language");
			
			if(localStorageLanguage == null){
				localStorageLanguage = 'En';
				setLanguageDropdownValue('languageSelect', localStorageLanguage)
			}else{
				setLanguageDropdownValue('languageSelect', localStorageLanguage)
			}
			
			switchLanguageCssFile(localStorageLanguage)
		}
		
		
		function toggleLanguageSelection(){

			var languageDropDownValue = document.getElementById('languageSelect').value;
			
			
			// 			globalLanguage = text
			
			localStorage.setItem("language", languageDropDownValue);
			
			switchLanguageCssFile(languageDropDownValue)
			
			window.location.href = "userprofile?lang="+localStorage.getItem("language")
		}
	

		
		getLanguageFromLocalStorage()
		
		
		function switchLanguageCssFile(lang){
			
			var arbicLanguageCssFile   = '<c:url value="/resources/css/userprofile/userprofileArabic.css"/>';
			var englishLanguageCssFile = '<c:url value="/resources/css/userprofile/userprofile-default.css"/>';
			
			var themeURL = '';
			lang == "En" ? themeURL = englishLanguageCssFile : themeURL = arbicLanguageCssFile;
			
			var themeLink = document.getElementById("switcher-id");
			themeLink.href = themeURL;
			
		}
		

		function checkBackUrl(){
			window.location.href = document.referrer; //Will take you to Google.
		}
		function goBackWithLanguage(){
			var prevUrl = localStorage.getItem('prevUrl')
			var splittedPrevUrl = prevUrl.split("?")
			var prevUrlWithNewLang = splittedPrevUrl[0]+"?lang="+localStorage.getItem("language")
			window.location.href = prevUrlWithNewLang
		}
		
</script>
</body>
</html>