<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>POOL MANAGEMENT</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/poolManager/poolManager-default.css"/>">
<script type="text/javascript">
var allLicenses = [];
var licenseRole = '';
var poolNameGlobal='';

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
				themeURL = '<c:url value="/resources/css/poolManager/poolManager-dark.css"/>';
			}
			else if(data=='light'){
				themeURL ='<c:url value="/resources/css/poolManager/poolManager-light.css"/>';
			}
			else if(data=='default'){
				themeURL ='<c:url value="/resources/css/poolManager/poolManager-default.css"/>';
			}
		},
        async: false
	  });
	themeLink.href = themeURL;
}
	
	$(document).ready(function() {
		showAllPools();
			
		$(".poolSelectTable tr").click(function(){
		   $(this).addClass('selected').siblings().removeClass('selected').addClass('pools_tbody_tr');
		   $(this).removeClass('pools_tbody_tr')
		   var value=$(this).find('td:first').html();
		   poolNameGlobal = value;
// 		   console.log(value);    
		});

		$( "#deletePool" ).click(function() {
			$.ajax({
				url : "deletePool",
				type : 'GET',
				data : {'poolName':poolNameGlobal},
				success : function(res) {
					$('.selected').remove();
					$(".alert_message").html('<div class="alert alert-danger" role="alert">Removed</div>');
			    	alert_message_function();
				},
		        async: false
			});
		});
		
		$( "#showPool" ).click(function() {
// 			$("#poolTables").empty();
// 			let selectedValue = $("#poolSelect").val();
// 			$("#poolTables").append('<h2 class="center">'+selectedValue+'</h2><div class="pool" id="'+selectedValue+'" style="display:flex;"></div');
// 			poolNameGlobal = selectedValue;
			$.ajax({
				url : "getPoolLicenseAndUsers",
				type : 'GET',
				data : {'poolName':poolNameGlobal},
				success : function(res) {
					showPoolLicense(res['poolLicense'],poolNameGlobal);
					showPoolUsers(res['poolUsers'],poolNameGlobal);
					licenseRole = res['poolRoleType'][0];
					fillLicenseDropdown(res['availableLicense']);
					fillUsersDropdown(res['availableUsers']);
// 					console.log('availableLicense',res['availableLicense']);
// 					console.log('availableLicense',res['availableUsers']);
				},
		        async: false
			});
		});
		
		$("#poolName").keyup(function(){
			let poolName = $('#poolName').val();
			if(poolName != ''){
				$.ajax({
					url: "check_poolname_when_registration",
					data: {'poolName': poolName},
					success: function(response){
						if(response=='Available'){
							$("#createPoolButton").prop('disabled', false);
						}else{
							$("#createPoolButton").prop("disabled",true);
						}
						$('#pool_response').html(response);
					}
				});
			}else{
				$("#pool_response").html("(Name must be unique)");
			}
		});
		
		$( "#addLicenseToPool" ).click(function() {
			let licenseDropdownValue = $( "#licenseSelect" ).val();
			$("#license_tbody").append('<tr><td class="poolLicenses">'+licenseDropdownValue+'</td></tr>');
			var index = $('#licenseSelect').get(0).selectedIndex;
			$('#licenseSelect option:eq(' + index + ')').remove();
			console.log($('#licenseSelect option:eq(0)'))
			$('#licenseSelect option:eq(0)').attr('selected','selected')
			$("#save_button").attr('disabled', false);
			console.log('licenseDropdownValue',licenseDropdownValue)
			licenseDropdownValue = $( "#licenseSelect" ).val();
			if(licenseDropdownValue == null){
				$("#addLicenseToPool").prop('disabled', true);
			}
		});
		
		$('#licenseSelect').on('change', function (e) {
			$("#addLicenseToPool").prop('disabled', false);
		});
		
		$( "#addUserToPool" ).click(function() {
			let userDropdownValue = $( "#userSelect" ).val();
			$("#user_tbody").append('<tr><td class="poolUsers">'+userDropdownValue+'</td></tr>');
			var index = $('#userSelect').get(0).selectedIndex;
			$('#userSelect option:eq(' + index + ')').remove();
			console.log($('#userSelect option:eq(0)'))
			$('#userSelect option:eq(0)').attr('selected','selected')
			$("#save_button").attr('disabled', false);
			userDropdownValue = $( "#userSelect" ).val();
			if(userDropdownValue == null){
				$("#addUserToPool").prop('disabled', true);
			}
		});
		
		$('#userSelect').on('change', function (e) {
			$("#addUserToPool").prop('disabled', false);
		});
		
		$( "#save_button" ).click(function() {
			let poolLicenses = [];
			let poolUsers = [];
			let licencse_tds = document.getElementsByClassName("poolLicenses");
			$.each(licencse_tds, function(i, val) {
				poolLicenses.push(val.innerHTML)
			});
			let user_tds = document.getElementsByClassName("poolUsers");
			$.each(user_tds, function(i, val) {
				poolUsers.push(val.innerHTML)
			});
			
			$.ajax({
				url: "updatePoolDetails",
				type: 'POST',
				data: {
					poolLicenses,poolUsers,poolNameGlobal,
				},
				success: function(res) {
					$(".alert_message").html('<div class="alert alert-success" role="alert">Successfully Saved</div>');
			    	alert_message_function();
				}
			});
			console.log(poolLicenses,poolUsers,poolNameGlobal);
		});
		
	
	});
	function alert_message_function(){
		setTimeout(function() { $(".alert_message").html(""); }, 2500);
		setTimeout(function() { $(".alertMessageForHistoryTab").html(""); }, 2500);
	}
	
	function showAllPools(){
		$(".pools_tbody").empty();
		let poolNames = '';
		$.ajax({
			url : "getPools",
			type : 'GET',
			data : {},
			success : function(res) {
				poolNames = res;
			},
	        async: false
		});
		let tbody = '';
		$.each(poolNames, function(i, val) {
			
// 			console.log('poolNames', val)
			let poolName = val.pool_name;
			let role = val.role_type;
			let tr = '';
			tr += '<tr class="pools_tbody_tr">';
				tr +='<td>'+poolName+'</td><td>'+role+'</td>';
			tr +='</tr>';
			$(".pools_tbody").append(tr);
// 			val = val.replaceAll('pool_','').replaceAll('_license','');
			
// 			$("<option/>", {
// 				value: val,
// 				text: val
// 			}).appendTo("#poolSelect");
		});
	}
	
	function showPoolLicense(licenses,poolName){
		console.log('licenses', licenses)
		let poolLicenseTable = '';
		poolLicenseTable += '<table class="table table-bordered ">';
		poolLicenseTable += '<thead>';
		poolLicenseTable += '<tr class="table-primary">';
		poolLicenseTable += '<th scope="col">License</th>';
		poolLicenseTable += '</tr>';
		poolLicenseTable += '</thead>';
		poolLicenseTable += '<tbody id="license_tbody" class="pool_table_data">';
		
		$.each(licenses, function(i, val) {
			poolLicenseTable += '<tr>';
			poolLicenseTable += '<td class="poolLicenses">'+val+'</td>';
			poolLicenseTable += '</tr>';
		});
		
		poolLicenseTable += '</tbody>';
		poolLicenseTable += '</table>';
		$("#license_table").empty();
		$("#license_table").append(poolLicenseTable);
	}
	
	function showPoolUsers(users,poolName){
		console.log('users', users)
		let poolUsersTable = '';
// 		poolUsersTable = '&nbsp&nbsp&nbsp';
		poolUsersTable += '<table class="table table-bordered table-striped">';
		poolUsersTable += '<thead>';
		poolUsersTable += '<tr class="table-primary">';
		poolUsersTable += '<th scope="col">Users</th>';
		poolUsersTable += '</tr>';
		poolUsersTable += '</thead>';
		poolUsersTable += '<tbody id="user_tbody" class="pool_table_data">';
		
		$.each(users, function(i, val) {
			poolUsersTable += '<tr>';
			poolUsersTable += '<td class="poolUsers">'+val+'</td>';
			poolUsersTable += '</tr>';
		});
		
		
		poolUsersTable += '</tbody>';
		poolUsersTable += '</table>';
		$("#users_table").empty();
		$("#users_table").append(poolUsersTable);
	}
	
	function fillLicenseDropdown(licenses){
		if(licenses.length>0){
			$("#addLicenseToPool").prop('disabled', false);
		}
		$("#licenseSelect").empty();
		var i=0;
		$.each(licenses, function(i, val) {
			if(i==0){
				$("#licenseSelect").append('<option selected value="'+val+'">'+val+'</option>');
// 				$("<option selected/>", {
// 					value: val,
// 					text: val
// 				}).appendTo("#licenseSelect");
				i=2;
			}else{
				$("#licenseSelect").append('<option value="'+val+'">'+val+'</option>');
// 				$("<option/>", {
// 					value: val,
// 					text: val
// 				}).appendTo("#licenseSelect");
			}
		});
	}
	
	function fillUsersDropdown(users){
		if(users.length>0){
			$("#addUserToPool").prop('disabled', false);
		}
		$("#userSelect").empty();
		var i=0;
		$.each(users, function(i, val) {
			if(i==0){
				$("#userSelect").append('<option selected value="'+val+'">'+val+'</option>');
				i=2;
			}else{
				$("#userSelect").append('<option value="'+val+'">'+val+'</option>');
			}
// 			$("<option/>", {
// 				value: val,
// 				text: val
// 			}).appendTo("#userSelect");
		});
	}
	

	function createPool() {
		let poolName = $("#poolName").val();
		let poolType = $("#roleSelect").val();
		poolNameGlobal = poolName;
		licenseRole = poolType;
		$.ajax({
			url: "create_pool",
			data:{  'poolName': poolName,
					'poolType': poolType
			},
			success: function(res){
				console.log(res)
				showPoolLicense([],poolName);
				showPoolUsers([],poolName);
				fillLicenseDropdown(res['availableLicense']);
				fillUsersDropdown(res['availableUsers']);
				$("#createPoolButton").prop('disabled', true);
			},complete: function (data) {
				showAllPools();
			}
		});
		/*
		$("#poolTables").append('<h2 class="center">'+poolName+'</h2><div class="pool" id="'+poolName+'" style="display:flex;"></div');
		
		
		console.log('poolName', poolName)
		let poolTable = '';
		poolTable += '<table class="table table-bordered table-striped">';
		poolTable += '<thead>';
		poolTable += '<tr class="table-primary">';
		poolTable += '<th scope="col">License</th>';
		poolTable += '</tr>';
		poolTable += '</thead>'; 	
		poolTable += '<tbody>';
		poolTable += '<tr>';
		poolTable += '<td></td>';
		poolTable += '</tr>';
		poolTable += '</tbody>';
		poolTable += '</table>';
		
		poolTable += '&nbsp&nbsp&nbsp';

		poolTable += '<table class="table table-bordered table-striped">';
		poolTable += '<thead>';
		poolTable += '<tr class="table-primary">';
		poolTable += '<th scope="col">Users</th>';
		poolTable += '</tr>';
		poolTable += '</thead>';
		poolTable += '<tbody>';
		poolTable += '<tr>';
		poolTable += '<td></td>';
		poolTable += '</tr>';
		poolTable += '</tbody>';
		poolTable += '</table>';
		$("#"+poolName).append(poolTable);
		*/
	}
</script>
</head>
<body onload="changeTheme()">
	<img id="loader_image_body" style="display: none;" loading="lazy"
		alt="schema" width="200px" height="50px"
		src="<c:url value="/resources/images/eazee-Logo.png"/>">
	<div class="container-fluid"
		style="margin: 0 !important; padding: 0 !important; width: 100vw">
	<div class="header">
<%-- 		<img alt="logo" draggable="false" src="<c:url value="resources/images/logo.png"/>" width="15px" height="15px" style="margin-top:1px;"> --%>
			<div>
				<a href="home"><p class="image1" style="margin-left: 5px">
						<img draggable="false" alt="logo" width="110px"
							src="<c:url value="/resources/images/main-logo-removebg.png"/>">
					</p></a>
			</div>
		
		<div style="display:flex;justify-content: space-between; padding-right:10px">
		<div id="home-btn">
					<a href="home" class="fa fa-home fa-2x" draggable="false"
						title="Module Page"></a>
		</div>
			</div>
<!-- 		<div id="google_translate_element" style="margin-right:2%"></div> -->
<!-- 		<span><a href="lang=rtl">RTL View</span> -->
			</div>

		<div class="navbar" style="background: #0d7e8a; width: 100%;height:55px">
			<div class="bs-example leftSideButtons" style="margin-left: -20px">
			</div>
			<div style="height: 40px;">
				<span class="alert_message"></span>
			</div>

			<button disabled style="font-size: 18px; margin-right: 20px" title="Save" id="save_button" class="btn" onclick="">
				<i class="fa fa-floppy-o" style="font-size:24px;color:black"></i>
			</button>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<form>
						<label for="inputPassword" class="col-form-label">Pool Name</label> 
						<input type="text" class="form-control" id="poolName" placeholder="Enter...">
						<span id="pool_response" style="display:block;" class="focus-input100">(Name must be unique)</span>
<!-- 						<label for="inputPassword" class="col-form-label">Pool User Type</label>  -->
						<select id="roleSelect" class="form-control" aria-label="Default select example">
							<option selected disabled="disabled" value="">Select Pool Role</option>
							<option value="ROLE_USER">Architect</option>
							<option value="ROLE_ADMIN">Repository Admin </option>
							<option value="ROLE_READER">Reader</option>
						</select>
						<input id="createPoolButton" disabled="disabled" type="button" onclick="createPool()" class="btn btn-primary mb-2 poolSubmitButtons" value="Add Pool" style="background:#0d7e8a">
					</form>
<!-- 					<hr> -->
					<form>

						<table class="poolSelectTable table table-bordered pool_table_data">
							<thead>
								<tr>
									<th>Name</th>
									<th>Role</th>
								</tr>
							</thead>
							<tbody class="pools_tbody">
							</tbody>
						</table>



						<!-- 						<select id="poolSelect" class="form-select" aria-label="Default select example"> -->
<!-- 							<option selected disabled="disabled">Select Pool</option> -->
<!-- 						</select>  -->
						<input style="background:#0d7e8a" type="button" id="deletePool" class="btn btn-primary mb-2" value="Remove Pool">
						<input style="background:#0d7e8a" type="button" id="showPool" class="btn btn-primary mb-2" value="Show Pool">
					</form>
				</div>
<!-- 				<div class="col-sm-2"> -->
						
<!-- 				</div> -->
				
				<div id="poolTables" class="col-sm-8 row">
					<div class="license_div col-sm-6">
						<h5>Available Licenses</h5>
						<select id="licenseSelect" class="form-control" size="4" aria-label="size 3 select example">
							<option selected disabled="disabled">Select License</option>
						</select>
						<input style="background:#0d7e8a" type="button" id="addLicenseToPool" class="btn btn-primary mb-2 poolSubmitButtons" disabled value="Add License">
						<div id="license_table"></div>
					</div>
					
					<div class="users_div col-sm-6">
						<h5>Activated Users</h5>
						<select id="userSelect" class="form-control" size="4" aria-label="size 3 select example">
							<option selected disabled="disabled">Select User</option>
						</select>
						<input style="background:#0d7e8a" type="button" id="addUserToPool" class="btn btn-primary mb-2 poolSubmitButtons" disabled value="Add User">
						<div id="users_table"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>