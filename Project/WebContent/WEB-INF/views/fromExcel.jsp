<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code="" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title><spring:message code = "impex"/></title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"	crossorigin="anonymous">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	
	
	
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
	
	<!-- <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"></script> -->
	<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script> -->
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css"></script> -->
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/xlsx.full.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/jszip.js"></script>
	
	<!-- <script src="resources/js/FileSaver.js"></script> -->
	<script type="text/javascript" src="<c:url value="/resources/js/global.js" />"></script>
	
	<!-- 	Login page script- -->
	<link rel="icon" type="image/png" href="<c:url value="/resources/vendor/images/icons/favicon.ico"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/fonts/iconic/css/material-design-iconic-font.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animate/animate.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css-hamburgers/hamburgers.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animsition/css/animsition.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/select2/select2.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css/util.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css/main.css"/>">
	<!-- userinfo css -->
	<link href="<c:url value="/resources/css/userinfo.css"/>" rel="stylesheet">
	<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/display-none.css"/>">
	<link rel="stylesheet" type="text/css" id="" href="<c:url value="/resources/css/fromexcel/fromexcel-default.css"/>">
	<script>
		var please_upload_correct_file = '<spring:message code="please_upload_correct_file"/>';
		var error_while_uploading_file_please_upload_again = '<spring:message code="error_while_uploading_file_please_upload_again"/>';
		var xml_file_not_found = '<spring:message code="xml_file_not_found"/>';
		var session_expired_please_login_again = '<spring:message code="session_expired_please_login_again"/>';
		var user_data_file_not_found_please_upload_again = '<spring:message code="user_data_file_not_found_please_upload_again"/>';
		var please_upload_correct_data_file = '<spring:message code="please_upload_correct_data_file"/>';
		var invalid_file_uploaded = '<spring:message code="invalid_file_uploaded"/>';
		var no_file_uploaded = '<spring:message code="no_file_uploaded"/>';
	</script>
</head>

<body onload="changeTheme()" style="transition: all 5s ease-in">
<!-- <body onload="checkLang()" style="transition: all 5s ease-in"> -->
	<!-- <div class="container" style="margin: auto; !important; width:100%"> -->
	<div class="container-fluid" id="mainDiv" style="margin: 0 !important; padding: 0 !important; width: 100vw; height: 100vh;">

	
	<div id="sessionExpiredDialog" style="display:none" title="Session Expired!">
		<p><span class="ui-icon ui-icon-alert" style="float:left; margin:3px 3px 20px 0;"></span><spring:message code="session_expired_please_login_again"/></p>
	</div>
	
		<div class="header_impex">
			<div>
				<a>
<!-- 					<p class="image1" style="margin-left: 5px; padding:0px!important; margin-top: 3px"> -->
<%-- 						<img draggable="false" alt="logo" width="155px"src="<c:url value="/resources/images/main-logo-removebg.png"/>"> --%>
<!-- 					</p> -->
					<p class="image1" style="margin-left: 0px;margin-top:-5px">
						<img draggable="false" alt="logo" width="155px"src="<c:url value="/resources/images/logo-login.png"/>">
					</p>
				</a>
			</div>

			<div style="display: flex; justify-content: space-between; padding-right: 10px">
				<div id="home-btn">
<!-- 					<a id="language" class="fa-2x lang-icon" draggable="false" title="Module Page" onclick="toggleLanguageSelection()" hidden>Ar</a> -->
					<a href="home" class="fa fa-home fa-2x" draggable="false" title="Module Page"></a>
				</div>
<!-- 			<div id="" class="languageText" style="margin-top:3px!important;"> -->
<!-- 				<a href="?lang=ar" class="fa-2x lang-icon" draggable="false" title="Module Page">Ar</a> -->
<!-- 			</div>				 -->
				<div class="account-item clearfix js-item-menu ">
					<div class="content">
						<a class="js-acc-btn" href="#">${userProfileDetials.userFullName}  
							<i class="fa fa-caret-down user-caret-down" aria-hidden="true"></i>
						</a>
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
								<a href="userprofile" onclick="saveCurrentUrlToLocalStorage()"><i class="fa fa-user" aria-hidden="true"></i><spring:message code="profile"/></a>
							</div>
						</div>
						<div class="account-dropdown__footer">
							<a href="logout"><i class="fa fa-power-off" aria-hidden="true"></i><spring:message code="logout"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div id="impexParentDiv">

		<!-- 		<button onclick="truncateDB()">Empty Database</button> -->
		<div class="impex_form_div">
		
			<div id="exportFormsDiv">
				<form id="exportForm" onsubmit="return false;">
					<div class="form-group">
						<div class="container-login100-form-btn" id="export_btn_div">
							<input type="text" id="dbNameForExport" value="${userDBName}" name="db_Name" hidden>
							<div id="exportButtonsDiv">
								<button id="exportTemplate" class="export-btn" type="submit" class="btn btn-default" onclick="exportEmptyTemplateThroughAjax()">
<!-- 									<i class="fa fa-download" aria-hidden="true"></i> Export Template -->
										<i class="fa fa-download" aria-hidden="true" style="color:#ffffff !important; margin-right: 10px;"></i> <spring:message code="export_template"/>
								</button>
								<button 
									id="exportTemplateWithData" 
									class="export-btn" 
									type="submit" 
									class="btn btn-default" 
									onclick="exportTemplateWithDataFileThroughAjax()"
								>
									<i class="fa fa-download" aria-hidden="true" style="color:#ffffff !important; margin-right: 10px;"></i> <spring:message code="export_data"/>
								</button>
							</div>
						</div>
					</div>
				</form>
	
				<form id="uploadForm" onsubmit="return false;">
					<div class="form-group" >
						<input type="text" value="${userDBName}" name="dbName" hidden>
					</div>
	
					<div id="uploadFileAndUploadButtonDiv" class="form-group">
						<div style="margin-bottom: 0px">
							<div id="uploadFileDiv">
								<input type='file' id='file' style="margin-bottom: 20px" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel">
							</div>
							<button 
								onclick="uplaod();"
								id="import"
								class="btn btn-primary"
								style="display: inherit;"
								>
								<i class="fa fa-upload" style="color: #ffffff !important " value="submit" disabled></i>
								<spring:message code="import"/>
							</button>
						</div>
					</div>
				</form>
			</div>
			<div id="logsDiv">
				<div id="logsHeader">
					<h5><spring:message code="messages"/></h5>
					
					<button title="Export Logs" id="downloadLogsButton" class="btn" onclick="downloadLogs()" style=""><i class="fa fa-download" style="font-size:24px; color:#ffffff !important"></i></button>
					
				</div>
				<div id="logsTextDiv">
				</div>
			</div>
		</div>
		
		
		</div>
		
		
		<!--/////////////////////// loader  start ///////////////////////////-->
				<div class="loader" style="display:none;">
					<!-- 	<img draggable="false" alt="logo" width="110px" src="/EAZee/resources/images/main-logo-removebg.png" filter="url(#0D7E8A)" > -->
				</div>
		<!--/////////////////////// loader  start ///////////////////////////-->
		
		
	</div>

	<script>
		function downloadLogs(){
			$.ajax({
				url:'getLogsFileName',
				type:'GET',
				data: { "fileName": "import" },
				success: function(data){
					window.open('downloadMetamodel?&fileName='+data);
				}
			});
		}
		function changeTheme(){
		//// session time out alert
		    inactivityTime();
		    resetTimer();
		    document.body.onclick = resetServerSessionTimeOut;
		    
			document.addEventListener("keydown", function (event) {
				if (event.ctrlKey) {
				event.preventDefault();
				}
			});
			
// 			let themeURL = '';
// 			var themeLink = document.getElementById("switcher-id");
// 			$.ajax({
// 			    url: "getThemeName", // url: "/findTables?dbName="+db_name,
// 			  	method: 'get',
// 			  	async: true,
// 			    data: {},
// 			    success: function (data) {

// 				  	if(data=='dark'){
// 						themeURL = '<c:url value="/resources/css/fromexcel/fromexcel-dark.css"/>';
// 					}
// 					else if(data=='light'){
// 						themeURL ='<c:url value="/resources/css/fromexcel/fromexcel-light.css"/>';
// 					}
// 					else if(data=='default'){
// 						themeURL ='<c:url value="/resources/css/fromexcel/fromexcel-default.css"/>';
// 					}
// 				},
// 		        async: false
// 			  });
// 			themeLink.href = themeURL;
		}
	</script>
	
	<script>
	    $( document ).ready(function() {
	    	
	    	// disabled a download logs icon button
	    	document.getElementById("downloadLogsButton").classList.add("disabled");
	    	
	    	var getModulesMap= $.ajax({
	    		url: "getModulesMap",
	    		data: {},
	    		type: "POST",
	    		success: function(result) {

	    		},
	    		async: false
	    	});
	    	getModulesMap = getModulesMap.responseJSON;
			// console.log('getModulesMap',getModulesMap);
	    	
			// $(".module").attr("hidden",true);
	    	
	    	if(getModulesMap["admin"]==true){
	    		$("#admin").removeClass("disabled");
	    	}
	    	if(getModulesMap["eaPortal"]==true){
	    		$("#eaPortal").removeClass("disabled");
	    		$("#organizationalPortal").removeClass("disabled");
	    	}
	    	if(getModulesMap["import_export"]==true){
	    		$("#import_export").removeClass("disabled");
	    	}
	    	if(getModulesMap["userManagement"]==true){
	    		$("#userManagement").removeClass("disabled");
	    	}
	    	if(getModulesMap["userProfile"]==true){
			//     		$("#userProfile").removeClass("disabled");
	    	}
	    	
	    });
	</script>
	
	<!-- for header dropdown start -->
    <script type="text/javascript" src="<c:url value="/resources/js/animsition.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>
    <!-- for header dropdown end -->
	

    
    <!-------------------------------------------- for Export start -------------------------------------------->
    <script type="text/javascript">
    
		var freezeClick = false;
		
		document.addEventListener("click", freezeClickFn, true);
	
		function freezeClickFn(e) {
		  if (freezeClick) {
		    e.stopPropagation();
		    e.preventDefault();
		  }
		}
    
    
		var myInterVal;
		var stopMyinterval = false;
		var myInterValTime = 500;
			
    	function exportEmptyTemplateThroughAjax(e){
    		
    		$("#logsTextDiv").html("")
    		
    		let dbName = $('#dbNameForExport').val();
    		
    		
			disableImpexStuffs()
			showCursorWait()
			freezeClick = true;
			
			stopMyinterval = false;
			myInterVal = setInterval(function() { displayLogs("Template_Logs"); }, myInterValTime);

			$.ajax({
				url:'downloadOnlyTemplateThroughAjax',
				type:'GET',
				data: { "dbName": dbName },
				success: function(fileName){
				
					enableImpexStuffs()
					showCursorPointer()
					freezeClick = false;
					
					window.open('downloadMetamodel?&fileName='+fileName);
					stopMyinterval = true;
					
						
				}				
			});
		}
    	
		function showCursorWait(){
			$("#mainDiv").addClass("wait");
    		$("#file").addClass("wait");
    		$("#exportTemplate").css("cursor", "wait");
    		$("#exportTemplateWithData").css("cursor", "wait");
    		$("#import").css("cursor", "wait");
    		$("#uploadForm").css("cursor", "wait");
    		    		
		}
		
		
		function showCursorPointer(){
			$("#mainDiv").removeClass("wait");
			$("#file").removeClass("wait");
    		$("#exportTemplate").css("cursor", "pointer");
    		$("#exportTemplateWithData").css("cursor", "pointer");
    		$("#import").css("cursor", "pointer");
    		$("#uploadForm").css("cursor", "auto");
    		
		}

    	
    	function exportTemplateWithDataFileThroughAjax(){
    		
    		$("#logsTextDiv").html("")
    		
    		let dbName = $('#dbNameForExport').val();
    		
			disableImpexStuffs();
			showCursorWait();
			freezeClick = true;
			
			stopMyinterval = false;
			myInterVal = setInterval(function() { displayLogs("Logs"); }, myInterValTime);

			$.ajax({
				url:'exportTemplateWithDataThroughAjax',
				type:'GET',
				data: { "dbName": dbName },
				success: function(fileName){
					
					enableImpexStuffs()
					showCursorPointer()
					freezeClick = false;

					window.open('downloadMetamodel?&fileName='+fileName);
					stopMyinterval = true;
				}				
			});
    	}
    	
    	var textForDisplay = "";
    	
    	function displayLogs(fileName){
    		
			$.ajax({
				url:'getDataFormLogsFile',
				type:'GET',
				data: { "fileName": fileName },
				success: function(data){
					
					if( !(data == textForDisplay) ){
						$("#logsTextDiv").html("")
				    	var p = document.createElement("p");
				    	p.setAttribute('class', 'logsParaTag')
				    	p.setAttribute('id', 'logsParaTagId')
				    	p.innerText = data;
				    	$("#logsTextDiv").append(p);
				    	textForDisplay = data;
				    	var elem = document.getElementById('logsTextDiv');
				    	  elem.scrollTop = elem.scrollHeight;
					}
				}				
			});
   			
    		if(stopMyinterval){
    			clearInterval(myInterVal);
    			textForDisplay= ""
    		}
    	}
    	

    	
	</script>
    <!-------------------------------------------- for Export end -------------------------------------------->
    
    
    
    <!-------------------------------------------- for import start -------------------------------------------->
    
	<script type="text/javascript">
	var globalLanguage = ""

	
		let fileStatus = false;
		uplaod = function(){
			$("#logsTextDiv").html("")
			
			var data = new FormData();
			jQuery.each(jQuery('#file')[0].files, function(i, file) {
			    data.append('file-'+i, file);
			    fileStatus = true;
			});

			// disableImpexStuffs();
			
			disableImpexStuffs();
			showCursorWait();
			freezeClick = true;
			
			if(fileStatus){
				
				stopMyinterval = false;
				myInterVal = setInterval(function() { displayLogs("import"); }, myInterValTime);
				
				$.ajax({
					url:'fileUploadThroughAjax',
					data: data,
				    cache: false,
				    contentType: false,
				    processData: false,
					type:'POST',
					success: function(response){
						
						if(response == "Please upload correct file!"){
							alert(please_upload_correct_file);
// 							alert(response);
							enableImpexStuffs()
							showCursorPointer()
							freezeClick = false;
							
						}
						else if( response == "Error while uploading file, please upload again" ){
// 							alert(response)
							alert(error_while_uploading_file_please_upload_again);
							enableImpexStuffs()
							showCursorPointer()
							freezeClick = false;
						}
						else if(response == "xml file not found"){
// 							alert("*Error while uploading file, please upload again");
							alert(error_while_uploading_file_please_upload_again);
							enableImpexStuffs()
							showCursorPointer()
							freezeClick = false;
						}
						else if (response == "User data file not found, please Upload again"){
// 							alert(response)
							alert(user_data_file_not_found_please_upload_again)
							enableImpexStuffs()
							showCursorPointer()
							freezeClick = false;
						}
						else if(response == "Header Not Matched"){
//  							alert("Please upload correct data file!");
 							alert(please_upload_correct_data_file);
							enableImpexStuffs()
							showCursorPointer()
							freezeClick = false;
							
						}else if (response == "Invalid file uploaded"){
//  							alert("Invalid file uploaded!");
 							alert(invalid_file_uploaded);
							enableImpexStuffs()
							showCursorPointer()
							freezeClick = false;
						}
						else{
							// console.log("response");
							// console.log(response);

							
							console.log("file is uploaded!!!!")
							

							//$(".loader").hide();
							// document.getElementById("import").disabled = false;
							// document.getElementById("file").disabled = false;
							// document.getElementById("exportTemplate").disabled = false;
							// document.getElementById("exportTemplateWithData").disabled = false;
							$("#file").val('');
							
							
							enableImpexStuffs()
							showCursorPointer()
							freezeClick = false;
							
							
							document.getElementById("downloadLogsButton").classList.remove("disabled");
							
						}
						stopMyinterval = true;
					}				
				});
				
			}else{
				
				enableImpexStuffs()
				showCursorPointer()
				freezeClick = false;
				
// 				alert('No file uploaded!');
				alert(no_file_uploaded);
			}
			
		}
		
		
		function enableImpexStuffs(){
			// $(".loader").hide();
			document.getElementById("import").disabled = false;
			document.getElementById("file").disabled = false;
			document.getElementById("exportTemplate").disabled = false;
			document.getElementById("exportTemplateWithData").disabled = false;
		}
		
		
		function disableImpexStuffs(){
			// $(".loader").show();
			document.getElementById("import").disabled = true;
			document.getElementById("file").disabled = true;
			document.getElementById("exportTemplate").disabled = true;
			document.getElementById("exportTemplateWithData").disabled = true;
		}
		
		
		
		function truncateDB(){
			
			$.ajax({
				url:'truncateDatabase',
				type:'GET',
				success: function(response){
					alert(response)
				}
			})
		}
		
		
		getLangFormLocalStorage()
		
		function getLangFormLocalStorage(){
			
			var localStorageLanguage = localStorage.getItem("language");
			
			if(localStorageLanguage == null){
				localStorage.setItem("language", "En");
				globalLanguage = localStorage.getItem("language") 
			}else{
				globalLanguage = localStorage.getItem("language")
			}
			
			// 			document.getElementById('language').href = "?lang="+globalLanguage
			
			switchLanguageCssFile(globalLanguage)
			// 			$('#language').text(globalLanguage);
			
		}
		
		
		function toggleLanguageSelection(){
			
// 			$('body').css("filter","blur(2px)");
// 			$('.loader').css('display', 'block')
// 			$(".loader").show();
			var text = $('#language').text();
			
			if(text == "Ar"){
				text = "En"
			}else{
				text = "Ar"
			}
			
			// 			document.getElementById('language').href = "?lang="+globalLanguage
			globalLanguage = text
			
			$('#language').text(text);
			localStorage.setItem("language", text);
			
			switchLanguageCssFile(text)
		}
		
		function switchLanguageCssFile(lang){
			
			var arbicLanguageCssFile   = '<c:url value="/resources/css/fromexcel/fromExcelArabic.css"/>';
			var englishLanguageCssFile = '<c:url value="/resources/css/fromexcel/fromexcel-default.css"/>';
			
			var themeURL = '';
			lang == "En" ? themeURL = englishLanguageCssFile : themeURL = arbicLanguageCssFile;
			
			var themeLink = document.getElementById("switcher-id");
			themeLink.href = themeURL;
			
		}
		function saveCurrentUrlToLocalStorage(){
		    localStorage.setItem("prevUrl", window.location.href);
		}		
	</script>
	

	<!-------------------------------------------- for import end -------------------------------------------->
</body>
</html>