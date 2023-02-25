<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>

<style>

table, th, td 
{
  border: 1px solid black;
  padding: 5px, 5px, 5px, 5px;
}

</style>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script type="text/javascript">
$( document ).ready(function() {
	
	$( ".getType" ).click(function() {
		var abac = $(".getType").val();
		alert(abac);
		});
	
	
});

var _validFileExtensionsForExcel = [".xls", ".xlsx", ".xlsm"];   

var _validFileExtensionForXML = [".xml"];    
function ValidateSingleInput(oInput,type) {
	if(type=='excel'){
		_validFileExtensions = _validFileExtensionsForExcel;
	}
	else if(type =='xml'){
		_validFileExtensions = _validFileExtensionForXML;
	}
    if (oInput.type == "file") {
        var sFileName = oInput.value;
         if (sFileName.length > 0) {
            var blnValid = false;
            for (var j = 0; j < _validFileExtensions.length; j++) {
                var sCurExtension = _validFileExtensions[j];
                if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                    blnValid = true;
                    break;
                }
            }
             
            if (!blnValid) {
                alert("Invalid File Format");
                oInput.value = "";
                return false;
            }
        }
    }
    return true;
}

</script>



</head>
<body>
<div class="container">
	<form method="POST" action="DbToExcel" enctype="multipart/form-data">
		<h3>Add Data From Database To Excel</h3>
			<div class="form-group addAttribute">
				
				<select class="form-control" type="text" name="db_Name" onchange="call( this.value)" >
						<option disabled selected="selected">-- Select Database --</option>
						<c:forEach items="${dbList}" var="contact" varStatus="status">
							<option id="getDbName">${contact.dbName}</option>
						</c:forEach>
				</select>
				
				<br>
				
				<select id="tbl_id" name="tableName" class = "form-control" onchange="FILE ( this.value)" >
				<option id="getTablename">---- Select Table ----</option>
				
				</select>	
				<br>
				<br>
					
					





<!-- 				<select id="ele_id" class = "form-control"> -->
<!-- 				<option>---- Select Element ----</option> -->
<!-- 				</select>	 -->
<!-- 				<br> -->
<!-- 				<br> -->
					
				
				<br>
				<br>
				
				
				<div class="container py-4">  
	        <h4 class="text-center text-uppercase">Element Data</h4>  
	        <div id="dataTable_wrapper"></div>  
	        <table id="ele_id" class="table table-bordered table-striped" >  
	            <thead>  
	                <tr>  
	                    <th>Name</th>  
	                    <th>ID</th>  
	                    <th>Description</th>  
	                    <th>Repository Status</th>  
	                    <th>Action Required?</th>
	                    <th>Action Status</th>    
	                </tr> 
	                
	                <tr>
	                	<td></td>
	                </tr> 
	            </thead>  
	        </table>  
    	</div> 
					
			<div class="form-group">
				<label>Select File</label>
				<input  type="file" name="file" onchange="ValidateSingleInput(this,'excel');"  accept=".xls,.xlsx,.xlsm"/>
			</div>
		    <button type="submit" class="btn btn-default">Submit</button>
		</form>
		
		
		<div align="center">
       	 	<h1>Excel View Data</h1>
       	 	<h3><a href="/toExcel">Download Excel Document</a></h3>
    	</div>
		
		<br><br><hr><br><hr>
		
		
		<a href="back_button"><button id="back_button" class="btn btn-primary"> Back </button></a>
		</div>
</body>
<script>
function call(dbName){
	//let getdbName = document.getElementById("getDbName").value;
	console.log("dbName", dbName);
	$.ajax({
	      	url: "tblData", // url: "/findTables?dbName="+db_name,
		      //type: "GET",
			type: "POST",
			data: {
		    	  	'dbName' :dbName,
				   },
				    //dataType: "text/String"
			success: function(data) {	
				for (var i = 0; i < data.length; i++)
				{	
					let remove_ = data[i].replaceAll('_', ' ')

 					let separateWord = remove_.toLowerCase().split(' ');
					//console.log("separateWord", separateWord.length)
					if(separateWord.length == 2){
						let separateWord_1 = separateWord[0].charAt(0).toUpperCase() +
						separateWord[0].substring(1)
						
						let separateWord_2 = separateWord[1].charAt(0).toUpperCase() +
						   separateWord[1].substring(1)

						var TableName = separateWord_1 +" "+ separateWord_2; 
// 						for (var i = 0; i < separateWord.length; i++) {
// 						   separateWord[i] = separateWord[i].charAt(0).toUpperCase() +
// 						   separateWord[i].substring(1);
// 						}
					}
					else{
						let separateWord_1 = separateWord[0].charAt(0).toUpperCase() +
						separateWord[0].substring(1);
						
						TableName = separateWord_1; 
						//console.log("separateWord_1", separateWord_1)
					}					
					
					console.log(" ", TableName)
// 					data = data[i].replaceAll('_', ' ');
// 					console.log("data", data);
					var x = document.getElementById("tbl_id");
					var option = document.createElement("option");
					option.text = data[i];
					x.add(option);
						
				}				
				
				
				
			}
				   
	  });
}

function FILE (tableName){
	//let getdbName = document.getElementById("getDbName").value;
	console.log("tablename", tableName);
	$.ajax({
	      	url: "toExcel", // url: "/findTables?dbName="+db_name,
		      //type: "GET",
			type: "POST",
			data: {
		    	  	'tableName' :tableName,
				   },
				    //dataType: "text/String"
			success: function (data) {	
				console.log("data", data)
				for (var i = 0; i < data.length; i++)
				{	
 					
					ElementName = data[i];
					console.log(" ", ElementName)
					var x = document.getElementById("ele_id");
					var td = document.createElement("td");
					td.text = data[i];
					x.append(td);
						
				}				
				
				
				
			}
				   
	  });
}


</script>
</html>






