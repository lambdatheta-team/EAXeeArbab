<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 



<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha256-aAr2Zpq8MZ+YA/D6JtRD3xtrwpEz2IqOS+pWD/7XKIw=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" integrity="sha512-xmGTNt20S0t62wHLmQec2DauG9T+owP9e6VU8GigI0anN7OXLip9i7IwEhelasml2osdxX71XcYm6BQunTQeQg==" crossorigin="anonymous" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha256-OFRAJNoaD8L3Br5lglV7VyLRf0itmoBzWUoM+Sji4/8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.js" integrity="sha512-VvWznBcyBJK71YKEKDMpZ0pCVxjNuKwApp4zLF3ul+CiflQi6aIJR+aZCP/qWsoFBA28avL5T5HA+RE+zrGQYg==" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput-angular.min.js" integrity="sha512-KT0oYlhnDf0XQfjuCS/QIw4sjTHdkefv8rOJY5HHdNEZ6AmOh1DW/ZdSqpipe+2AEXym5D0khNu95Mtmw9VNKg==" crossorigin="anonymous"></script>
    <style type="text/css">	


	<style>
		body {
			margin-top : 10px;
/* 			border : 2px solid black; */
		}
		.container {
 			border : 2px solid black
		}

		.heading {
			text-align: center;
		}
		.variableType{
/* 			display: inline-block; */
/* 			width: 50% !important; */
/* 			border: 4px solid red; */
/* 			width: 10px; */
		}
        .bootstrap-tagsinput{
            width: 100%;
            height: 38px;
            overflow: auto;
        }
        .label-info{
            background-color: #17a2b8;
        }
        .label {
            display: inline-block;
            padding: .25em .4em;
            font-size: 75%;
            font-weight: 700;
            line-height: 1;
            text-align: center;
            white-space: nowrap;
            vertical-align: baseline;
            border-radius: .25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,
            border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }
        .values{
        	height: 42px
        }

        .values_div input{
			margin-top:2px;
        }
		.values_div input:focus {
/*   		    outline: none !important; */
 		    border-color: #719ECE;
 		    box-shadow: 0 0 10px #719ECE;
 		}

	</style>
    <title>Hello, world!</title>
  </head>
  <body>
  
  	<div class="container">
		<h1 class="heading mb-2">Meta-Model Variables</h1>
		
		<form class="form-group">
			<div class="row">
				<div class="col-sm">
					<input type="text" class="form-control mb-1 variableType" placeholder="Variable Type" required>
				</div>
				<div class="col-sm">
					<input type="text" class="form-control mb-1 variableType" placeholder="Variable Name" required>
				</div>
				<div class="col-sm values_div mb-1">
					<input type="text" class="form-control mb-1 values_input" value="" data-role="tagsinput"  placeholder="Values" required> 
				</div>
				<div class="col-sm">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
			</div>
		</form>
		
	</div>
	
	<div class="container">
		<table id="dtBasicExample" class="table table-striped table-bordered" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th class="th-sm"> Variable Type </th>
					<th class="th-sm"> Variable Name </th>
					<th class="th-sm"> Values </th>
				</tr>
			</thead>
			<tbody>
				<tr >
					<td>Tiger Nixon</td>
					<td>System Architect</td>
					<td>Edinburgh</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
				  <th class="th-sm"> Variable Type </th>
				  <th class="th-sm"> Variable Name </th>
				  <th class="th-sm"> Values </th>
				</tr>
			</tfoot>
		</table>
	</div>
  </body>
</html>