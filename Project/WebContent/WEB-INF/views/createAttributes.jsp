<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<c:url value="/findTables" var="getdburl" />
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">

function call_table(db_name){
    $("#tableName").html('');
    $('#tableName').append('<option disabled selected value=""> -- Select Table -- </option>');
    //$("#tbl_name_for_foreign_key").html('');
    //$('#tbl_name_for_foreign_key').append('<option disabled selected value=""> -- Select Table -- </option>');
    $.ajax({
      url: "findTables", // url: "/findTables?dbName="+db_name,
      //type: "GET",
      data: {'db_name':db_name},
      //dataType: "text/String"
	success: function(data) {
        if (data) {
         $.each(data, function (i, item) {
            $('#tableName').append($('<option>',{ 
              value: item.id,
              text : item.tableName 
            }));
          });
         $('#tbl_name_for_foreign_key').find('option').remove();
         $('#tbl_name_for_foreign_key').append('<option disabled selected value="">-- Select Table  --</option>');
         $.each(data, function (i, item) {
             $('#tbl_name_for_foreign_key').append($('<option>',{ 
               value: item.id,
               text : item.tableName 
             }));
           });
        }}
    });
  }
  
$(document).ready(function () {
    var ckbox = $('#foreign_key');
    var name_type = $('#name_type');
    $('input').on('click',function () {
      if (ckbox.is(':checked') && (name_type.val() === "INT")) {
        $("#reference_table").css("display", "block");
      } else {
        $("#reference_table").css("display", "none");
      }
    });
  });
  
	function message(){
	    if(document.getElementById("attribute").value != ""){
	      alert("Attribute Added Successfully");
	    }
	  }
</script>
</head>
<body>

<div class="container" id="container">
	<h1>Add Attribute</h1>
	<form:form action="newAttr" method="post" modelAttribute="newAttr">
		<div class="form-group">
			<form:select class="form-control" type="text" path="dbName" id="dbName" onchange = "call_table(this.value)" required="required">
				<form:option disabled="disabled" value="-- Select Database  --"/>
				<c:forEach items="${dbList}" var="databases" varStatus="status">
					<form:option value="${databases.dbName}"/>
				</c:forEach>
			</form:select>
		</div>
				
		<div class="form-group">	
			<form:select class="form-control" id="tableName" path="tableName" required="required">
				<form:option disabled="disabled" value="-- Select Table  --"/>
			</form:select>
		</div>
			
		<div class="form-group">
			<label>Attribute Name</label>
			<form:input id="attribute" path="attrName" class="form-control" required="required"/>
		</div>
		
		<div class="form-group">
			<label>Type</label>	
			<form:select id="name_type" type="text" path="type" class="form-control" required="required" >
					<form:option disabled="disabled" value="-- Select Type --"/>
					<form:option value="INT"/>
					<form:option value="VARCHAR"/>						
					<form:option value="TEXT"/>
					<form:option value="DATE"/>
			</form:select>
		</div>
				
		<div class="form-group">
			<label>Length/Value</label>
			<form:input path="length" class="form-control" required="required"/>
		</div>
				
		<div class="form-group">
		     <label>Foreign key</label>
	        <input id="foreign_key" type="checkbox" name="">
      	</div>
	    <div id="reference_table" class="form-group" hidden="hidden">
			<form:select class="form-control" id="tbl_name_for_foreign_key" path="tabelNameforForiegnKey">
				<form:option disabled="disabled" value="-- Select Table  --"/>
			</form:select>
   	  </div>
			    
					
		<button  type="submit" class="btn btn-default" onclick="message()">Add</button>
	</form:form>
	<a href="back_button"><button id="back_button" class="btn btn-primary"> Back </button></a>
</div>

</body>
</html>