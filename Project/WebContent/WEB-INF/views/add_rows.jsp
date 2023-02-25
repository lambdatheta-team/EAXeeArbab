<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Add Row</title>
  
  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container" id="container">
  <h1>Add Data /(Row)</h1>    
    <form:form action="newRow" method="POST" modelAttribute="newRow">
      <div class="form-group">
					
					<form:select class="form-control" type="text" path="dbName" id="dbName" onchange = "call_table(this.value)" required="required">
						<form:option disabled="disabled" value="-- Select Database  --"/>
						<c:forEach items="${dbList}" var="databases" varStatus="status">
							<form:option value="${databases.dbName}"/>
						</c:forEach>
					</form:select>
		</div>
      <div class="form-group">	
					<label>Select Table</label>				
					<form:select class="form-control" id="tableName" path="tableName" required="required">
						<form:option disabled="disabled" value=" Select Table  --"/>
					</form:select>
		</div>
		<div class="form-group">	
					<label>Select Atrribute</label>				
					<form:select class="form-control" id="attrName" path="columnName" required="required" onchange = "call_table_data(this.value)">
						<form:option disabled="disabled" value="-- Select Attribute  --"/>
					</form:select>
		</div>
      <div class="form-group">
        <label>Value</label>
        <form:input path="rowValue" id="row" type="text" name="type" class="form-control"/>
      </div>
      <div class="form-group">
        <label>Relationship itself</label>
        <form:checkbox id="relationship_itself" path="foreign_key_checkbox" value="1"/>
      </div>
      <div id="foreign_key_from" class="form-group" hidden="hidden">
        <form:select id="from" class="form-control" path="foreign_key_from" onchange="fill_to_dropdown()">
          <form:option disabled="disabled" value="-- From  --"/>
        </form:select>
      </div>
      <div id="foreign_key_to" class="form-group" hidden="hidden">
        <form:select id="to" class="form-control" path="foreign_key_to">
          <form:option disabled="disabled" value="-- To  --"/>
        </form:select>
      </div>
      <div  id="foreign_key_type" class="form-group" hidden="hidden">
        <label>Type</label>
        <form:input  type="text" path="foreign_key_type" class="form-control"/>
      </div>
      <button type="submit" class="btn btn-default" onclick="message()">Add</button>
    </form:form>

    <a href="back_button"><button id="back_button" class="btn btn-primary"> Back </button></a>
  </div>
  <script type="text/javascript">
  function call_table(db_name){
	    $("#tableName").html('');
	    $('#tableName').append('<option disabled selected value=""> -- Select Table -- </option>');
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
	        }}
	    });
	  }
  
  $(document).ready(function () {
	  $("#tableName").change(function(){
		  dbName = $("#dbName").val();
		  tableName = $("#tableName").val();
		  $("#attrName").html('');
		    $('#attrName').append('<option disabled selected value=""> --- Select Attribute -- </option>');
		    $.ajax({
		      url: "findAttributes", // url: "/findTables?dbName="+db_name,
		      //type: "GET",
		      data: {'dbName':dbName,'tableName':tableName},
		      //dataType: "text/String"
			success: function(data) {
		        if (data) {
		         $.each(data, function (i, item) {
		            $('#attrName').append($('<option>',{ 
		              value: item.id,
		              text : item
		            }));
		          });
		        }
		        }
		    });
	  });
  });
  
    function message(){
      if(document.getElementById("row").value == ""){
        alert("Please Enter Data");
      }
      else{
        alert("Row Added Successfully!");
      }
    }
    $(document).ready(function () {
      var ckbox = $('#relationship_itself');
      $('input').on('click',function () {
        if (ckbox.is(':checked')) {
          $("#foreign_key_from").css("display", "block");
          $("#foreign_key_to").css("display", "block");
          $("#foreign_key_type").css("display", "block");
        } else {
          $("#foreign_key_from").css("display", "none");
          $("#foreign_key_to").css("display", "none");
          $("#foreign_key_type").css("display", "none");
        }
      });
    });
    function call_table_data(attr_name){
      var db_name = document.getElementById('dbName').value;
      var tbl_name = document.getElementById('tableName').value;
      $("#from").html('');
      $('#from').append('<option disabled selected value=""> *-- From -- </option>');
      $.ajax({
        url: "get_table_data?tbl_name="+tbl_name+"&db_name="+db_name+"&attr_name="+attr_name,
        type: "GET",
        //dataType: "json",
        success: function(response) {
          if (response) {
        	  console.log(response)
            $.each(response, function (i, item) {
              $('#from').append($('<option>',{ 
                value: item.id,
                text : item.rowValue
              }));
            });
          }
        }
      });
    }
    function fill_to_dropdown(){
      var db_name = document.getElementById('dbName').value;
      var tbl_name = document.getElementById('tableName').value;
      var attr_name = document.getElementById('attrName').value;
      $("#to").html('');
      $("#to").append('<option disabled selected value=""> -- To -- </option>');
      $.ajax({
    	url: "get_table_data?tbl_name="+tbl_name+"&db_name="+db_name+"&attr_name="+attr_name,
        type: "GET",
        //dataType: "json",
        success: function(response) {
          if (response) {
            $.each(response, function (i, item) { 
              if($("#from").val() != item.id){
                $("#to").append($('<option>',{ 
                  value: item.id,
                  text : item.rowValue
                }));            
              }
            });
          }
        }
      });
    }
  </script>
</body>
</html>