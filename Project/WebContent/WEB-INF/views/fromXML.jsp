<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<title>From XML</title>
</head>
<body>
	<div class="container" id="container">
		<form action="fromXMLback" method="POST">
		<h3>Add Data In XML</h3>
		<div class="row">
		<div class="col-md-4">
			<div class="form-group">
				<input type="text" id="database_name" class="form-control" placeholder="Enter database name" name="database_name" required="required" value="${dbName}">
			</div>
			<div class="form-group">
				<input id="categoryName" name="category_name" name="type" class="form-control" placeholder="Enter Category" >
					
			</div>
			<div class="form-group">
				<input id="tableName" type="text" class="form-control" placeholder="Enter table name" name="table_name">
			</div>
			<div class="form-group">
				<textarea id="tableDefinition" type="text" class="form-control" placeholder="Enter table definition" name="table_name"></textarea>
			</div>
			</div>
			<div class="col-md-4">
				<div class="form-group addAttribute">
					<input placeholder="Attribute Name" id="attrName" name="length" name="attrName" class="form-control" />
				</div>

				<div class="form-group addAttribute">
					<select id="attribute_type" name="attribute_type" name="type" class="form-control"  >
						<option disabled="disabled" selected="selected" value="-- Select Type --">-- Select Type --</option>
						<option value="INT">INT</option>
						<option value="VARCHAR">VARCHAR</option>
						<option value="TEXT">TEXT</option>
						<option value="DATE">DATE</option>
					</select>
				</div>

				<div class="form-group addAttribute">
					<input placeholder="Length/Value" id="attribute_length" name="attribute_length" class="form-control" />
				</div>
				<button id="add" type="button" class="btn btn-default">Add</button>
			</div>
			<div class="col-md-4">
				<div class="form-group addRelations">
						<select id ="from_tbl_name" class="form-control" name="from_table" onchange = "fill_to_dropdown()">
							<option disabled selected value>-- Select Table  --</option>
						</select>
				</div>
				<div class="form-group addRelations">
					<select id ="to_tbl_name" class="form-control" name="to_table">
						<option disabled selected value>-- Select Table  --</option>
					</select>
				</div>
					<div class="form-group addRelations">
						<input placeholder="Relation" id="relation" name="length" name="relation" class="form-control" />
					</div>
				<button id="addRelation" type="button" class="btn btn-default">Add Relation</button>
			</div>
				<br><br>
				</div>
				<center><button type="submit" class="btn btn-primary">Create XML</button></center>
		</form>
		<hr>
		<form method="POST" action="excelToXML" enctype="multipart/form-data">
		<h3>Add Data From Excel</h3>
			<div class="form-group addAttribute">
				<select class="form-control" type="text" name="db_Name">
						<option disabled selected="selected">-- Select Database --</option>
						<c:forEach items="${dbList}" var="contact" varStatus="status">
							<option>${contact.dbName}</option>
						</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<label>Select File</label>
				<input type="file" name="file"/>
			</div>
		    <button type="submit" class="btn btn-default">Submit</button>
		</form>
		<hr>
		<a href="xml"><button id="back_button" class="btn btn-primary"> Back </button></a>
		<a href="download_xml"><button id="back_button" class="btn btn-primary"> Download </button></a>
	</div>

	<script type="text/javascript">
	$(document).ready(function () {
      var ckbox = $('#addAttributeCheck');
      $('#addAttributeCheck').on('click',function () {
        if (ckbox.is(':checked')) {
        	$("#addAttributeCheck").val('1');
        	$("#attrName").html('');
           // $("#attrName").append('<input id="attrName" name="length" name="attrName" class="form-control" required="required"/>');
          $(".addAttribute").css("display", "block");
        } else {
        	$("#addAttributeCheck").val('0');
          $(".addAttribute").css("display", "none");
        }
      });
    });
	
	$(document).ready(function () {
	      var ckbox1 = $('#addRelationsCheck');
	      $('#addRelationsCheck').on('click',function () {
	        if (ckbox1.is(':checked')) {
	        	$("#addRelationsCheck").val('1');
	          $(".addRelations").css("display", "block");
	        } else {
	        	$("#addRelationsCheck").val('0');
	          $(".addRelations").css("display", "none");
	        }
	      });
	    });


	$(document).ready(function () {
		  $("#add").click(function(){
			  database_name = $("#database_name").val();
			  categoryName = $("#categoryName").val();
			  tableName = $("#tableName").val();
			  tableDefinition = $("#tableDefinition").val();
			  attrName = $("#attrName").val();
			  attribute_type = $("#attribute_type").val();
			  attribute_length = $("#attribute_length").val();
			    $.ajax({
			      url: "add_values_in_linkedList", // url: "/findTables?dbName="+db_name,
			      //type: "GET",
			      data:{'database_name':database_name,
			    	  	'categoryName':categoryName,
			    	  	'tableName':tableName,
			    	  	'tableDefinition':tableDefinition,
			    	  	'attrName':attrName,
			    	  	'attribute_type':attribute_type,
			    	  	'attribute_length':attribute_length},
			    	  	dataType: "json",
			      //dataType: "text/String"
				success: function(data) {
			        console.log(data);
			        call_table(data);
			        }
			    });
			    if(database_name == '' || tableName == ''){
			    	alert("Database and Table Name cannot be empty");
			    }else{
			    	alert("added");
			    	$("#tableName").val('');
				    $("#attrName").val('');
				    $("#attribute_type").val('');
				    $("#attribute_length").val('');
			    }
			    
		  });
	  });
	var tables ='';
	function call_table(data){
	    $("#from_tbl_name").html('');
	    $('#from_tbl_name').append('<option disabled selected value=""> -- Select Table -- </option>');
	    $("#tablesFor_fromExcel").html('');
	    $('#tablesFor_fromExcel').append('<option disabled selected value=""> -- Select Table -- </option>');
	    $.each(data, function (i, item) {
            $('#from_tbl_name').append($('<option>',{
              value: item.tableName,
              text : item.tableName 
            }));
            $('#tablesFor_fromExcel').append($('<option>',{
                value: item.tableName,
                text : item.tableName 
              }));
          });
	    tables = data;
	  }
	
	 function fill_to_dropdown(){
	            $.each(tables, function (i, item) {
	              if($("#from_tbl_name").val() != item.tableName){
	                $("#to_tbl_name").append($('<option>',{
	                  value: item.tableName,
	                  text : item.tableName
	                }));            
	              }
	            });
	    }
	 
	 $(document).ready(function () {
		  $("#addRelation").click(function(){
			  from_tbl_name = $("#from_tbl_name").val();
			  to_tbl_name = $("#to_tbl_name").val();
			  relation = $("#relation").val();
			    $.ajax({
			      url: "add_values_in_relationList", // url: "/findTables?dbName="+db_name,
			      //type: "GET",
			      data:{'from_tbl_name':from_tbl_name,
			    	  	'to_tbl_name':to_tbl_name,
			    	  	'relation':relation},
			    	  	dataType: "json",
			      //dataType: "text/String"
				success: function(data) {
			        }
			    });
			    	alert("Relation added");
			    
		  });
	  });
	</script>
</body>
</html>