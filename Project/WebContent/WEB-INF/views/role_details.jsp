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
<title>ROLE DETAILS</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/roleDetails/roleDetails-default.css"/>">
</head>
<body onload="changeTheme()">
<img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/eazee-Logo.png"/>">
<div class="container-fluid" style="margin: 0 !important; padding: 0 !important; width:100vw">
	<div class="header">
<%-- 		<img alt="logo" draggable="false" src="<c:url value="resources/images/logo.png"/>" width="15px" height="15px" style="margin-top:1px;"> --%>
		<div>
		<a href="home"><p class="image1" style="margin-left: 5px"><img draggable="false" alt="logo"  width="110px" src="<c:url value="/resources/images/main-logo-removebg.png"/>"></p></a>
		</div>
			
		<div style="display:flex;justify-content: space-between; padding-right:10px">
		<div id="home-btn">
			<a href="/EAZee/home" class="fa fa-home fa-2x" draggable="false" title="Module Page" ></a>
		</div>
		</div>
<!-- 		<div id="google_translate_element" style="margin-right:2%"></div> -->
<!-- 		<span><a href="lang=rtl">RTL View</span> -->
		</div>
	<div class="navbar" style="background:#0d7e8a; width:100%">
		<div class="bs-example leftSideButtons" style="margin-left:-20px">
		</div>
		<div>
			<span id="element_title" style="display: none"></span>
		</div>
		<div style="height: 30px;">	
	    	<span class="alert_message"></span>
		</div>

		<button disabled style="font-size: 18px;margin-right:20px" title="Save" id="save_button" class="btn" onclick="fillValues(); "><span class="fa fa-floppy-o" aria-hidden="true"></span></button>
	</div>
<div class=container>
	<select id="roleSelect">
	    <option value="" disabled selected>--- Select Role ---</option>
	    <option value="ROLE_READER">READER</option>
	    <option value="ROLE_USER">ARCHITECT</option>
	    <option value="ROLE_ADMIN">REPOSITORY ADMIN</option>
	</select>
	<h2></h2>
	<table class="table table-bordered table-striped">
	  <thead>
	    <tr class="table-primary">
	      <th scope="col">OBJECTS</th>
	      <th scope="col">Create</th>
	      <th scope="col">Read</th>
	      <th scope="col">Update</th>
	      <th scope="col">Delete</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">Elements</th>
	      <td><input class="checkbox" type="checkbox" id="elementCreate" name="elementCreate" value="elementCreate"></td>
	      <td><input class="checkbox" type="checkbox" id="elementRead" name="elementRead" value="elementRead"></td>
	      <td><input class="checkbox" type="checkbox" id="elementUpdate" name="elementUpdate" value="elementUpdate"></td>
	      <td><input class="checkbox" type="checkbox" id="elementDelete" name="elementDelete" value="elementDelete"></td>
	    </tr>
	    <tr>
	      <th scope="row">Relationships</th>
	      <td><input class="checkbox" type="checkbox" id="relationshipCreate" name="relationshipCreate" value="relationshipCreate"></td>
	      <td><input class="checkbox" type="checkbox" id="relationshipRead" name="relationshipRead" value="relationshipRead"></td>
	      <td><input class="checkbox" type="checkbox" id="relationshipUpdate" name="relationshipUpdate" value="relationshipUpdate"></td>
	      <td><input class="checkbox" type="checkbox" id="relationshipDelete" name="relationshipDelete" value="relationshipDelete"></td>
	    </tr>
	    <tr>
	      <th scope="row">Connectors</th>
	      <td><input class="checkbox" type="checkbox" id="connectorCreate" name="connectorCreate" value="connectorCreate"></td>
	      <td><input class="checkbox" type="checkbox" id="connectorRead" name="connectorRead" value="connectorRead"></td>
	      <td><input class="checkbox" type="checkbox" id="connectorUpdate" name="connectorUpdate" value="connectorUpdate"></td>
	      <td><input class="checkbox" type="checkbox" id="connectorDelete" name="connectorDelete" value="connectorDelete"></td>
	    </tr>
	  </tbody>
	</table>
	<table class="table table-bordered table-striped">
	  <thead>
	    <tr class="table-primary">
	      <th scope="col">MODELS</th>
	      <th scope="col">Create</th>
	      <th scope="col">Read</th>
	      <th scope="col">Update</th>
	      <th scope="col">Delete</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">Graphs</th>
	      <td><input class="checkbox" type="checkbox" id="graphCreate" name="graphCreate" value="graphCreate"></td>
	      <td><input class="checkbox" type="checkbox" id="graphRead" name="graphRead" value="graphRead"></td>
	      <td><input class="checkbox" type="checkbox" id="graphUpdate" name="graphUpdate" value="graphUpdate"></td>
	      <td><input class="checkbox" type="checkbox" id="graphDelete" name="graphDelete" value="graphDelete"></td>
	    </tr>
	    <tr>
	      <th scope="row">Catalogs</th>
	      <td><input class="checkbox" type="checkbox" id="catalogCreate" name="catalogCreate" value="catalogCreate"></td>
	      <td><input class="checkbox" type="checkbox" id="catalogRead" name="catalogRead" value="catalogRead"></td>
	      <td><input class="checkbox" type="checkbox" id="catalogUpdate" name="catalogRead" value="catalogRead"></td>
	      <td><input class="checkbox" type="checkbox" id="catalogDelete" name="catalogDelete" value="catalogDelete"></td>
	    </tr>
	    <tr>
	      <th scope="row">Matrix</th>
	      <td><input class="checkbox" type="checkbox" id="matrixCreate" name="matrixCreate" value="matrixCreate"></td>
	      <td><input class="checkbox" type="checkbox" id="matrixRead" name="matrixRead" value="matrixRead"></td>
	      <td><input class="checkbox" type="checkbox" id="matrixUpdate" name="matrixUpdate" value="matrixUpdate"></td>
	      <td><input class="checkbox" type="checkbox" id="matrixDelete" name="matrixDelete" value="matrixDelete"></td>
	    </tr>
	  </tbody>
	</table>
	<table class="table table-bordered table-striped">
	  <thead>
	    <tr class="table-primary">
	      <th scope="col">ADMIN</th>
	      <th scope="col">Create</th>
	      <th scope="col">Read</th>
	      <th scope="col">Update</th>
	      <th scope="col">Delete</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">User</th>
	      <td><input class="checkbox" type="checkbox" id="userCreate" name="userCreate" value="userCreate"></td>
	      <td><input class="checkbox" type="checkbox" id="userRead" name="userRead" value="userRead"></td>
	      <td><input class="checkbox" type="checkbox" id="userUpdate" name="userUpdate" value="userUpdate"></td>
	      <td><input class="checkbox" type="checkbox" id="userDelete" name="userDelete" value="userDelete"></td>
	    </tr>
	  </tbody>
	</table>
	<table class="table table-bordered table-striped">
	  <thead>
	    <tr class="table-primary">
	      <th scope="col">USER MANAGEMENT</th>
	      <th scope="col">Create</th>
	      <th scope="col">Read</th>
	      <th scope="col">Update</th>
	      <th scope="col">Delete</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">Role</th>
	      <td><input class="checkbox" type="checkbox" id="roleCreate" name="roleCreate" value="roleCreate"></td>
	      <td><input class="checkbox" type="checkbox" id="roleRead" name="roleRead" value="roleRead"></td>
	      <td><input class="checkbox" type="checkbox" id="roleUpdate" name="roleUpdate" value="roleUpdate"></td>
	      <td><input class="checkbox" type="checkbox" id="roleDelete" name="roleDelete" value="roleDelete"></td> 
	    </tr>
	  </tbody>
	</table>
	<div class=row>
		<div class="col-sm-6">
			<label>Import</label>
			<input class="checkbox" type="checkbox" id="importVar" name="importVar" value="importVar">
			<br>
			<label>Export</label>
			<input class="checkbox" type="checkbox" id="exportVar" name="exportVar" value="exportVar">
		</div>
		<div class="col-sm-6">
			<label>Backup/Restore</label>
			<input class="checkbox" type="checkbox" id="backup_restore" name="backup_restore" value="backup_restore">
		</div>
	</div>
</div>
</div>
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
				themeURL = '<c:url value="/resources/css/roleDetails/roleDetails-dark.css"/>';
			}
			else if(data=='light'){
				themeURL ='<c:url value="/resources/css/roleDetails/roleDetails-light.css"/>';
			}
			else if(data=='default'){
				themeURL ='<c:url value="/resources/css/roleDetails/roleDetails-default.css"/>';
			}
		},
        async: false
	  });
	themeLink.href = themeURL;
}



var roleDict = {};
$(function () {
    $("#roleSelect").change(function () {
    	$("#save_button").attr('disabled', false);
        var selectedText = $(this).find("option:selected").text();
        var selectedValue = $(this).val();
        $.ajax({
            url: "getSpecificRoleDetails",
            type: 'POST',
            data: { 
                role_type: selectedValue,
            },
            success: function(res) {
            	delete res['user_role']
            	delete res['company_name']
            	roleDict = res;
            	$.each( res, function( key, value ) {
            		$("#"+key).prop("checked", value);
            	});
            }
        });
    });
});
function fillValues(){
	$.each( roleDict, function( key, value ) {
		if(key!='id' && key!= 'user_role' && key!= 'company_name'){
			let prop = $("#"+key).prop("checked");
			roleDict[key] = prop;
		}
	});
	$.ajax({
	      url: "updateRoleDetails",
	      contentType : 'application/json; charset=utf-8',
	      type: "POST",
	      data: JSON.stringify(roleDict),
		  success: function(data) {
			alert("Role Updated")
	     }
	});
	$("#save_button").attr('disabled', true);
}
$(function () {
	$('.checkbox').change(function () {
		$("#save_button").attr('disabled', false);
	});
});
</script>
</body>
</html>