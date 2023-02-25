<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code="" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EAXEE Administration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Tabs - Default functionality</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="icon"
	href="<c:url value="resources/images/snapping-removebg.png"/>"
	type="image/icon type">

<!--  CSS THAT WILL BE CHANGED ACCORDING TO THEME LATER	 -->
<link
	href="<c:url value="/resources/css/administration/administration-default.css"/>"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

<!--  CONCURRENT LICENSE JS FILE	 -->
<script type="text/javascript"
	src="<c:url value="/resources/js/administration/concurrentLicense.js" />"></script>

<!--  NAMED LICENSE JS FILE	 -->
<script type="text/javascript"
	src="<c:url value="/resources/js/administration/namedLicense.js" />"></script>

<!--  USER MANAGEMENT JS FILE	 -->
<script type="text/javascript"
	src="<c:url value="/resources/js/administration/userManagement.js" />"></script>


<!--  Backup JS FILE	 -->
<script type="text/javascript"
	src="<c:url value="/resources/js/administration/manualBackup.js" />"></script>

<!--  Restore JS FILE	 -->
<script type="text/javascript"
	src="<c:url value="/resources/js/administration/manualRestore.js" />"></script>

<!--  Clear JS FILE	 -->
<script type="text/javascript"
	src="<c:url value="/resources/js/administration/manualClear.js" />"></script>

<!--  Global JS FILE	 -->
<script type="text/javascript"
	src="<c:url value="/resources/js/global.js" />"></script>

<!-- userinfo css -->
<link href="<c:url value="/resources/css/userinfo.css"/>"
	rel="stylesheet">

<link
	href="<c:url value="/resources/css/administration/administration-default.css"/>"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" id="switcher-id"
	href="<c:url value="/resources/css/display-none.css"/>">

<!-- Datatbale css starts here -->
<%-- 	<link rel="stylesheet" href="<c:url value="/resources/css/datatable1.css"/>"> --%>
<%-- 	<link rel="stylesheet" href="<c:url value="/resources/css/datatable2.css"/>"> --%>
<!-- Datatbale css ends here -->
<script type="text/javascript">
	   $( function() {
		   $('#verticalTabs li').click(function () {
		       $('#verticalTabs li').each(function (a) {
		           $(this).removeClass('selectedclass')
		       });
		       $(this).addClass('selectedclass');
		   });
		   
		   $( "#userManagementTabs" ).tabs();
		   $( "#licenseManagementTabs" ).tabs();
		   $( "#repositoryManagementTabs" ).tabs();
		   $( "#repositoryManagementTabs-1" ).tabs();
		   $( "#manualTabs-1" ).tabs();
		   $( "#scheduleTabs-2" ).tabs();
		} );
	   
	   function sessionLoggedOutModalOpen(){
		   
		   $( function() {
			    var dialog, form,
			    dialog = $( "#sessionExpiredDialog" ).dialog({
			      autoOpen: false,
			      width: 350,
			      modal: true,
			      buttons: {
				        "Okay": function() {
				        	document.location.href="login";
				          $( this ).dialog( "close" );
				        }
				  }
			    });
			      dialog.dialog( "open" );
			      $(".ui-dialog-titlebar-close").hide();
			  }); 
	   }
	   
	   function userManagement(){
		   $("#userManagementTabs").css("display", "block");
		   $("#licenseManagementTabs").css("display", "none");
		   $("#repositoryManagementTabs").css("display", "none");
	   }
	   function licenseManagement(){
		   $("#userManagementTabs").css("display", "none");
		   $("#licenseManagementTabs").css("display", "block");
		   $("#repositoryManagementTabs").css("display", "none");
	   }
	   function repositoryManagement(){
		   $("#userManagementTabs").css("display", "none");
		   $("#licenseManagementTabs").css("display", "none");
		   $("#repositoryManagementTabs").css("display", "block");
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
		   
		   
	// 		let themeURL = '';
	// 		var themeLink = document.getElementById("switcher-id");
	// 		$.ajax({
	// 		    url: "getThemeName", // url: "/findTables?dbName="+db_name,
	// 		  	method: 'get',
	// 		  	async: true,
	// 		    data: {},
	// 		    success: function (data) {
	// 			  	console.log(data)
	// 			  	if(data=='dark'){
	// 					themeURL = '<c:url value="/resources/css/administration/administration-dark.css"/>';
	// 				}
	// 				else if(data=='light'){
	// 					themeURL ='<c:url value="/resources/css/administration/administration-light.css"/>';
	// 				}
	// 				else if(data=='default'){
	// 					themeURL ='<c:url value="/resources/css/administration/administration-default.css"/>';
	// 				}
	// 			},
	// 	        async: false
	// 		  });
	// 		themeLink.href = themeURL;
		}
	   
	   function alert_message_function(){
			setTimeout(function() { $(".alert_message").html(""); }, 2500);
			setTimeout(function() { $(".alertMessageForHistoryTab").html(""); }, 2500);
		}
	   
  </script>

<script>
	<!-- Spring:messages starts -->
	   var deactivate = '<spring:message code="deactivate"/>';
	   var activate = '<spring:message code="activate"/>';
	   var change = '<spring:message code="change"/>';
	   var special_characters_are_not_allowed = '<spring:message code="special_characters_are_not_allowed"/>';
	   var password_successfully_updated = '<spring:message code="password_successfully_updated"/>';
	   var minimum_8_characters_are_required = '<spring:message code="minimum_8_characters_are_required"/>';
	   var fields_cant_be_empty = '<spring:message code="fields_cant_be_empty"/>';
	   var password_doesnt_match = '<spring:message code="password_doesnt_match"/>';
	   var user_added = '<spring:message code="user_added"/>';
	   var special_characters_are_not_allowed = '<spring:message code="special_characters_are_not_allowed"/>';
	   var minimum_5_characters_are_required = '<spring:message code="minimum_5_characters_are_required"/>';
	   var only_alphanumeric_id_is_allowed = '<spring:message code="only_alphanumeric_id_is_allowed"/>';
	   var deallocate = '<spring:message code="deallocate"/>';
	   var license_not_selected = '<spring:message code="license_not_selected"/>';
	   var user_not_selected = '<spring:message code="user_not_selected"/>';
	   var user_and_license_are_not_selected = '<spring:message code="user_and_license_are_not_selected"/>';
	   var deallocated = '<spring:message code="deallocated"/>';
	   var removed = '<spring:message code="removed"/>';
	   var name_must_be_unique = '<spring:message code="name_must_be_unique"/>';
	   var successfully_saved = '<spring:message code="successfully_saved"/>';
	   var license_not_found = '<spring:message code="license_not_found"/>';
	   var user_not_found = '<spring:message code="user_not_found"/>';
	   var pool_name_is_not_selected = '<spring:message code="pool_name_is_not_selected"/>';
	   var pool_type_is_not_selected = '<spring:message code="pool_type_is_not_selected"/>';
	   var pool_name_and_pool_type_are_not_selected = '<spring:message code="pool_name_and_pool_type_are_not_selected"/>';
	   var backup_is_in_process = '<spring:message code="backup_is_in_process"/>';
	   var backup_created_sucessfully = '<spring:message code="backup_created_sucessfully"/>';
	   var error_occured_while_backup = '<spring:message code="error_occured_while_backup"/>';
	   var restore_is_in_process = '<spring:message code="restore_is_in_process"/>';
	   var restored_successfully = '<spring:message code="restored_successfully"/>';
	   var error_occured_while_restoring = '<spring:message code="error_occured_while_restoring"/>';
	   var error_occured = '<spring:message code="error_occured"/>';
	   var object_truncate_is_in_process = '<spring:message code="object_truncate_is_in_process"/>';
	   var object_clear_sucessfully = '<spring:message code="object_clear_sucessfully"/>';
	   var model_clear_is_in_process = '<spring:message code="model_clear_is_in_process"/>';
	   var model_clear_sucessfully = '<spring:message code="model_clear_sucessfully"/>';
	   var dashboard_clear_is_in_process = '<spring:message code="dashboard_clear_is_in_process"/>';
	   var dashboard_clear_sucessfully = '<spring:message code="dashboard_clear_sucessfully"/>';
	   var role = '<spring:message code="role"/>';
	   var attachment = '<spring:message code="attachment"/>';
	   var attachment_clear_is_in_process = '<spring:message code="attachment_clear_is_in_process"/>';
	   var attachment_clear_sucessfully = '<spring:message code="attachment_clear_sucessfully"/>';
	   var Cancel = '<spring:message code="Cancel" />';
	   var Delete = '<spring:message code="Delete" />';
	   var license = '<spring:message code="License" />';
	   var users_ar = '<spring:message code="users" />';
	   
	   
	<!-- Spring:messages ends -->
</script>
<style>
.sorting_1 {
	pointer-events: none;
}

.loader {
	border: 16px solid #f3f3f3; /* Light grey */
	border-top: 16px solid #0D7E8A; /* Blue */
	border-radius: 50%;
	width: 120px;
	height: 120px;
	animation: spin 2s linear infinite;
	position: absolute;
	z-index: 999;
	top: 50%;
	left: 50%;
}

@keyframes spin {
	  0% { transform: rotate(0deg); }
	  100% { transform: rotate(360deg); }
	}
</style>
</head>
<body onload="changeTheme();">
	<div id="dialog-confirm"
		title="<spring:message code="confirm_delete"/>" style="display: none">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 12px 12px 20px 0;"></span>
			<spring:message code="you_are_about_to_delete" />
			<b><i class="title"></i></b>
			<spring:message code="record_this_procedure_is_irreversible" />
		</p>
	</div>
	<div id="sessionExpiredDialog" style="display: none"
		title="Session Expired!">
		<p>
			<span class="ui-icon ui-icon-alert"
				style="float: left; margin: 3px 3px 20px 0;"></span>Session Expired!
			Please Login again.
		</p>
	</div>
	<img id="loader_image_body" style="display: none;" loading="lazy"
		alt="schema" width="200px" height="50px"
		src="<c:url value="/resources/images/logo-login.png"/>">
	<div class="container-fluid"
		style="margin: 0 !important; padding: 0 !important; width: 100vw">

		<!-- loader  start-->
		<div class="loader" style="display: none;"></div>
		<!-- loader  end-->

		<div style="display: flex; justify-content: space-between; width: 100vw; margin-bottom: -10px; background: #f8f9fa; height: 60px !important;">
			<div>
				<!-- 				<a href="home"> -->
				<a>
					<p class="image1" style="margin-left: 0px;margin-top:-5px">
						<img draggable="false" alt="logo" width="155px"
							src="<c:url value="/resources/images/logo-login.png"/>">
					</p>
				</a>
			</div>
			<div
				style="display: flex; justify-content: space-between; padding-right: 10px">
				<div id="home-btn">
					<!-- <a id="language" class="fa-2x lang-icon" draggable="false" title="Module Page" onclick="toggleLanguageSelection()">Ar</a> -->
					<a href="home" class="fa fa-home fa-2x" draggable="false"
						title="Module Page"></a>
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
								<a href="userprofile" onclick="saveCurrentUrlToLocalStorage()"><i
									class="fa fa-user" aria-hidden="true"></i>
								<spring:message code="profile" /></a>
							</div>
						</div>
						<div class="account-dropdown__footer">
							<a href="logout"><i class="fa fa-power-off"
								aria-hidden="true"></i>
							<spring:message code="logout" /></a>
						</div>
					</div>
				</div>
				<!-- ///////////////////////////////////////////////////////// -->
			</div>
		</div>

		<div class="navbar" style="background: #0d7e8a; width: 100%; height: 55px">
			<div class="bs-example leftSideButtons" style="margin-left: -20px">
			</div>
			<div style="height: 40px; position: absolute; left: 50%;">
				<span class="alert_message"></span>
			</div>

<!-- 			<button disabled style="font-size: 18px; margin-right: 20px" -->
<!-- 				title="Save" id="save_button" class="btn" onclick=""> -->
<!-- 				<i class="fa fa-floppy-o" style="font-size: 24px; color: black"></i> -->
<!-- 			</button> -->
		</div>
	</div>
	<div class="row" style="height: calc(100vh - 105px)">
		<div id="verticalTabs" class="col-sm-2">
			<ul>
				<li class="selectedclass" onclick="userManagement()"><spring:message
						code="user_management" /></li>
				<li onclick="licenseManagement()"><spring:message
						code="license_management" /></li>
				<li onclick="repositoryManagement()"><spring:message
						code="repository_management" /></li>
			</ul>
		</div>

		<div class="col-sm-10" style="height: 100%">
			<div id="userManagementTabs">
				<ul>
					<li><a href="#userManagementTabs-1"><spring:message
								code="user_registration" /></a></li>
					<li><a href="#userManagementTabs-2"><spring:message
								code="password_management" /></a></li>
				</ul>
				<div id="userManagementTabs-1">
					<div class="row">
						<div class="col-sm-3">
							<form>
								<label for="inputPassword" class="col-form-label formInputLabel"><spring:message
										code="name" /></label> <input id="userFullName" type="text"
									class="form-control addUser" id=""
									placeholder="<spring:message code="enter_full_name"/>">
								<span id="userfullname_response" style="display: block;"
									class="focus-input100"> <br>
								</span> <label for="inputPassword"
									class="col-form-label formInputLabel"><spring:message
										code="id" /></label> <input id="username" type="text"
									class="form-control addUser" id=""
									placeholder="<spring:message code="enter_username"/>">
								<span id="username_response" style="display: block;"
									class="focus-input100"> <br>
								</span> <label for="inputPassword"
									class="col-form-label formInputLabel"><spring:message
										code="email" /></label> <input id="email" type="text"
									class="form-control addUser" id=""
									placeholder="<spring:message code="enter_email"/>"> <input
									id="addUser" type="button" disabled="disabled"
									class="btn btn-primary mb-2 poolSubmitButtons"
									value="<spring:message code="add"/>"
									style="background: #0d7e8a">
							</form>
						</div>
						<div class="col-sm-9"
							style="height: calc(100vh - 105px - 55px - 23px);">
							<form>
								<h5 class="arabicH5">
									<spring:message code="registered_users" />
								</h5>
								<table class="usersTable table table-bordered pool_table_data">
									<thead>
										<tr>
											<th><spring:message code="name" /></th>
											<th><spring:message code="id" /></th>
											<th><spring:message code="email" /></th>
											<th><spring:message code="action" /></th>
										</tr>
									</thead>
									<tbody class="usersList_userRegistration">

									</tbody>
								</table>
								<input id="removeUserRegistraionButton"
									style="background: #0d7e8a" type="button"
									class="btn btn-primary mb-2 poolSubmitButtons"
									onclick="removeUser_userRegistration();"
									value="<spring:message code="remove"/>">
							</form>
						</div>
					</div>
				</div>
				<div id="userManagementTabs-2">
					<div class="row">
						<div class="col-sm-3">
							<form>
								<label for="inputPassword" class="col-form-label formInputLabel"><spring:message
										code="password" /></label> <input id="password" disabled="disabled"
									type="password" class="form-control changePassword" id=""
									placeholder="<spring:message code="enter..."/>"> <label
									for="inputPassword" class="col-form-label formInputLabel"><spring:message
										code="confirm_password" /></label> <input id="confirmPassword"
									disabled="disabled" type="password"
									class="form-control changePassword" id=""
									placeholder="<spring:message code="enter..."/>"> <input
									id="updatePassword" type="button" disabled="disabled"
									class="btn btn-primary mb-2 poolSubmitButtons changePassword"
									value="<spring:message code="update"/>"
									style="background: #0d7e8a"> <span
									id="passwordErrorMessage"></span>
							</form>
						</div>
						<div class="col-sm-9">
							<form>
								<h5 class="arabicH5">
									<spring:message code="registered_users" />
								</h5>
								<table class="usersTable table table-bordered pool_table_data">
									<thead>
										<tr>
											<th><spring:message code="name" /></th>
											<th><spring:message code="id" /></th>
											<th><spring:message code="email" /></th>
											<th><spring:message code="action" /></th>
										</tr>
									</thead>
									<tbody class="usersList_changePassword">

									</tbody>
								</table>
								<!-- 							<input style="background: #0d7e8a" type="button"  class="btn btn-primary mb-2 poolSubmitButtons" onclick="removeUser_changePassword();" value="Remove"> -->
							</form>
						</div>
					</div>
				</div>
			</div>

			<div id="licenseManagementTabs" style="display: none;">
				<ul>
					<li><a href="#licenseManagementTabs-1"><spring:message
								code="named_user" /></a></li>
					<li><a href="#licenseManagementTabs-2"><spring:message
								code="concurrent_user" /></a></li>
				</ul>
				<div id="licenseManagementTabs-1">
					<div class="row">
						<div class="col-sm-6">
							<h5 class="arabicH5">
								<spring:message code="available_licenses" />
							</h5>
							<form>
								<table
									class="adminSelectTable table table-bordered pool_table_data">
									<thead>
										<tr>
											<th><spring:message code="license_id" /></th>
											<th><spring:message code="license_role" /></th>
										</tr>
									</thead>
									<tbody id="available_named_license_tbody">
										<tr class="pools_tbody_tr">
											<td>NU00ABCTTT002</td>
											<td><spring:message code="architect" /></td>
										</tr>
										<tr class="pools_tbody_tr">
											<td>NU00ABCTTT077</td>
											<td><spring:message code="reader" /></td>
										</tr>
										<tr class="pools_tbody_tr">
											<td>NU00ABCTTT116</td>
											<td><spring:message code="admin" /></td>
										</tr>
										<tr class="pools_tbody_tr">
											<td>NU00ABCTTT002</td>
											<td><spring:message code="architect" /></td>
										</tr>
										<tr class="pools_tbody_tr">
											<td>NU00ABCTTT077</td>
											<td><spring:message code="reader" /></td>
										</tr>
										<tr class="pools_tbody_tr">
											<td>NU00ABCTTT116</td>
											<td><spring:message code="admin" /></td>
										</tr>
									</tbody>
								</table>
								<!-- 						<input style="background: #0d7e8a" type="button" id="deletePool" class="btn btn-primary mb-2" value="Remove Pool">  -->
							</form>
						</div>
						<div class="col-sm-4">
							<h5 class="arabicH5">
								<spring:message code="activated_users" />
							</h5>
							<select id="activatedUsersForNamedLicense" class="form-control"
								size="4" aria-label="size 4 select example">
								<option selected="" value="<spring:message code="new_admin"/>"><spring:message
										code="new_admin" /></option>
								<option value="<spring:message code="super_admin"/>"><spring:message
										code="super_admin" /></option>
								<option value="<spring:message code="reader"/>"><spring:message
										code="reader" /></option>
								<option value="<spring:message code="new_admin"/>"><spring:message
										code="new_admin" /></option>
								<option value="<spring:message code="super_admin"/>"><spring:message
										code="super_admin" /></option>
								<option value="<spring:message code="reader"/>"><spring:message
										code="reader" /></option>
							</select> <input style="background: #0d7e8a" type="button"
								id="allocateNamedLicense"
								class="btn btn-primary mb-2 poolSubmitButtons"
								value="<spring:message code="allocate"/>">
						</div>
					</div>
					<br>
					<br>
					<br>
					<form>
						<h5 class="arabicH5">
							<spring:message code="allocated_licenses" />
						</h5>
						<table
							class="poolSelectTable table table-bordered pool_table_data">
							<thead>
								<tr>
									<th><spring:message code="license_id" /></th>
									<th><spring:message code="license_role" /></th>
									<th><spring:message code="user" /></th>
									<th><spring:message code="action" /></th>
								</tr>
							</thead>
							<tbody class="named_license_tbody">
								<tr class="pools_tbody_tr">
									<td>NU00ABCTTT002</td>
									<td><spring:message code="architect" /></td>
									<td>smaxwell</td>
									<td><input type="button" style="width: 100%;"
										value="Deallocate"></td>
								</tr>
								<tr class="pools_tbody_tr">
									<td>NU00ABCTTT077</td>
									<td><spring:message code="reader" /></td>
									<td>sahmed</td>
									<td><input type="button" style="width: 100%;"
										value="Deallocate"></td>
								</tr>
								<tr class="pools_tbody_tr">
									<td>NU00ABCTTT116</td>
									<td><spring:message code="admin" /></td>
									<td>brashed</td>
									<td><input type="button" style="width: 100%;"
										value="Deallocate"></td>
								</tr>
								<tr class="pools_tbody_tr">
									<td>NU00ABCTTT002</td>
									<td><spring:message code="architect" /></td>
									<td>mikram</td>
									<td><input type="button" style="width: 100%;"
										value="Deallocate"></td>
								</tr>
								<tr class="pools_tbody_tr">
									<td>NU00ABCTTT077</td>
									<td><spring:message code="reader" /></td>
									<td>sahmed</td>
									<td><input type="button" style="width: 100%;"
										value="Deallocate"></td>
								</tr>
								<tr class="pools_tbody_tr">
									<td>NU00ABCTTT116</td>
									<td><spring:message code="admin" /></td>
									<td>smaxwell</td>
									<td><input type="button" style="width: 100%;"
										value="Deallocate"></td>
								</tr>
							</tbody>
						</table>
						<!-- 						<input style="background: #0d7e8a" type="button" id="deletePool" class="btn btn-primary mb-2" value="Remove Pool">  -->
					</form>
				</div>
				<div id="licenseManagementTabs-2">

					<div class="row">
						<div class="col-sm-4">
							<form>
								<label for="inputPassword" class="col-form-label formInputLabel"><spring:message
										code="pool_name" /></label> <input type="text" class="form-control"
									id="poolName" placeholder="<spring:message code="enter..."/>">
								<span id="pool_response" style="display: block;"
									class="focus-input100 formInputLabel"><spring:message
										code="name_must_be_unique" /></span>
								<!-- 						<label for="inputPassword" class="col-form-label">Pool User Type</label>  -->
								<select id="roleSelect" class="form-control"
									aria-label="Default select example">
									<option selected disabled="disabled" value=""><spring:message
											code="select_pool_role" /></option>
									<option value="ROLE_USER"><spring:message
											code="architect" /></option>
									<option value="ROLE_ADMIN"><spring:message
											code="repository_admin" /></option>
									<option value="ROLE_ORGANIZATION_PORTAL"><spring:message
											code="organizational_portal" /></option>
								</select> <input id="createPoolButton" disabled="disabled" type="button"
									onclick="createPool()"
									class="btn btn-primary mb-2 poolSubmitButtons"
									value="<spring:message code="add_pool"/>"
									style="background: #0d7e8a">
							</form>
							<!-- 					<hr> -->
							<form>

								<table
									class="poolSelectTable table table-bordered pool_table_data">
									<thead>
										<tr>
											<th><spring:message code="name" /></th>
											<th><spring:message code="role" /></th>
										</tr>
									</thead>
									<tbody class="pools_tbody">
									</tbody>
								</table>



								<!-- 						<select id="poolSelect" class="form-select" aria-label="Default select example"> -->
								<!-- 							<option selected disabled="disabled">Select Pool</option> -->
								<!-- 						</select>  -->
								<div style="height: 5em; display: flex; justify-content: space-evenly; align-items: flex-start;">
									<input style="background: #0d7e8a" type="button" id="deletePool" class="btn btn-primary poolSubmitButtons" value="<spring:message code="remove_pool"/>"> 
<!-- 										<input style="background: #0d7e8a" type="button" id="showPool" -->
<!-- 										class="btn btn-primary poolSubmitButtons" -->
<%-- 										value="<spring:message code="show_pool"/>"> --%>
								</div>
							</form>
						</div>
						<!-- 				<div class="col-sm-2"> -->

						<!-- 				</div> -->

						<div id="poolTables" class="col-sm-8 row">
							<div class="license_div col-sm-6">
								<h5 class="arabicH5">
									<spring:message code="available_licenses" />
								</h5>
								<select id="licenseSelect" class="form-control" size="4" aria-label="size 3 select example">
									<option selected disabled="disabled"><spring:message
											code="select_license" /></option>
								</select> <input style="background: #0d7e8a" type="button"
									id="addLicenseToPool"
									class="btn btn-primary mb-2 poolSubmitButtons" disabled
									value="<spring:message code="add_license"/>">
								<div id="license_table"></div>

							</div>

							<div class="users_div col-sm-6">
								<h5 class="arabicH5">
									<spring:message code="activeted_user" />
								</h5>
								<select id="userSelect" class="form-control" size="4"
									aria-label="size 3 select example">
									<option selected disabled="disabled"><spring:message
											code="select_user" /></option>
								</select> <input style="background: #0d7e8a" type="button"
									id="addUserToPool"
									class="btn btn-primary mb-2 poolSubmitButtons" disabled
									value="<spring:message code="add_user"/>">
								<div id="users_table"></div>
								<div id="concurrentTabSaveButonDiv" style="height: 5em; display: flex; justify-content: space-evenly; align-items: flex-start; display: none">
								    <input style="background: #0d7e8a" type="button" id="save_button"  class="btn btn-primary poolSubmitButtons disabled" value="<spring:message code="save"/>"> 
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div id="repositoryManagementTabs" style="display: none;">
				<!-- 				<p>This feature will manage repository backup and restore. The details will be decided later</p> -->
				<!-- 				<div id="repositoryManagementTabs"> -->
				<ul>
					<!-- 				    <li><a href="#repositoryManagementTabs-1">Backup</a></li> -->
					<!-- 				    <li><a href="#repositoryManagementTabs-2" onclick="restore();">Restore</a></li> -->
					<li><a href="#repositoryManagementTabs-3"><spring:message
								code="clear" /></a></li>
				</ul>
				<!-- 				  <div id="repositoryManagementTabs-1" style="display:flex;"> -->
				<!-- 						<div style="margin-right:10px"> -->
				<!-- 							<button style="background:#0d7e8a" id="Manual" class="btn btn-primary mb-2 poolSubmitButtons" type="submit" onclick="manualBackup();"><i class="fa fa-refresh" aria-hidden="true"></i> Manual</button> -->
				<!-- 						</div> -->
				<!-- 				  </div> -->
				<!-- 				  <div id="repositoryManagementTabs-2" style="display:flex;"> -->
				<!-- 					<div class="container-fluid"> -->
				<!-- 						<table id="example" class="table table-striped table-bordered" style="width:100%"> -->
				<!-- 					        <thead> -->
				<!-- 					            <tr> -->
				<!-- 					                <th>Backup Date & Time</th> -->
				<!-- 					                <th>Action</th> -->
				<!-- 					            </tr> -->
				<!-- 					        </thead> -->
				<!-- 					        <tbody id="backupDataList"> -->
				<!-- 					        </tbody> -->
				<!-- 					        <tfoot> -->
				<!-- 					            <tr> -->
				<!-- 					                <th>Backup Date & Time</th> -->
				<!-- 					                <th>Action</th> -->
				<!-- 					            </tr> -->
				<!-- 					        </tfoot> -->
				<!-- 					    </table>					 -->
				<!-- 					</div> -->
				<!-- 				  </div> -->
				<div id="repositoryManagementTabs-3" style="display: inline-flex;">
					<div>
						<button id="Clear"
							class="btn btn-primary mb-2 repositoryManagementSubmitButtons"
							type="submit" onclick="objectClear();">
							<i class="fa fa-trash mr-3" style="font-size: 1.2em;"
								aria-hidden="true"></i>
							<spring:message code="object" />
						</button>
					</div>
					<div>
						<button id="Clear"
							class="btn btn-primary mb-2 repositoryManagementSubmitButtons"
							type="submit" onclick="modelClear();">
							<i class="fa fa-trash mr-3" style="font-size: 1.2em;"
								aria-hidden="true"></i>
							<spring:message code="model" />
						</button>
					</div>
					<div>
						<button id="Clear"
							class="btn btn-primary mb-2 repositoryManagementSubmitButtons"
							type="submit" onclick="attachmentClear();">
							<i class="fa fa-trash mr-3" style="font-size: 1.2em;"
								aria-hidden="true"></i>
							<spring:message code="attachment" />
						</button>
					</div>
					<div>
						<button id="Clear"
							class="btn btn-primary mb-2 repositoryManagementSubmitButtons"
							type="submit" onclick="dashboardClear();">
							<i class="fa fa-trash mr-3" style="font-size: 1.2em;"
								aria-hidden="true"></i>
							<spring:message code="dashboard" />
						</button>
					</div>
				</div>
				<!-- 			</div> -->
			</div>

		</div>
	</div>
	<!-- for header dropdown start -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/animsition.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/main.js" />"></script>
	<!-- for header dropdown end -->


	<!-- Datatable starts here -->
	<%-- 	<script type="text/javascript" src="<c:url value="/resources/js/datatable1.js" />"></script> --%>
	<script type="text/javascript"
		src="<c:url value="/resources/js/datatable2.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/datatable3.js" />"></script>
	<script>
		$(document).ready(function () {
		    $('#example').DataTable();
		});    
		
		
		var globalLanguage = ""
			

			getLangFormLocalStorage()
			
			function getLangFormLocalStorage(){
				
				// document.getElementById('language').href = "?lang="+globalLanguage
				var localStorageLanguage = localStorage.getItem("language");
				
				if(localStorageLanguage == null){
					localStorage.setItem("language", "En");
					globalLanguage = localStorage.getItem("language") 
				}else{
					globalLanguage = localStorage.getItem("language")
				}
				
				// $('#language').text(globalLanguage);
				
				switchLanguageCssFile(globalLanguage)
				
			}
			
			
			function toggleLanguageSelection(){
				// 			$('body').css("filter","blur(1px)");
				var text = $('#language').text();
				
				if(text == "Ar"){
					text = "En"
				}else{
					text = "Ar"
				}
				
				document.getElementById('language').href = "?lang="+globalLanguage
				globalLanguage = text
				
				localStorage.setItem("language", text);
				
				switchLanguageCssFile(text)
				$('#language').text(text);
			}
				
			function switchLanguageCssFile(lang){
				
				var arbicLanguageCssFile   = '<c:url value="/resources/css/administration/administrationArabic.css"/>';
				var englishLanguageCssFile = '<c:url value="/resources/css/administration/administration-default.css"/>';
				
				var themeURL = '';
				lang == "En" ? themeURL = englishLanguageCssFile : themeURL = arbicLanguageCssFile;
				
				var themeLink = document.getElementById("switcher-id");
				themeLink.href = themeURL;
			}
			function saveCurrentUrlToLocalStorage(){
			    localStorage.setItem("prevUrl", window.location.href);
			}			
	</script>

	<!-- Datatable ends here -->
</body>
</html>