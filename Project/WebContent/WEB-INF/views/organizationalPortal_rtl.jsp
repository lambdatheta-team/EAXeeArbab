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
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Modal table -->
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"> -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">

<link rel="stylesheet"
	href="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569006288/BBBootstrap/choices.min.css?version=7.0.0">
	
<!-- userinfo css -->
<link href="<c:url value="/resources/css/userinfo.css"/>" rel="stylesheet">
<script
	src="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569006273/BBBootstrap/choices.min.js?version=7.0.0"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<!--     <script src="WebContent\js\script.js"></script> -->
<!--     \WebContent/resources/js/ganttChart.js -->
<script type="text/javascript"
	src="<c:url value="/resources/js/ganttChart.js" />"></script>
<!--     <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'> -->
<!--     <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script> -->
<!--     <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script> -->


<!-- TagsInput -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css"
	integrity="sha512-xmGTNt20S0t62wHLmQec2DauG9T+owP9e6VU8GigI0anN7OXLip9i7IwEhelasml2osdxX71XcYm6BQunTQeQg=="
	crossorigin="anonymous" />


<meta charset="ISO-8859-1">
<title>EAXEE-Ar</title>

<%-- <link rel="icon" href="<c:url value="resources/images/eazee-Logo12.png"/>" type="image/icon type" > --%>
<link rel="icon"
	href="<c:url value="resources/images/snapping-removebg.png"/>"
	type="image/icon type">

<!-- Information_modal css here -->
<link href="<c:url value="/resources/css/modal.css"/>" rel="stylesheet">

<!-- updateFormModal css here -->
<link href="<c:url value="/resources/css/updateFormModal.css"/>"
	rel="stylesheet">

<!-- updateFormModal css here -->
<link href="<c:url value="/resources/css/organizationalPortal.css"/>"
	rel="stylesheet">

<!-- chartTabs css here -->
<link href="<c:url value="/resources/css/chartTabs.css"/>"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Bootstrap Link For Navbar Starts Here-->

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<!-- Bootstrap Link For Navbar Ends Here -->
<!-- TAGS INPUT -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.js"
	integrity="sha512-VvWznBcyBJK71YKEKDMpZ0pCVxjNuKwApp4zLF3ul+CiflQi6aIJR+aZCP/qWsoFBA28avL5T5HA+RE+zrGQYg=="
	crossorigin="anonymous"></script>


<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	type="text/javascript"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>


<style>
.change_direction {
	text-align: right;
	direction: rtl;
}

* {
	font-family: 'SST Arabic Light', sans-serif;
	font-weight: bold;
}
/*      	*{ */
/*      		direction: rtl; */
/*      		text-align: right;     */
/*     	}	      */
/*     	.ui-tabs { direction: rtl; } */
.ui-tabs .ui-tabs-nav li.ui-tabs-selected, .ui-tabs .ui-tabs-nav li.ui-state-default
	{
	float: right;
}

.ui-tabs .ui-tabs-nav li a {
	float: right;
}

.ui-tabs-anchor {
	float: right !important
}

.apexcharts-canvas>svg {
	width: 600px;
}
</style>
</head>
<script type="text/javascript">

function changeTheme(){
	let themeURL = '';
	var themeLink = document.getElementById("switcher-id");
	$.ajax({
	    url: "getThemeName", // url: "/findTables?dbName="+db_name,
	  	method: 'get',
	  	async: true,
	    data: {},
	    success: function (data) {
		  	console.log(data)
		  	if(data=='dark'){
				themeURL = '<c:url value="/resources/css/organizationalportal/organizationalportal-dark.css"/>';
			}
			else if(data=='light'){
				themeURL ='<c:url value="/resources/css/organizationalportal/organizationalportal-light.css"/>';
			}
			else if(data=='default'){
				themeURL ='<c:url value="/resources/css/organizationalportal/organizationalportal-default.css"/>';
			}
		},
        async: false
	  });
	themeLink.href = themeURL;
}
</script>
<body onload="changeTheme()" style="display: none;">
	<%-- <img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/eazee-Logo.png"/>"> --%>
	<img id="loader_image_body" style="display: none;" loading="lazy"
		alt="schema" width="200px" height="50px"
		src="<c:url value="/resources/images/main-logo-removebg.png"/>">
	<div class="container-fluid"
		style="margin: 0 !important; padding: 0 !important;">
		<!-- 	<div class="header" dir="rtl"> -->
		<%-- 		<img alt="logo" draggable="false" src="<c:url value="resources/images/logo.png"/>" width="15px" height="15px" style="margin-top:1px;"> --%>
		<!-- 		<div style="display:flex;justify-content: space-between;"> -->
		<%-- 			<a href="home"><p class="image1" style="margin-left: 5px"><img draggable="false" alt="logo"  width="110px" src="<c:url value="/resources/images/main-logo-removebg.png"/>"></p></a> --%>
		<!-- 			<div style=""> -->
		<%-- 				<a href="organizationalPortal" class="fa-2x lang-icon" draggable="false" title="Module Page"><spring:message code="En" /></a> --%>
		<!-- 				<a style="padding-top:10px;" href="home" class="fa fa-home fa-2x" draggable="false" title="Module Page" ></a> -->
		<!-- 			</div>	 -->
		<!-- 		</div>		 -->
		<!-- 		<div style="display:flex;justify-content: space-between; padding-right:10px"> -->
		<!-- 		<div id="home-btn"> -->
		<!-- 			<a href="home" class="fa fa-home fa-2x" draggable="false" title="Module Page" ></a> -->
		<!-- 		</div> -->
		<!-- 	</div> -->
		<div class="header" dir="rtl">
			<div
				style="display: flex; justify-content: space-between; margin-bottom: -10px; background: #f8f9fa; height: 60px !important;">
				<div>
					<a href="home">
						<p class="image1" style="margin-left: 5px; margin-top: 3px">
							<img draggable="false" alt="logo" width="40px"
								src="<c:url value="/resources/images/main-logo-removebg.png"/>">
						</p>
					</a>
				</div>
				<div
					style="display: flex; justify-content: space-between; padding-right: 10px">
					<div id="home-btn" style="padding-top: 10px; padding-right: 20px;">
						<a href="home" class="fa fa-home fa-2x" draggable="false"
							title="Module Page"></a>
					</div>
					<div id="home-btn" class="languageText"
						style="margin-top: 3px !important;">
						<a href="organizationalPortal" class="fa-2x lang-icon"
							draggable="false" title="Module Page">En</a>
					</div>
<!-- 			<!-- ///////////////////////////////////////////////////////// -->
					<div class="account-item clearfix js-item-menu">
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
										<a href="userprofile"><i class="fa fa-user" aria-hidden="true"></i>Account</a>
									</div>
								</div>
								<div class="account-dropdown__footer">
									<a href="logout"><i class="fa fa-power-off" aria-hidden="true"></i>Logout</a>
								</div>
							</div>
						</div>
				<!-- ///////////////////////////////////////////////////////// -->
				</div>
			</div>
		</div>
		<div class="navbar"
			style="background: #0d7e8a; width: 100%; height: 55px">
			<div style="height: 30px; margin-left: 45%">
				<span class="alert_message"></span>
			</div>
		</div>
		<!-- Charts starts here -->
		<div class="chartDiv"
			style="background: #FFFFFF !important; zoom: 75%;">
			<div id="dialog" title="<spring:message code="Tab"/>">
				<form class="change_direction">
					<fieldset class="ui-helper-reset">
						<label for="tab_title"><spring:message code="Title" /></label> <input
							type="text" name="tab_title" id="tab_title"
							value="<spring:message code="Tab_Title" />"
							class="ui-widget-content ui-corner-all">
						<!-- 							<label for="tab_content">Content</label> -->
						<!-- 							<textarea name="tab_content" id="tab_content" class="ui-widget-content ui-corner-all">Tab content</textarea> -->
					</fieldset>
				</form>
			</div>
			<div id="tabs">
				<ul>
					<li style="display: none"><a href="#tabs-1">Default</a> <span
						class="ui-icon ui-icon-close" role="presentation">RemoveTab</span>
					</li> &nbsp;&nbsp;&nbsp;
					<button id="add_tab" style="border-radius: 50%; margin-top: 0.3%">
						<i class="fa fa-plus" aria-hidden="true"></i>
					</button>
				</ul>
				<div id="tabs-1">
					<p>
					<div id="chartContainer">
						<div style="display: none">
							<div class="row chartRow">
								<%
								for (int i = 0; i < 3; i += 1) {
								%>
								<div id="div<%=i + 1%>" class="col-sm" ondrop="drop(event)"
									ondragover="allowDrop(event)">
									<div style="display: flex; justify-content: space-around">
										<div>
											<%-- 											<h2>Chart#<%= i+1 %></h2> --%>
											<h2>
												Container
												<%=i + 1%></h2>
										</div>
										<div>
											<span>
												<button class="btn btn-info" onclick="textView(<%=i + 1%>)">Text
													View</button>
												<button class="btn btn-info" onclick="graphView(<%=i + 1%>)">Graph
													View</button> <!-- 												<button>Edit</button> --> <!-- 												<button>Export</button> -->
												<button class="btn btn-info"
													onclick="deleteChart(<%=i + 1%>)">Delete</button>
												<button class="btn btn-info" id="Save<%=i + 1%>">Save</button>
											</span>
										</div>
									</div>
									<hr>
									<div>
										<div draggable="false" ondragstart="drag(event)"
											id="drag<%=i + 1%>">
											<div id="chartContainer<%=i + 1%>">
												<div class="row">
													<div class="col">
														<label id="labelForElement<%=i + 1%>"
															for="elementDropdown<%=i + 1%>" style="display: none;">Select
															Element</label> <select class="form-control selectWidth"
															id="elementDropdown<%=i + 1%>" style="display: none;">
															<option value="" selected disabled hidden>Select
																Element</option>
														</select>
													</div>
													<div class="col">
														<label id="labelForAttribute<%=i + 1%>"
															for="attributeDropdown<%=i + 1%>" style="display: none;">Select
															Attribute</label> <select class="form-control selectWidth"
															id="attributeDropdown<%=i + 1%>" style="display: none;">
															<option value="" selected disabled hidden>Select
																Attribute</option>
														</select>
														<button
															class="btn btn-info multipleChartAndOperation<%=i + 1%> multipleChartAndOperationButton<%=i + 1%> addButtonAlign"
															style="display: none;" onclick="addAttribute(<%=i + 1%>)">Add</button>
													</div>
													<div class="col">
														<label id="labelForOperation<%=i + 1%>"
															for="operationDropdown<%=i + 1%>" style="display: none;">Select
															Operation</label> <select class="form-control selectWidth"
															id="operationDropdown<%=i + 1%>" style="display: none;">
															<option value="" selected disabled hidden>Select
																Operation</option>
															<option value="Count">Count</option>
															<option value="Average">Average</option>
															<option value="Distribution">Distribution</option>
														</select>
													</div>
													<%-- 													<div class="col multipleChartAndOperation<%= i+1 %>" style="display:none"> --%>
													<!-- 														<button>Add</button> -->
													<!-- 													</div>	 -->
												</div>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="row">
													<div class="col-6">
														<textarea
															class="attributesTextArea<%=i + 1%> multipleChartAndOperation<%=i + 1%> form-control"
															rows="" cols=""
															style="display: none; border: 2px solid rgb(24, 162, 184); background: rgb(145, 228, 241) !important"
															readonly></textarea>
													</div>
													<div class="col-6 multipleChartAndOperation<%=i + 1%>"
														style="display: none">
														<div>
															<p class="disabled">Operation Applied on</p>
															<input class="disabled" type="radio"
																id="element<%=i + 1%>" name="operationValue"
																value="Element"> <label for="html">Element</label><br>
															<input class="disabled" type="radio"
																id="attribute<%=i + 1%>" name="operationValue"
																value="Attribute"> <label for="css">Attribute</label><br>
														</div>
														<div>
															<label class="multipleChartAndOperation<%=i + 1%>" id=""
																for="" style="display: none;">Select Chart Type</label>
															<select id="chartType<%=i + 1%>"
																class="multipleChartAndOperation<%=i + 1%> form-control"
																id="operationDropdown<%=i + 1%>" style="display: none;">
																<option value="" selected disabled hidden>Chart
																	Type</option>
																<option value="bar">Column</option>
																<option value="clusteredBar">Clustered Column</option>
																<option value="pie">Pie</option>
															</select>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<button class="btn btn-info"
															id="generateTextButton<%=i + 1%>" style="display: none;"
															onclick="generateTable(<%=i + 1%>)">Generate</button>
														<%-- 														<button class="btn btn-info"  id="generateGraphButton<%= i+1 %>" style="display:none;" onclick="generateGraph(<%= i+1 %>)">Generate Chart</button> --%>
														<%-- 														<button class="btn btn-info" id="generateTextButton<%= i+1 %>" style="display:none;" onclick="generateTable(<%= i+1 %>,Save<%= i+1 %>)">Generate</button> --%>
														<button class="btn btn-info"
															id="generateGraphButton<%=i + 1%>" style="display: none;"
															onclick="generateGraph(<%=i + 1%>,Save<%=i + 1%>)">Generate
															Chart</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<%
								}
								%>
							</div>
							<hr>
							<div class="row chartRow">
								<%
								for (int i = 3; i < 6; i += 1) {
								%>
								<div id="div<%=i + 1%>" class="col-sm" ondrop="drop(event)"
									ondragover="allowDrop(event)">
									<div style="display: flex; justify-content: space-around">
										<div>
											<%-- 											<h2>Chart#<%= i+1 %></h2> --%>
											<h2>
												Container
												<%=i + 1%></h2>
										</div>
										<div>
											<span>
												<button class="btn btn-info" onclick="textView(<%=i + 1%>)">Text
													View</button>
												<button class="btn btn-info" onclick="graphView(<%=i + 1%>)">Graph
													View</button> <!-- 												<button>Edit</button> --> <!-- 												<button>Export</button> -->
												<button class="btn btn-info"
													onclick="deleteChart(<%=i + 1%>)">Delete</button>
												<button class="btn btn-info" id="Save<%=i + 1%>">Save</button>
											</span>
										</div>
									</div>
									<hr>
									<div>
										<div draggable="false" ondragstart="drag(event)"
											id="drag<%=i + 1%>">
											<div id="chartContainer<%=i + 1%>">
												<div class="row">
													<div class="col">
														<label id="labelForElement<%=i + 1%>"
															for="elementDropdown<%=i + 1%>" style="display: none;">Select
															Element</label> <select class="form-control selectWidth"
															id="elementDropdown<%=i + 1%>" style="display: none;">
															<option value="" selected disabled hidden>Select
																Element</option>
														</select>
													</div>
													<div class="col">
														<label id="labelForAttribute<%=i + 1%>"
															for="attributeDropdown<%=i + 1%>" style="display: none;">Select
															Attribute</label> <select class="form-control selectWidth"
															id="attributeDropdown<%=i + 1%>" style="display: none;">
															<option value="" selected disabled hidden>Select
																Attribute</option>
														</select>
														<button
															class="btn btn-info multipleChartAndOperation<%=i + 1%> multipleChartAndOperationButton<%=i + 1%> addButtonAlign"
															style="display: none;" onclick="addAttribute(<%=i + 1%>)">Add</button>
													</div>
													<div class="col">
														<label id="labelForOperation<%=i + 1%>"
															for="operationDropdown<%=i + 1%>" style="display: none;">Select
															Operation</label> <select class="form-control selectWidth"
															id="operationDropdown<%=i + 1%>" style="display: none;">
															<option value="" selected disabled hidden>Select
																Operation</option>
															<option value="Count">Count</option>
															<option value="Average">Average</option>
															<option value="Distribution">Distribution</option>
														</select>
													</div>
													<%-- 													<div class="col multipleChartAndOperation<%= i+1 %>" style="display:none"> --%>
													<!-- 														<button>Add</button> -->
													<!-- 													</div>	 -->
												</div>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<div class="row">
													<div class="col-6">
														<textarea
															class="attributesTextArea<%=i + 1%> multipleChartAndOperation<%=i + 1%> form-control"
															rows="" cols=""
															style="display: none; border: 2px solid rgb(24, 162, 184); background: rgb(145, 228, 241) !important"
															readonly></textarea>
													</div>
													<div class="col-6 multipleChartAndOperation<%=i + 1%>"
														style="display: none">
														<div>
															<p class="disabled">Operation Applied on</p>
															<input class="disabled" type="radio"
																id="element<%=i + 1%>" name="operationValue"
																value="Element"> <label for="html">Element</label><br>
															<input class="disabled" type="radio"
																id="attribute<%=i + 1%>" name="operationValue"
																value="Attribute"> <label for="css">Attribute</label><br>
														</div>
														<div>
															<label class="multipleChartAndOperation<%=i + 1%>" id=""
																for="" style="display: none;">Select Chart Type</label>
															<select id="chartType<%=i + 1%>"
																class="multipleChartAndOperation<%=i + 1%> form-control"
																id="operationDropdown<%=i + 1%>" style="display: none;">
																<option value="" selected disabled hidden>Chart
																	Type</option>
																<option value="bar">Column</option>
																<option value="clusteredBar">Clustered Column</option>
																<option value="pie">Pie</option>
															</select>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col">
														<button class="btn btn-info"
															id="generateTextButton<%=i + 1%>" style="display: none;"
															onclick="generateTable(<%=i + 1%>)">Generate</button>
														<%-- 														<button class="btn btn-info"  id="generateGraphButton<%= i+1 %>" style="display:none;" onclick="generateGraph(<%= i+1 %>)">Generate Chart</button> --%>
														<%-- 														<button class="btn btn-info" id="generateTextButton<%= i+1 %>" style="display:none;" onclick="generateTable(<%= i+1 %>,Save<%= i+1 %>)">Generate</button> --%>
														<button class="btn btn-info"
															id="generateGraphButton<%=i + 1%>" style="display: none;"
															onclick="generateGraph(<%=i + 1%>,Save<%=i + 1%>)">Generate
															Chart</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<%
								}
								%>
							</div>
						</div>
						<!-- 					</p> -->
					</div>
					</p>
				</div>
			</div>
		</div>

		<div id="chartModal" class="modal" style="display: none;">
			<!-- Modal content -->
			<div class="modal-content">
				<div class="modal-header">
					<span id="modal_heading"></span> <span class="close"
						id="closeChartModal">&times;</span>
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
	<script type="text/javascript"
		src="<c:url value="/resources/js/chartTabs_rtl.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/apexcharts-bundle/dist/apexcharts_rtl.js" />"></script>

	<!-- Export Graph script file -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/exportGraph.js" />"></script>
</body>
<!-- Modal Table -->
<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
<script
	src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>


<script type="text/javascript"
	src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

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
		
	</script>
<script>
// 	getElementName();
// 	function getElementName(){
// 		$.ajax({
// 		      url: "getElementsFromXML", // url: "/findTables?dbName="+db_name,
// 		      //type: "GET",
// 		      data: {},
// 		      //dataType: "text/String"
// 				success: function(data) {
// 					console.log("data",data)
// 					 	$.each(data, function (i, item) {
// 						 	fill_elements_in_dropdown('#matrixElement1', item);
// 			          	});
// 		        }
// 		});		
// 	}
// 	function fill_elements_in_dropdown(append_id, item){
// 		//$('#catalogElements').empty();
// 		$.ajax({
// 	           url: "getPropertiesDictionary",
// 	           type: 'POST',
// 	           data: {},
// 	           dataType: 'json', // added data type
// 	           success: function(langDict) {
// 	        	 console.log("langDict",langDict[item.replaceAll(" ", "_")])
// 	   			 $(append_id).append($('<option>',{ 
// 	 				 value: item,
// 	 				 text : langDict[item.replaceAll(" ", "_")]
// 	 			 }));
// 	           }
// 	       });
// 	}	
	$.ajax({ url: "?lang=ar",
		async:false,
	    success: function(){
		    if(!window.location.hash) {
		        window.location = window.location + '#rtl';
		        window.location.reload();
		        $('body').css("display","inline")
		    }
	    },
	    complete: function(){
	    	$('body').css("display","inline")
	    }
	});
	$("#tabs > ul").addClass("change_direction");
	$("#chartRow > div > div").addClass("change_direction");
// 	$(".change_direction").css({"text-align": "right !important", "direction": "rtl !important"})  	
</script>

	<!-- for header dropdown start -->
    <script type="text/javascript" src="<c:url value="/resources/js/animsition.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>
    <!-- for header dropdown end -->
</html>