<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.io.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#tabs{
		background-color:#c2cfff;
		border: 1px solid black;
	}
</style>

<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://www.jqueryscript.net/demo/Simple-jQuery-Modal-Dialog-Box-Plugin-Dialog/dialog.css"/>
<link rel="stylesheet" type="text/css" href="https://www.jqueryscript.net/demo/Simple-jQuery-Modal-Dialog-Box-Plugin-Dialog/sunlight.default.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://www.jqueryscript.net/demo/Simple-jQuery-Modal-Dialog-Box-Plugin-Dialog/jquery.dialog.js"></script> 
<script src='https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.1/jquery.twbsPagination.min.js'></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script type="text/javascript">

$( document ).ready(function() {
	var createTbl = "";
	var tblName = "";
	
	$("#dbName").change(function() {
		insertTableDropdown();
		
	});
		function insertTableDropdown(){
		db_name = $('#dbName').val();
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
	    if(createTbl=='1'){
			$("#tableName").val(tblName);
			createTable();
	    }
		}
	  
		
		function getUrlVars() {
		    var vars = {};
		    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
		        vars[key] = value;
		    });
		    return vars;
		}
		
		var db_name = getUrlVars()["dbName"];
		tblName = getUrlVars()["tableName"];
		createTbl = getUrlVars()["createTable"];
		
		if(db_name!=null && tblName!=null){
		$("#dbName").val(db_name);
		$("#tableName").val(tblName);
		insertTableDropdown();
		}
		
		$("#getData").click(function(){
			createTable();
		});
			function createTable(){
			dbName = $("#dbName").val();
			tableName = $("#tableName").val();
			if(tableName == null){
				tableName = tblName;
			}
			$.ajax({
			      url: "findAttributes", // url: "/findAttributes?dbName="+db_name,
			      //type: "GET",
			      data:{'dbName':dbName,
			    	  	'tableName':tableName},
			    	  	dataType: "json",
				success: function(data) {
					console.log("DATA: "+data)
					var columns_length = data.length;
					var pages = columns_length/5;
					pages= pages.toFixed();
					
					if((columns_length/5)>pages){
						pages++;
					}
					if(pages>=2){
					 console.log("PAGINATION IF FOR COLUMN");
						 $("#paginationForColumns").empty();
						 $("#paginationForColumns").append('<ul id="pagination-demo" class="pagination-sm"></ul>');
						 $('#pagination-demo').twbsPagination({
							  totalPages: pages,
							  visiblePages: 6,
							  next: '>',
							  prev: '<',
							  first: '<<',
							  last: '>>',
							  onPageClick: function (event, page) {
								  
								  var tableHeaders = '';
								  var end = page*5;
								  var start = end-5;
								  var sub_data = data.slice(start,end);
								  if(page>=2){
									  sub_data.splice(0,0,data[0])
								  }
								  
								  console.log("SUB DATA"+sub_data);
							    //fetch content and render here
							    $.each(sub_data, function(i, val){
	                       			 tableHeaders += "<th>" + val + "</th>";
	                        
	                   			 });
							    $("#thead").empty();
							    $("#addDataForm").empty();
			                    $("#thead").append('<tr>' + tableHeaders + '</tr>');
			                    show_data(dbName, tableName, sub_data)
							  } });
					 
					}else{
						$("#paginationForColumns").empty();
						console.log("PAGINATION ELSE FOR COLUMN");
						 var tableHeaders = '';
		                    $.each(data, function(i, val){
		                        tableHeaders += "<th>" + val + "</th>";
		                        
		                    });
		                    $("#thead").empty();
		                    $("#thead").append('<tr>' + tableHeaders + '</tr>');
		                    //$("#tableDiv").find("table thead tr").append(tableHeaders);  
		                     
						show_data(dbName, tableName, data)
					}
	                    
	                    
	                    //$("#tableDiv").find("table thead tr").append(tableHeaders);  
	                $('#table_h1').empty();
					$('#table_h1').append('Displaying Data From Table')
			        }
			    });
		}
		
		
		$("#addData").click(function(){
			dbName = $("#dbName").val();
			tableName = $("#tableName").val();
			if(dbName == null || tableName== null){
				alert("Select Database & Table");
			}
			else{
			$.ajax({
			      url: "findAttributes", // url: "/findAttributes?dbName="+db_name,
			      //type: "GET",
			      
			      data:{'dbName':dbName,
			    	  	'tableName':tableName},
			    	  	dataType: "json",
				success: function(data) {
					var data_length =  data.length;
                    var tabs = data_length/5;
                    tabs= tabs.toFixed();
                    if((data_length/5)>tabs){
    					tabs++;
    				}
                    
					 var formData="";
					 formData += '<div id="tabs">';
					 formData +='<ul>'
					 for(var i = 1; i<=tabs; i++){
						 formData +='<li><a href="#tabs-'+i+'">T'+i+'</a></li>';
						 }
					 formData+= '</ul>';
					 for(var tab = 1; tab<=tabs; tab++){
						 formData += '<div id="tabs-'+tab+'"><form>';
						 var end = tab*5;
						  var start = end-5;
						  var sub_data = data.slice(start,end);
						  $.each(sub_data, function(i, val){
							  if(val!='id'){
			                    	formData+='<div class="form-group"><label>'+val+'</label>';
			                        
			                    	formData+='<input class="form-control" id="'+val+'21" type="text" name="'+val+'" required="required"></div>';
			                    	}
						  });
						  formData += '</form></div>'
						 }
					 console.log(formData)
					 $( function() {
						    $( "#tabs" ).tabs();
						  } );
					 
					 
					 
	                   /*  $.each(data, function(i, val){
	                    	if(val!='id'){
	                    	
	                    	
	                       
	                    	formData+='<div class="form-group"><label>'+val+'</label>';
	                        
	                    	formData+='<input class="form-control" id="'+val+'21" type="text" name="'+val+'" required="required"></div>';
	                    	}
	                    }); */
	                    /*
	                    $.dialog({
	            		    "body": $('<div/>' ).html("<h1>HELLO</h1>"),
	            		    "title": "Add Data",
	            		    "show": true,
	            		    "width": 500,
	            		    "height": 500,
	            		    "footer": '<button class=\"dialog-button\" data-dialog-action=\"hide\">Cancel</button><button id="btnsave" class="btn btn-Submit" type="button">Save Data</button>'
	            		  }); */
	                    
	                   	$("#tableDiv").empty();
	                    $("#addDataForm").empty();
	                    $("#addDataForm").append(formData+'<button id="btnsave" class="btn btn-Submit" type="button">Save Data</button>'); 
	                    
	                    //$("#tableDiv").find("table thead tr").append(tableHeaders);  
	                     
			        console.log(data);
			        form_submit(dbName, tableName, data);
			        }
			    	  	
			    });
			}
		});
		
	});
	
	function form_submit(dbName, tableName, attributes){
		$("#btnsave").click(function () {
			var formData = [];
				$.each(attributes, function(i, val1){
					formData.push($('#'+val1+'21').val())
	             });
		$.ajax({
	      url: "addOrUpdateData", // url: "/findTables?dbName="+db_name,
	      //type: "GET",
	      data: {'dbName':dbName,
	    	  	'tableName' :tableName,
	    	  	'attributes' :attributes,
	    	  	'formData' :formData
	      },
	      //dataType: "text/String"
		success: function(data) {
	        }
	    });
			location.reload();
    });
		

	}
	
	var attributesForEditData = [];
	
	function show_data(dbName, tableName, attributes){
		attributesForEditData = attributes;
		console.log(attributes)
		$.ajax({
		      url: "show_table_data", // url: "/findAttributes?dbName="+db_name,
		      //type: "GET",
		      data:{'dbName':dbName,
		    	  	'tableName':tableName,
		    	  	'attributes':attributes
		    	  	},
		    	  	dataType: "json",
			success: function(data) {
				var count;
				var count1=0;
                $.each(data, function(i, val){
                	count = val.length;
                });
                var pages = count/5;
				pages= pages.toFixed();
				
				if((count/5)>pages){
					pages++;
				}
				
				
				console.log("pagesRows: "+pages)
				if(pages>=2){
					
				$("#paginationForRows").empty();
						 $("#paginationForRows").append(' <span id="pagination-demo1" class="pagination-sm">Rows:</span>');
						 $('#pagination-demo1').twbsPagination({
							  totalPages: pages,
							  visiblePages: 6,
							  next: '>',
							  prev: '<',
							  first: '<<',
							  last: '>>',
							  onPageClick: function (event, page) {
                
                var tableRows = "";
                var end = page*5;
				var start = end-5;
				
				
				
            	for(var abc=start;abc<end;abc++){
            		var idd= '';
            		tableRows += '<tr>'
                $.each(attributes, function(i, val_att){

	                  $.each(data, function(i, val){
	//                	  console.log(val[0])
							if(i==val_att){
								tableRows += "<td>" + val[abc] + "</td>";
							
							}
	                      if(i=='id'){
	                    	  idd = val[abc]
	                      }
	                  });

                });
            	tableRows +='<td align="center"><button  class="btn btn-info" onclick="javascript:edt_id('+idd+')">EDIT</button></td><td align="center"><button  class="btn btn-danger" onclick="javascript:delete_id('+idd+')">DELETE</button></td>'
              
                tableRows += '</tr>'
            	}
                
                  $("#tbody").empty();
                  $("#tbody").append(tableRows);
                  //$("#tableDiv").find("table thead tr").append(tableHeaders);  
                   
		        }
		    });
			}else{
				$("#paginationForRows").empty();
				var tableRows = "";
				console.log("PAGINATION ELSE FOR ROWS");
				for(var abc=0;abc<count;abc++){
					var attributes1 = attributes;
					var idd= '';
					tableRows += '<tr>'
                $.each(attributes, function(i, val_att){

	                  $.each(data, function(i, val){
	//                	  console.log(val[0])
							if(i==val_att){
								console.log("Columns: "+attributes);
								console.log("Length: "+val.length)
	                      tableRows += "<td>" + val[abc] + "</td>";
							}
	
							if(i=='id'){
		                    	  idd = val[abc]
		                      }
	                      
	                  });

                });
					tableRows +='<td align="center"><button  class="btn btn-info" onclick="edt_id('+idd+')">EDIT</button></td><td align="center"><button  class="btn btn-danger" onclick="javascript:delete_id('+idd+')">DELETE</button></td>'
					tableRows += '</tr>'
            	}
                
                  console.log(tableRows)
                  $("#tbody").empty();
                  $("#tbody").append(tableRows);
                  //$("#tableDiv").find("table thead tr").append(tableHeaders); 
			}
			} });
		
	}
	
	function edt_id(id)
	{
		dbName = $("#dbName").val();
		tableName = $("#tableName").val();
		//$('#options').empty();
		 $.ajax({
		      url: "getDataForForm", // url: "/findAttributes?dbName="+db_name,
		      //type: "GET",
		      data:{'dbName':dbName,
		    	  	'tableName':tableName,
		    	  	'id':id,
		    	  	'attributes':attributesForEditData
		    	  	},
		    	  	dataType: "json",
			success: function(data) {
				var count;
                $.each(data, function(i, val){
                	count = val.length;
                });
                var formData="";
                for(var abc=0;abc<count;abc++){
                	var idd= '';
                $.each(attributesForEditData, function(i, val_att){

	                  $.each(data, function(i, val){
	//                	  console.log(val[0])
							if(i==val_att){
								formData+='<div class="form-group"><label>'+val_att+'</label>';
					             if(val_att=='id'){
					            	 formData+='<input class="form-control" id="'+val_att+'21" value="'+val[abc]+'" type="text" name="'+val_att+'" required disabled></div>';
					             }else{
					         	formData+='<input class="form-control" id="'+val_att+'21" value="'+val[abc]+'" type="text" name="'+val_att+'" required></div>';
					             }
					        }
							if(i=='id'){
		                    	  idd = val[abc]
		                      }
	                      
	                  });

                });
                $.dialog({
        		    "body": $('<form/>' ).html(formData),
        		    "title": "Update Data",
        		    "show": true,
        		    "width": 500,
        		    "height": 500,
        		    "footer": '<button class=\"dialog-button\" data-dialog-action=\"hide\">Cancel</button><button id="btnedit" class="dialog-button" type="button">Update Data</button>'
        		  });
					//$("#tableDiv").empty();
			        // $("#addDataForm").empty();
			         //$("#addDataForm").append(formData+'<button id="btnedit" class="btn btn-Submit" type="button">Update Data</button>');
			         form_submitForUpdate(dbName, tableName, attributesForEditData, idd);
            	}
			}
				
			});
	}
	
	function form_submitForUpdate(dbName, tableName, attributes, id){
		$("#btnedit").click(function () {
			var formData = [];
				$.each(attributes, function(i, val1){
					formData.push($('#'+val1+'21').val())
	             });
		$.ajax({
	      url: "editRow", // url: "/findTables?dbName="+db_name,
	      //type: "GET",
	      data: {'dbName':dbName,
	    	  	'tableName' :tableName,
	    	  	'attributes' :attributes,
	    	  	'id':id,
	    	  	'formData' :formData
	      },
	      //dataType: "text/String"
		success: function(data) {
			alert("Successfully Updated");
			location.reload();
			//location.href = location.href + '?dbName='+dbName+'&tableName='+tableName+'&createTable=1'

	        }
	    });
    });
		

	}
	
	function delete_id(id)
	{
		if(confirm('Sure to Delete ?'))
		{
		dbName = $("#dbName").val();
		tableName = $("#tableName").val();
		$.ajax({
		      url: "deleteRow", // url: "/findTables?dbName="+db_name,
		      //type: "GET",
		      data: {'dbName':dbName,
		    	  	'tableName' :tableName,
		    	  	'delete_id':id
		      },
		      //dataType: "text/String"
			success: function(data) {
				alert("Successfully Deleted");
				location.reload();
				//console.log(location.href)
				//var locationString = location.href;
				//var splits = locationString.split('?');
				//console.log(splits)
				//location.href = splits[0] + '?dbName='+dbName+'&tableName='+tableName+'&createTable=1'
				//window.location.replace(window.location.href + '?dbName='+dbName+'&tableName='+tableName+'&createTable=1')

		        }
		    });
		 
		}
	}
	
	
	
	
	</script>

<meta charset="ISO-8859-1">
<title>User Panel</title>
</head>
<body>


<div  class="container">
 <div class="row">
	<div id="options" class="col-sm-3">

				<br>
				<br>
			<div class="form-group">
				<label>Select Database</label>	
				<select class="form-control" type="text" name="db_Name" id="dbName" required="required">
					<option disabled="disabled" value="-- Select Database  --" selected="selected">-- Select Database  --</option>
					<c:forEach items="${dbList}" var="databases" varStatus="status">
						<option value="${databases.dbName}">${databases.dbName}</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group" id="checkTable">	
				<label>Select Table</label>				
				<select class="form-control" id="tableName" name="tableName">
					<option disabled="disabled" value="-- Select Table  --" selected="selected" >-- Select Table  --</option>
				</select>
			</div> <button type ="button" class="btn btn-Submit" id="getData" >Get Data</button>
			<button type ="button" class="btn btn-Submit" id="addData" >Add Data</button>
			
	</div>
	<div class="col-sm-9">
	<div align="center">
			<h1 id="table_h1" align="Center"></h1>
			
			
			<div id="tableDiv">
			<div class="wrapper" id ="paginationForColumns">
	

</div>
				<table class="display db-table" >
					<thead id="thead">
					</thead>
					<tbody id = "tbody">
					</tbody>
				</table>
				
				<div class="wrapper" id ="paginationForRows">

</div>
			</div>
			
			
</div>
<div id="dialog">
<form method="" action="" id="addDataForm" enctype="multipart/form-data">		

			</form>
			<br><br>
			</div>
</div>
</div>
</div>
</body>
</html>