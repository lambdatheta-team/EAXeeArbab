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
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
	<!-- Modal table -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"> -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
    
    <link rel="stylesheet" href="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569006288/BBBootstrap/choices.min.css?version=7.0.0">

<!--     <script src="WebContent\js\script.js"></script> -->
<!--     \WebContent/resources/js/ganttChart.js -->
<%--     <script type="text/javascript" src="<c:url value="/resources/js/ganttChart.js" />"></script> --%>
<!--     <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'> -->
<!--     <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script> -->
<!--     <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script> -->
    

<!-- TagsInput -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" integrity="sha512-xmGTNt20S0t62wHLmQec2DauG9T+owP9e6VU8GigI0anN7OXLip9i7IwEhelasml2osdxX71XcYm6BQunTQeQg==" crossorigin="anonymous" />    
    
    
<meta charset="ISO-8859-1">
<title>EAXEE</title>

<%-- <link rel="icon" href="<c:url value="resources/images/eazee-Logo12.png"/>" type="image/icon type" > --%>
<link rel="icon" href="<c:url value="resources/images/snapping-removebg.png"/>" type="image/icon type" >

<!-- Information_modal css here -->
<link href="<c:url value="/resources/css/modal.css"/>" rel="stylesheet">

<!-- updateFormModal css here -->
<link href="<c:url value="/resources/css/updateFormModal.css"/>" rel="stylesheet">

<!-- updateFormModal css here -->
<link href="<c:url value="/resources/css/organizationalPortal.css"/>" rel="stylesheet">

<!-- chartTabs css here -->
<link href="<c:url value="/resources/css/chartTabs.css"/>" rel="stylesheet">

  
<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- userinfo css -->
<link href="<c:url value="/resources/css/userinfo.css"/>" rel="stylesheet">

<!-- Bootstrap Link For Navbar Starts Here-->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<!-- Bootstrap Link For Navbar Ends Here -->
 <!-- TAGS INPUT -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.js" integrity="sha512-VvWznBcyBJK71YKEKDMpZ0pCVxjNuKwApp4zLF3ul+CiflQi6aIJR+aZCP/qWsoFBA28avL5T5HA+RE+zrGQYg==" crossorigin="anonymous"></script>


<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  

	 <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<!-- 	 <link rel="stylesheet" href="/resources/demos/style.css"> -->
	 <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	 <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
	 
	 
	 
	 <script type="text/javascript" src="<c:url value="/resources/js/global.js" />"></script>
	 
	 <link href="<c:url value="/resources/css/organizationalPortal.css"/>" rel="stylesheet">
	 <link rel="stylesheet" type="text/css" id="" href="<c:url value="/resources/css/organizationalPortal.css"/>">
	 <link id="switcher-id" href="<c:url value="/resources/css/display-none.css"/>" rel="stylesheet">
	 
	<!-- chartTabs script file -->
	<script type="text/javascript" src="<c:url value="/resources/js/chartTabs.js" />"></script>	 
	
	<script>
		
		var header_value= '<spring:message code="information" />';
		var save_changes= '<spring:message code="save_changes" />';
		var no_data_found_modal= '<spring:message code="no_data_found_modal" />';
		var showing_0_out_0_entries= '<spring:message code="showing_0_out_0_entries" />';
		var lambdatheta = '<spring:message code="lambdatheta" />';
		var Delete = '<spring:message code="Delete" />';
		var Save = '<spring:message code="Save" />';
		var Graph_View = '<spring:message code="Graph_View" />';
		var Text_View = '<spring:message code="Text_View" />';
		var Container = '<spring:message code="Container" />';
		var Chart = '<spring:message code="Chart" />';
		var Select_Element = '<spring:message code="Select_Element" />';
		var Select_Attribute = '<spring:message code="Select_Attribute" />';
		var Select_Operation = '<spring:message code="Select_Operation" />';
		var Operation_Applied_on = '<spring:message code="Operation_Applied_on" />';
		var Element = '<spring:message code="Element" />';
		var Attribute = '<spring:message code="Attribute" />';
		var Select_Chart_Type = '<spring:message code="Select_Chart_Type" />';
		var Chart_Type = '<spring:message code="Chart_Type" />';
		var Generate_Chart = '<spring:message code="Generate_Chart" />';
		var Add = '<spring:message code="Add" />';
		var Generate = '<spring:message code="Generate" />';
		var Column = '<spring:message code="Column" />';
		var Clustered_Column = '<spring:message code="Clustered_Column" />';
		var Pie = '<spring:message code="Pie" />';		
		var Count = '<spring:message code="Count" />';
		var Average = '<spring:message code="Average" />';
		var Distribution = '<spring:message code="Distribution" />';
		var Delete_The_Chart_First = '<spring:message code="Delete_The_Chart_First" />';
		var Try_Valid_Chart = '<spring:message code="Try_Valid_Chart" />';
		var Graph_Saved_Successfully = '<spring:message code="Graph_Saved_Successfully" />';
		var Cancel = '<spring:message code="Cancel" />';
		var Reset = '<spring:message code="Reset" />';
		var Remove = '<spring:message code="remove" />';
		var tab_name_already_exist = '<spring:message code="tab_name_already_exist" />';
		var you_are_restricted_to_create_more_than_10_tabs = '<spring:message code="you_are_restricted_to_create_more_than_10_tabs" />';
		var text_view = '<spring:message code="text_view" />';
		var graph_view = '<spring:message code="graph_view" />';
		var save = '<spring:message code="save" />';
		var select_attribute = '<spring:message code="select_attribute" />';
		var select_operation = '<spring:message code="select_operation" />';
		var count = '<spring:message code="count" />';
		var average = '<spring:message code="average" />';
		var distribution = '<spring:message code="distribution" />';
		var chart_type = '<spring:message code="chart_type" />';
		var column = '<spring:message code="column" />';
		var clustered_column = '<spring:message code="clustered_column" />';
		var pie = '<spring:message code="pie" />';
		var no_data_found = '<spring:message code="no_data_found" />';
		var first_add_attribute = '<spring:message code="first_add_attribute" />';
		var add_attribute_data_not_valid = '<spring:message code="add_attribute_data_not_valid" />';
		var download_svg = '<spring:message code="download_svg" />';
		var download_png = '<spring:message code="download_png" />';
		var download_csv = '<spring:message code="download_csv" />';
		var quantity = '<spring:message code="quantity" />';
		var graphName_Change_Successfully = '<spring:message code="graphName_Change_Successfully" />';
		var first_create_chart = '<spring:message code="first_create_chart" />';
		var select_dropdown = '<spring:message code="select_dropdown" />';
		var charts_not_found_message = '<spring:message code="charts_not_found_message" />';
		var object_delete_restriction = '<spring:message code="object_delete_restriction" />';
		var tab_has_been_deleted = '<spring:message code="tab_has_been_deleted" />';
		var you_are_restricted_to_delete_the_chart = '<spring:message code="you_are_restricted_to_delete_the_chart" />';
		var you_are_restricted_to_delete_the_tab = '<spring:message code="you_are_restricted_to_delete_the_tab" />';
		var chart_already_exists = '<spring:message code="chart_already_exists" />';
		
		var customDictionary = {}
	</script>
</head>
<script type="text/javascript">

function changeTheme(){
////session time out alert
    inactivityTime();
    resetTimer();
    document.body.onclick = resetServerSessionTimeOut;
    
    
    var getLanguage= localStorage.getItem("language");
    $(".loader").css("display", "block");
	$.ajax({
	       url: getLanguage == "Ar" ? "getPropertiesDictionaryArabic" : "getPropertiesDictionary",
	       async: false, 
	       type: 'POST',
	       data: {},
	       dataType: 'json', // added data type
	       success: function(langDict) {
				customDictionary = langDict;
				console.log("langDict:", langDict)
				$(".loader").css("display", "none");
	       }
	});
    
// 	let themeURL = '';
// 	var themeLink = document.getElementById("switcher-id");
// 	$.ajax({
// 	    url: "getThemeName", // url: "/findTables?dbName="+db_name,
// 	  	method: 'get',
// 	  	async: true,
// 	    data: {},
// 	    success: function (data) {
// 		  	console.log(data)
// 		  	if(data=='dark'){
// 				themeURL = '<c:url value="/resources/css/organizationalportal/organizationalportal-dark.css"/>';
// 			}
// 			else if(data=='light'){
// 				themeURL ='<c:url value="/resources/css/organizationalportal/organizationalportal-light.css"/>';
// 			}
// 			else if(data=='default'){
// 				themeURL ='<c:url value="/resources/css/organizationalportal/organizationalportal-default.css"/>';
// 			}
// 		},
//         async: false
// 	  });
// 	themeLink.href = themeURL;
}
</script>
<body onload="changeTheme()" style="display:none;">
<%-- <img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/eazee-Logo.png"/>"> --%>
<img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/logo-login.png"/>">
<div id="dialog-confirm" title="<spring:message code="confirm_delete"/>" style="display:none">
	<p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span><spring:message code="you_are_about_to_delete"/> <b><i class="title"></i></b> <spring:message code="record_this_procedure_is_irreversible"/></p>
</div>
<div class="container-fluid" style="margin: 0 !important; padding: 0 !important;">
	<div class="header">
		<div style="display: flex; justify-content: space-between; margin-bottom: -10px; background: #f8f9fa; height: 60px !important;">
			<div>
<!-- 				<a href="home"> -->
				<a>
					<p class="image1" style="margin-left: 0px;margin-top:-5px">
						<img draggable="false" alt="logo"  width="155px" src="<c:url value="/resources/images/logo-login.png"/>">
					</p>
				</a>
			</div>
			<div style="display: flex; justify-content: space-between; padding-right: 10px">
					<div id="home-btn" style="padding-top:10px;padding-right:20px;">
						<a href="home" class="fa fa-home fa-2x" draggable="false"title="Module Page"></a>
					</div>
					<div id="home-btn" class="languageText" style="margin-top:-1px;padding-right:20px; cursor: pointer">
						<!-- <a id="language" class="fa-2x lang-icon" draggable="false" title="Module Page" onclick="toggleLanguageSelection()">Ar</a> -->
					</div>					
<!-- 			<!-- ///////////////////////////////////////////////////////// -->
					<div class="account-item clearfix js-item-menu ">
							<div class="content">
								<a class="js-acc-btn" href="#">${userProfileDetials.userFullName}  
									<i class="fa fa-caret-down" aria-hidden="true"></i>
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
				<!-- ///////////////////////////////////////////////////////// -->				
		</div>
		</div>
	</div>
	<div class="navbar" style="background:#0d7e8a; width:100%;height:55px">
		
		<div id="alert_message_parent" style="">	
	    	<span class="alert_message" style="text-align: center; padding: 0px !important"></span>
		</div>	
		<div >
			<button id="downloadPDFButtonId" onclick="downloadPDF()" disabled class="btn btn-primary"><spring:message  code="export_pdf"/></button>
		</div>
	</div>
	<!-- Charts starts here -->
	<!-- loader  start-->
	<div class="loader" style="display: none;"></div>
	<!-- loader  end-->
<!-- 		<div class="chartDiv" style="background:#FFFFFF !important;zoom:75%;"> -->
		<div class="chartDiv" style="background:#FFFFFF !important;">
			<div id="dialog" title="<spring:message code="Tab"/>">
				<form>
					<fieldset class="ui-helper-reset">
						<label for="tab_title"><spring:message code="Title" /></label> <input type="text"
							name="tab_title" id="tab_title" placeholder="Tab Title"
							class="ui-widget-content ui-corner-all" onkeydown="return (event.keyCode!=13);"> 
<!-- 							<label for="tab_content">Content</label> -->
<!-- 							<textarea name="tab_content" id="tab_content" class="ui-widget-content ui-corner-all">Tab content</textarea> -->
					</fieldset>
				</form>
			</div>
			<div id="tabs">
				<ul>
					<li style="display:none">
						<a href="#tabs-1">Default</a> 
						<span class="ui-icon ui-icon-close" role="presentation">RemoveTab</span>
					</li>
					&nbsp;&nbsp;&nbsp;
					<button id="add_tab" style=""><i class="fa fa-plus" aria-hidden="true"></i></button>
				</ul>

		</div>
	</div>
	
	<div id="chartModal" class="modal" style="display: none;">
		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header">
				<span id="modal_heading"></span> <span class="close" id="closeChartModal">&times;</span>
			</div>
			<div class="modal-body">
				<table id="chartTable" class="table table-bordered table-striped">
					<thead id='chartTableHead'></thead>
					<tbody id='chartTableBody'></tbody>
				</table>

			</div>
			<!--     <div class="modal-footer"> -->
			<!--       <h3>Modal Footer</h3> -->
			<!--     </div> -->
		</div>
	</div>	
	<!-- Charts ends here -->		  
</div>
<!-- chartTabs script file -->
	<div id="dialog-confirm" title="<spring:message code="confirm_delete"/>" style="display:none">
	  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span><spring:message code="you_are_about_to_delete"/> <b><i class="title"></i></b> <spring:message code="record_this_procedure_is_irreversible"/></p>
	</div>
	<script type="text/javascript" src="<c:url value="/resources/js/chartTabs.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/apexcharts-bundle/dist/apexcharts.js" />"></script>
	
	<!-- Export Graph script file -->
	<script type="text/javascript" src="<c:url value="/resources/js/exportGraph.js" />"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
	<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>


	<!-- for header dropdown start -->
    <script type="text/javascript" src="<c:url value="/resources/js/animsition.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>
    <!-- for header dropdown end -->

</body>
<!-- Modal Table -->
<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->

<script>
	
// $.ajax({ url: "?lang=en",
//     success: function(){
// 	    if(!window.location.hash) {
// 	        window.location = window.location + '#ltr';
// 	        window.location.reload();
// 	    }
//     }
// });
</script>

<script>
	var globalLanguage = ""
		getLangFormLocalStorage()
		
		function getLangFormLocalStorage(){
			
			var localStorageLanguage = localStorage.getItem("language");
			
			if(localStorageLanguage == null){
			localStorage.setItem("language", "En");
				globalLanguage = localStorage.getItem("language") 
			}else{
				globalLanguage = localStorage.getItem("language")
			}
		// document.getElementById('language').href = "?lang="+globalLanguage
			
			switchLanguageCssFile(globalLanguage)
		// $('#language').text(globalLanguage);
			
		}
		
		
		function toggleLanguageSelection(){
		// 		$('body').css("filter","blur(1px)");
			var text = $('#language').text();
			
			if(text == "Ar"){
				text = "En"
			}else{
				text = "Ar"
			}
			
			globalLanguage = text
			
			$('#language').text(text);
			localStorage.setItem("language", text);
			
			switchLanguageCssFile(text)
		}
		
		function switchLanguageCssFile(lang){
			
			var englishLanguageCssFile = '<c:url value="/resources/css/organizationalPortal.css"/>';
			var arbicLanguageCssFile = '<c:url value="/resources/css/organizationalPortalArabic.css"/>';
			
			var themeURL = '';
			lang == "En" ? themeURL = englishLanguageCssFile : themeURL = arbicLanguageCssFile;
			
			var themeLink = document.getElementById("switcher-id");
			themeLink.href = themeURL;
		}

		function saveCurrentUrlToLocalStorage(){
		    localStorage.setItem("prevUrl", window.location.href);
		}
		
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
</html>