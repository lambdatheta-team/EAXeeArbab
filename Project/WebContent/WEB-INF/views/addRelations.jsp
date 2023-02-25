<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" id="container">
    <h1>Add Relation</h1>    
    <form:form action="add_relations" method="POST" modelAttribute="newRel">
      <div class="form-group">
        <form:select class="form-control" type="text" path="dbName" id="dbName" onchange = "call_table(this.value)" required="required">
						<form:option disabled="disabled" value="-- Select Database  --"/>
						<c:forEach items="${dbList}" var="databases" varStatus="status">
							<form:option value="${databases.dbName}"/>
						</c:forEach>
		</form:select>
      </div>
      <div class="form-group">
        <form:select id ="from_tbl_name" path="fromTable" class="form-control" name="from_table" required="required" onchange = "fill_to_dropdown()">
        	<form:option disabled="disabled" value="-- Select Table  --"/>
        </form:select>
      </div>
      <div class="form-group">
        <form:select id ="to_tbl_name" path="toTable" class="form-control" name="to_table" required="required">
          <form:option disabled="disabled" value="-- Select Table  --"/>
        </form:select>
      </div>
      <button type="submit" class="btn btn-default" onclick="message()">Add</button>
    </form:form> 
    <a href="back_button"><button id="back_button" class="btn btn-primary"> Back </button></a>
  </div>
  <script type="text/javascript">
  function call_table(db_name){
	    $("#from_tbl_name").html('');
	    $('#from_tbl_name').append('<option disabled selected value=""> -- Select Table -- </option>');
	    $.ajax({
	      url: "findTables", // url: "/findTables?dbName="+db_name,
	      //type: "GET",
	      data: {'db_name':db_name},
	      //dataType: "text/String"
		success: function(data) {
	        if (data) {
	         $.each(data, function (i, item) {
	            $('#from_tbl_name').append($('<option>',{ 
	              value: item.id,
	              text : item.tableName 
	            }));
	          });
	        }}
	    });
	  }
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
    function fill_to_dropdown(){
      var db_name = document.getElementById('dbName').value;
      $("#to_tbl_name").html('');
      $("#to_tbl_name").append('<option disabled selected value=""> -- Select Table -- </option>');
      $.ajax({
        url: "findTables?db_name="+db_name,
        type: "GET",
        dataType: "json",
        success: function(response) {
          if (response) {
            $.each(response, function (i, item) {
              if($("#from_tbl_name").val() != item.tableName){
                $("#to_tbl_name").append($('<option>',{
                  value: item.id,
                  text : item.tableName
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