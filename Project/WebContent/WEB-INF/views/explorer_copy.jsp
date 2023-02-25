<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:message code=""/>
<!DOCTYPE html>
<html>
<head>


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
	<!-- Modal table -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"> -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
    
    <link rel="stylesheet" href="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569006288/BBBootstrap/choices.min.css?version=7.0.0">
    <script src="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569006273/BBBootstrap/choices.min.js?version=7.0.0"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<!--     <script src="WebContent\js\script.js"></script> -->
<!--     \WebContent/resources/js/ganttChart.js -->
    <script type="text/javascript" src="<c:url value="/resources/js/ganttChart.js" />"></script>
    
<!--     navigation.js -->
<script type="text/javascript" src="<c:url value="/resources/js/navigation.js" />"></script>
<!--     navigation.js -->
<!--     <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'> -->
<!--     <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script> -->
<!--     <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script> -->
    

<!--    HEADER LIB -->
<link href="<c:url value="/resources/css/theme-explorer.css"/>" rel="stylesheet">

<!--    HEADER LIB -->
<!-- TagsInput -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" integrity="sha512-xmGTNt20S0t62wHLmQec2DauG9T+owP9e6VU8GigI0anN7OXLip9i7IwEhelasml2osdxX71XcYm6BQunTQeQg==" crossorigin="anonymous" />    
    
<meta charset="utf-8">
    
<meta charset="ISO-8859-1">
<title>EAXEE</title>

<%-- <link rel="icon" href="<c:url value="resources/images/eazee-Logo12.png"/>" type="image/icon type" > --%>
<link rel="icon" href="<c:url value="resources/images/snapping-removebg.png"/>" type="image/icon type" >

<!-- Information_modal css here -->
<link href="<c:url value="/resources/css/modal.css"/>" rel="stylesheet">

<!-- updateFormModal css here -->
<link href="<c:url value="/resources/css/updateFormModal.css"/>" rel="stylesheet">
<style>
	.apexcharts-menu-item{
		color:black;
	}
	.GanttFieldSet {
/* 		border: 2px solid green; */
	}
	
	.GanttDiv {
		display: flex;
		justify-content: space-between;
/* 		align-items: left; */
		margin: 5px;
	}
	
	.GanttDiv > Select{
		width: 50% !important;
		padding: 2px;
		border-radius: 3px;
	}
	
	.GanttDiv > input{
		width: 50%;
		background-color: white;
    	color: black !important;
    	border: 1px solid !important;
/*     	text-align: center; */
    	padding: 2px;
    	border-radius: 3px;
	}
	
	#dialogGanttChart{
	    background: #e3fdff !important;
	    width: 100% !important;
	    display: block;
	    padding: 5px !important;
	    margin-top: 10px;
	}
	.apexcharts-menu-item{
		color: black;
	}    

	.apexcharts-tooltip {
    background: #f3f3f3;
    color: orange;
    transform: translateX(10px) translateY(10px);
	  overflow: visible !important;
	  white-space: normal !important;
  }
  .apexcharts-tooltip span {
	  padding: 5px 10px;
	  display: inline-block;
	}
	
	.arrow_box {
  position: relative;
  background: #555;
  border: 2px solid #000000;
}
.arrow_box:after, .arrow_box:before {
  right: 100%;
  top: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.arrow_box:after {
  border-color: rgba(85, 85, 85, 0);
  border-right-color: #555;
  border-width: 10px;
  margin-top: -10px;
}
.arrow_box:before {
  border-color: rgba(0, 0, 0, 0);
  border-right-color: #000000;
  border-width: 13px;
  margin-top: -13px;
}
</style>
<!-- chartTabs css here -->
<link href="<c:url value="/resources/css/chartTabs.css"/>" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
  
<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Bootstrap Link For Navbar Starts Here-->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<!-- Bootstrap Link For Navbar Ends Here -->

 <!-- TAGS INPUT -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.js" integrity="sha512-VvWznBcyBJK71YKEKDMpZ0pCVxjNuKwApp4zLF3ul+CiflQi6aIJR+aZCP/qWsoFBA28avL5T5HA+RE+zrGQYg==" crossorigin="anonymous"></script>


<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script type="text/javascript">
		mxBasePath = "<c:url value="/resources/js/src" />";
	</script>

<!-- google translate -->
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

	<!-- Loads and initializes the library -->
	<script type="text/javascript" src="<c:url value="/resources/js/mxClient.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/xmlToJSON.js" />"></script>
<!-- 	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
	
	<!--  -->
	<script type="text/javascript" src="<c:url value="/resources/js/translateText.js" />"></script>
	<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/display-none.css"/>">
	<!--  -->
	<!-- For Tabs -->
	
 <script defer>
  $( function() {
    $( "#tabs_1" ).tabs();
  } );
  
//   $(document).ready(function () {
// 		getDeletedObjects();
// 		getCompleteTree();
// 		getGraphNames();  
//   });
  

	<!-- Spring:messages starts -->
	    var header_value= '<spring:message code="information" />';
	    var save_changes= '<spring:message code="save_changes" />';
	    var no_data_found_modal= '<spring:message code="no_data_found_modal" />';
	    var showing_0_out_0_entries= '<spring:message code="showing_0_out_0_entries" />';
	    var lambdatheta = '<spring:message code="lambdatheta" />';
	    var Navigation_Created_Successfully= '<spring:message code="Navigation_Created_Successfully"/>';
	<!-- Spring:messages ends -->
</script>

<style>
#palete img {
    width: 32px !important;
    height: 32px !important;
    margin: 2px !important;
}

img.mxToolbarModeSelected{
border-style: unset !important;
}

img.mxToolbarModeSelected:hover{
background:#c6ecef;
}

img.mxToolbarMode:hover{
background:#c6ecef;
}
	#changeHistoryMyPageTable{
/*  		border: 2px solid #0D7E8A; */
		height: 85vh;
		padding: 10px;
/* 		margin-right: 10px; */
/*     	margin: 10px 10px 10px 10px; */
    	background-color: #E3FDFF;
	}
	
	#changeHistoryMypageButtonsDiv{
		display: flex;
	}
/* 	#changeHistoryMypageButtonsDiv > button{ */
/* 		width:110px; */
/* 		border-radius: 5px; */
/* 		margin: 0px 2px; */
/* 		padding: 5px; */
/*  		background-color: #0c808d; */
/*  		border-color: lightseagreen; */
/* 		color: white; */
/* 		border-left: none; */
		
/* 	} */
	.mp-btn {
/* 	  border: none; */
/* 	  outline: none; */
/* 	  padding: 10px 16px; */
/* 	  background-color: #f1f1f1; */
/* 	  cursor: pointer; */

		width:110px;
 		border-radius: 2px; 
 		margin: 0px 0px; 
		padding: 5px;
		background-color: #0c808d;
		border: 1px solid #1f909dd9;
/*  		outline: none;  */
/*  		border-color: lightseagreen;  */
		color: white;
/*  		border-left: none;  */
/*  		border: none; */
	}
		
/* Style the active class (and buttons on mouse-over) */
	.active1{
		background-color: #2c8c97;
		color: white;
		border: 2px solid;
		
	}
	.mp-btn:hover{
		background-color: #2c8c97;
		color: white;
	}
	.mp-btn:focus {
		outline:0;
	}
	
/* 	#changeHistoryMypageButtonsDiv > button:hover, button:focus { */
/* 		outline: none; */
/* 		background-color: #2c8c97; */
/* 	} */

/* 	.dataTables_filter, .dataTables_info { */
/* 		color: black; */
/* 		display: block;  */
/* 	} */
/* 	.dataTables_filter input{ */
/* /* 		color: black; */ */
/* 		background-color: white !important;; */
/* 	} */
	
	#myPageTable_filter{
	    display: flex;
	    flex-direction: row-reverse;
	    justify-content: space-between;
	    align-items: center;
	}
	
	.customFilter{
		margin-left: 1%;
		color: black;
	}
	
	.customFilter > input{
	    padding: 3.5px 7px;
	    height: 27.38px;
	    border-radius: 3px;
	    margin: 0px 10px;
		width: 5%;
	}
	
	.disabled {
		pointer-events: none;
		opacity: 0.7;
	}
	
</style>
	
	
	
	
<script type="text/javascript">
var dbName = 'amf';
var tableView = true;
var divId = 'currentFormDivId';
var divIdCount = 0;
var allDivIds = [];
var openedGraphID = '';
var historyTabItems = [];
var numItems = 1;
var stColor = '';
var graph_name = '';
var graphSaveButton = {};
var navigationView = false;


function loader_image(){
	$("#loader_image").animate({left:15, opacity:"show"}, 2500);
}

function loader_image_body(){
	//$("#loader_image_body").animate({opacity:"show"}, 2500);
	//$('body>*:not(#loader_image_body)').css("filter","blur(10px)");
 	//$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(10px)");
 	$("body").css("pointer-events", "none");
}

function getCompleteTree(){
	
	
	//$("#loader_image_palete").hide();
	if(paleteCreated==0)
		callGraph();
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "block");
	
$.ajax({
    url: "getCompleteTree", // url: "/findTables?dbName="+db_name,
  method: 'get',
  async:true,
//dataType: 'json',
    //type: "GET",
    data: {},
    beforeSend: function() {
    	loader_image();
//     	$("#loader_image").animate({left:15, opacity:"show"}, 5000);
        //$("#loader_image").show();
        $("#left_pane").hide();
    },
    //dataType: "text/String"
    success: function (data) {
    	//alert("done")
//   	console.log(data);
  	var ghj = '<ul class="nested">';
  	
  		
  	ghj+= data;
  	
  	ghj+= '</ul>';
  	$('#lt').append(ghj);
//   	console.log(ghj)
  	crt();
  	//addElement(data);
  		$("#loader_image").hide();
  		$("#left_pane").show();
	                },
//     error: function(XMLHttpRequest, textStatus, errorThrown) {
//         alert("Please Upload Metamodel File"); 
//         window.location.href = "metamodel_user";
//     }
error: function(ts) {
	if(ts.responseText.includes("The system cannot find the file specified") || ts.responseText.includes("No such file or directory")){
		alert("Please Upload Metamodel File"); 
     	window.location.href = "metamodel_user";
		}
	}
  });
  
}


function getCompleteRelationsTree(){
	
$.ajax({
    url: "getCompleteRelationsTree", // url: "/findTables?dbName="+db_name,
  method: 'get',
    //type: "GET",
    data: {},
    success: function (data) {
	  	var ghj = '<ul class="nested">';
	  	
	  		
	  	ghj+= data;
	  	
	  	ghj+= '</ul>';
	  	$('#lt_relationship').append(ghj);
	},
error: function(ts) {
		if(ts.responseText.includes("The system cannot find the file specified") || ts.responseText.includes("No such file or directory")){
			alert("Please Upload Metamodel File"); 
	     	window.location.href = "metamodel_user";
		}
	}
  });
  
}

function getCompleteRelationConnectorsTree(){
	
	$.ajax({
	    url: "getCompleteRelationConnectorsTree", // url: "/findTables?dbName="+db_name,
	  method: 'get',
	    //type: "GET",
	    data: {},
	    success: function (data) {
		  	var ghj = '<ul class="nested">';
		  	ghj+= data;		  	
		  	ghj+= '</ul>';
		  	$('#lt_relationship_connector').append(ghj);
		},
	error: function(ts) {
			if(ts.responseText.includes("The system cannot find the file specified") || ts.responseText.includes("No such file or directory")){
				alert("Please Upload Metamodel File"); 
		     	window.location.href = "metamodel_user";
			}
		}
	  });
	  
	}
	
function getDeletedObjects(){
	$.ajax({
	    url: "getDeletedTree", // url: "/findTables?dbName="+db_name,
	  	method: 'get',
	  	async: true,
	    data: {},
	    /* beforeSend: function() {
	    	loader_image();
	        $("#left_pane").hide();
	    }, */
	    success: function (data) {
		  	$('#recycle_bin_list_for_object_elements').append(data);
		  	//crt();
		  	$("#loader_image").hide();
		  	$("#left_pane").show();
		}
	  });
}



function refreshTree(){
	  $('#lt').empty();
	  $.ajax({
		  url: "getCompleteTree", 
		  method: 'get',
		  data: {},
		  beforeSend: function() {
			  loader_image();
// 			  $("#loader_image").animate({left:5, opacity:"show"}, 5000);
			  //$("#loader_image").show();
		      $("#left_pane").hide();
		      $("body").css("cursor", "progress");
		  },
		  success: function (data) {
			  $("body").css("cursor", "default");
			  var ghj = '<ul class="nested">';
			  ghj+= data;
			  ghj+= '</ul>';
			  $('#lt').append('<p style="margin-bottom:0px;" class="caret">LambdaTheta</p>'+ghj);
			  crt();
			  $("#loader_image").hide();
			  $("#left_pane").show();
		  },
	 });
	  
	  getGraphNames();
	  $('#recycle_bin_list_for_object_elements').empty();
	  getDeletedObjects();
}

function getRoadmap(roadMapName, id,companyName, parentID, folderID){
	console.log("get roadmap function");
	console.log(roadMapName+" "+id+"  "+folderID+"  "+companyName+"  "+parentID)
	console.log("----------------------------------")
	changeHistoryModelpage(); 
	$("#chart").show();
	$("#changeHistoryMyPageTable").hide();
	$("#apexchartstyei9slx").hide();
// 	$("#paleteDiv").hide();
// 	$("#graphId").hide();
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "none");
	$("#matrix").css("display", "none");
	$("#catalog").css("display", "none");
	$( "#historyList" ).css("display", "none");
// 	var current_ID = divId+divIdCount++;
	var current_ID = id;
// 	console.log("current_ID: ",current_ID);
	allDivIds.push(current_ID);
  	var clsName = roadMapName;

	console.log(allDivIds,"allDivIds")
	$.each( dictionaryXML, function( key, value ) {
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
	});
	$.each(allDivIds, function(i, val){
							console.log("val: ",val)
							$( "#"+val+"11" ).css("background", "");
						});
	
  	
  	if(historyTabItems.includes(clsName) == false){
  		$("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"> <span class="close_image" onclick="closeRoadmapDiv(\''+current_ID+'\', \''+roadMapName+'\',\''+companyName+'\',\''+parentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="getRoadmap(\''+roadMapName+'\',\''+current_ID+'\',\''+folderID+'\',\''+companyName+'\',\''+parentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/road.svg"/>"><br/>'+roadMapName+'</a></div></div>');
        //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
        $("#history_tab").css("display", "flex")
        historyTabItems.push(clsName);
        numItems = $('.column').length;
		$(".history_page_no").html(numItems)
		$( "#"+current_ID.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
    }
  	$( "#"+current_ID.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");

	$("#element_title").empty();
	$("#chart").show()
	$.ajax({
	    url: "getRoadMapNames", // url: "/findTables?dbName="+db_name,
	 	method: 'get',
	    data: {'id':id,
	    	'roadMapName':roadMapName,
	    },
	    success: function (data) {
			$('#'+folderID).append('<li id="'+roadMapName+id+'" class="model_list" onclick="getRoadmap(\''+roadMapName+'\',\''+id+'\',\''+folderID+'\',\''+companyName+'\',\''+parentID+'\')\" on_context_menu_remove_roadmap(\''+id+'\',\''+roadMapName+id+'\',\''+roadMapName+folderID+'\',\''+roadMapName+'\',\''+companyName+'\',\''+parentID+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+roadMapName+'</li>');
		  	
		  	var roadMap_name = data[0]['roadmapName'];
		  	var ElementVal = data[0]['element'];
		  	var StartActDate = data[0]['startDate'];
		  	var EndActDate = data[0]['endDate'];
		  	var legendData = data[0]['legend']
		  	
		  	var listLegend = [];
		  	
		  	$.ajax({
				type: "POST",
				url: "getListLegendValues",
				async: false,
				data: {ElementVal, legendData},
				success: function(data)
				{	
					let value = data.toString();
					listLegend = value.split(";");
				}
		  	});
		  	
		  	$("#element_title").show().text(roadMap_name);
		  	$.ajax({
				type: "POST",
				
				data: {ElementVal, StartActDate, EndActDate, legendData},
				url: "getTimeLineData",
				success: function(data)
				{	
				$("#chart").empty();
				console.log("7777 ",listLegend);
				const leg = listLegend;
// 				const leg = ["Null","Proposed","Active","Phasing Out","Retired"];
				var my_array = [];
				var my_legend = [];
// 				var listofList = [];
				var datalist = {};
				
				for(let i=0; i<leg.length; i++){
					datalist[leg[i]] = {'data':[], "name": "" };
				}
				console.log("before: ",datalist)
				
				for(let i=0; i<leg.length; i++){
					for(let j=0; j<data.length; j++){
						console.log("startDate: "+data[j]['startDate']+" end date: "+data[j]['endDate'])
						if (data[j]['startDate'] =="1900-01-01" || data[j]['endDate'] =="1900-01-01" ){
							continue;
						}
						if(leg[i] == data[j]['legend']){
							let object1 = {
									x:	data[j]['element'],
									y:	[ new Date(data[j]['startDate']).getTime(), new Date(data[j]['endDate']).getTime()]
								};
								datalist[leg[i]].data.push(object1);
								datalist[leg[i]].name =  leg[i]
						                	}
						     	}
								
						}
				var new_array = [];
				
				let obj = Object.values(datalist)
				let keys = Object.keys(datalist)
				
				for(let i=0; i< Object.values(datalist).length; i++){
							new_array.push({ "name":keys[i], "data":obj[i].data })
				}
				
				
				

				

				    
				console.log("new_array: ",new_array);
				var options = 
				{
					series: new_array,
					chart: {
		          	height: 350,
		          	type: 'rangeBar'
		        },
		        plotOptions: {
		          bar: {
		            horizontal: true,
		            barHeight: '50%',
		            rangeBarGroupRows: true
		          }
		        },
// 		        colors: [
// 		         "#008FFB", "#00E396", "#FEB019", "#FF4560", "#775DD0",
// 		         "#3F51B5", "#546E7A", "#D4526E", "#8D5B4C", "#F86624",
// 		         "#D7263D", "#1B998B", "#2E294E", "#F46036", "#E2C044",
// 					 "#008FFB", "#FEB019", "#FEB019"
// 		       ],
		       fill: {
		           type: 'solid'
		         },
		        xaxis: {
		          type: 'datetime',
		          
		        },
		        
		        dataLabels: {
		              enabled: true,
		              formatter: function(val, opts) {
		                var label = opts.w.globals.labels[opts.dataPointIndex]
		                var a = moment(val[0])
		                var b = moment(val[1])
		                var diff = b.diff(a, 'days')
//			                return label + ': ' + diff + (diff > 1 ? ' days' : ' day')
						return + diff + (diff > 1 ? ' days' : ' day')
		              },
		              style: {
		                colors: ['#f3f4f5', '#fff']
		              }
		            },
		        legend: {
		        	showForZeroSeries: true,
		        	position: 'left',
		          },
		         tooltip: {
// 		           custom: function(opts) {
// 		             const fromYear = new Date(opts.y1).getFullYear()
// 		             const toYear = new Date(opts.y2).getFullYear()
// 		             const values = opts.ctx.rangeBar.getTooltipValues(opts)
		         
// 		             return (
// 		               ''
// 		             )
// 		           }
		        	 formatter: function(val, opts) {
			                var label = opts.w.globals.labels[opts.dataPointIndex]
			                var a = moment(val[0])
			                var b = moment(val[1])
			                var diff = b.diff(a, 'days')
//				                return label + ': ' + diff + (diff > 1 ? ' days' : ' day')
							return + diff + (diff > 1 ? ' days' : ' day')
			              },
		         }
		        };
				
					var chart = new ApexCharts(document.querySelector("#chart"),
							options);
					chart.render();
			
			
				}
// 				});
			});
	    }
	  });
	  RoadMapView();
}

function getGraphNames(){
	//$('#m1').empty();
	$.ajax({
	    url: "getGraphNames", // url: "/findTables?dbName="+db_name,
	 	method: 'get',
	 	async: true,
	    data: {
	    },
	    success: function (data) {
		  	var ghj = data;
	    	$('#m1').empty();
		  	$('#m1').append(ghj);
	    }
	  });
	
// 	$.ajax({
// 	    url: "getRoadMapList", // url: "/findRoadMapList?dbName="+db_name,
// 	 	method: 'get',
// 	    data: {
// 	    },
// 	    success: function (data) {
// 	    	console.log("getRoadMapList: success: ",data)
// 		  	var ghj = data;
// 	    	$('#m1').empty();
// // 		  	$('#m1').append(ghj);
// 		  	$("#m1 li").append("New chart");
	  		
// 		  	$.each(ghj, function(k, v) 
// 		  	{
// 		  	  	console.log("val: ",k+v)
// 		  		$("#m1 li").append(v)
// 		  	});
// 	    }
// 	  });

	$.ajax({
	    url: "getRemovedGraphNames", // url: "/findTables?dbName="+db_name,
	 	method: 'get',
	    data: {
	    },
	    success: function (data) {
	    	$("#recycle_bin_list").html('<li><span><i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;Recycle Bin</span></li>');
	    	$("#recycle_bin_list").append(data);
	    }
	  });
}

function titleempty(){
   		$("#element_title").empty();
 	}

function showData(table,name){
// 	$("#form_id").html("");
	$("#chart").hide()
	$("#element_title").hide()
	$("#save_button").hide();
	$(".graph_button").hide();
	if(createNew == true){
		addNewGraphInHistory();
		createNew = false;
	}
	objectsView();
	var tableName = table.split(' ').join('_');
	$.ajax({
	      url: "getRowData", // url: "/findAttributes?dbName="+db_name,
	      type: "POST",
			data:{
				'tableName':tableName,
				'name':name
	    	  },
	    	  	dataType: "json",
	    	  	beforeSend: function() {
	    	    	loader_image_body();
// 	    	     	$("#loader_image_body").animate({left:15, opacity:"show"}, 5000);
	    	        //$("#loader_image").show();
	    	    },
		success: function(data) {
			var formData="";
			var labels = [];
			var idd = "";
			var checkboxIds = "";
			var CurrenttabID = "";
			var row_name = "";
			var allIds = "";
			var AllRelRowIDs = [];
			var btnedit = '';
			var object_name_id = '';
			var relationsClass;
			var last_time_updated = '';
			var AllRelTableIDs = [];
			let {dataBeforeUpdate} = data;
			$.each(data, function(i, val){
				//console.log("data", data.editButtonId[0]);
				if(i=="row_id"){
					console.log(val)
					idd = val;
				}
				if(i=="allIds"){
					allIds = val;
				}
				if(i=="checkboxIds"){
					checkboxIds = val;
				}
				if(i=="formData"){
					formData = val;
				}
				if(i=="attributeNames"){
					labels = val;
				}
				if(i=="CurrenttabID"){
                   CurrenttabID = val;
	            }
				if(i=="row_name"){
					row_name = val;
	            }
				if(i=="AllRelRowIDs"){
					AllRelRowIDs = val;
	            }
				if(i=="AllRelRowIDs"){
					AllRelRowIDs = val;
	            }
				if(i=="editButtonId"){
					btnedit = val;
	            }
				if(i=="object_name_id"){
					object_name_id = val;
	            }
				if(i=="relationsClassList"){
					relationsClass = val[0];
	            }
				if(i=="AllRelTableIDs"){
					AllRelTableIDs = val;
	            }
				if(i=="last_time_updated"){
					last_time_updated = val[0];
	            }
			  });
			var name_for_class = row_name[0].replaceAll(' ','---');
			$( function() {
	               $( "#"+CurrenttabID ).tabs().addClass( "ui-tabs-vertical ui-helper-clearfix "+name_for_class+"" );
	               $( "#"+CurrenttabID+" li" ).removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );
			  } );
			
			var current_ID = divId+divIdCount++;
            formData = '<div id="'+current_ID+'">'+formData+'</div>';
            allDivIds.push(current_ID);
            var imageName = tableName.toLowerCase().replaceAll('_','-');
          
            imageName = imageName+'.svg';
            
           
          	var clsName = row_name[0].replaceAll(' ','---')+'_'+tableName.replaceAll(' ','_');
            if(historyTabItems.includes(clsName) == false){
	            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+row_name+'_'+tableName+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\', \''+data.editButtonId[0]+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+row_name+'</a></div></div>');
	            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
	            $("#history_tab").css("display", "flex")
	            historyTabItems.push(clsName);
            }else{
            	$( "."+clsName ).remove();
	            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+row_name+'_'+tableName+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\', \''+data.editButtonId[0]+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+row_name+'</a></div></div>');
	            $("#history_tab").css("display", "flex");
            }
			
			
			//formData += '</form></div>'
// 			console.log(formData);
			$("#form_id").append(formData);
			showDiv(current_ID, data.editButtonId[0]);
			$.each(checkboxIds, function(i, val){
				$("#"+val).on('change', function() {
					  if ($(this).is(':checked')) {
					    $(this).attr('value', 'True');
					  } else {
					    $(this).attr('value', 'False');
					  }
				});
			});
			form_submitForUpdate(dbName, tableName, labels, idd,allIds,row_name,AllRelRowIDs,btnedit, object_name_id, imageName, current_ID,CurrenttabID[0],null,last_time_updated,AllRelTableIDs, dataBeforeUpdate);
			show_or_hide_relationships(relationsClass);
			$("#loader_image_body").hide();
			$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
			$("body").css("pointer-events", "initial");
	        }
	    	  	
	    });
	}
var get_data_for_save_button = [];
function form_submitForUpdate(dbName, tableName, attributes, idd, allIds, row_name, AllRelRowIDs, btnedit, object_name_id,imageName, current_ID, CurrenttabID, cell, last_time_updated,AllRelTableIDs, dataBeforeUpdate){
	var temp = {"dbName": dbName, "tableName": tableName, "attributes": attributes, "idd": idd, "allIds": allIds, "row_name": row_name, "AllRelRowIDs": AllRelRowIDs, "btnedit": btnedit, "imageName": imageName, "current_ID": current_ID, "CurrenttabID": CurrenttabID, "cell":cell}
	get_data_for_save_button.push(temp)
	
	getDate = get_data_for_save_button[0]["dbName"]
	
// 	if(current_ID)
	if(AllRelRowIDs.length==0)
		AllRelRowIDs[0] = "null";
	if(AllRelTableIDs.length==0)
		AllRelTableIDs[0] = "null";
		$("#"+btnedit).click(function () {
			console.log("allIds[0]", allIds[0]);
			let get_object_name = $("#"+allIds[0]).val();
			let get_object_id = $("#"+allIds[1]).val();
			if((get_object_name != "") || (get_object_name != "" && get_object_id != "")){
				$.ajax({
				      url: "getDateForFormSubmit", // url: "/findTables?dbName="+db_name,
				      type: "GET",
				      data: {
				    	  	'tableName' :tableName,
				    	  	'row_name' :row_name[0],
				      },
				      //dataType: "text/String"
					success: function(data) {
						updated_time = data.slice(0, 19);
						if(last_time_updated.slice(0, 19) === updated_time){
							var formData = [];
								$.each(allIds, function(i, val1){
									var tag = document.getElementById(val1).tagName;
									if(tag == 'TABLE'){
										var object_names_form = document.getElementById(val1).getElementsByClassName("object_name_form");
										var element_name_from_icon = document.getElementById(val1).getElementsByClassName("elementIcon");
										var loopLength = object_names_form.length;
										var allObjects = '';
										for(var i=0; i<loopLength; i++){
											var objectValue = object_names_form[i].innerHTML;
											if(objectValue==''){
												continue;
											}
											var imgSrc = element_name_from_icon[i];
											if(imgSrc!=undefined){
												imgSrc = imgSrc.getElementsByTagName("IMG")[0].src;
											
												var objectElement = imgSrc.split('/');
												objectElement = objectElement[objectElement.length-1];
												objectElement = objectElement.split('.svg');
												objectElement = objectElement[0].replaceAll('-',' ');
												objectElement = capitalizeFirstLetter(objectElement);
												objectElement = objectElement.replaceAll(' ','_');
												objectElement = objectElement.replaceAll(' Of ',' of ');
												allObjects += objectValue+'---'+objectElement+',';
											}else{
												allObjects += objectValue+",";
											}
											
										}
										
	//					 					console.log('val',objectValue)
									
	//					 				$.each( object_names_form, function( key, value ) {
	//					 					allObjects += value.innerHTML+",";
	//					 				});
										allObjects = allObjects.slice(0, -1);
										formData.push(allObjects);
									}else if(tag == 'TEXTAREA'){
										var currentAttVal = $('#'+val1).val();
										formData.push(currentAttVal);
									}else {
										
										let inputType = document.getElementById(val1).type;
										if(inputType == "date"){

											if($('#'+val1).val() == ""){
												formData.push("1900-01-01")
											}else{
												formData.push($('#'+val1).val())
											}
											
										}else{
											formData.push($('#'+val1).val())
										}
									}
					             });
								var id = idd[0];
								$.ajax({
									url: "validateObjectName", // url: "/findTables?dbName="+db_name,
								    //type: "GET",
								    data: {
								    	'tableName' :tableName,
								    	'object_name' :formData[0],
							    	  	'oldName': row_name[0],
									},
								      //dataType: "text/String"
									success: function(data) {
// 										let historyChanges = [];
										
// 										console.log(formData.length)
// 										for(let i=0; i<formData.length; i++){
											
// 											if((formData[i] != dataBeforeUpdate[i]) && formData[i]!=null){
// 												console.log(i,formData[i])
// 												let temp = [attributes[i], dataBeforeUpdate[i], formData[i]]
// 												historyChanges.push(temp)

// 											}
// 										}
									
										if(data==''){										
											$.ajax({
											      url: "editRow", // url: "/findTables?dbName="+db_name,
											      type: "POST",
											      data: {
											    	  'dbName':dbName,
											    	  'tableName' :tableName,
											    	  'attributes' :attributes,
											    	  'id' :id,
											    	  'oldName': row_name[0],
											    	  'formData' :formData,
											    	  'AllRelRowIDs' :AllRelRowIDs,
											    	  'AllRelTableIDs':AllRelTableIDs,
											    	  'dataBeforeUpdate':dataBeforeUpdate,
// 											    	  'historyChanges':historyChanges,
											      },
											      //dataType: "text/String"
												success: function(data) {
													let getcurrentDate = new Date();
													let gethour = getcurrentDate.getHours();
													let getMinute = getcurrentDate.getMinutes();
													//console.log("getMinute", getMinute)
													if(getMinute < 10){
														getMinute = "0"+getMinute;
													}
													let getSecond = getcurrentDate.getSeconds();
													//console.log("getSecond", getSecond)
													getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
													//console.log(getcurrentDate.toISOString().slice(0, 19).replace('T', ' '));
													last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');
											    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">Successfully Updated</div>');
											    	alert_message_function();
													refreshTree();
													var get_id = $("#"+CurrenttabID+" :input[name=\"Name\"]").attr("id");
													var new_value_input = $("#"+get_id+"").val();
													row_name[0] = new_value_input;
										 			/* console.log("object_name_id", object_name_id[0])
										 			console.log('new_value_input',new_value_input)
										 			console.log("label_value", $("#"+object_name_id[0]+"").text(new_value_input)) */
										 			$("#"+object_name_id[0]+"").text(new_value_input);
													if(cell){
														graph1.model.setValue(cell, new_value_input);
														save_graph_for_rename_component();
										 				//graph1.updateCellSize(cell, true);
														/* var geom = cell.getGeometry();
														geom.width = 300;
														$("rect").attr("height","50"); */
														//geom.width = geom.width > width ? geom.width : width;
													}
													var change_value = $('#'+get_id).val(new_value_input);
													var removeItem = change_value[0].value+'_'+tableName;
													historyTabItems = jQuery.grep(historyTabItems	, function(value) {
														  return value != removeItem;
													});
													if(historyTabItems.includes(change_value[0].value+'_'+tableName) == false){
												 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+removeItem.replaceAll(' ','---')+'" style="background: rgb(233, 233, 233);"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
													   $("#history_tab").css("display", "flex")
													   historyTabItems.push(change_value[0].value.replaceAll(' ','---')+'_'+tableName);
													}
													$("#"+btnedit).attr('disabled', true);
												}
									    	});
										}
										else{
									    	$(".alert_message").html('<div class="alert alert-danger" role="alert">Name Already Exist!</div>');
									    	alert_message_function();
										}
							        }
							    });
						}
						else{
	// 						alert("Another User Updated This File Please Refresh the tree!!")
							$(".alert_message").html('<div class="alert alert-danger" role="alert">Another User Updated This File Please Refresh the tree!!</div>');
					    	alert_message_function();
						}
					},
	                error: function(data){ 
	                	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
				    	alert_message_function(); 
	                }
		  		});
			}
			else{
            	$(".alert_message").html('<div class="alert alert-warning" role="alert">Please Fill Object Name And ID</div>');
		    	alert_message_function(); 	
			}
	});
	save_button_toggle(btnedit, CurrenttabID);
}	


function save_button_toggle(btnedit, CurrenttabID){
	
//  	console.log("btnedit", btnedit);
//  	console.log("CurrenttabID",CurrenttabID)
	/* var button = $('.submit-data'); */
	var button = $("#"+btnedit+"");
	var orig = [];

	$.fn.getType = function () {
	    return this[0].tagName == "INPUT" ? $(this[0]).attr("type").toLowerCase() : this[0].tagName.toLowerCase();
	}

	$("#"+CurrenttabID+" :input").each(function () {
	    var type = $(this).getType();
	    var tmp = {
	        'type': type,
	        'value': $(this).val()
	    };
	    if (type == 'radio') {
	        tmp.checked = $(this).is(':checked');
	    }
	    orig[$(this).attr('id')] = tmp;
	});

	$("#"+CurrenttabID+"").bind('change keyup', function () {

	    var disable = true;
	    $("#"+CurrenttabID+" :input").each(function () {
	        var type = $(this).getType();
	        var id = $(this).attr('id');

	        if (type == 'text' || type == 'select' || type == 'textarea' || type == 'date' || type == 'time' || type == 'checkbox') {
	            disable = (orig[id].value == $(this).val());
	        } else if (type == 'radio') {
	            disable = (orig[id].checked == $(this).is(':checked'));
	        }

	        if (!disable) {
	            return false; // break out of loop
}
	    });

	    button.prop('disabled', disable);
	});
}
/*
function showObjectsForGraph(element,object){
	alert(element)
	console.log(object);
	var abc ='<ul class="nested">';
	

	var object1 = ['Ali', 'Arbab']
	$.each(object1, function (i, val){
		alert(val);
		abc+= '<li id="'+val+'"  onclick="addVertex("Catagory 1",\'<c:url value="/resources/js/examples/editors/images/rectangle.gif"/>\', 100, 40, \'shape=rectangle\');"><span >'+val+'</span></li>'
	});
	
	abc+='</ul>'
		console.log(abc)
		$('#'+element.split(' ').join('_')+'_graph').append(abc);
	}
*/
function addNew(element,type){
	$("#save_button").hide();
	$(".graph_button").hide();
	if(createNew == true){
		addNewGraphInHistory();
		createNew = false;
	}
	objectsView();
	var directoryName = ''; 
	var objName = '';
	$.ajax({
          url: "getUniqueObjectName",
	      data:{'objectName':element},
		  success: function(data) {

			$.ajax({
				url: "addElementInDBFromGraph",
				data:{'elementName':element,'objectName':data},
				success: function(result){
					var elementIcon = element.replaceAll(' ','-');
					elementIcon = elementIcon.replaceAll('_','-');
					elementIcon = elementIcon.toLowerCase()+'.svg';
					//console.log('data',data)
					var temp = '<li id="'+data.replaceAll(' ','---')+'" style="cursor:pointer" onclick="showData(\''+element.replaceAll(' ','_')+'\',\''+data+'\')" oncontextmenu="on_context_menu_remove(\''+element.replaceAll(' ','_')+'\',\''+data+'\',\'deletedElements\')"><span title="'+data+'" draggable="true" ondragstart="drag(event,\''+data+'\',\'resources/js/examples/editors/images/images1/'+elementIcon+'\')"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+data+'</span></li>';
		            $('#'+element.replaceAll(' ','_')).append(temp);
					showData(element.replaceAll(' ','_'),data);
				}
			});
	      }	
	    });
}

function showDiv(showDivID, save_btn_id){
	$("#chart").hide()
	$("#element_title").hide()
	//console.log("save_btn_id", save_btn_id)
	
	//$("#"+save_btn_id+"").prop("disabled", true)
	//$(".submit-data").prop('disabled', true);
	$.each( dictionaryXML, function( key, value ) {
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
	});
	$(".matrix_save_button").empty();
	$("#save_button").hide();
	$(".graph_button").hide();
	$.each(allDivIds, function(i, val){
		if(val!=showDivID){
			$("#"+val).css("display", "none");
			$( "#"+val+"11" ).css("background", "");
			$("matrixDownload"+val).css("display", "none");
			
		}else{
			$("#"+val).css("display", "block");
			$( "#"+val+"11" ).css("background", "#e9e9e9");
			$("#matrixDownload"+val).css("display", "block");
			numItems = $('.column').length;
		
			$(".history_page_no").html(numItems);
		}
		$("#palete").css("display", "none");
		$("#graphId").css("display", "none");
		$("#form_id").css("display", "block");
		$( "#historyList" ).css("display", "none");
	});
}
function downloadMatrix(matrixName,tableID){
	var matrix_table_var = document.getElementById(tableID);
	var theadVar = matrix_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
	var theadList = [];
	var tbodyVar = matrix_table_var.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
	$.each(theadVar, function (i, item) {
		theadList.push(item.innerHTML);
    });
	var tbodyList = [];
	$.each(tbodyVar, function (i, item) {
		     let loop_td = item.getElementsByTagName("td");
		     let current_td_list = [];
		     $.each(loop_td, function (k, item) {
		    	 let tdValue = item.innerHTML.replaceAll('<strong>','').replaceAll('</strong>','');
		    	 current_td_list.push(tdValue);
		 });
		tbodyList.push(current_td_list);
// 		theadList.push(item.innerHTML);
      });
	let check = tbodyList[0];
	if(Object.keys(check).length === 0 ){
		tbodyList = tbodyList.splice(1,tbodyList.length)
		  }
	var matrixJson = {
			"matrixName":matrixName,
		    "theads":theadList,
		    "tbodies":tbodyList,
		}
	$.ajax({
	      url: "downloadMatrixAsExcel", // url: "/findTables?dbName="+db_name,
	      contentType : 'application/json; charset=utf-8',
	      type: "POST",
	      data: JSON.stringify(matrixJson),
	      //dataType: "text/String"
			success: function(data) {
				window.open('downloadMatrixExcelFile?EXCEL_FILE='+data);
	        }
	});
}	 

function showMatrixDiv(showDivID, save_btn_id,matrixName ){
	$("#chart").hide();
	$("#element_title").empty();
	$("#element_title").show().text(matrixName);
	$.each( dictionaryXML, function( key, value ) {
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
	});
	$(".matrix_save_button").empty();
	$("#save_button").hide();
	$(".graph_button").hide();
	$.each(allDivIds, function(i, val){
		if(val!=showDivID){
			$("#"+val).css("display", "none");
			$( "#"+val+"11" ).css("background", "");
		}else{
			$("#"+val).css("display", "block");
			$( "#"+val+"11" ).css("background", "#e9e9e9");
			numItems = $('.column').length;
			$(".matrix_save_button").append('<button id="matrixDownload'+val+'" style="font-size: 20px;" title="Download" class="btn" onclick="downloadMatrix(\''+matrixName+'\',\''+val+'\');"><span class="fa fa-download download-btn" aria-hidden="true"></span></button>');
			$(".history_page_no").html(numItems);
		}
		$("#palete").css("display", "none");
		$("#graphId").css("display", "none");
		$("#form_id").css("display", "none");
		$("#matrix").css("display", "block");
		$( "#historyList" ).css("display", "none");
	});
}

function closeDiv(showDivID, data){

	var index_no_of_deleted_item = historyTabItems.indexOf(data);
	historyTabItems.splice(index_no_of_deleted_item, 1);
	
	
	//var next_id = $("#"+showDivID+"").next().attr('id');
	$( "#"+showDivID+"" ).remove();
	$( "#"+showDivID+"11" ).remove();
	setTimeout(function(){ displaydiv(); }, 0.5);
	//$("#historyList").css("display", "block");
	
	numItems = $('.column').length;
	
	$(".history_page_no").html(numItems)
}
//current_ID, catalog_element
function closeCatalogDiv(current_ID, catalog_element){//showDivID, data

	var index_no_of_deleted_item = historyTabItems.indexOf(catalog_element);
	historyTabItems.splice(index_no_of_deleted_item, 1);
	
	
	//var next_id = $("#"+showDivID+"").next().attr('id');
	$( "#"+current_ID+"" ).remove();
	$( "#"+current_ID+"11" ).remove();
	setTimeout(function(){ displaydiv(); }, 0.5);
	//$("#historyList").css("display", "block");
	
	numItems = $('.column').length;
	
	$(".history_page_no").html(numItems)
	 $("#element_title").hide()
}

function closeRoadmapDiv(current_ID, roadMap_name){//showDivID, data

	var index_no_of_deleted_item = historyTabItems.indexOf(roadMap_name);
	historyTabItems.splice(index_no_of_deleted_item, 1);
	
	
	//var next_id = $("#"+showDivID+"").next().attr('id');
	delete dictionaryXML[current_ID];
// 	$( "#"+current_ID+"" ).remove();
	$( "#"+current_ID+"11" ).remove();
	setTimeout(function(){ displaydiv(); }, 0.5);
	//$("#historyList").css("display", "block");
	
	numItems = $('.column').length;
	numItems = $('.column').length;
	$(".history_page_no").html(numItems)
	if(currentWindowID==current_ID+"11"){
		var diagram = mxUtils.parseXml(newGraphXML);
	    var codec = new mxCodec(diagram);
	    codec.decode(diagram.documentElement, graph1.getModel());
	    $("#element_title").hide()
	}
	let curIID = current_ID+"11";
// 	let eleID = $("#liID").val();
	console.log("curIID ",curIID)
// 	console.log("eleID ",eleID)
// 	if(curIID == eleID) {
	$("#chart").hide();
	$("#element_title").hide();
// 	}
	
	
// 	$(".history_page_no").html(numItems)
}


var currentWindowID = '';
function closeModelDiv(graphName_1){
 	if(graphSaveButton[graphName_1]==false){
 		
 		$( function() {
 		    $( "#dialog-confirm-for-delete-model" ).dialog({
 		      resizable: false,
 		      height: "auto",
 		      width: 400,
 		      modal: true,
 		      buttons: {
 		        "Delete": function() {
 					delete dictionaryXML[graphName_1];
 					$( "#"+graphName_1+"11" ).remove();
 					setTimeout(function(){ displaydiv(); }, 0.5);
 					
 					//$("#historyList").css("display", "block");
 					
 					numItems = $('.column').length;
 					$(".history_page_no").html(numItems)
 					
 					if(currentWindowID==graphName_1+"11"){
 						var diagram = mxUtils.parseXml(newGraphXML);
 					    var codec = new mxCodec(diagram);
 					    codec.decode(diagram.documentElement, graph1.getModel());
 					    $("#element_title").hide()
 					}
 		          $( this ).dialog( "close" );
 		        },
 		        "<spring:message code='Cancel'/>": function() {
 		          $( this ).dialog( "close" );
 		        }
 		      }
 		    });
 		  } );
	}
 	
	numItems = $('.column').length;
	console.log("check",numItems);
	if(numItems <= 1){
		
		$("#historyList").hide();
		$(".column").remove();
		$(".history_page_no").text("0");
		$("#palete").css("display", "none");
		$("#graphId").css("display", "none");
	}
	
	else{
		delete dictionaryXML[graphName_1];
		$( "#"+graphName_1+"11" ).remove();
		setTimeout(function(){ displaydiv(); }, 0.5);
		numItems = $('.column').length;
		$(".history_page_no").html(numItems)
		if(currentWindowID==graphName_1+"11"){
			var diagram = mxUtils.parseXml(newGraphXML);
		    var codec = new mxCodec(diagram);
		    codec.decode(diagram.documentElement, graph1.getModel());
		    $("#element_title").hide()
		}
	} 
}

function close_all_history_div(){
	$("#element_title").empty();
	$(".column").remove();
	$("#historyList").hide();
	//$("#graphId").empty();
	$("#form_id").empty();
	$("#catalog").empty();
	$("#matrix").empty();
	$("#chart").empty();

	var diagram = mxUtils.parseXml(newGraphXML);
        var codec = new mxCodec(diagram);
        codec.decode(diagram.documentElement, graph1.getModel());
	dictionaryXML = {}
	historyTabItems = []	
	numItems = $('.column').length;
	$(".history_page_no").html(numItems)
	$("#element_title").hide()
	$("#chart").hide()
	
}
function form_submit(dbName, tableName, attributes,idd,btnsave, CurrenttabID, current_ID, object_name_id, imageName){
	$("#"+btnsave).click(function () {
		var formData = [];
		$.each(idd, function(i, val1){
			
			var tag = document.getElementById(val1).tagName;
			if(tag == 'TABLE'){
				var object_names_form = document.getElementById(val1).getElementsByClassName("object_name_form");
				var element_name_from_icon = document.getElementById(val1).getElementsByClassName("elementIcon");
				var loopLength = object_names_form.length;
				var allObjects = '';
				for(var i=0; i<loopLength; i++){
					var objectValue = object_names_form[i].innerHTML;
					if(objectValue==''){
						continue;
					}
					var imgSrc = element_name_from_icon[i];
					if(imgSrc!=undefined){
						imgSrc = imgSrc.getElementsByTagName("IMG")[0].src;
					
						var objectElement = imgSrc.split('/');
						objectElement = objectElement[objectElement.length-1];
						objectElement = objectElement.split('.svg');
						objectElement = objectElement[0].replaceAll('-',' ');
						objectElement = capitalizeFirstLetter(objectElement);
						objectElement = objectElement.replaceAll(' ','_');
						objectElement = objectElement.replaceAll(' Of ',' of ');
						allObjects += objectValue+'---'+objectElement+',';
					}else{
						allObjects += objectValue+",";
					}
					
				}
				allObjects = allObjects.slice(0, -1);
				formData.push(allObjects);
			}else if(tag == 'TEXTAREA'){
				var currentAttVal = $('#'+val1).html();
				formData.push(currentAttVal);
			}else {
				formData.push($('#'+val1).val())
			}
         });
		var id = idd[0];
		$.ajax({
		      url: "validateObjectName", // url: "/findTables?dbName="+db_name,
		      //type: "GET",
		      data: {//'dbName':dbName,
		    	  	'tableName' :tableName,
		    	  	'object_name' :formData[0]
		      },
		      //dataType: "text/String"
		    
			success: function(data) {
				//console.log("data", data)
				if(data==''){
					//console.log("null");
			    	$.ajax({
					      url: "addData", // url: "/findTables?dbName="+db_name,
					      //type: "GET",
	      type: "POST",
	      data: {//'dbName':dbName,
					    	  	'tableName' :tableName,
					    	  	'attributes' :attributes,
					    	  	'formData' :formData
					      },
					      //dataType: "text/String"
						success: function(data) {
							//alert("Successfully Saved");
					    	$(".alert_message").html('<div class="alert alert-primary" role="alert">Successfully Saved</div>');
					    	alert_message_function();
							var get_id = $("#"+CurrenttabID+" :input[name=\"Name\"]").attr("id");
							var new_value_input = $("#"+get_id+"").val();
					    	$("#"+object_name_id[0]+"").text(new_value_input);
							refreshTree();
							
							var change_value = $('#'+get_id).val(new_value_input);
							var removeItem = change_value[0].value+'_'+tableName;
							historyTabItems = jQuery.grep(historyTabItems	, function(value) {
								  return value != removeItem;
							});
							var clsName = change_value[0].value.replaceAll(' ','---')+'_'+tableName.replaceAll(' ','_');
							if(historyTabItems.includes(clsName) == false){
							 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+clsName+'" style="background: rgb(233, 233, 233);"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
							   $("#history_tab").css("display", "flex")
							   historyTabItems.push(clsName);
							}
							$("#"+btnsave).prop('disabled', true);
				
							var btn = parseInt(btnsave[0]);
							var string_number = btnsave[0].match(/\d+/g);
							var number_only = parseInt(string_number[0]);
							save_button_toggle("btnsave"+string_number[0], CurrenttabID[0]);
				        }
				    });
				}
				else{
			    	$(".alert_message").html('<div class="alert alert-danger" role="alert">Name Already Exist!</div>');
			    	alert_message_function();
				}
	        }
	    });
	});
}

function openFormOnCellDoubleClick(cellValue,elementName,cell){
	updateFormModal(cellValue,elementName,cell)
	
}

function showRelationsObjects(currentElementName,row_name,tableName, idd,maxObjects, save_btn_id){
	//console.log('table', tableName)
	var aa = []
	console.log('idd_explorer',idd)
	tableName = tableName.replaceAll('[', '');
	tableName = tableName.replaceAll(']', '');
	tableName = tableName.split(', ')
	//console.log(('temp',tableName))
	//console.log(typeof tableName)
	var maxPossibleObjects = '';
	if(maxObjects=='N/A')
		maxPossibleObjects = '1';
	else if(maxObjects==2)
		maxPossibleObjects = '2';
	else if(maxObjects=='Unlimited')
		maxPossibleObjects = 'Unlimited';
	var objectsArray = [];
	
	$.ajax({
		url: "getRelObjects", // url: "/findTables?dbName="+db_name,
		type: "POST",
		data:{
			'currentElementName' :currentElementName,
			'row_name' :row_name,
			'tableName' :tableName
		},
	      //dataType: "text/String"
		success: function(data) {
			var tree  = data[0]['tree'];
			var maxValues = data[1];
// 			$.each(data, function(i, val){
// 				objectsArray.push(val.rowValue);
//             });

			relationship_modal(tree,idd,maxPossibleObjects,tableName, save_btn_id,maxValues);
			var res = idd.split("2");
// 			var title = res[0].split('_').join(' ');
			var title = res[0];
			var get_heading_value = '';
			var create_relation_text = "<spring:message code='Create_Relation'/>";    
    		$.ajax({
	 	           url: "getPropertiesDictionary",
	 	           type: 'POST',
	 	           data: {},
	 	           dataType: 'json', // added data type
	 	           success: function(langDict) {
	 	           		$("#modal1_title").html(langDict[title]+" - "+create_relation_text);
	 	           }
	 	       });
		}
	});
}

function crt(){
	var toggler = document.getElementsByClassName("caret");
	var i;

	for (i = 0; i < toggler.length; i++) {
	  toggler[i].addEventListener("click", function() {
	    this.parentElement.querySelector(".nested").classList.toggle("active");
	    this.classList.toggle("caret-down");
	  });
	}
}

function alt1(){
	alert("LT")
}

//GRAPH STARTS HERE

var Displayed_nodes = [];
var old_nodes = '';
var firstNode = 1;
var paleteCreated = 0;
var graph1;
var navigationGraph;
var color = '';
function updateGraph(objectName, x,y,imgSrc){
		
		var newObjectName = objectName;
		var newObjectElement = imgSrc.split('/');
		newObjectElement = newObjectElement[newObjectElement.length-1];
		newObjectElement = newObjectElement.split('.svg');
		newObjectElement = newObjectElement[0].replaceAll('-',' ');
		newObjectElement = capitalizeFirstLetter(newObjectElement);
		newObjectElement = newObjectElement.replaceAll(' ','_')
// 		imageSource = imageSource.replaceAll('.svg','1.svg');
		//console.log(imgSrc)
		var parent = graph1.getDefaultParent();
		objectName = objectName.split(' ').join('\n');
		var objectExists= false;
		var encoder = new mxCodec();
		var node = encoder.encode(graph1.getModel());
		var xml = mxUtils.getXml(node);
		xmlDoc = $.parseXML(xml),
		$xml = $(xmlDoc),
		$intRate = $xml.find("mxCell");
		$intRate.each(function(index, element) {
			if(element.attributes["value"]) {
				var cellId = element.attributes["id"].value;
				var v2 = graph1.getModel().getCell(cellId)
				var loopCellValue = element.attributes["value"].value;
				loopCellValue = loopCellValue.replaceAll('\n',' ');
				if(objectName.replaceAll('\n',' ')==loopCellValue){
					objectExists = true;
				}
			}
		});
		var style = 'shape=label;strokeColor='+stColor+';fillColor='+color+';rounded=1;shadow=0;strokeWidth=0;image='+imgSrc+';imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;'
		//var style = 'shape=label;image='+imageSource+';imageHeight=14;imageWidth=22;strokeColor='+stColor+';fillColor='+color+';rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;';
	  	if(objectExists==false){
	  		var vertex = graph1.insertVertex(parent, null, objectName.split(" ").join("\n") , x, y, 140, 60, style);
// 			var v1 = graph1.insertVertex(parent, null , objectName, x, y, 135, 55,style);
			$intRate.each(function(index, element) {
				if(element.attributes["value"]) {
					var cellId = element.attributes["id"].value;
					var v2 = graph1.getModel().getCell(cellId)
				var loopCellValue = element.attributes["value"].value;
				loopCellValue = loopCellValue.replaceAll('\n',' ');
				var loopImageValue = element.attributes["style"].value;
					loopImageValue = loopImageValue.split('.svg')
				loopImageValue = loopImageValue[0].split('/');
				loopImageValue = loopImageValue[loopImageValue.length-1].replaceAll('-',' ');
				var loopElementName = capitalizeFirstLetter(loopImageValue);
				loopElementName = loopElementName.replaceAll(' ','_');
				var success = true;
				if(objectName!=loopCellValue){
			     	$.ajax({
				       url: "joinIfRelationExists",
				       type: "POST",
				       data: {  'newObjectElement':newObjectElement,
				    	   		'newObjectName':newObjectName,
								'existingObjectElement':loopElementName,
								'existingObjectName' :loopCellValue
				       },
				 	      //dataType: "text/String"
				 		success: function(data) {
// 				 			console.log('success ',data);
				 			$.each(data, function(i, val){
									if(i=="newToExisting" && val.length>0){
										$.each(val, function(i, val1){
											//console.log(val1)
											var relType = val1;
											var relStyle = getRelationshipStyle(relType);
											//console.log('fwd',relStyle);
											var e2 = graph1.insertEdge(parent, null, relType , v1, v2,relStyle);
										});
									}
									else if(i=="existingToNew" && val.length>0){
										$.each(val, function(i, val1){
											//console.log(val1)
											var relType = val1;
											var relStyle = getRelationshipStyle(relType);
											//console.log('bwd',relStyle);
											var e2 = graph1.insertEdge(parent, null, relType , v2, v1,relStyle);
										});
									}
							  });
				        },
				        error: function(resp){
				            console.log('error ' + resp);
				            success = false;
				        },
				        async: false
			 		});
			     	if(!success){
			            return false;
			         }
			    }
			}
		});
	  	}else{
	  		$(".alert_message").html('<div class="alert alert-danger" role="alert">Object Already Exists!</div>');
	    	alert_message_function();
	  	}
	  	$('html').keyup(function(e){
	  	    if(e.keyCode == 46) {
	  	    	graph1.removeCells();
	  	    	var encoder = new mxCodec();
				var parent = graph1.getDefaultParent();
				var node = encoder.encode(graph1.getModel());
				var new_xml_str = mxUtils.getXml(node);
				var get_old_xml = dictionaryXML;							
				dictionaryXML[graph_name] = new_xml_str;//set key1
				var updated_value = dictionaryXML[graph_name];//get key1
			    $("#save_button").prop('disabled', false);
			    $(".graph_button").prop('disabled', false);
			    graphSaveButton[graph_name] = false;
	  	    }
	  	});

// 		var undoManager = new mxUndoManager();
// 		var listener = function(sender, evt)
// 		{
// 			undoManager.undoableEditHappened(evt.getProperty('edit'));
// 		};
		graph1.getModel().addListener(mxEvent.UNDO, listener);
		graph1.getView().addListener(mxEvent.UNDO, listener);

		function KeyPress(e) {
		      var evtobj = window.event? event : e
		      if (evtobj.keyCode == 90 && evtobj.ctrlKey)
		    	  undoManager.undo();
		

		document.onkeydown = KeyPress;
		}
}


var undoManager = new mxUndoManager();
var listener = function(sender, evt)
{
	undoManager.undoableEditHappened(evt.getProperty('edit'));
};
var sourceGlobal = null;
var targetGlobal = null;
var dictionaryVertex = {};

function getRelationshipStyle(relVal){
	var orthogonalEdge ="edgeStyle=orthogonalEdgeStyle";
	var style = "";
	if(relVal == 'Composition' || relVal == 'Composed of' || relVal == 'Part of'){
		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;';
  	}
  	else if(relVal == 'Aggregation' || relVal == 'Aggregates' || relVal == 'Aggregated by'){
//   		edgeStyle=orthogonalEdgeStyle  use this as style for orthogonal edge style
  		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=diamond;labelBackgroundColor=#FFFFFF;';
  	}
	else if(relVal == 'Assignment' || relVal == 'Assigned to' || relVal == 'Assigned from'){
  		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=1;startFill=1;startArrow=oval;endArrow=block;labelBackgroundColor=#FFFFFF;';
  	}
	else if(relVal == 'Realization' || relVal == 'Realizes' || relVal == 'Realized by'){
  		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
  	}
	else if(relVal == 'Serving' || relVal == 'Serves' || relVal == 'Served by'){
  		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;';
  	}
	else if(relVal == 'Access' || relVal == 'Accesses' || relVal == 'Accessed by'){
  		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;';
  	}
	else if(relVal == 'Influence' || relVal == 'Influences' || relVal == 'Influenced by'){
  		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;dashed=1;startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;';
  	}
	else if(relVal == 'Association' || relVal == 'Associated to' || relVal == 'Associated from'){
  		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;';
  	}
	else if(relVal == 'Triggering' || relVal == 'Triggers' || relVal == 'Triggered by'){
  		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
  	}
	else if(relVal == 'Flow' || relVal == 'Flows to' || relVal == 'Flows from'){
  		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;dashed=1;endFill=1;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
  	}
	else {
		style = ''+orthogonalEdge+';rounded=1;orthogonalLoop=1;strokeColor=#000000;strokeWidth=1;endFill=0;startArrow=;endArrow=block;labelBackgroundColor=#FFFFFF;';
	}
	return style;
}

function returnRelVal(fwd_OR_bwd,relVal,sourceObjectName,targetObjectName){
	var sourceValue = targetGlobal.value.replaceAll('\n',' ');
	var targetValue = sourceGlobal.value.replaceAll('\n',' ');
	console.log(fwd_OR_bwd,relVal,sourceObjectName,targetObjectName,sourceValue,targetValue)
	var relationPossible;
	$.ajax({
      url: "checkRelationshipsLimit", // url: "/findTables?dbName="+db_name,
      //type: "GET",
      data: {'fwd_OR_bwd':fwd_OR_bwd,
    	  	'relVal' :relVal,
    	  	'sourceElement' :sourceObjectName,
    	  	'targetElement' :targetObjectName,
    	  	'sourceValue' :sourceValue,
    	  	'targetValue' :targetValue
      },
		success: function(data) {
			console.log('data',data)
			relationPossible = data;
       },
			async: false
	});
	if(relationPossible==false){
		console.log("if")
		$(".alert_message").html('<div class="alert alert-danger" role="alert">Relation limit exceded</div>');
		alert_message_function();
	}else{
	/////
		console.log("else")
		var parent = graph1.getDefaultParent();
		var style = '';
		var sourceValue = "";
		var targetValue = "";
		var orthogonalEdge ="edgeStyle=orthogonalEdgeStyle";
		var forwardOrBackward = '';
	// 	var orthogonalEdge =""; 
		style = getRelationshipStyle(relVal);
	  	
			if(fwd_OR_bwd=='forward'){
		    	var e2 = graph1.insertEdge(parent, null, relVal , sourceGlobal, targetGlobal,style);
		    	sourceValue = sourceGlobal.value.replaceAll('\n',' ');
				targetValue = targetGlobal.value.replaceAll('\n',' ');
				forwardOrBackward = 'forward';
				
				//var graphname = "gh";
				//console.log("get_div_id", get_div_id[0]);
				var encoder = new mxCodec();
				var parent = graph1.getDefaultParent();
				var node = encoder.encode(graph1.getModel());
				var new_xml_str = mxUtils.getXml(node);
				var get_old_xml = dictionaryXML;							
				dictionaryXML[graph_name] = new_xml_str;//set key1
				var updated_value = dictionaryXML[graph_name];//get key1
				 $('#save_button').attr('disabled', false);
				 $('.graph_button').attr('disabled', false);
				 graphSaveButton[graph_name] = false;
			}
			else{
				var e2 = graph1.insertEdge(parent, null, relVal , targetGlobal, sourceGlobal,style);
				var temp = '';
				temp = sourceObjectName;
				sourceObjectName = targetObjectName;
				targetObjectName = temp;
				sourceValue = targetGlobal.value.replaceAll('\n',' ');
				targetValue = sourceGlobal.value.replaceAll('\n',' ');
				forwardOrBackward = 'backward';
				var encoder = new mxCodec();
				var parent = graph1.getDefaultParent();
				var node = encoder.encode(graph1.getModel());
				var new_xml_str = mxUtils.getXml(node);
				var get_old_xml = dictionaryXML;							
				dictionaryXML[graph_name] = new_xml_str;//set key1
				var updated_value = dictionaryXML[graph_name];//get key1
				 $('#save_button').attr('disabled', false);
				 $('.graph_button').attr('disabled', false);
				 graphSaveButton[graph_name] = false;
			}
			$.ajax({
	  			url: "insertRelationFromGraph",
	  			data:{	'sourceValue':sourceValue,
						'targetValue':targetValue,
						'sourceElementName':sourceObjectName,
						'targetElementName':targetObjectName,
						'relVal':relVal,
						'forwardOrBackward':forwardOrBackward
					 },
	  			type: "POST",
	  			success: function(result){
	  				//
	  				if(result == 0){
	  					//alert("Relation was already created");
	  					$(".alert_message").html('<div class="alert alert-secondary" role="alert">Relation was already created</div>');
	  					alert_message_function();
	  				}
	  			}
			});
		}
	/////
}

function capitalizeFirstLetter(str){
	var words = str.split(" ");

	for (let i = 0; i < words.length; i++) {
	    words[i] = words[i][0].toUpperCase() + words[i].substr(1);
	}
	words.join(" ");
	words =  words+"";
	words = words.split(",").join(" ")
	return words;
}

	function getVertexColor(imageNameWithoutExt){
		var colorName = '';
		$.ajax({
			url: "getElementColor",
			data:{
				'elementName':imageNameWithoutExt
			 },
			type: "GET",
			success: function(color){
				console.log('color',color)
				colorName = color;
			},
	        async: false
		});
		if(colorName == "Blue"){
			colorName="#0068ff85";
		}
		else if(colorName == "Brown"){
			colorName="#8d6e6399";
		}
		else if(colorName == "Green"){
			colorName="#00de0066";
		}
		else if(colorName == "Magenta"){
			colorName="#64006466";
		}
		else if(colorName == "Pink"){
			colorName="#e6acac";
		}
		else if(colorName == "Purple"){
			colorName="#8000ff66";
		}
		else if(colorName == "Red"){
			colorName="#ff000066";
		}
		else if (colorName == "Yellow"){
			colorName="#c0a74299";
		}
		return colorName;
	}

function callGraph(graphId,objects)
		{
	
// 	var nameArr = objects.split(',');
// 	var bb = '';
// 	$.each(nameArr, function (i, val){
		
// 				bb+= '<li id="objectForGraph"><span  onclick="updateGraph(\''+val+'\')">'+val+'</span></li>'
// 			});
// 	$('#'+graphId).append(bb);
	
	function alt(){
		alert("LT")
	}
	
	
	

	
	
// 			mxConnectionHandler.prototype.connectImage = new mxImage("resources/js/examples/images/connector.gif", 16, 16);
			// Checks if the browser is supported
			if (!mxClient.isBrowserSupported())
			{
				// Displays an error message if the browser is not supported.
				mxUtils.error('Browser is not supported!', 200, false);
			}
			else
			{
				

				
// 				$("#graphId").empty();
				$("#graphId").append('<div id="graphContainer" style="overflow:overlay; cursor:grab;"></div>');
				
				var container = document.getElementById('graphContainer');
				var graph = new mxGraph(container);
				var parent = graph.getDefaultParent();
				// Changes some default colors
				mxConstants.HANDLE_FILLCOLOR = '#99ccff';
				mxConstants.HANDLE_STROKECOLOR = '#0088cf';
				mxConstants.VERTEX_SELECTION_COLOR = '#00a8ff';

				graph.setTooltips(true);
				// Enables rubberband selection
				new mxRubberband(graph);
				style = graph.getStylesheet().getDefaultEdgeStyle();
				style['strokeColor'] = '#000000';
				style['fontColor'] = '#000000';
				style['fontStyle'] = '0';
				style['fontStyle'] = '0';
				style['startSize'] = '8';
				style['endSize'] = '8';
				
				// Enables guides
				mxGraphHandler.prototype.guidesEnabled = true;
				mxEdgeHandler.prototype.snapToTerminals = true;

				var layout = new mxHierarchicalLayout(graph);
				layout.execute(graph.getDefaultParent());

					
				graph.popupMenuHandler.autoExpand = true;
				graph.setAllowDanglingEdges(false);
				graph.setDisconnectOnMove(false);
			    
			    //Menu Start***
				function on_context_menu2(source,target,allRelations,x,y,sourceObjectName,targetObjectName){
					var contextElement = document.getElementById("context-menu2");
					sourceGlobal = source;
					targetGlobal = target;
					var content_ =  '';
					
					if ( (allRelations.forward.length != 0) || (allRelations.backward.length != 0) ){
					$.each( allRelations, function(key,value) {
						if(key=='forward'){
							$.each( value, function(key,val1) {
								content_+='<div style="cursor: pointer" class="item" onclick="returnRelVal(\'forward\',\''+val1+'\',\''+sourceObjectName+'\',\''+targetObjectName+'\')"><i class="fa fa-long-arrow-right"></i>'+val1+'</div>';
							});
						}
						else if(key=='backward'){
							content_+='<hr>';
							$.each( value, function(key,val1) {
								content_+='<div style="cursor: pointer" class="item" onclick="returnRelVal(\'backward\',\''+val1+'\',\''+sourceObjectName+'\',\''+targetObjectName+'\')"><i class="fa fa-long-arrow-left"></i>'+val1+'</div>';
							});
							
							console.log(value);
						}
					});
					contextElement.innerHTML = content_;
// 					contextElement.style.top = y + "px";
// 					contextElement.style.left = x + "px";
					contextElement.style.setProperty('--mouse-x', x + 'px')
  					contextElement.style.setProperty('--mouse-y', y + 'px')
					//contextElement.style.height = '130px';
					//contextElement.style.overflowY = 'scroll';
  					document.getElementById("context-menu2").style.display = 'block';
					}
					else {
						//alert('No Relation Found!')

				    	$(".alert_message").html('<div class="alert alert-danger" role="alert">No Relation Found!</div>');
				    	alert_message_function();
					}
					removeMenu();
					function removeMenu(){
						window.onclick = function(){
							document.getElementById("context-menu2").style.display = 'none';
							menuOpened = false;
						}
					}
				}
			    // Menu End****
			    
			    mxConnectionHandler.prototype.connect =  function(source, target, evt, dropTarget) {
			    	var x = event.pageX;
			    	var y = event.pageY;
			    	
			    	var sourceObjectName = source.style.split('/');
			    	sourceObjectName = sourceObjectName[sourceObjectName.length-1];
			    	sourceObjectName = sourceObjectName.split('.svg');
			    	sourceObjectName = sourceObjectName[0].split('-').join(' ');
			    	sourceObjectName = capitalizeFirstLetter(sourceObjectName);
			    	
			    	var targetObjectName = target.style.split('/');
			    	targetObjectName = targetObjectName[targetObjectName.length-1];
			    	targetObjectName = targetObjectName.split('.svg');
			    	targetObjectName = targetObjectName[0].split('-').join(' ');
			    	targetObjectName = capitalizeFirstLetter(targetObjectName);
			    	var selectedImg = document.getElementById("palete").getElementsByClassName("mxToolbarModeSelected")[0];
			    	console.log("selectedImg",selectedImg)
			    	var elementName = selectedImg.src.split('/');
   					elementName = elementName[elementName.length-1];
   					elementName = elementName.split('.svg');
   					elementName = elementName[0].split('-').join(' ');
   					elementName = capitalizeFirstLetter(elementName);
   					console.log("selectedImg",elementName)
   					
   					if('Composition'){
   						
   					}
   					else if('Aggregation'){
   						
   					}
   					else if('Assignment'){
   						
   					}
					else if('Realization'){
   						
   					}
   					else if('Serving'){
   						
   					}
   					else if('Access'){
   						
   					}
   					else if('Influence'){
   						
   					}
   					else if('Association'){
   						
   					}
   					else if('Triggering'){
   						
   					}
   					else if('Flow'){
   						
   					}
   					else if('Specialization'){
   						
   					}
   					
			    	
			    	$.ajax({
	   	   				url: "getPossibleRelationships",
	   	   				data:{'source':sourceObjectName,'target':targetObjectName},
	   	   				type: "POST",
	   	   				success: function(allRelations){
	   	   					if(allRelations.RelationshipNames.includes(elementName)){
	   	   						console.log('if');
	   	   						sourceGlobal= source;
	   	   						targetGlobal= target;
	   	   						returnRelVal('forward',elementName,sourceObjectName,targetObjectName);
	   	   					}
	   	   					
	   	   					else if(elementName != "Composition" && elementName != "Aggregation" && elementName != "Assignment" && elementName != "Realization" && elementName != "Serving" && elementName != "Access" && elementName != "Influence" && elementName != "Association" && elementName != "Triggering" && elementName != "Flow" && elementName != "Specialization" ){
	   	   					on_context_menu2(source,target,allRelations,x,y,sourceObjectName,targetObjectName);
	   	   				}
	   	   					else{
	   	   					}
	   	   				}
   	   				});
					return true;
				};
				
// 				var resetScreen = mxUtils.button('', function() {
// 					graph1.fit();
// 				});
// 				resetScreen.style.position = 'fixed';
// 				resetScreen.style.left = '95vw';
// 				resetScreen.title = "Reset Screen";
// 				resetScreen.style.top = '70vh';
// 				resetScreen.style.height = '30px';
// 				resetScreen.style.width = '30px';
// 				resetScreen.style.padding = '0px';
// 				resetScreen.style.background = '#e0e6f6';
//  				resetScreen.classList.add("resetScreen_zoom_in");
// 				document.getElementById("graphContainer").appendChild(resetScreen);
// 				$(".resetScreen_zoom_in").append("<img draggable=\"false\" alt=\"circle\" src=\"/EAZee/resources/js/examples/editors/images/images1/fit-screen.png\">");

// 				var button5 = mxUtils.button('', function() {
// 					graph1.zoomIn();
// 				});
// 				button5.style.position = 'fixed';
// 				button5.style.left = '95vw';
// 				button5.title = "Zoom In";
// 				button5.style.top = '75vh';
// 				button5.style.height = '30px';
// 				button5.style.width = '30px';
// 				button5.style.padding = '0px';
// 				button5.style.background = '#e0e6f6';
//  				button5.classList.add("button5_zoom_in");
// 				document.getElementById("graphContainer").appendChild(button5);
// 				$(".button5_zoom_in").append("<img draggable=\"false\" alt=\"circle\" src=\"/EAZee/resources/js/examples/editors/images/images1/zoomin.png\">");
				
// 				var button6 = mxUtils.button('', function() {
// 					graph1.zoomOut();
// 				});
// 				button6.style.position = 'fixed';
// 				button6.style.left = '95vw';
// 				button6.title = "Zoom Out";
// 				button6.style.top = '80vh';
// 				button6.style.height = '30px';
// 				button6.style.width = '30px';
// 				button6.style.padding = '0px';
// 				button6.style.background = '#e0e6f6';
//  				button6.classList.add("button6_zoom_out");
// 				document.getElementById("graphContainer").appendChild(button6);
// 				$(".button6_zoom_out").append("<img draggable=\"false\" alt=\"circle\" src=\"/EAZee/resources/js/examples/editors/images/images1/zoomout.png\">");

				
// 			<!-- 	Toolbar container for the graph 		-->
				// Creates the div for the toolbar
				var tbContainer = document.createElement('div');
				tbContainer.style.position = "absolute";
				tbContainer.style.background = "white";
				tbContainer.style.overflow = "hidden";
				tbContainer.style.padding = "3px";
				tbContainer.style.left = "0px";
				tbContainer.style.right = "700px";
				tbContainer.style.top = "0px";
				tbContainer.style.height = "100%";
				tbContainer.style.bottom = "10px";
				tbContainer.style.width = "min-content";
				tbContainer.style.spacingY = '50px';
				tbContainer.style.overflowY = "scroll";
// 				tbContainer.style.border = "solid #000000";
// 				tbContainer.style.borderWidth = "1px";
				document.getElementById("palete").appendChild(tbContainer);			
				
				// Creates new toolbar without event processing
				
				var toolbar = new mxToolbar(tbContainer);
				toolbar.enabled = true;
				
				// Workaround for Internet Explorer ignoring certain styles
				
				if (mxClient.IS_QUIRKS)
				{
					document.body.style.overflow = 'hidden';
					new mxDivResizer(tbContainer);
					new mxDivResizer(container);
				}
				
				graph.dropEnabled = true;
				
   				mxDragSource.prototype.dragEnter = function(graph, evt){
   					var toCheckGrouping = this.element.currentSrc.split('/');
   					toCheckGrouping = toCheckGrouping[toCheckGrouping.length-1];
   					toCheckGrouping = toCheckGrouping.split(".")[0];
   					console.log(toCheckGrouping);
   					
   					var imageSource = this.element.src;
					var element = this.element.src.split('/');
					var imageSource = this.element.src;
// 					imageSource = imageSource.replaceAll('.svg','1.svg');
					
					var imageName = element[element.length-1]
					var imageNameWithoutExt = imageName.split('-').join(' ')
					imageNameWithoutExt = imageNameWithoutExt.split(".")[0];
					
					color = getVertexColor(imageNameWithoutExt);
					var style = 'shape=label;strokeColor='+stColor+';fillColor='+color+';rounded=1;shadow=0;strokeWidth=0;image='+imageSource+';imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;' 
					 
// 						console.log("element",element)
//    						console.log("imageName",imageName)
//    						console.log("imageNameWithoutExt",imageNameWithoutExt)
//    						console.log('--------------------')
					
   	   				mxDragSource.prototype.drop = function(	graph, evt, dropTarget,	x, y){
						
						if(toCheckGrouping=='swimlane'){
							var vertex = graph1.insertVertex(parent, null,"Container", x, y, 120, 180, 'shape=swimlane;startSize=40');
						}
						else if(toCheckGrouping=='rectangle'){
							var vertex = graph1.insertVertex(parent, null,"", x, y, 200, 200, 'shape=label;strokeColor=black;fillColor=#0000000d;rounded=0.1;shadow=0;strokeWidth=1;whiteSpace=wrap;overflow=hidden;');
						}
						else if(toCheckGrouping=='and-junction'){
							var vertex = graph1.insertVertex(parent, null,"", x, y, 20, 20, 'shape=image;image=<c:url value="/resources/js/examples/editors/images/images1/and-junction1.svg"/>');
						}
						else if(toCheckGrouping=='or-junction'){
							var vertex = graph1.insertVertex(parent, null,"", x, y, 20, 20, 'shape=image;image=<c:url value="/resources/js/examples/editors/images/images1/or-junction1.svg"/>');
						}
						else if(toCheckGrouping=='oval_start'){
							alert('s')
							//var edge = graph1.addEdge(parent, null,"",40,40,'startArrow=oval;endArrow=;shape=oval_start;labelBackgroundColor=#FFFFFF/>');
// 							var e1 = graph.insertEdge(parent, null, '', x, y, 'dashed=1;'+
// 							'startArrow=oval;endArrow=block;sourcePerimeterSpacing=4;startFill=0;endFill=0;');
						}
						else{
	   	   				$.ajax({
		   	   				url: "getUniqueObjectName",
		   	   				data:{'objectName':imageNameWithoutExt},
		   	   				type: "POST",
		   	   				success: function(UniqueObjectName){
								createNewVertex(UniqueObjectName)
		   	   				}
	   	   				});
   	   					
						var parent = graph1.getDefaultParent();
						
							function createNewVertex(UniqueObjectName){
								var vertex = graph1.insertVertex(parent, null, UniqueObjectName.split(" ").join("\n") , x, y, 140, 60, style);
								$("#save_button").prop('disabled', true);
								$(".graph_button").prop('disabled', true);
								graphSaveButton[graph_name] = true;
								//console.log("get_div_id", get_div_id[0]);
								var encoder = new mxCodec();
								var parent = graph1.getDefaultParent();
								var node = encoder.encode(graph1.getModel());
								var new_xml_str = mxUtils.getXml(node);
								var get_old_xml = dictionaryXML;							
								dictionaryXML[graph_name] = new_xml_str;//set key1
								var updated_value = dictionaryXML[graph_name];//get key1
								
								var elementName1 = capitalizeFirstLetter(imageNameWithoutExt)
								imageSource = imageSource.replaceAll('1.svg','.svg');
								console.log('imageSource12',imageSource)
								console.log('elementName1',elementName1)
								var ul_id = "#"+elementName1.replaceAll(' ','_');
								$(ul_id).append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\',\''+imageSource+'\', \'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>');
								addInDB(elementName1,UniqueObjectName);
							
								$('#save_button').attr('disabled', false);
								$('.graph_button').attr('disabled', false);
								graphSaveButton[graph_name] = false;
							}
						}
						
   					}
   				}

				// Installs a handler for double click events in the graph
				// that shows an alert box
				
				graph.addListener(mxEvent.CELLS_MOVED, function(sender, evt)
				{
					var encoder = new mxCodec();
					var parent = graph1.getDefaultParent();
					var node = encoder.encode(graph1.getModel());
					var new_xml_str = mxUtils.getXml(node);
					var get_old_xml = dictionaryXML;							
					dictionaryXML[graph_name] = new_xml_str;//set key1
					var updated_value = dictionaryXML[graph_name];//get key1
					$('#save_button').attr('disabled', false);
					$('.graph_button').attr('disabled', false);
					graphSaveButton[graph_name] = false;
				});

				graph.addListener(mxEvent.DOUBLE_CLICK, function(sender, evt)
				{
					var cell = evt.getProperty('cell');
// 					cell.setAttribute('value', "AaAA");
					//var label = 'sdfdf';
// 					cell.setAttribute('label', label);
// 					graph.model.setValue(cell, label);
			       
// 					cell.value.setAttribute('label', "AaAA");
// 					cell.value = "asdsad";
					if(cell != null){
						if(cell.vertex == true){
						var cellValue = cell.value;
						var elementName = cell.style.split('/');
						elementName = elementName[elementName.length-1];
						elementName = elementName.split('.svg');
						elementName = elementName[0].split('-').join(' ');
						elementName = capitalizeFirstLetter(elementName);
						console.log("elementName", elementName)
						openFormOnCellDoubleClick(cellValue,elementName,cell);
						}else if(cell.edge == true){
							var source = cell.source.value;
							var target = cell.target.value;
							console.log(source,target)
						}
					}
			    });
				
				// Enables new connections in the gr m  
				
 				graph.setConnectable(true);
 				graph.setDisconnectOnMove(false);
//  				graph.connectionHandler.createTarget = true;
              //  graph.isAutoSizeCell(true);
 				graph.htmlLabels = true;
 				graph.centerZoom = true;
 				graph.setResizeContainer(false);
 				graph.setAllowNegativeCoordinates(true);
  				graph.setCellsCloneable(false);
  				graph.setPanning(true);
  				graph.panningHandler.useLeftButtonForPanning = true;
  				
// 				graph.setMultigraph(false);
				
				// Stops editing on enter or escape keypress
				var keyHandler = new mxKeyHandler(graph);
				var rubberband = new mxRubberband(graph);
				var addVertex = function(mylabel, icon, w, h, style)
				{
					var vertex = new mxCell(mylabel, new mxGeometry(0,0,w,h), style);
					vertex.setVertex(true);
					
				
					addToolbarItem(graph, toolbar, vertex, icon);
				};
				var addEdge = function(mylabel, icon, w, h, style)
					{
						var edge = new mxCell(mylabel, new mxGeometry(0,0,w,h),  style);
							  edge.geometry.setTerminalPoint(new mxPoint(50, 150), true);
							  edge.geometry.setTerminalPoint(new mxPoint(150, 50), false);
						
						edge.setEdge(true);

						  var funct = function(graph, evt, cell)
						    {
						        graph.stopEditing(false);
						        var pt = graph.getPointForEvent(evt);
						        var edge = graph.getModel().cloneCell(prototype);
						        edge.geometry.x = pt.x;
						        edge.geometry.y = pt.y;       
						        graph.setSelectionCells(graph.importCells([edge], 0, 0, cell));
						    }
				
						  edge.geometry.relative = true;
						  edge.edge = true;

						addToolbarItem(graph, toolbar, edge, icon);
					}
   						if(paleteCreated==0){
    							setTimeout(function(){ 
	   							$.ajax({
	   							    url: "getElementsForPalete", // url: "/findTables?dbName="+db_name,
// 	   							  	method: 'get',
	   							    type: "GET",
	   							    data: {},
	   							    success: function (elements) {
	   							    	//console.log('elements',elements);
	   							    	let i=1;
	   							    	$.each(elements, function(j, val){
	   							    		if(val=='break'){
	   							    			i=1;
// 	   							    			console.log('i in IF',i)
	   							    			toolbar.addLine();
	   							    		}else{
	   							    		let elementNameWithLineBreak = val.replaceAll(' ','\n');
	   							    		imageName = val.toLowerCase().replaceAll(' ','-')
	   							    		addVertex(elementNameWithLineBreak,'<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'.svg"/>', 135, 50, 'shape=label;image=<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'.svg"/>;strokeColor=Black;fillColor=#8bfa96;rounded=1;shadow=1;strokeWidth=2');
		   							    		
		   							    		if(i++%4==0){
	   							    			toolbar.addBreak();
	   							    		}
// 		   							    		console.log('i',i)
		   							    		
	   							    		}
	   							    	//	addVertex("Business\nActor",'<c:url value="/resources/js/examples/editors/images/images1/business-actor.svg"/>', 135, 50, 'shape=label;image=<c:url value="/resources/js/examples/editors/images/images1/business-actor.svg"/>;strokeColor=Black;fillColor=#8bfa96;rounded=1;shadow=1;strokeWidth=2');
	   									});
	   							    	toolbar.addLine();
	   							    	addVertex("Container",'<c:url value="/resources/js/examples/editors/images/swimlane.gif"/>', 120, 160, 'shape=swimlane;startSize=40');
	   							    	addVertex("Container",'<c:url value="/resources/js/examples/editors/images/rectangle.gif"/>', 120, 160, 'shape=rectangle;startSize=40');
	   								},
	   								complete: function (data) {
	   									var paletteImage = document.getElementById("palete").getElementsByTagName("img");
	   		   							
	   		   							$.each( paletteImage, function( key, value ) {
	   		   								var elementName = value.src.split('/');
	   		   								elementName = elementName[elementName.length-1];
	   		   								elementName = elementName.split('.svg');
	   		   								elementName = elementName[0].split('-').join(' ');
	   		   								elementName = capitalizeFirstLetter(elementName);
	   		   								if(elementName!='Swimlane.gif'){
	   		   									value.setAttribute("title", elementName);
	   		   								}
	   		   								else if(elementName=='Swimlane.gif'){
	   		   									value.setAttribute("title", "Container");
	   		   								}
		   		   							else if(elementName=='rectangle.gif'){
	   		   									value.setAttribute("title", "Rectangle");
	   		   								}
	   		   							});
	   							     },
	   								async: false,
		   							error: function(ts) {
										console.log("Error")
		   							}
	   							});
 	   						}, 2000);
// 							toolbar.addLine();
   							
// 							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/composition.svg"/>', 40, 40,
// 								'startArrow=diamond;startFill=1;endArrow=;labelBackgroundColor=#FFFFFF;');
							
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/aggregation.svg"/>', 40, 40,
//    									'startArrow=diamond;endArrow=;labelBackgroundColor=#FFFFFF;');
   							
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/assignment.svg"/>', 40, 40, 
//    									'startArrow=oval;endArrow=block;startFill=1;endFill=1;');
   					
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/realization.svg"/>', 40, 40, 
//    									'dashed=1;'+'startArrow=;endArrow=block;startFill=0;endFill=0;');
   							
//    							toolbar.addBreak();
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/serving.svg"/>', 40, 40, 
//    									'dashed=0;'+'startArrow=;endArrow=open;sourcePerimeterSpacing=4;startFill=0;endFill=0;');
   						
   							
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/access.svg"/>', 40, 40, 
//    									'dashed=1;'+'startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;');
   							
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/influence.svg"/>', 40, 40, 
//    									'dashed=1;'+'startArrow=;endArrow=open;labelBackgroundColor=#FFFFFF;');
   					
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/association.svg"/>', 40, 40, 
//    							 		'startArrow=;endArrow=;labelBackgroundColor=#FFFFFF;');
   							
//    							toolbar.addBreak();
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/triggering.svg"/>', 40, 40, 
//    									'dashed=0;'+'startArrow=;endArrow=block;sourcePerimeterSpacing=4;startFill=0;endFill=1;');
   						
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/flow.svg"/>', 40, 40, 
//    									'dashed=1;'+'startArrow=dash;endArrow=block;sourcePerimeterSpacing=4;startFill=0;endFill=1;');
   						
//    							addEdge("",'<c:url value="/resources/js/examples/editors/images/images1/specialization.svg"/>', 40, 40, 
//    									'dashed=0;'+'startArrow=;endArrow=block;sourcePerimeterSpacing=4;startFill=0;endFill=0;');
   						
			   				paleteCreated = 1;
   						}
//    						graph.addListener(mxEvent.CLICK, function (sender, evt) {
//    						    var cell = evt.getProperty("cell"); // cell may be null
//    						    if (cell != null) {
//    						        SelectGraphCell(cell);
//    						        graph.setSelectionCell(cell);
//    						    }
//    						    evt.consume();
//    						});
				
				var button3 = mxUtils.button('Get DB', function() {
					$.ajax({
						url: "getGraph",
						data:{dbname:"graphs", tablename:"json_graph"},
						success: function(result){
						
						var xml = result;
						alert(result);
				
			    
				    var diagram = mxUtils.parseXml(xml);
				    var codec = new mxCodec(diagram);
				    codec.decode(diagram.documentElement, graph1.getModel());
				}});	
			});
		button3.style.position = 'absolute';
		button3.style.left = '210px';
		button3.style.top = '20px';
		button3.style.visibility = "hidden";
		document.getElementById("graphId").appendChild(button3);
		//// Graph DELETE and UNDO //////// START /////////////
		var keyHandler = new mxKeyHandler(graph);
		keyHandler.bindKey(46, function(evt)
		{
			var cell = graph.getSelectionCell();
			if(cell.edge==true){
				var sourceElementName = cell.source.style.split('/');
				sourceElementName = sourceElementName[sourceElementName.length-1];
				sourceElementName = sourceElementName.split('1.svg');
		    	sourceElementName = sourceElementName[0].split('-').join(' ');
		    	sourceElementName = capitalizeFirstLetter(sourceElementName);
		    	
		    	var targetElementName = cell.target.style.split('/');
		    	targetElementName = targetElementName[targetElementName.length-1];
		    	targetElementName = targetElementName.split('1.svg');
		    	targetElementName = targetElementName[0].split('-').join(' ');
		    	targetElementName = capitalizeFirstLetter(targetElementName);    	
		    	
		    	var source = cell.source.value.replaceAll("\n"," ");
				var target = cell.target.value.replaceAll("\n"," ");
				var relation = cell.value;
				
				$.ajax({
				      url: "deleteRelationshipFromGraph", // url: "/findTables?dbName="+db_name,
				      //type: "GET",
				      data: {sourceElementName,targetElementName,source,target,relation},
						success: function(data) {
							
				       },
							async: false
					});
				
			}
		  if (graph.isEnabled())
		  {
		    graph.removeCells();
		    var encoder = new mxCodec();
			var parent = graph1.getDefaultParent();
			var node = encoder.encode(graph1.getModel());
			var new_xml_str = mxUtils.getXml(node);
			var get_old_xml = dictionaryXML;							
			dictionaryXML[graph_name] = new_xml_str;//set key1
			var updated_value = dictionaryXML[graph_name];//get key1
		    $("#save_button").prop('disabled', false);
		    $(".graph_button").prop('disabled', false);
		    graphSaveButton[graph_name] = false;
		  }
	
			
		});

		
	
		graph.getModel().addListener(mxEvent.UNDO, listener);
		graph.getView().addListener(mxEvent.UNDO, listener);

		function KeyPress(e) {
		      var evtobj = window.event? event : e
		      if (evtobj.keyCode == 90 && evtobj.ctrlKey) 
		    	  undoManager.undo();
			    var encoder = new mxCodec();
				var parent = graph1.getDefaultParent();
				var node = encoder.encode(graph1.getModel());
				var new_xml_str = mxUtils.getXml(node);
				var get_old_xml = dictionaryXML;							
				dictionaryXML[graph_name] = new_xml_str;//set key1
				var updated_value = dictionaryXML[graph_name];//get key1
			    $("#save_button").prop('disabled', false);	
			    $(".graph_button").prop('disabled', false);
			    graphSaveButton[graph_name] = false;
		}
	function main(container)
		{
			// Checks if the browser is supported
			if (!mxClient.isBrowserSupported())
			{
				// Displays an error message if the browser is not supported.
				mxUtils.error('Browser is not supported!', 200, false);
			}
			else
			{
				// Creates the graph inside the given container
				var graph1 = new mxGraph(container);
				graph1.setPanning(true);
				
				// Specifies the URL and size of the new control
				var deleteImage = new mxImage('editors/images/overlays/forbidden.png', 16, 16);

				// Overridden to add an additional control to the state at creation time
				mxCellRendererCreateControl = mxCellRenderer.prototype.createControl;
				mxCellRenderer.prototype.createControl = function(state)
				{
					mxCellRendererCreateControl.apply(this, arguments);
					
					var graph1 = state.view.graph;
					
					if (graph1.getModel().isVertex(state.cell))
					{
						if (state.deleteControl == null)
						{
							var b = new mxRectangle(0, 0, deleteImage.width, deleteImage.height);
							state.deleteControl = new mxImageShape(b, deleteImage.src);
							state.deleteControl.dialect = graph.dialect;
							state.deleteControl.preserveImageAspect = false;
							
							this.initControl(state, state.deleteControl, false, function (evt)
							{
								if (graph1.isEnabled())
								{
									graph1.removeCells([state.cell]);
									mxEvent.consume(evt);
								}
							});
						}
					}
					else if (state.deleteControl != null)
					{
						state.deleteControl.destroy();
						state.deleteControl = null;
					}
				};
				
				// Overridden to update the scale and bounds of the control
				mxCellRendererRedrawControl = mxCellRenderer.prototype.redrawControl;
				mxCellRenderer.prototype.redrawControl = function(state)
				{
					mxCellRendererRedrawControl.apply(this, arguments);
					
					if (state.deleteControl != null)
					{
						var bounds = getDeleteControlBounds(state);
						var s = state.view.scale;
						
						if (state.deleteControl.scale != s || !state.deleteControl.bounds.equals(bounds))
						{
							state.deleteControl.bounds = bounds;
							state.deleteControl.scale = s;
							state.deleteControl.redraw();
						}
					}
				};
				
				// Overridden to remove the control if the state is destroyed
				mxCellRendererDestroy = mxCellRenderer.prototype.destroy;
				mxCellRenderer.prototype.destroy = function(state)
				{
					mxCellRendererDestroy.apply(this, arguments);

					if (state.deleteControl != null)
					{
						state.deleteControl.destroy();
						state.deleteControl = null;
					}
				};

				new mxRubberband(graph);
				
								
				graph1.centerZoom = false;
				
				document.body.appendChild(mxUtils.button('Zoom In', function()
				{
					graph1.zoomIn();
				}));
				
				document.body.appendChild(mxUtils.button('Zoom Out', function()
				{
					graph1.zoomOut();
				}));
			}
		}
		//// zoom in zoom out end here
	
		graph1 = graph;
		return false;
	}
	
	
}


function view_xml() {
   var encoder = new mxCodec();
   var parent = graph1.getDefaultParent();
   var node = encoder.encode(graph1.getModel());
   mxUtils.popup(mxUtils.getPrettyXml(node), true);
} 

function save_graph() {
/* 	$.ajax({
	      url: "getDateForFormSubmit", // url: "/findTables?dbName="+db_name,
	      type: "GET",
	      data: {
	    	  	'tableName' :tableName,
	    	  	'row_name' :row_name[0],
	      },
	      //dataType: "text/String"
		success: function(data) {
			updated_time = data.slice(0, 19);
			if(last_time_updated.slice(0, 19) === updated_time){
				let getcurrentDate = new Date();
				let gethour = getcurrentDate.getHours();
				let getMinute = getcurrentDate.getMinutes();
				//console.log("getMinute", getMinute)
				if(getMinute < 10){
					getMinute = "0"+getMinute;
				}
				let getSecond = getcurrentDate.getSeconds();
				//console.log("getSecond", getSecond)
				getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
				//console.log(getcurrentDate.toISOString().slice(0, 19).replace('T', ' '));
				last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');
			}
			else{
				$(".alert_message").html('<div class="alert alert-danger" role="alert">Another User Updated This File Please Refresh the tree!!</div>');
		    	alert_message_function();
			}
		},
	      error: function(data){ 
	      	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
		    	alert_message_function(); 
	      }
	}); */
	
	let graphNameForSaveButton = $("#element_title").html();
	if(graphNameForSaveButton){
		console.log("graphNameForSaveButton", graphNameForSaveButton);
	$.ajax({
		url: "getGraphLastDate",
		data:{'graphID':openedGraphID},
		success: function(result){
			last_time_updated = result.slice(0, 19);
			
			if(last_time_updated === dictionaryGraphDates[openedGraphID]){
				
				let getcurrentDate = new Date();
				let gethour = getcurrentDate.getHours();
				let getMinute = getcurrentDate.getMinutes();
				//console.log("getMinute", getMinute)
				if(getMinute < 10){
					getMinute = "0"+getMinute;
				}
				let getSecond = getcurrentDate.getSeconds();
				//console.log("getSecond", getSecond)
				getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
				//console.log(getcurrentDate.toISOString().slice(0, 19).replace('T', ' '));
				last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');
				
				dictionaryGraphDates[openedGraphID] = last_time_updated;
				var encoder = new mxCodec();
				var parent = graph1.getDefaultParent();
				var node = encoder.encode(graph1.getModel());
				
				var xml_str = mxUtils.getXml(node);
				console.log(xml_str)
				var forSplit = xml_str.split('mxCell id="')
				console.log('FOR SPLIT',forSplit)
				var last_element = forSplit.length-1
				console.log('last element',forSplit[last_element].charAt(0))
				
				$.ajax({
					url: "save_graph",
					data:{'graph_json':xml_str,'graphname':'ssf','graphID':openedGraphID},
					type: "POST",
					success: function(result){
					$(".alert_message").html('<div class="alert alert-success" role="alert">Graph has been saved!</div>');
					alert_message_function();
					$("#save_button").prop('disabled', true);
					$(".graph_button").prop('disabled', true);
					graphSaveButton[graph_name] = true;
				}});
			}else{
				//alert("Another User Updated This File Please Refresh the tree!!")
				$(".alert_message").html('<div class="alert alert-danger" role="alert">Another User Updated This File Please Refresh the tree!!</div>');
		    	alert_message_function();
			}
		},
        error: function(data){ 
        	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
	    	alert_message_function(); 
        }
	});
		refreshTree(); getGraphNames();
	}
	else{
    	$(".alert_message").html('<div class="alert alert-danger" role="alert">File Not Selected.</div>');
    	alert_message_function();
	}
}

function save_graph_for_rename_component() {
	var encoder = new mxCodec();
	var parent = graph1.getDefaultParent();
	var node = encoder.encode(graph1.getModel());

	var xml_str = mxUtils.getXml(node);
						
	dictionaryXML[graph_name] = xml_str;//set key1
	var forSplit = xml_str.split('mxCell id="')
	var last_element = forSplit.length-1
		$.ajax({
			url: "save_graph",
			data:{'graph_json':xml_str,'graphname':'ssf','graphID':openedGraphID},
			type: "POST",
			success: function(result){
			//alert(result);
			$("#save_button").prop('disabled', true);
			$(".graph_button").prop('disabled', true);
			graphSaveButton[graph_name] = true;
		}});
	
}

var undoManager = new mxUndoManager();
var listener = function(sender, evt)
{
	undoManager.undoableEditHappened(evt.getProperty('edit'));

};

// Changes XML to JSON
function xmlToJson(xml) {
	
	// Create the return object
	var obj = {};

	if (xml.nodeType == 1) { // element
		// do attributes
		if (xml.attributes.length > 0) {
		obj["@attributes"] = {};
			for (var j = 0; j < xml.attributes.length; j++) {
				var attribute = xml.attributes.item(j);
				obj["@attributes"][attribute.nodeName] = attribute.nodeValue;
			}
		}
	} else if (xml.nodeType == 3) { // text
		obj = xml.nodeValue;
	}

	if (xml.hasChildNodes()) {
		for(var i = 0; i < xml.childNodes.length; i++) {
			var item = xml.childNodes.item(i);
			var nodeName = item.nodeName;
			if (typeof(obj[nodeName]) == "undefined") {
				obj[nodeName] = xmlToJson(item);
			} else {
				if (typeof(obj[nodeName].push) == "undefined") {
					var old = obj[nodeName];
					obj[nodeName] = [];
					obj[nodeName].push(old);
				}
				obj[nodeName].push(xmlToJson(item));
			}
		}
	}
	return obj;
};

function addToolbarItem(graph, toolbar, prototype, image)
{
	// Function that is executed when the image is dropped on
	// the graph. The cell argument points to the cell under
	// the mousepointer if there is one.
	var funct = function(graph, evt, cell)
	{
		graph.stopEditing(false);

		var pt = graph.getPointForEvent(evt);
		var vertex = graph.getModel().cloneCell(prototype);
		vertex.geometry.x = pt.x;
		vertex.geometry.y = pt.y;
		
		graph.setSelectionCells(graph.importCells([vertex], 0, 0, cell));
	}

	// Creates the image which is used as the drag icon (preview)
	var img = toolbar.addMode(null, image, funct);
	mxUtils.makeDraggable(img, graph, funct);
}

var dictionaryXML = {};
var dictionaryGraphDates = {};
function getDBlist(graphName_1,id,isGraphUpdate){
	console.log("historyTabItems: DBList ",historyTabItems)
	$("#chart").css("display", "none");
	if(isGraphUpdate==false){
    	  graph1.setEnabled(false);
    	  document.getElementById("palete").style.pointerEvents = "none";
    	  $("#save_button").remove();
    	  $("#fit-screen").remove();
    	  $("#zoom-out").remove();
    	  $("#zoom-in").remove();
      }
	var nonExistingElements = [];
	$.ajax({
		url: "checkFileStatus",
		data:{'graphID':id},
		success: function(result){
			if(result == 1){
				$("#save_button").prop('disabled', true);
				$(".graph_button").prop('disabled', true);
				graphSaveButton[graph_name] = true;
				graph_name=graphName_1
				var graphExists = false;
				openedGraphID = id;
				$("#save_button").show();
				$(".graph_button").show();
				if(createNew == true){
					addNewGraphInHistory();
					createNew = false;
				}
				$.ajax({
					url: "getGraphLastDate",
					data:{'graphID':id},
					success: function(result){
						last_time_updated = result.slice(0, 19);
						dictionaryGraphDates[id] = last_time_updated;
						
					}
				});
					
				$.ajax({
					url: "getGraph",
					data:{dbname:"graphs", graphName:graphName_1},
					success: function(result){
						
				 		var xml = result;
				 		xmlDoc = $.parseXML(xml),
						$xml = $(xmlDoc),
						$intRate = $xml.find("mxCell");
				 		console.log($intRate.length)
						$intRate.each(function(index, element) {
							if(element.attributes["value"]) {
								var cellElementName = element.attributes["style"].value;
								console.log('cellElementName',cellElementName)
								cellElementName = cellElementName.split('.svg')[0];
								cellElementName = cellElementName.split('/');
								cellElementName = cellElementName[cellElementName.length-1].replaceAll('-',' ');
								cellElementName = capitalizeFirstLetter(cellElementName);
								
								var loopCellValue = element.attributes["value"].value;
								loopCellValue = loopCellValue.replaceAll('\n',' ');
								
								
								$.ajax({
									url: "validateObjectName", // url: "/findTables?dbName="+db_name,
								    //type: "GET",
								    data: {
								    	'tableName' :cellElementName,
								    	'object_name' :loopCellValue,
							    	  	'oldName': '',
									},
								      //dataType: "text/String"
									success: function(data) {
										if(data == ''){
											nonExistingElements.push(loopCellValue);
											console.log('nonExistingElements',nonExistingElements)
										}
									},
									async: false
								});
							}
							if(index==$intRate.length-1){
								console.log('nonExistingElements',nonExistingElements)
								if(nonExistingElements.length != 0){
									nonExistingElementsFunc(nonExistingElements);	
								}
							}
						});
				// 		console.log("xml", xml)
				// 	    xmlDoc = $.parseXML(xml),
				// 	    $xml = $(xmlDoc),
				// 	    $intRate = $xml.find("mxCell");
				// 	    $intRate.each(function(index, element) { 
				// 	        if(element.attributes["value"]) {
				// 	            console.log("Value :" + element.attributes["value"].value);
				// 	        }
				// 	    });
					    
						$.each(allDivIds, function(i, val){
							$( "#"+val+"11" ).css("background", "");
						});
						$.each( dictionaryXML, function( key, value ) {
					  		if(key==graphName_1){
					  			graphXML = value;
								graphExists = true;
					  		}
					  		else{
								$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
					  		}
						});
						
						
						if(graphExists!=true){
							$("#historyList").append('<div id="'+graphName_1.replaceAll(' ','_')+'11" class="column gh'+id+'"><div style="display:inline-block"><span class="close_image" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\',\''+id+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>"><br/>'+graphName_1+'</a></div></div>');
							//$("#historyList").append('<a class="dropdown-item" href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>">'+graphName_1+'</a>');
							$("#history_tab").css("display", "flex")
							dictionaryXML[graphName_1] = xml;
						}
						else{
							console.log("true")
						}
						numItems = $('.column').length;
						$(".history_page_no").html(numItems)
						$( "#"+graphName_1.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
						currentWindowID = graphName_1.replaceAll(' ','_')+"11";
						var diagram = mxUtils.parseXml(result);
					    var codec = new mxCodec(diagram);
					    codec.decode(diagram.documentElement, graph1.getModel());
						},
				        error: function(data){ 
				        	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
					    	alert_message_function(); 
				        }
					});	
				
					modelsView();
					$("#element_title").show().text(graphName_1);
					$('#element_title').prop('title', graphName_1);
			}
			else{
				$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
		    	alert_message_function();
			}
			//last_time_updated = result.slice(0, 19);
			//dictionaryGraphDates[id] = last_time_updated;
			
		}
	});
}

function drawGraphFromHistory(graphName,id){
	$('#chart').hide();
	var button_prop = graphSaveButton[graphName];
	$("#save_button").prop('disabled', button_prop);
	$(".graph_button").prop('disabled', button_prop);
	graph_name = graphName;
	openedGraphID = id;
	$("#save_button").show();
	$(".graph_button").show();
	$("#history_page_no").html(numItems)
	numItems = $('.column').length;
	$(".history_page_no").html(numItems)
	$("#historyList").css("display", "none");
	
	$.each(allDivIds, function(i, val){
		$( "#"+val+"11" ).css("background", "");
	});
	if(createNew == true){
		addNewGraphInHistory();
		createNew = false;
	}
	var graphXML = "";
	
	$.each( dictionaryXML, function( key, value ) {
  		if(key==graphName){
  			graphXML = value;
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
			currentWindowID = key.replaceAll(' ','_')+"11";
  		}
  		else{
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
  		}
	});
	
	var diagram = mxUtils.parseXml(graphXML);
    var codec = new mxCodec(diagram);
    codec.decode(diagram.documentElement, graph1.getModel());
	modelsView();
	$("#element_title").show().text(graphName);
	$('#element_title').prop('title', graphName);
}

// function callGraphOrTableView(variable1){
// 	$("#form_id").empty();
// 	if(variable1 == 0){
// // 		$("#palete").hide();
// 		$("#palete").css("display", "none");
// 		tableView = true;
// 		$("#callGraphOrTableView").text("Graphical View");
// 	}else{
// 		tableView = false;
// // 		$("#palete").show();
// 		$("#palete").css("display", "block");
// 		callGraph();
// 		$("#callGraphOrTableView").text("Table View");
// 	}

// }
var newGraphXML = '<mxGraphModel> <root><mxCell id="0" /><mxCell id="1" parent="0" /></root></mxGraphModel>';
var createNew = false;
function objectsView(){
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "block");
	$("#catalog").css("display", "none");
	$("#chart").css("display", "block");
	$("#chart").hide();
	$("#matrix").css("display", "none");
	$(".catalog_save_button").css("display", "none");
	$(".matrix_save_button").css("display", "none");
	$("#changeHistoryMyPageTable").css("display", "none");
	tableView = true;
}

function matrixView(){
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "none");
	$("#catalog").css("display", "none");
	$("#matrix").css("display", "block");
	$("#fit-screen").css("display", "none");
	$("#zoom-in").css("display", "none");
	$("#zoom-out").css("display", "none");
	$("#save_button").css("display", "none");
	$("#line").css("display", "none");
	$(".catalog_save_button").css("display", "none");
	$(".matrix_save_button").css("display", "block");
	$("#chart").hide();
	$("#chart").css("display", "none");
	$("#changeHistoryMyPageTable").css("display", "none");

}

function catalogView(){
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "none");
	$("#catalog").css("display", "block");
	$("#matrix").css("display", "none");
	$("#fit-screen").css("display", "none");
	$("#zoom-in").css("display", "none");
	$("#zoom-out").css("display", "none");
	$("#save_button").css("display", "none");
	$("#line").css("display", "none");
	$(".catalog_save_button").css("display", "block");
	$(".matrix_save_button").css("display", "none");
	$("#changeHistoryMyPageTable").css("display", "none");
}

function modelsView(){
	tableView = false;
	$("#palete").css("display", "block");
	$("#form_id").css("display", "none");
	$("#graphId").css("display", "block");
	$("#catalog").css("display", "none");
	$("#matrix").css("display", "none");
	$(".catalog_save_button").css("display", "none");
	$(".matrix_save_button").css("display", "none");
	$("#chart").css("display", "block");
	$("#chart").hide();
	$("#changeHistoryMyPageTable").css("display", "none");
	if(paleteCreated==0)
		callGraph();
}

function RoadMapView(){
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "none");
	$("#catalog").css("display", "block");
	$("#matrix").css("display", "none");
	$("#fit-screen").css("display", "none");
	$("#zoom-in").css("display", "none");
	$("#zoom-out").css("display", "none");
	$("#save_button").css("display", "none");
	$("#line").css("display", "none");
	$(".catalog_save_button").css("display", "block");
	$(".matrix_save_button").css("display", "none");
	$("#changeHistoryMyPageTable").css("display", "none");
}
function addNewGraphInHistory(){
	var encoder = new mxCodec();
	var parent = graph1.getDefaultParent();
	var node = encoder.encode(graph1.getModel());
	
	var xml_graph = mxUtils.getXml(node);
	
	var graphName_1 = 'New Graph';
	$("#historyList").append('<div id="'+graphName_1.replaceAll(' ','_')+'11" class="column"><div style="display:inline-block"><span class="close_image" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>"><br/>'+graphName_1+'</a></div></div>');
	currentWindowID = graphName_1+'11';
    //$("#historyList").append('<a class="dropdown-item" href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>">'+graphName_1+'</a>');
    $("#history_tab").css("display", "flex")
	dictionaryXML[graphName_1] = xml_graph;
	$.each(allDivIds, function(i, val){
		$( "#"+val+"11" ).css("background", "");
	});
	$.each( dictionaryXML, function( key, value ) {
  		if(key==graphName_1){
  			graphXML = value;
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
			currentWindowID = key.replaceAll(' ','_')+"11";
  		}
  		else{
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
  		}
	});
}

function createNewGraph(){
	$("#save_button").show();
	$(".graph_button").show();
	modelsView();
	if(createNew == true){
		addNewGraphInHistory();
		createNew = false;
	}
	var diagram = mxUtils.parseXml(newGraphXML);
    var codec = new mxCodec(diagram);
    codec.decode(diagram.documentElement, graph1.getModel());
    createNew = true;
}

//background
function mycallback(info, tab) {
    chrome.tabs.sendMessage(tab.id, "getClickedEl", {frameId: info.frameId}, data => {
        elt.value = data.value;
    });
}
                // Context menu setup

	
	
	
	function reload() {
		location.reload();

		}
	
	// dragging object from tree and droping to graph 
	
	function allowDrop(ev) {
		  ev.preventDefault();
		}

		function drag(ev,obj,img) {
			var elementName = img.split('/');
			elementName = elementName[elementName.length-1];
			elementName = elementName.split('.svg');
			elementName = elementName[0].split('-').join(' ');
			color = getVertexColor(elementName);
// 		  console.log(ev,obj,img)
		  ev.dataTransfer.setData(obj, ev.target.id);
		  currentObj = obj;
		  imageSource = img;
		}

		function drop(ev) {
			if(navigationView == true){
				console.log(ev)
				var pt1 = navigationGraph.getPointForEvent(ev);
				navigationCellDraw(currentObj,pt1.x,pt1.y,imageSource);
			}else{
				var pt = graph1.getPointForEvent(ev);
				updateGraph(currentObj,pt.x,pt.y,imageSource)
				$("#save_button").prop('disabled', false);
				$(".graph_button").prop('disabled', false);
				graphSaveButton[graph_name] = false;
			}
		}

		var currentObj = '';
		var imageSource = '';
			
		function addInDB(elementName,objectName){
			//console.log(elementName,objectName)
			$.ajax({
				url: "addElementInDBFromGraph",
				data:{'elementName':elementName,'objectName':objectName},
				success: function(result){
				}
			});
		}
		
		function saveAll(){
			
			var object_saved = '0';
			var model_saved = '0';

			$.each( get_data_for_save_button, function( key, value ) {
				var dbName = value.dbName;
				var tableName = value.tableName;
				var attributes = value.attributes;
				var idd = value.idd;
				var allIds = value.allIds;
				var row_name = value.row_name;
				var AllRelRowIDs = value.AllRelRowIDs;
				var current_ID = value.current_ID;
				var CurrenttabID = value.CurrenttabID;
				var imageName = value.imageName;
				var btnedit = value.btnedit;
				console.log( key + ": " + value.dbName );
				  var formData = [];
					$.each(allIds, function(i, val1){
						var tag = document.getElementById(val1).tagName;
						if(tag == 'TABLE'){
							var object_names_form = document.getElementById(val1).getElementsByClassName("object_name_form");
							var allObjects = '';
							$.each( object_names_form, function( key, value ) {
								allObjects += value.innerHTML+",";
							});
							allObjects = allObjects.slice(0, -1);
							formData.push(allObjects);
						}else if(tag == 'TEXTAREA'){
							var currentAttVal = $('#'+val1).html();
							formData.push(currentAttVal);
						}else {
							formData.push($('#'+val1).val())
						}
		             });
					var id = idd[0];
					
				$.ajax({
			      url: "editRow", // url: "/findTables?dbName="+db_name,
			      //type: "GET",
			      data: {'tableName' :tableName,
			    	  	'attributes' :attributes,
			    	  	'id' :id,
			    	  	'oldName': row_name[0],
			    	  	'formData' :formData,
			    	  	'AllRelRowIDs' :AllRelRowIDs
			      },
			      //dataType: "text/String"
				success: function(data) {
					var get_id = $("#"+CurrenttabID+" :input[name=\"Name\"]").attr("id");
					var new_value_input = $("#"+get_id+"").val();
					var change_value = $('#'+get_id).val(new_value_input);
					var removeItem = change_value[0].value.replaceAll(' ','---')+'_'+tableName;
					historyTabItems = jQuery.grep(historyTabItems	, function(value) {
						  return value != removeItem;
					});
					var clsName = change_value[0].value.replaceAll(' ','---')+'_'+tableName;
					if(historyTabItems.includes(clsName) == false){
					 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
					   $("#history_tab").css("display", "flex")
					   historyTabItems.push(clsName);
					}
					$("#"+btnedit).attr('disabled', true);
					object_saved = '1';
					save_all_alert(object_saved);
			        }
			    });
			});
			
			$.each( dictionaryXML, function( key, value ) {
				$.ajax({
					url: "save_all_graphs",
					data:{'graph_json':value,'graphname':key},
					type: "POST",
					success: function(result){
						model_saved = '1';
						save_all_alert(model_saved)
					},
					async: false
				});
			});
			
			function save_all_alert(update){
				if(update == '1'){
					console.log("Changes Successfully Saved!")
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">Changes Successfully Saved!</div>');
			    	alert_message_function();
				}
				else{
					console.log("Changes Not Successfully Saved!")
			    	$(".alert_message").html('<div class="alert alert-danger" role="alert">Changes Not Successfully Saved!</div>');
			    	alert_message_function();
				}
			}
		}
			
		function changecolor(){
			 var cell = graph1.getSelectionCell();  
			 var color = document.getElementById('colorInput').value;
			 if(cell.value=='Container'){
				 console.log('cell :',cell)
				 var style1 = 'shape=swimlane;startSize=40;fillColor='+color;
				 graph1.setCellStyle(style1, [cell] );
				 
			 }else{
				 
				 var style1 = cell.style.split('fillColor=');
				 var temp1 = style1[0];
				 var temp2 = style1[1].split(';');
				 temp2 = temp2.slice(1, temp2.length);
				 temp2 = temp2.join(';')
				 var finalStyle = temp1+'fillColor='+color+';' +temp2; 
				 graph1.setCellStyle(finalStyle, [cell] );
			 }
			 
				var encoder = new mxCodec();
				var parent = graph1.getDefaultParent();
				var node = encoder.encode(graph1.getModel());
				var new_xml_str = mxUtils.getXml(node);
				var get_old_xml = dictionaryXML;							
				dictionaryXML[graph_name] = new_xml_str;//set key1
				var updated_value = dictionaryXML[graph_name];//get key1
				$('#save_button').attr('disabled', false);
				$('.graph_button').attr('disabled', false);
				graphSaveButton[graph_name] = false;			 
		}
		
		function urlEditable(inputID,linkID,editID){
		     //	$("#"+urlID+"Link").attr('contentEditable', true);
		     $("#"+linkID).attr('disabled', false);
		     $("#"+linkID).css("display", "none");
		     $("."+linkID).css("display", "none");
		     $("#"+editID).css("display", "none");
		     $("#"+inputID).css("display", "block");
		     $("#"+linkID).removeClass("disabled");
		     $("#"+inputID).show();
		     let var1 = document.getElementById(inputID );
		     //let var1 = $("#"+urlID+"Input")
		     var1.addEventListener("blur", function () {
		      showURLfield(inputID,linkID,editID);
		    });
		     var1.addEventListener("keypress", function (e) {
		      if (e.key === 'Enter') {
		        showURLfield(inputID,linkID,editID);
		      }
		  
		    });

		   }
		   function showURLfield(inputID,linkID,editID){
		     $("#"+linkID).css("display", "inline");
		     $("."+linkID).css("display", "block");
		     $("#"+editID).css("display", "inline");
		     $("#"+inputID).css("display", "none");

		     $("#"+linkID).attr("href",  "http://"+$("#"+inputID).val() );
		     $("#"+linkID).html($("#"+inputID).val());
		   }


</script>
</head>
<body onload="firstFunction();changeTheme();" style="display:none">
<%-- <img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/eazee-Logo.png"/>"> --%>
<img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/main-logo-removebg.png"/>">
<div class="container-fluid" style="margin: 0 !important; padding: 0 !important; width:100vw">
	<div class="header">
		<div>
		<a href="home"><p class="image1" style="margin-left: 5px"><img draggable="false" alt="logo"  width="110px" src="<c:url value="/resources/images/main-logo-removebg.png"/>"></p></a>
		</div>
		<div style="display:flex;justify-content: space-between; padding-right:10px">
			<div id="history_tab" class="btn-group dropdown">	  
	 			<button  type="button" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="displaydiv();">
	 				<img class="history-icon" alt="schema" width="20px" height="20px" src="<c:url value="resources/images/tabs-default.svg"/>"/>
					<span style="background:#e9e9e9" class="history_page_no badge badge-light">0</span>
	 			</button>
				<div id="historyList" class="dropdown-menu dropdown-menu-right table_row" style="width:350px; border: 1px solid black;transform-origin: right;">
					<div class="history_tool">
						<span type="button" onclick="close_all_history_div();"><spring:message code="close_all"/></span>
					</div>
		</div>
			</div>	
<!-- 		<div id="home-btn" class="languageText" style="margin-top:3px!important;"> -->
<!-- 			<a href="lang=rtl" class="fa-2x lang-icon" draggable="false" title="Module Page">Ar</a> -->
<!-- 		</div> -->
		<div id="home-btn">
			<a href="home" class="fa fa-home fa-2x" draggable="false" title="Module Page" ></a>
		</div>
			
	<!-- ///////////////////////////////////////////////////////// -->
			<div class="account-item clearfix js-item-menu ">
				<div class="content">
					<a class="js-acc-btn" href="#">${userProfileDetials.userFullName}  <i class="fa fa-caret-down" aria-hidden="true"></i></a>
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
							<a href="userprofile"><i class="fa fa-user" aria-hidden="true"></i>Account</a>
						</div>
					</div>
					<div class="account-dropdown__footer">
						<a href="logout"><i class="fa fa-power-off" aria-hidden="true"></i>Logout</a>
					</div>
				</div>
			</div>
	<!-- ///////////////////////////////////////////////////////// -->			
		</div>

	</div>
	
	
<!-- 	<nav class="navbar navbar-expand-lg navbar-expand-sm navbar-light bg-light" style="margin-left:-17px; background: #f2f2f2; height: 48px"> -->
<!-- 		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav"> -->
<!-- 		    <span class="navbar-toggler-icon"></span> -->
<!-- 		</button> -->
<!-- 		<div class="collapse navbar-collapse" id="main_nav" style="margin-top:-10px"> -->
<!-- 			<ul class="navbar-nav"> -->
<!-- 			<li class="nav-item dropdown unselectable"> -->
<%-- 			    <a class="nav-link" href="#" data-toggle="dropdown" draggable="false">  <spring:message code="file" />  </a> --%>
<!-- 			    <ul class="dropdown-menu" style="background:#f2f2f2"> -->
<%-- 				  <li><a class="dropdown-item" href="#" draggable="false"> <spring:message code="new" /> </a></li> --%>
<%-- 				  <li><a class="dropdown-item" href="#" draggable="false"> <spring:message code="open" /> </a> --%>
<!-- 					 <ul class="submenu dropdown-menu" style="background:#f2f2f2"> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Third level 1</a></li> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Third level 2</a></li> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Third level 3 </a> -->
<!-- 						<ul class="submenu dropdown-menu" style="background:#f2f2f2"> -->
<!-- 						    <li><a class="dropdown-item" href="" draggable="false"> Fourth level 1</a></li> -->
<!-- 						    <li><a class="dropdown-item" href="" draggable="false"> Fourth level 2</a></li> -->
<!-- 						</ul> -->
<!-- 					    </li> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Second level  4</a></li> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Second level  5</a></li> -->
<!-- 					 </ul> -->
<!-- 				  </li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Open Recent </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Open View </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Close Model </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Close View </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Close All Views </a></li> -->
<%-- 				  <li><a onclick="saveAll();" class="dropdown-item" href="#" draggable="false"> <spring:message code="save_all" /> </a></li> --%>
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Save As </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Save As Template... </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Print </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Import </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Export </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Report </a></li> -->
<!-- 				  <li><a class="dropdown-item disabled" href="#" draggable="false"> Properties </a></li> -->
<%-- 				  <li><a class="dropdown-item" href="logout" draggable="false"> <spring:message code="logout" /> </a></li> --%>
<!-- 			    </ul> -->
<!-- 			</li> -->
<!-- 			<li class="nav-item unselectable"> <a class="nav-link" href="#" draggable="false"> Edit </a></li> -->
<!-- 			<li class="nav-item dropdown unselectable"> -->
<!-- 			    <a class="nav-link" href="#" data-toggle="dropdown" draggable="false">  Tools  </a> -->
<!-- 			    <ul class="dropdown-menu" style="background:#f2f2f2"> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Second level 1 </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Second level 2 &raquo; </a> -->
<!-- 					 <ul class="submenu dropdown-menu" style="background:#f2f2f2"> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Third level 1</a></li> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Third level 2</a></li> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Third level 3 &raquo; </a> -->
<!-- 						<ul class="submenu dropdown-menu" style="background:#f2f2f2"> -->
<!-- 						    <li><a class="dropdown-item" href="" draggable="false"> Fourth level 1</a></li> -->
<!-- 						    <li><a class="dropdown-item" href="" draggable="false"> Fourth level 2</a></li> -->
<!-- 						</ul> -->
<!-- 					    </li> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Second level  4</a></li> -->
<!-- 					    <li><a class="dropdown-item" href="" draggable="false"> Second level  5</a></li> -->
<!-- 					 </ul> -->
<!-- 				  </li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Dropdown item 3 </a></li> -->
<!-- 				  <li><a class="dropdown-item" href="#" draggable="false"> Dropdown item 4 </a> -->
<!-- 			    </ul> -->
<!-- 			</li> -->
<%-- 			<li class="nav-item unselectable"> <a onclick="matrixname();" class="nav-link" href="#" draggable="false"> <spring:message code="matrix"/> </a> </li> --%>
<%-- 			<li class="nav-item unselectable organizationTab"> <a class="nav-link" href="#" draggable="false" onclick="organizationTab();"> <spring:message code="organizational_portal"/> </a></li> --%>
<%-- 			<li class="nav-item unselectable homeTab" style="display:none;"> <a class="nav-link" href="#" draggable="false" onclick="homeTab();"> <spring:message code="home"/> </a></li> --%>
<!-- <!-- 			<li class="nav-item unselectable"> <a class="nav-link" href="#" draggable="false"> Window </a> </li> --> 
<%-- 			<li class="nav-item unselectable"> <a class="nav-link" href="#" draggable="false"> <spring:message code="help"/> </a></li> --%>
<%-- 			<li class="nav-item unselectable"> <a class="nav-link" href="fromExcel" draggable="false"> <spring:message code="from_excel"/> </a></li> --%>
<%-- 			<li class="nav-item unselectable"> <a class="nav-link" href="lang=rtl" draggable="false"> <spring:message code="arabic"/> </a></li> --%>
<!-- 			<li class="nav-item unselectable"> <a class="nav-link" href="linechart" draggable="false"> Charts </a></li> -->
			
<!-- 			<li class="nav-item unselectable" onclick="checkOne()"> ONE </li> -->
<!-- 			<li class="nav-item unselectable" onclick="checkTwo()"> TWO </li> -->
			
<%-- 			<sec:authorize access="hasRole('ROLE_SUPER_ADMIN')"> --%>
<!-- 				<li class="nav-item unselectable"> <a class="nav-link" href="/EAZee/EAXEE_Admin/registration" draggable="false"> Register New User </a> -->
<!-- 				</li> -->
<%-- 			</sec:authorize> --%>
<%-- 			<sec:authorize access="hasRole('ROLE_ADMIN')"> --%>
<!-- 				<li class="nav-item unselectable"> <a class="nav-link" href="/EAZee/admin/createRepository" draggable="false"> Create New Repository </a> -->
<!-- 				</li> -->
<!-- 				<li class="nav-item unselectable" onclick="readerMode()"> <a class="nav-link" href="/EAZee/admin/registerArchitect" draggable="false"> Register New Architect </a> -->
<!-- 				</li> -->
<%-- 			</sec:authorize> --%>
<%-- 			<sec:authorize access="hasRole('ROLE_READER')"  var="hasRoleReader"></sec:authorize> --%>
<!-- 			<li class="nav-item unselectable"> <a class="nav-link" href="lang=rtl" draggable="false"> RTL View </a></li> -->
<!-- 			<li><div id="google_translate_element"></div></li> -->
<!-- 			<li class="nav-item unselectable"> <a class="nav-link" href="fromExcel" draggable="false"> Import/Export</a> </li> -->
<!-- 			<li class="nav-item unselectable"> <a class="nav-link" href="metamodel_user" draggable="false"> MetaModel </a></li> -->
<!-- 			<li class="nav-item"> <a class="nav-link" id="callGraphOrTableView" href="#" onclick="callGraphOrTableView()" draggable="false"> Graphical View </a></li> -->
<!-- 			<li class="nav-item unselectable"> <a class="nav-link" href="poolManager" draggable="false"> Pool Manager </a></li> -->
<!-- 			</ul> -->
			
<!-- 		</div> navbar-collapse. -->

	
	<div class="navbar" style="padding-left:0px">
			<div id="changeHistoryMypageButtonsDiv">
				<button class="mp-btn active1" onclick="changeHistoryModelpage()">My Enterprise</button>
				<button class="mp-btn" onclick="changeHistoryMypageButton('Default')">My Page</button>
			</div>
			
		<div style="margin-left:11%;">
			<span id="element_title" style="display: none"></span>
		</div>
		<div style="height: 40px; margin: auto;">	
	    	<span class="alert_message"></span>
		</div>
		<div>	
			<button title="Fit screen" id="fit-screen" class="btn graph_button" onclick="graph1.fit();"><i class="fa fa-arrows-alt fit-screen" style="font-size:24px;color:#ffffff"></i></button>
			<button title="Zoom out" id="zoom-out" class="btn graph_button" onclick="graph1.zoomOut();"><i class="fa fa-search-minus zoom-out" style="font-size:24px;color:#ffffff"></i></button>
			<button title="Zoom in" id="zoom-in" class="btn graph_button"  disabled="disabled" onclick="graph1.zoomIn();"><i class="fa fa-search-plus zoom-in" style="font-size:24px;color:#ffffff"></i></button>
			<button style="font-size: 20px;" title="Save" id="save_button" disabled="disabled" class="btn" onclick="save_graph(); "><i class="fa fa-floppy-o save-graph" style="font-size:24px;color:#ffffff"></i></button>	
			<div class="catalog_save_button"></div>
			<div class="matrix_save_button"></div>
		</div>
	</div>
	
	
	<div id="changeHistoryMyPageTable" style="">
	
		<div class="customFilter">
		<label>Object Update More than</label>
<!-- 			<select onchange="changeHistoryMypageButton(this.value)"> -->
<!-- 				<option value="7">7</option> -->
<!-- 				<option value="14">14</option> -->
<!-- 				<option value="21">21</option> -->
<!-- 			</select> -->
<!-- 			<input type="number" id="quantity" name="quantity" min="1" max="5"> -->
			<input type="number" value="1" oninput="changeHistoryMypageButton(this.value)" min="1">
		<label>Days</label>


		</div>
		<table id="myPageTable" class="table table-striped table-bordered" style="width:100%">
			<thead>
	            <tr>
	                <th>Symbol</th>
	                <th>Object</th>
	                <th>Created On</th>
	                <th>Last Action On</th>
	                <th>Last Action By</th>
	                <th>Status</th>
	            </tr>
	        </thead>
    		</table>
	</div>
	
	<div id="formDiv" class="row formDiv">
	    <div class="col-3 mr-1 content_area panel-left">
<%-- 	    	<img id ="loader_image" alt="schema"  src="<c:url value="resources/images/loader.gif"/>"> --%>
			<img id ="loader_image" style="display:none;" loading="lazy" alt="schema" width="200px" height="70px" src="<c:url value="resources/images/main-logo-removebg.png"/>">
	    	<div id="left_pane">
<!-- 	    	<div class="row"> -->
	    		<div>
	    			<div class="abc">
		    			<div  id="context-menu" class="border-shadow" >
<!-- 			 <div class="item"> -->
<!--         	   <i class="fa fa-trash-o"></i><a style="text-decoration:none" href="javascript:addNew(element,type)">Add New</a>  -->
<!-- 	          </div> -->
<!-- 			 <div class="item"> -->
<!--         	   <i class="fa fa-trash-o"></i> Delete -->
<!-- 	          </div> -->
<!-- 			  <div class="item" onclick="reload()"> -->
<!-- 			    <i class="fa fa-refresh"></i> Reload -->
<!-- 			  </div> -->
<!-- 			  <div class="item" onclick="view_xml()"> -->
<!-- 			    <i class="fa fa-file"></i> View Xml -->
<!-- 			  </div> -->
			  			</div>
		    			<div style="height: 100%; overflow-y:scroll;" id="tabs_1">
		    				<ul style="width: 100%;">
							    <li><a href="#tabs-1" draggable="false"><spring:message code="objects"/></a></li>
							    <li><a href="#tabs-2" draggable="false"><spring:message code="models"/></a></li>
							    <li class="filter"><input class="form-control" type="text" id="myInput" onkeyup="SearchObjects(); SearchModels();" placeholder="<spring:message code="filter"/>" title="Type in a name"/></li>
							 </ul>
		    				<div id="tabs-1">
			    				<ul id="myUL">
			    					<li id="lt"><p style="margin-bottom:0px;" class="caret"><spring:message code="lambdatheta"/></p>
<!-- 				    					<ul class="nested" id=""> -->
<!-- 				    						<li tabindex="-1" class="layers" id="lt_element"><span class="caret">Elements</span> -->
<!-- 				    						</li> -->
<!-- 				    						<li tabindex="-1" class="layers" id="lt_relationship"><span class="caret">Relations</span> -->
<!-- 				    						</li> -->
<!-- 				    						<li tabindex="-1" class="layers" id="lt_relationship_connector"><span class="caret">Relation Connectors</span> -->
<!-- 				    						</li> -->
<!-- 				    					</ul> -->
			    					</li>
			    				</ul>
			    				<div id="recycle_bin_for_objects">
<!-- 			    					<ul id="recycle_bin_list_for_object_elements_old"> -->
<!-- 			    		 				<li>&nbsp;&nbsp;<span><i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;Recycle Bin</span></li> -->
<!-- 			    					</ul> -->
			    					
									<ul id="myULaa">
									  <li>
									  <p style="margin-bottom:0px; width:100%;" id="objectrecycle" onclick="recycle_toggle(this);" style="cursor:pointer;">
									  <i class="fa fa-trash-o" aria-hidden="true"></i>
									    &nbsp;Recycle Bin
									  </p>
									    <ul class="nested" id="recycle_bin_list_for_object_elements">
<!-- 									      <li><span class="caret">Element</span> -->
<!-- 									        <ul class="nested" > -->
<!-- 									        </ul> -->
<!-- 									      </li>   -->
<!-- 									      <li><span class="caret">Relationships</span> -->
<!-- 									        <ul class="nested" id="recycle_bin_list_for_object_relationships"> -->
<!-- 									          <li>Relationship1</li> -->
<!-- 									          <li>Relationship2</li> -->
<!-- 									        </ul> -->
<!-- 									      </li>  -->
<!-- 									      <li><span class="caret">Relationship Connector</span> -->
<!-- 									        <ul class="nested" id="recycle_bin_list_for_object_relationship_connector"> -->
<!-- 									          <li>Relationship Connector1</li> -->
<!-- 									        </ul> -->
<!-- 									      </li>  -->
									    </ul>
									  </li>
									</ul>
			    				</div>
	  						</div>
							<div id="tabs-2">
								<div  id="context-menu" >
								</div>
								<div id="model">
			    					<div id="m1">
			    					</div>
			    					<div id="recycle_bin">
			    						<ul id="recycle_bin_list">
			    		 					<li>
			    								<span><i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;<spring:message code="recycle_bin"/></span>
			    							</li>
			    						</ul>
			    					</div>
			    				</div>
							</div>
						</div>
	    			</div>
	    		</div>
<!-- 	    	</div> -->
	    </div>
	    </div>
	    <div class="col content_area panel-right" id="cntr" >	    
	    <div id="chart"></div>
	    <div id="myPage"></div>
			<div>
				<div id="context-menu2">
				</div>
				<div id="form_id" style="overflow-Y:auto" >		
				</div>
				<h1 id="table_h1" align="Center"></h1>
			    <div id="paleteDiv" class="content_area">
			    	<div id="palete"></div>
			    </div>
				
				<div id="graphId" style="margin-left: 16%;" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
				<div id="navigationId" style="margin-left: 16%;" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
				<div id="catalog"></div>
				<div id="matrix"></div>
	    </div>
	    </div>
<!-- 	    <div id="paleteDiv" class="col 2 mr content_area"> -->
<%-- 	    	<img id ="loader_image_palete" alt="schema"  src="<c:url value="resources/images/ajax-loader.gif"/>"> --%>
<!-- 	    	<div id="palete"> -->
<!-- 	    	</div> -->
<!-- 	    </div> -->
	</div>
<!--    	<div class="row" style="background:#e1e6f6; height: 13vh;">  -->
<!--    		<div class="col content_area" style="background:#e1e6f6 !important;"> -->
<!-- <!--    			<h1>Ads</h1> --> 
<%--    			<img alt="ad" draggable="false" src="<c:url value="/resources/js/examples/editors/images/images1/ad.png"/>" width="100%" height="98px"> --%>
<!--    		</div> -->
<!--    		<div class="col-9 content_area" style="margin-right:50px; background:#e1e6f6 !important;"> -->
<%-- <--    			<h1 class="unselectable"><spring:message code="console"/></h1> --> --%>
<!--    		</div> -->

<!--    		<div id="source_div"> -->
<!--    			<h1 id="source">Source Heading</h1> -->
<!--    		</div> -->
<!--    		<div id="dest_div"></div> -->
<!--    		<button onclick="changePosition();">Change Position</button> -->
<!--   	</div> -->
 

<!-- The Modal -->
<div id="myModal" class="modal" style="display: none;">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span id="modal_heading"></span>
      <span class="close">&times;</span>
    </div>
    <div class="modal-body">
      <p id="modal_info_text"></p>
    </div>
	<!--     <div class="modal-footer"> -->
	<!--       <h3>Modal Footer</h3> -->
	<!--     </div> -->
  </div>
</div>

		<div id="chartModal" class="modal" style="display: none;">
			<!-- Modal content -->
			<div class="modal-content">
				<div class="modal-header">
					<span id="modal_heading"></span> <span class="close" id="closeChartModal">&times;</span>
				</div>
				<div class="modal-body">
					<table id="chartTable" class="table table-bordered table-striped">
						<thead id='chartTableHead'></thead>
						<tbody id='chartTableBody'></tbody>
					</table>

				</div>
				<!--     <div class="modal-footer"> -->
				<!--       <h3>Modal Footer</h3> -->
				<!--     </div> -->
			</div>
		</div>
	<!-- Trigger/Open The Modal -->
		<!-- Roadmap Modal -- Roadmap Definition-->
		<!-- 		<div id="dialogGanttChart" title="Roadmap Definition" class="" -->
		<!-- 			style="width: 550px; "> -->
		<!-- 			<form> -->
		<!-- 				<fieldset> -->
		<!-- 					<div id="GanttNames"> -->
		<!-- 						<div id="NewRoadmap" class="roadMap_Class"></div> -->
		<!-- 						<div id="newRoadmapInbox" class="roadMap_Class"></div> -->
		  
		<!-- 						<div id="elementNameGantt"></div> -->
		<!-- 						<div id="elementNameListGantt" class="roadMap_Class"></div> -->

		<!-- 						<div id="StartDateGantt"></div> -->
		<!-- 						<div id="StartDateListGantt" class="roadMap_Class"></div> -->
		  
		<!-- 						<div id="EndDateGantt"></div> -->
		<!-- 						<div id="EndDateListGantt" class="roadMap_Class"></div> -->

		<!-- 						<div id="LegendGantt"></div> -->
		<!-- 						<div id="LegendListGantt" class="roadMap_Class"></div> -->
		<!-- 					</div> -->

		<!-- 					<div id="GanttGenerate" class=""></div> -->
		<!-- 				</fieldset> -->
		<!-- 			</form> -->
		<!-- 		</div> -->


		<!-- 888888888888888888888888 -->
		  
		<!-- The Modal For Relationship-->
<div id="myModal1" class="modal" style="display: none;">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span id="modal1_title">&nbsp;</span>
      <span class="close" >&times;</span>
    </div>
    <div id="modal1_body" class="modal-body">
    	<ul>
    		<li class="modal_filter"><input class="form-control" type="text" id="myInput_1" onkeyup="SearchObjectsOnModal();" placeholder="Filter..." title="Type in a name"/></li>
    	</ul>
		<div>	
	    	<span class="tree_modal_alert_message"></span>
		</div>
    	<div class="get_tree_filter" id="get_tree">
    		<%-- <img id ="loader_image_for_modal" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="resources/images/eazee-Logo.png"/>"> --%>
    		<!-- <ul>
    			<li><span class="caret">LambdaTheta</span></li>
			</ul> -->
		</div>
		<table id="example" class="table table-striped table-bordered" style="width:100%">
	        <thead>
	            <tr>
	                <th style="width: 5px !important"><spring:message code="type"/></th>
	                <th><spring:message code="name"/></th>
	                <th style="width: 20px !important"></th> 
	            </tr>
	        </thead>
	        <tbody id="table_data">
	        </tbody>
	    </table>
    	<!-- <div id="choices-multiple-remove-button"></div> -->
    	<div id="addButtonRel"></div>
      <!-- <p id="modal_info_text1"></p> -->
    </div>
	<!--     <div class="modal-footer"> -->
	<!--       <h3>Modal Footer</h3> -->
	<!--     </div> -->
  </div>
</div>

<div id="updateFormModal" class="modal" style="display: none;">
  <!-- Modal content -->
  <div id="modal_content" >
    <div class="modal-header">
      <span id="updateFormModal_heading"></span>
      <span class="close" >&times;</span>
    </div>
    <div id="updateFormModal_body" class="modal-body">
    	<div id="updateFormModal_form"></div>
    	<div id="addButton"></div>
      <!-- <p id="modal_info_text1"></p> -->
    </div>
	<!--     <div class="modal-footer"> -->
	<!--       <h3>Modal Footer</h3> -->
	<!--     </div> -->
  </div>
</div>

</div>


<!-- Information_modal script file -->
<script type="text/javascript" src="<c:url value="/resources/js/information_modal.js" />"></script>

<!-- Relationship_modal script file -->
<script type="text/javascript" src="<c:url value="/resources/js/relationship_modal.js" />"></script>

<!-- chartTabs script file -->
<script type="text/javascript" src="<c:url value="/resources/js/chartTabs.js" />"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> -->
<script type="text/javascript" src="<c:url value="/resources/js/apexcharts-bundle/dist/apexcharts.js" />"></script>


<!-- Export Graph script file -->
<script type="text/javascript" src="<c:url value="/resources/js/exportGraph.js" />"></script>

<!-- Export Graph script file -->
<script type="text/javascript" src="<c:url value="/resources/js/export_Graph.js" />"></script>

<!-- updateFormModal script file -->
<script type="text/javascript" src="<c:url value="/resources/js/updateFormModal.js" />"></script>

<!-- userManagement script file -->
<script type="text/javascript" src="<c:url value="/resources/js/userManagement.js" />"></script>


<!-- click_show_input script file -->
<script type="text/javascript" src="<c:url value="/resources/js/on_double_click_show_input.js" />"></script>


<div id="dialog-confirm" title="Confirm Delete?" style="display:none">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>You are about to delete <b><i class="title"></i></b> record, this procedure is irreversible.</p>
</div>

<div id="dialog-confirm-for-delete-model" title="Confirm Delete?" style="display:none">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>File is not saved. Do you want to close?.</p>
</div>


<!-- jquery prompt starts here-->
<div id="dialog-form" title="<spring:message code="Create_Folder"/>"  style="display:none">
  <form>
    <fieldset>
      <label for="name"><spring:message code="folder"/></label>
      <input type="text" name="foldername" id="folder_name" placeholder="<spring:message code="New_Folder"/>" class="text ui-widget-content ui-corner-all">
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>

<!-- Prompt For new file -->
<div id="dialog-form-file" title="<spring:message code="Create_File"/>" style="display:none">
  <form>
    <fieldset>
      <label for="name"><spring:message code="file"/></label>
      <input type="text" name="filename" id="file_name" placeholder="<spring:message code="New_File"/>" class="text ui-widget-content ui-corner-all">
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
  
  <div id="exportGraph">
  </div>
  
</div>


	<!-- Dialog for Roadmap -->
	<div id="dialogGanttChart" title="Roadmap Definition"
		style="display: none">
		<form>
			<fieldset class="GanttFieldSet">
				<div class="GanttDiv">
					<label for="name">Roadmap Name</label> 
					<input type="text"
							required=""
						name="roadmap" id="new_roadmap" placeholder="New Roadmap"
						class="text ui-widget-content ui-corner-all">
				</div>
				<div class="GanttDiv">
					<label for="elements">Element Name</label> 
						<select name="element"
								required=""
							id="elementNameGanttList" style="width: 130px;">
<!-- 								<option value="select" selected disabled> -->
<!-- 								</option> -->
					</select>
				</div>

				<div class="GanttDiv">
					<label for="elements">Start Date</label> 
					<select name="sDate" required=""
						id="StartDateGanttList" style="width: 130px;">
						<option value="select" selected disabled></option>
					</select>
				</div>
				<div class="GanttDiv">
					<label for="elements">End Date</label> 
					<select name="eDate" id="EndDateGanttList" style="width: 130px;" required="">
						<option value="select" selected disabled></option>
					</select>
				</div>

				<div id="LegendGantt" class="GanttDiv">
					<label for="elements">Legend</label> 
					<select name="lDate" id="LegendGanttList" style="width: 130px;" required="">
						<option value="select" selected disabled></option>
					</select>
				</div>

				<!-- 					<input type="submit" tabindex="-1" -->
				<!-- 					style="position: absolute; top: -1000px"> -->
				<!-- 					<input type="button" tabindex="-1" onclick="TimeLinegraphBTN(); roadMapList();" -->
				<!-- 						style="position: absolute; top: -1000px" name="Generate Roadmap" value="Generate Roadmap"> -->
			</fieldset>
		</form>
	</div>
	<!-- 	<div id="dialogGanttChart" title="Roadmap Definition" class="" -->
	<!-- 			style="width: 550px; "> -->
	<!-- 			<form> -->
	<!-- 				<fieldset> -->
	<!-- 					<div id="GanttNames"> -->
	<!-- 						<div id="NewRoadmap" class="roadMap_Class"></div> -->
	<!-- 						<div id="newRoadmapInbox" class="roadMap_Class"></div> -->

	<!-- 						<div id="elementNameGantt"></div> -->
	<!-- 						<div id="elementNameListGantt" class="roadMap_Class"></div> -->

	<!-- 						<div id="StartDateGantt"></div> -->
	<!-- 						<div id="StartDateListGantt" class="roadMap_Class"></div> -->

	<!-- 						<div id="EndDateGantt"></div> -->
	<!-- 						<div id="EndDateListGantt" class="roadMap_Class"></div> -->

	<!-- 						<div id="LegendGantt"></div> -->
	<!-- 						<div id="LegendListGantt" class="roadMap_Class"></div> -->
	<!-- 					</div> -->

	<!-- 					<div id="GanttGenerate" class=""></div> -->
	<!-- 				</fieldset> -->
	<!-- 			</form> -->
	<!-- 		</div> -->

<!-- Dialog For new catalog -->
<div id="catalogName" title="<spring:message code="Create_Catalog"/>" style="display:none">
  <form>
    <fieldset>
      <label for="name"><spring:message code="catalog"/></label>
      <input type="text" name="catalogname" id="catalog_name" placeholder="<spring:message code="new_catalog"/>" class="text ui-widget-content ui-corner-all">
      <label for="elements"><spring:message code="select_element"/></label>
      <select name="elements" id="catalogElements" style="width:130px;" >
      	 <option value="select" selected disabled><spring:message code="select_dropdown"/></option>
      </select>
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>

<!-- Dialog For new translateText -->
<div id="translateText" title="<spring:message code="translate_text"/>" style="display:none">
  <form>
    <fieldset>
      <label for="name"><spring:message code="changeText"/></label>
      <input type="text" name="changeText" id="change_text" placeholder="<spring:message code="new_text"/>" class="text ui-widget-content ui-corner-all">
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>

<!-- Dialog For new matrix -->

<div id="matrixName" title="<spring:message code="Create_Matrix"/>" style="display:none">
  <form>
    <fieldset>
      <label for="name"><spring:message code="matrix"/></label>
      <input type="text" name="matrixname" id="matrix_name" placeholder="<spring:message code="New_Matrix"/>" class="text ui-widget-content ui-corner-all">
       <br><label for="elements"> <spring:message code="row"/> </label>
      <select name="elements" id="matrixElement1" style="width:130px;" >
      	 <option value="select" selected disabled> <spring:message code="select_dropdown"/></option>
      </select>
       <br><label for="elements"> <spring:message code="column"/> </label>
      <select name="elements" id="matrixElement2" style="width:130px;" >
      	 <option value="select" selected disabled><spring:message code="select_dropdown"/></option>
      </select>
          <br><label for="elements"> <spring:message code="relation"/> </label>
      <select name="elements" id="matrixRelation" style="width:130px;" >
      	 <option value="select" selected disabled><spring:message code="select_dropdown"/></option>
      </select>
<!--       Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>
<!-- nonExistingElements script file -->
 <!-- TAGS INPUT -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.js" integrity="sha512-VvWznBcyBJK71YKEKDMpZ0pCVxjNuKwApp4zLF3ul+CiflQi6aIJR+aZCP/qWsoFBA28avL5T5HA+RE+zrGQYg==" crossorigin="anonymous"></script>

<script type="text/javascript" src="<c:url value="/resources/js/nonExistingElements.js" />"></script>

<!-- for header dropdown start -->
    <script type="text/javascript" src="<c:url value="/resources/js/animsition.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>
<!-- for header dropdown end -->

</body>

<script>
	///////// multilanguage//////
// 	function googleTranslateElementInit() {
// 	  		new google.translate.TranslateElement({pageLanguage: ''}, 'google_translate_element');
// 	}
</script>
<script>



function changeTheme(){
	
// 	document.addEventListener("keydown", function (event) {
// 		if (event.ctrlKey) {
// 		event.preventDefault();
// 		}
// 	});
			
	
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
				themeURL = '<c:url value="/resources/css/explorer/explorer-dark.css"/>';
			}
			else if(data=='light'){
				themeURL ='<c:url value="/resources/css/explorer/explorer-light.css"/>';
			}
			else if(data=='default'){
				themeURL ='<c:url value="/resources/css/explorer/explorer-default.css"/>';
			}
		},
        async: false
	  });
	themeLink.href = themeURL;
}

	//Prevent closing from click inside dropdown
	$(document).on('click', '.dropdown-menu', function (e) {
	  e.stopPropagation();
	});
	
	// make it as accordion for smaller screens
	if ($(window).width() < 992) {
	  $('.dropdown-menu a').click(function(e){
	    e.preventDefault();
	      if($(this).next('.submenu').length){
	        $(this).next('.submenu').toggle();
	      }
	      $('.dropdown').on('hide.bs.dropdown', function () {
	     $(this).find('.submenu').hide();
	  })
	  });
	}
</script>

<script>
	$(".panel-left").resizable({
	   handleSelector: ".splitter",
	   resizeHeight: false
	});

	//oncontextmenu_object
	function on_context_menu(element, type){
			var element_content = element;
			var type_content = type;
//  		alert("You clicked on_context_menu")

			  			
			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_= '<a style="text-decoration:none; cursor:cell;" href="javascript:addNew(\''+element_content+'\',\''+type_content+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_object"/></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = event.pageX + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			});
	}
	
	//Right click Context-menu off
	document.addEventListener('contextmenu', event => event.preventDefault());
	
	//on_context_menu_remove_object
	function on_context_menu_remove(element, type, ul_id){
// 			console.log("imageSource", imageSource)
			var element_content = element;
			var type_content = type;
			  			
			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+type+'\',\''+element+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeObj(\''+element_content+'\',\''+type_content+'\', \''+ul_id+'\', \''+imageSource+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = event.pageX + "px";
			  contextElement.classList.add("active");
			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			});
	}
	function removeObj(table,name, ulID){
		var tableName = table.split(' ').join('_');
		var elementIcon = table.replaceAll("\\s+", "-").replaceAll("_", "-").toLowerCase() + ".svg";
		$("#"+name.replaceAll(" ", "---")+"").remove();
		var change_name = name.replaceAll("_"," ");
		//console.log("change_name", change_name)
 		$.ajax({
		      url: "delRowData", // url: "/findAttributes?dbName="+db_name,
		      data:{'tableName':tableName,'name':name},
		      success:function(data) {
		    	  $("#"+ulID).append('<li id=\''+name.replaceAll(" ", "---")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj(\''+tableName+'\',\''+name+'\')"><span draggable="false"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+name+'</span></li>'); //onclick="showData('Application_Component','application_system')"
				  //$("#recycle_bin_list_for_object_elements").append('<li id=\''+name.replaceAll(" ", "_")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj(\''+tableName+'\',\''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+name+'</li>'); //onclick="showData('Application_Component','application_system')"
		    	  historyTabItems.forEach(function(element) {
		    	  	if(name.replaceAll(" ", "---")+"_"+table == element){
		    	  		var index_to_delete = historyTabItems.indexOf(element);
		    	  		historyTabItems.splice(index_to_delete, 1);
		    	  		console.log("Matched")
		    		} 
		    	  	else{
		    			console.log("Not matched")	  
		    		}
		    	  });
		    	  $( "."+name.replaceAll(" ", "---")+"_"+table).remove();
		    	  $( "."+name.replaceAll(" ", "---")).remove();
		    	  numItemCounter();
		      }	  	
		}); 
	}
	/* For Relationship */
	//on_context_menu_remove_object
	function on_context_menu_remove_relationship(table_name, element_name , liID){
			console.log("imageSource", imageSource)
			var element_content = table_name;
			var type_content = element_name;
			  			
			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeObjRelationship(\''+element_content+'\',\''+type_content+'\', \''+liID+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = event.pageX + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			});
	}
	
	function removeObjRelationship(table_name,element_name, ul_id){
		var tableName = table_name.split(' ').join('_');
		//console.log("imageSource", imageSource);
		//console.log(table,name,ul_id)
		var elementIcon = table_name.replaceAll("\\s+", "-").replaceAll("_", "-").toLowerCase() + ".svg";

		$("#"+element_name.replaceAll(" ", "---")+"").remove();

		var change_name = element_name.replaceAll("_"," ");
		//console.log("change_name", change_name)
 		$.ajax({
		      url: "delRowData", // url: "/findAttributes?dbName="+db_name,
		      data:{'tableName':tableName,'name':element_name},
		      success:function(data) {
		    	  $("#"+ul_id).append('<li id=\''+element_name.replaceAll(" ", "---")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj_relationship(\''+table_name+'\',\''+element_name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><span draggable="false"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+element_name+'</span></li>'); //onclick="showData('Application_Component','application_system')"
				  //$("#recycle_bin_list_for_object_elements").append('<li id=\''+name.replaceAll(" ", "_")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj(\''+tableName+'\',\''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+name+'</li>'); //onclick="showData('Application_Component','application_system')"
		    	  historyTabItems.forEach(function(element) {
		    		  console.log("element", element)
		    		  console.log("name", element_name.replaceAll(" ", "---"))
		    		  console.log("table", table)
		    		  
		    	  	if(name.replaceAll(" ", "---")+"_"+table == element){
		    	  		var index_to_delete = historyTabItems.indexOf(element);
		    	  		historyTabItems.splice(index_to_delete, 1);
		    	  		console.log("Matched")
		    		} 
		    	  	else{
		    			console.log("Not matched")	  
		    		}
		    	  });
		    	  $( "."+element_name.replaceAll(" ", "---")+"_"+table_name).remove();
		    	  $( "."+element_name.replaceAll(" ", "---")).remove();
		    	  numItemCounter();
		      }	  	
		}); 
	}
	
	/* For Relationship Connector */
	//on_context_menu_remove_object
	function on_context_menu_remove_relationship_connector(table_name, element_name , element_type){ //liID
			var element_content = table_name;
			var type_content = element_name;
			  			
			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeObjRelationshipConnector(\''+element_content+'\',\''+type_content+'\', \''+element_type+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = event.pageX + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			});
	}
	function removeObjRelationshipConnector(table_name,element_name, ul_id){ //ul_id
		var tableName = table_name.split(' ').join('_');
		var elementIcon = table_name.replaceAll("\\s+", "-").replaceAll("_", "-").toLowerCase() + ".svg";
		$("#"+element_name.replaceAll(" ", "---")+"").remove();
		var change_name = element_name.replaceAll("_"," ");
		//console.log("change_name", change_name)
 		$.ajax({
		      url: "delRowData", // url: "/findAttributes?dbName="+db_name,
		      data:{'tableName':tableName,'name':element_name},
		      success:function(data) {
		    	  $("#"+ul_id).append('<li id=\''+element_name.replaceAll(" ", "---")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj_relationship(\''+table_name+'\',\''+element_name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><span draggable="false"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+element_name+'</span></li>'); //onclick="showData('Application_Component','application_system')"
				  //$("#recycle_bin_list_for_object_elements").append('<li id=\''+name.replaceAll(" ", "_")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj(\''+tableName+'\',\''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+name+'</li>'); //onclick="showData('Application_Component','application_system')"
		    	  historyTabItems.forEach(function(element) {
		    	  	if(name.replaceAll(" ", "---")+"_"+table == element){
		    	  		var index_to_delete = historyTabItems.indexOf(element);
		    	  		historyTabItems.splice(index_to_delete, 1);
		    	  		console.log("Matched")
		    		} 
		    	  	else{
		    			console.log("Not matched")	  
		    		}
		    	  });
		    	  $( "."+element_name.replaceAll(" ", "---")+"_"+table_name).remove();
		    	  $( "."+element_name.replaceAll(" ", "---")).remove();
		    	  numItemCounter();
		      }	  	
		}); 
	}
	function numItemCounter(){
  	  if(numItems != 0 ){
    	  numItems = numItems - 1;
    	  $(".history_page_no").html(numItems);  
	  }
	}
	function on_context_menu_restore_obj(tableName, name, elementIcon, ul_id){
		event.preventDefault();
		var contextElement = document.getElementById("context-menu");
		var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restoreObj(\''+tableName+'\',  \''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i><spring:message code="restore"/></div></a>';
		content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteObjPermanently(\''+tableName+'\',  \''+name+'\', \''+ul_id+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true"></i><spring:message code="delete"/></div></a>';
		contextElement.innerHTML = content_;
		contextElement.style.top = event.pageY + "px";
		contextElement.style.left = event.pageX + "px";
		contextElement.classList.add("active");
		window.addEventListener("click",function(){
		  document.getElementById("context-menu").classList.remove("active");
		}); 
	}
	function restoreObj(tableName, name, elementIcon, ul_id){
		console.log(tableName, name, ul_id);
		Image_name = (tableName.replaceAll("_", "-")+".svg").toLowerCase();
		//console.log("ImageName", Image_name);
		$("#"+name.replaceAll(" ", "---")+"removed").remove();
// 		var split_name = name.replaceAll("_", " ");
// 		var change_name = name.replaceAll("_"," ");
		//tree += '<li id="'+name+'" class="'+ul_id+'" style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove(\''+tableName+'\',\''+name+'\', \''+ul_id+'\')"><span title="'+name+'" draggable="false"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/application-component.svg">&nbsp;'+name+'</span></li>';
 		$.ajax({
		      url: "restoreObj",
		      data:{'tableName':tableName,'name':name, 'ul_id':ul_id},
		      success:function(data) {
		    	  //$("#"+ul_id+"_"+tableName+"").append('<li id="'+name.replaceAll(" ", "_")+'" class="'+ul_id+'" style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove(\''+tableName+'\',\''+name+'\', \''+ul_id+'\')"><span title="'+name+'" draggable="true"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/"'+elementIcon+'".svg">&nbsp;'+name+'</span></li>');
		    	  $("#"+tableName+"").append('<li id="'+name.replaceAll(" ", "---")+'" class="'+ul_id+'" style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove(\''+tableName+'\',\''+name+'\', \'deletedElements\')"><span title="'+name+'" draggable="true"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+Image_name+'">&nbsp;'+name+'</span></li>');
// 		    	  document.getElementById(""+folderName+"").addEventListener("click", function() {
// 				    	this.parentElement.querySelector(".nested").classList.toggle("active");
// 				    	this.classList.toggle("caret-down");
// 				  });
		      }
		});
	}
	
	/* relationship */
		function on_context_menu_restore_obj_relationship(tableName, name, elementIcon, ul_id){
		event.preventDefault();
		//console.log("tableName:"+tableName+", name: "+name+"");

		var contextElement = document.getElementById("context-menu");
		var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restoreObjRelationship(\''+tableName+'\',  \''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i><spring:message code="restore"/></div></a>';
		content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteObjPermanently(\''+tableName+'\',  \''+name+'\', \''+ul_id+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true"></i><spring:message code="delete"/></div></a>';
		contextElement.innerHTML = content_;
		contextElement.style.top = event.pageY + "px";
		contextElement.style.left = event.pageX + "px";
		contextElement.classList.add("active");
		window.addEventListener("click",function(){
		  document.getElementById("context-menu").classList.remove("active");
		}); 
	}
	
	function restoreObjRelationship(tableName, name, elementIcon, ul_id){
		console.log(tableName, name, ul_id);
		Image_name = (tableName.replaceAll("_", "-")+".svg").toLowerCase();
		//console.log("ImageName", Image_name);
		$("#"+name.replaceAll(" ", "---")+"removed").remove();
// 		var split_name = name.replaceAll("_", " ");
// 		console.log("split_name", split_name)
// 		var change_name = name.replaceAll("_"," ");
		//tree += '<li id="'+name+'" class="'+ul_id+'" style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove(\''+tableName+'\',\''+name+'\', \''+ul_id+'\')"><span title="'+name+'" draggable="false"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/application-component.svg">&nbsp;'+name+'</span></li>';
 		$.ajax({
		      url: "restoreObj",
		      data:{'tableName':tableName,'name':name, 'ul_id':ul_id},
		      success:function(data) {
		    	  //$("#"+ul_id+"_"+tableName+"").append('<li id="'+name.replaceAll(" ", "_")+'" class="'+ul_id+'" style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove(\''+tableName+'\',\''+name+'\', \''+ul_id+'\')"><span title="'+name+'" draggable="true"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/"'+elementIcon+'".svg">&nbsp;'+name+'</span></li>');
		    	  
		    	  $("."+tableName+"").append('<li id="'+name.replaceAll(" ", "---")+'" class="'+ul_id+' " style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove_relationship(\''+tableName+'\',\''+name+'\', \'deletedRelationships\')"><span title="'+name+'" draggable="true"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+Image_name+'">&nbsp;'+name+'</span></li>');
// 		    	  document.getElementById(""+folderName+"").addEventListener("click", function() {
// 				    	this.parentElement.querySelector(".nested").classList.toggle("active");
// 				    	this.classList.toggle("caret-down");
// 				  });
		      }
		});
	}
	/* relationship connector*/
	function on_context_menu_restore_obj_relationship_connector(tableName, name, elementIcon, ul_id){
		event.preventDefault();
		var contextElement = document.getElementById("context-menu");
		var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restoreObjRelationshipConnector(\''+tableName+'\',  \''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i><spring:message code="restore"/></div></a>';
		content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteObjPermanently(\''+tableName+'\',  \''+name+'\', \''+ul_id+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true"></i><spring:message code="delete"/></div></a>';
		contextElement.innerHTML = content_;
		contextElement.style.top = event.pageY + "px";
		contextElement.style.left = event.pageX + "px";
		contextElement.classList.add("active");
		window.addEventListener("click",function(){
		  document.getElementById("context-menu").classList.remove("active");
		}); 
	}
	function restoreObjRelationshipConnector(tableName, name, elementIcon, ul_id){
		console.log(tableName, name, ul_id);
		Image_name = (tableName.replaceAll("_", "-")+".svg").toLowerCase();
		$("#"+name.replaceAll(" ", "---")+"removed").remove();
 		$.ajax({
		      url: "restoreObj",
		      data:{'tableName':tableName,'name':name, 'ul_id':ul_id},
		      success:function(data) {		    	  
		    	  $("."+tableName+"").append('<li id="'+name.replaceAll(" ", "---")+'" class="'+ul_id+' " style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove_relationship_connector(\''+tableName+'\',\''+name+'\', \'deletedRelationshipConnectors\')"><span title="'+name+'" draggable="true"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+Image_name+'">&nbsp;'+name+'</span></li>');
		      }
		});
	}
	/* relationship connector*/
	function deleteObjPermanently(tableName, name, ul_id){
/* 		console.log("inside deleteObjPermanently tableName, name, ul_id", tableName, name, ul_id)
 		var answer = window.confirm("Are you sure to delete Permanently?");
		if (answer) {
		    //some code
		  	$.ajax({
				url: "deleteObjPermanently",
				data:{'tableName':tableName,'name':name,'ul_id':ul_id},
				success:function(data) {
					$("#"+name+"1").remove();
				}	  	
			});
		}
		else {
		    //some code
		} */
		var change_name = name.replaceAll(" ","---");
	    $( "#dialog-confirm" ).dialog({
	      resizable: false,
	      height: "auto",
	      width: 400,
	      modal: true,
	      buttons: {
	        "Delete": function() {
			  	$.ajax({
					url: "deleteObjPermanently",
					data:{'tableName':tableName,'name':name,'ul_id':ul_id},
					success:function(data) {
						if(data == "done"){
					    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+name+' has been deleted!</div>');
					    	alert_message_function();
							$("#"+change_name+"removed").remove();	
						}
						else{
							$(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="object_delete_restriction"/></div>');
					    	alert_message_function();
						}
					}	  	
				});
			  	$( this ).dialog( "close" );
	        },
	        "<spring:message code='Cancel'/>": function() {
	          $( this ).dialog( "close" );
	        }
	      }
	    });
	}
	// oncontextmenu_graph
	function on_context_menu_graph(company_name,folderID,id, folderName,parentID,ulID){
		var userRoles = getUserRoles();
 		//var element_content = element;
		//var type_content = type;
		//alert("You clicked on_context_menu")		  			
		  event.preventDefault();
		  var contextElement = document.getElementById("context-menu");
		  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
		  //var content_= '<a style="text-decoration:none; cursor:cell;" onclick="createNewGraph()"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>New Folder</div></a>';
		  var content_= "";
		  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+folderName+'\',\''+folderID+'\',\'Folder\', \''+company_name+'\', \''+id+'\', \''+parentID+'\', \''+ulID+'\', \''+company_name+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
		  if(folderName=='0'){
			  	if(userRoles['graphCreate']==true || userRoles['catalogCreate']==true || userRoles['matrixCreate']==true)
					content_+= '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFolder(\''+company_name+'\', \''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-folder" aria-hidden="true"></i><spring:message code="new_folder"/></div></a>';
				if(userRoles['graphCreate']==true)
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_model"/></div></a>';
				if(userRoles['catalogCreate']==true)
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="catalogname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_catalog"/></div></a>';
				if(userRoles['matrixCreate']==true)
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="matrixname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="New_Matrix"/></div></a>';
				//	content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNavigation()"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="New Navigation"/></div></a>';
					content_ += '<a id="ganttchart01" style="text-decoration:none; cursor:cell;" onclick="ganttChart(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="New Roadmap"/></div></a>';
				
// 			  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>New Model</div></a>';
		  }else{
				if(userRoles['graphCreate']==true)
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_model"/></div></a>';
				if(userRoles['catalogCreate']==true)					
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="catalogname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_catalog"/></div></a>';
				if(userRoles['matrixCreate']==true)				
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="matrixname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="New_Matrix"/></div></a>';
					//content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNavigation()"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="New Navigation"/></div></a>';
				if(userRoles['graphDelete']==true && userRoles['catalogDelete']==true && userRoles['matrixDelete']==true)
					content_ += '<a id="ganttchart01" style="text-decoration:none; cursor:cell;" onclick="ganttChart(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="New Roadmap"/></div></a>';
					content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="deleteModelFolder(\''+folderID+'\',\''+id+'\', \''+folderName+'\',\''+ulID+'\',\'folder\', \''+company_name+'\', \''+parentID+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
					
		  }
		  contextElement.innerHTML = content_;
		  contextElement.style.top = event.pageY + "px";
	 	  contextElement.style.left = event.pageX + "px";
		  contextElement.classList.add("active");
		window.addEventListener("click",function(){
		  document.getElementById("context-menu").classList.remove("active");
		});
	}
	//Right click Context-menu off
	document.addEventListener('contextmenu', event => event.preventDefault());
	function createNewModelFolder(company_name, folderID,id){		
 		$( function() {
		    var dialog, form,
 		    dialog = $( "#dialog-form" ).dialog({
		      autoOpen: false,
		      height: 400,
		      width: 350,
		      modal: true,
		      buttons: {
		        "<spring:message code='Create_Folder'/>": function addUser(){ 	
		        	var folderName = $("#folder_name").val();
		        	if(folderName){
		        		$.ajax({
			      		      url: "validateFolderName", // url: "/findTables?dbName="+db_name,
			      		      //type: "GET",
			      		      data: {'folderName':folderName},
			      		      //dataType: "text/String"
			      		    
			      			success: function(data) {
			      				if(data==''){
			      					console.log("null");
				 			 		$.ajax({
									      url: "createNewModelFolder", // url: "/findAttributes?dbName="+db_name,
									      data:{'id':id,'folderName': folderName, 'company_name': company_name},
									      success:function(data) {
										      $(".alert_message").html('<div class="alert alert-success" role="alert"><spring:message code="create_folder_message"/></div>');
						      				  alert_message_function();
									    	  $('#'+folderID).append('<li id="'+folderName+'123"><span class="caret '+folderName+'" oncontextmenu="on_context_menu_graph(\''+company_name+'\',\''+folderName+data+'\',\''+data+'\',\''+folderName+'\')">'+folderName+'</span></li>');
									    	  refreshTree();
						 			    	  getGraphNames();
									    	  $("#"+name+"").remove();
									      }
									}); 
				 			 		//refreshTree();
							    	//getGraphNames();
				 			 		dialog.dialog( "close" );
			      				}
			      				else{
								      $(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="folder_exist_message"/></div>');
				      				  alert_message_function();
			      				}
			      			}
		        		});
		        	}
		        	else{
		        		dialog.dialog( "open" );
		        	}
		        },
		        "<spring:message code='Cancel'/>": function() {
		          dialog.dialog( "close" );
		        }
		      },
		      close: function() {
		        form[ 0 ].reset();
		      }
		    });
		    form = dialog.find( "form" ).on( "submit", function( event ) {
		      event.preventDefault();
		      addUser();
		    });
		    //$( "#create-user" ).button().on( "click", function() {
		      dialog.dialog( "open" );
		    //});
		  } ); 	
	}
	function createNewModelFile(company_name, folderID,id){
   		$( function() {
		    var dialog, form,
 		    dialog = $( "#dialog-form-file" ).dialog({
		      autoOpen: false,
		      height: 400,
		      width: 350,
		      modal: true,
		      buttons: {
		        "<spring:message code='Create'/>": function addUser(){
		        	$('#chart').hide();
		        	var modelName = $("#file_name").val();
		        	if(modelName){
		        		$.ajax({
		      		      url: "validateModelName", // url: "/findTables?dbName="+db_name,
		      		      //type: "GET",
		      		      data: {'modelName': modelName},
		      		      //dataType: "text/String"
			      			success: function(data) {
			      				if(data==''){
			      					console.log("null");
							 		$.ajax({
									      url: "createNewModelFile", // url: "/findAttributes?dbName="+db_name,
									      data:{'id':id, 'company_name': company_name,'graphname':modelName,'graph_json':newGraphXML},
									      success:function(id) {
									    	  
									    	 $(".alert_message").html('<div class="alert alert-success" role="alert"><spring:message code="create_model_message"/></div>');
					      				   	 alert_message_function();
			 			 			    	 refreshTree();
			 			 			    	 getGraphNames();
			 			 			    	 $('#'+folderID).append('<li id="'+modelName+id+'" class="model_list" onclick="getDBlist(\''+modelName+'\',\''+id+'\')\" oncontextmenu="on_context_menu_remove_graph(\''+id+'\',\''+modelName+data+'\',\''+modelName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+modelName+'</li>');
			 			 			    	 //$('#'+folderID).append('<li id="'+modelName+data+'" class="model_list" onclick="getDBlist(\''+modelName+'\',\''+data+'\')\" oncontextmenu="on_context_menu_remove_graph(\''+data+'\',\''+modelName+data+'\',\''+modelName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+modelName+'</li>');
									    	 getDBlist(modelName, id);
									      }	  	
									}); 
				 			 		//refreshTree();
							    	//getGraphNames();
				 			 		dialog.dialog( "close" );
			      				}
		      					else{
		      				    	$(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="model_exist_message"/></div>');
		      				    	alert_message_function();
		      					}
		      		        }
		        		});
				 		/* $.ajax({
						      url: "createNewModelFile", // url: "/findAttributes?dbName="+db_name,
						      data:{'id':id, 'graphname':modelName,'graph_json':newGraphXML},
						      success:function(data) {
 			 			    	 refreshTree();
 			 			    	 getGraphNames();
								 $('#'+folderID).append('<li id="'+modelName+data+'" class="model_list" onclick="getDBlist(\''+modelName+'\',\''+data+'\')\" oncontextmenu="on_context_menu_remove_graph(\''+data+'\',\''+modelName+data+'\',\''+modelName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+modelName+'</li>');
						    	 getDBlist(modelName, id);
						      }	  	
						}); 
	 			 		//refreshTree();
				    	//getGraphNames();
	 			 		dialog.dialog( "close" ); */
		        	}
		        	else{
		        		dialog.dialog( "open" );
  				    	$(".alert_message").html('<div class="alert alert-warning" role="alert"><spring:message code="enter_model_name"/> </div>');
  				    	alert_message_function();
		        	}
		        },
		        "<spring:message code='Cancel'/>": function() {
		          dialog.dialog( "close" );
		        }
		      },
		      close: function() {
		        form[ 0 ].reset();
		      }
		    });
		    form = dialog.find( "form" ).on( "submit", function( event ) {
		      event.preventDefault();
		      addUser();
		    });
		    //$( "#create-user" ).button().on( "click", function() {
		      dialog.dialog( "open" );
		    //});
		  } );  
	}
// catalog work start's here
	function downloadCatalog(catalog_name , catalog_element, current_ID){
		console.log(catalog_name);	
    	console.log(catalog_element);
    	var catalog_table_var = document.getElementById(current_ID);
    	var theadVar = catalog_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
    	var theadList = [];
    	$.each(theadVar, function (i, item) {
              theadList.push(item.innerHTML)
          });
    	var tbodyVar = catalog_table_var.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
    	console.log('tbodyVar',tbodyVar)
    	var tbodyList = [{}];
    	let tdList = [];
    	$.each(tbodyVar, function (i, item) {
            let loop_td = item.getElementsByTagName("td");
            let current_td_list = [];
            $.each(loop_td, function (i, item) {
                current_td_list.push(item.innerHTML);
            });
            let tdDict = {};
            console.log(current_td_list)
            tdDict["td"] = current_td_list;
//             tdDict.push({
//                 key:   "td",
//                 value: current_td_list
//             });
            tbodyList.push(tdDict);
        });
    	let check = tbodyList[0];
    	if(Object.keys(check).length === 0 ){
    		tbodyList = tbodyList.splice(1,tbodyList.length)
    	}
    	var catalogJson = {
    		    "catalogName":catalog_name,
    		    "elementName":catalog_element,
    		    "theads":[{
    		            "th":theadList
    		        }
    		    ],
    		    "tbodies":[{
    		            "tr":tbodyList
    		        }
    		    ]
      }
    	$.ajax({
		      url: "downloadCatalogAsExcel", // url: "/findTables?dbName="+db_name,
		      contentType : 'application/json; charset=utf-8',
		      type: "POST",
		      data: JSON.stringify(catalogJson),
		      //dataType: "text/String"
  			success: function(data) {
  				window.open('downloadCatalogExcelFile?EXCEL_FILE='+data);
		     }
		});
	}	
	function saveCatalog(catalog_name ,catalog_element,companyName,folderID,parentID,current_ID){
    	console.log(catalog_name);	
    	console.log(catalog_element);
    	var catalog_table_var = document.getElementById(current_ID);
    	var theadVar = catalog_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
    	var theadList = [];
    	$.each(theadVar, function (i, item) {
              theadList.push(item.innerHTML)
          });
    	var tbodyVar = catalog_table_var.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
    	console.log('tbodyVar',tbodyVar)
    	var tbodyList = [{}];
    	let tdList = [];
    	$.each(tbodyVar, function (i, item) {
            let loop_td = item.getElementsByTagName("td");
            let current_td_list = [];
            $.each(loop_td, function (i, item) {
                current_td_list.push(item.innerHTML);
            });
            let tdDict = {};
            console.log(current_td_list)
            tdDict["td"] = current_td_list;
//             tdDict.push({
//                 key:   "td",
//                 value: current_td_list
//             });
            tbodyList.push(tdDict);
        });
    	let check = tbodyList[0];
    	if(Object.keys(check).length === 0 ){
    		tbodyList = tbodyList.splice(1,tbodyList.length)
    	}
    	var catalogJson = {
    		    "catalogName":catalog_name,
    		    "elementName":catalog_element,
    		    "parentID":parentID,
    		    "theads":[{
    		            "th":theadList
    		        }
    		    ],
    		    "tbodies":[{
    		            "tr":tbodyList
    		        }
    		    ]
      }
    	$.ajax({
		      url: "saveCatalogToXML", // url: "/findTables?dbName="+db_name,
		      contentType : 'application/json; charset=utf-8',
		      type: "POST",
		      data: JSON.stringify(catalogJson),
		      //dataType: "text/String"
  			success: function(data) {
  				refreshTree();
		        }
		});
	}
  	function titleForCatalog(catalogName){
  		$(element_title).empty();
    	$("#element_title").show().text(catalogName);
    	console.log("Check");
  	}
	function drawCatalogFromXML(catalogName,id,elementName){
		/* catalog In history start's here */
		$("#chart").hide();
		$("#chart").css("display", "block");
    	$("#element_title").show().text(catalogName);
		catalogView();
    	var current_ID = divId+divIdCount++;
      	var clsName = catalogName.replaceAll(" ","---");
    	var catalog_data = "";
      	if(historyTabItems.includes(catalogName) == false){
      		$("#element_title").show().text(catalogName);
            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+catalogName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#"  onclick="showCatalog(\''+current_ID+'\',\''+catalogName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/catalog.svg"/>"><br/>'+catalogName+'</a></div></div>');
            $("#history_tab").css("display", "flex");
            historyTabItems.push(catalogName);
            console.log('aa',historyTabItems)
            numItems = $('.column').length;
			$(".history_page_no").html(numItems)
        }else{
        	$("#element_title").show().text(catalogName);
        	$( "."+clsName ).remove();
            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+catalogName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#"  onclick="showCatalog(\''+current_ID+'\',\''+catalogName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/catalog.svg"/>"><br/>'+catalogName+'</a></div></div>');
            $("#history_tab").css("display", "flex");
// 			numItems = $('.column').length;
// 			$(".history_page_no").html(numItems)
        }
    	/* catalog In history End's here */
    		$.ajax({
			      url: "getCatalogTableFromXML", 
			      data:{'catalog_id':id},
			      success:function(data) {
			    		$("#catalog").show();
			    	var tableData = '';
			    	tableData+='<table id="'+current_ID+'" class="'+clsName+' table table-striped table-bordered" style="width:100%">';
					var thead = data["thead"];
					var tbody = data["tbody"];
					tableData += '<thead class="">'+thead+'</thead>';
					tableData += '<tbody class="">'+tbody+'</tbody>';
					tableData += '</table>';
					$("#catalog").append(tableData);
// 					var a = document.getElementById("catalog_table");
// 					var theadVar = a.getElementsByTagName("thead");
// 					thead = "<tr>"+thead+"</tr>";
// 					$(theadVar).empty();									
// 					$(theadVar).append(thead);
// 					var tbodyVar = a.getElementsByTagName("tbody");
// 					$(tbodyVar).empty();
// 					$(tbodyVar).append(tbody);
					$(".catalog_save_button").empty().append("<button style='font-size: 20px;' title='Save' class='btn' onclick='saveCatalog(\""+catalogName+"\",\""+elementName+"\");'><span class='fa fa-floppy-o save-btn' aria-hidden='true'></span></button>")
// 					$(".catalog_save_button").append("<button style='font-size: 20px;' title='Save' class='btn' onclick='downloadCatalog(\""+catalogName+"\",\""+elementName+"\",\""+current_ID+"\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
// 					var object_to_string = JSON.stringify(a);
// 					catalog_data = '<div id="'+current_ID+'">"'+a+'"</div>';
			    	allDivIds.push(current_ID);
// 					$("#catalog").append(catalog_data);
					var dataTable_catalog;
					if(dataTable_catalog_created == false){
						dataTable_catalog = $('#catalog_table').DataTable({paging: false});
						dataTable_catalog_created = true;
					}
					showCatalog(current_ID, catalogName);
			      }
    		}); 		        		 
	}
	function fill_elements_in_dropdown(append_id, item){
		$.ajax({
	           url: "getPropertiesDictionary",
	           type: 'POST',
	           data: {},
	           dataType: 'json', // added data type
	           success: function(langDict) {
	   			 $(append_id).append($('<option>',{ 
	 				 value: item,
	 				 text : langDict[item.replaceAll(" ", "_")]
	 			 }));
	           }
	       });
	}
//	10/nov/2021 starts here
	function drawMatrixFromXML(matrix_name,matrix_element1,matrix_element2,matrix_relation,parent_id){
						
						$("#chart").hide();
						$("#chart").css("display", "none");
						$("#element_title").empty();
						$("#element_title").show(matrix_name)
						var current_ID = divId+divIdCount++;
		        		allDivIds.push(current_ID);
		        		$.ajax({
		  			      url: "getMatrixTable", 
		  			      type: "POST",
		  			      data:{ 'matrix_element1':matrix_element1 ,'matrix_element2':matrix_element2, 'matrix_relation': matrix_relation, 'matrix_name':matrix_name},
		  			      success:function(data) {
		  			    		var tableData = '<table id='+current_ID+' class="'+matrix_name+' table table-striped table-bordered" style="width:100%">';
								var thead = data["thead"];
								var tbody = data["tbody"];
								tableData += '<thead class="">'+thead+'</thead>';
					            tableData += '<tbody class="">'+tbody+'</tbody>';
					            tableData += '</table>';
								$("#matrix").append(tableData); 
								$(".matrix_save_button").append('<button id="matrixDownload'+current_ID+'" style="font-size: 20px;" title="Download" class="btn" onclick="downloadMatrix(\''+matrix_name+'\',\''+current_ID+'\');"><span class="fa fa-download download-btn" aria-hidden="true"></span></button>');
								$(".tags-input").tagsinput('items')
								/* matrix In history start's here */
			 		          	var clsName = matrixElement1;
			 		          	var clsName = matrixElement2;
// 			 		          	$("#matrix").empty();
			 		         	if(historyTabItems.includes(matrix_name) == false){
			 		               	$("#historyList").append('<div id="'+current_ID+'11" class="column '+matrix_name+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+matrix_name+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\''+current_ID+'\', '+null+',\''+matrix_name+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrix_name+'</a></div></div>');
			 		               	//$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
			 		               	$("#history_tab").css("display", "flex")
			 		               	historyTabItems.push(matrix_name);
			 		               	console.log('aa',historyTabItems)
			 		               	numItems = $('.column').length;
			 		   				$(".history_page_no").html(numItems)
			 		           }else{
// 			 		           		$( "."+clsName ).remove();
// 			 		               	$("#historyList").append('<div id="'+current_ID+'11" class="column '+matrix_name+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+matrix_name+'\', \''+matrix_name+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\''+current_ID+'\', '+null+',\''+matrix_name+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrix_name+'</a></div></div>');
// 			 		               	$("#history_tab").css("display", "flex");
// 			 		               	historyTabItems.push(matrix_name);
// 			 		   				numItems = $('.column').length;
// 			 		   				$(".history_page_no").html(numItems)
			 		           }	
			 		          	showMatrixDiv(current_ID, null,matrix_name);
					        	/* matrix In history End's here */
		  			      },
		  			      complete: function (data) {
		  			      }
		  			}); 
/*
		var current_ID = divId+divIdCount++;
		allDivIds.push(current_ID);
      	var clsName = matrixName;
      	if(historyTabItems.includes(matrixName) == false){
            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+matrixName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\''+current_ID+'\', '+null+',\''+matrixName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrixName+'</a></div></div>');
            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
            $("#history_tab").css("display", "flex")
            historyTabItems.push(matrix_name);
            console.log('aa',historyTabItems)
            numItems = $('.column').length;
			$(".history_page_no").html(numItems)
        }else{
        	$( "."+clsName ).remove();
            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+matrixName+'\', \''+matrixName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\''+current_ID+'\', '+null+',\''+matrixName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrixName+'</a></div></div>');
            $("#history_tab").css("display", "flex");
			numItems = $('.column').length;
			$(".history_page_no").html(numItems)
        }	
		matrixView();
		$.ajax({
		      url: "getMatrixTableFromXml", 
		      data:{'matrix_id':id},
		      type: "POST",
		      success:function(data) {
	 			var tableData = '<table id='+current_ID+' class="table table-striped table-bordered non-block" style="width:100%">';
				var thead = data["thead"];
				var tbody = data["tbody"];
				tableData += '<thead class="">'+thead+'</thead>';
				tableData += '<tbody class="">'+tbody+'</tbody>';
				tableData += '</table>';
				$("#matrix").append(tableData);
				$(".matrix_save_button").append('<button id="matrixDownload'+current_ID+'" style="font-size: 20px;" title="Download" class="btn" onclick="downloadMatrix(\''+matrixName+'\',\''+current_ID+'\');"><span class="fa fa-download download-btn" aria-hidden="true"></span></button>'); 
				$('.non-block').css('display', '!important');
				showMatrixDiv(current_ID, null,matrixName);
		      }
		}); */
	}
//	10/nov/2021 starts here
	var dataTable_catalog_created = false;
	function catalogname(companyName,folderID,parentID){
		$.ajax({
		      url: "getElementsFromXML", // url: "/findTables?dbName="+db_name,
		      //type: "GET",
		      data: {},
		      //dataType: "text/String"
    			success: function(data) {
//     				$('#catalogElements').empty();
    				 $.each(data, function (i, item) {
    		            $('#catalogElements').append($('<option>',{ 
    		              value: item,
    		              text : item
    		            }));
    		          });
		        }
  		});
   		$( function() {
		    var dialog, form,
 		    dialog = $( "#catalogName" ).dialog({
		      autoOpen: false,
		      height: 400,
		      width: 350,
		      modal: true,
		      buttons: {
		        "Create": function addCatalog(){
		        	catalogView();
		        	$(element_title).empty();
		        	$('#chart').hide();
					$("#element_title").show().text(document.getElementById("catalog_name").value);
		        	$('#catalogfilter').show();
		        	var catalog_name = $("#catalog_name").val();
		        	var catalog_element = $("#catalogElements").val();
		        	/* catalog In history start's here */
		        	var current_ID = divId+divIdCount++;
		        	allDivIds.push(current_ID);
		          	var clsName = catalog_name;
		          	let checkSpaceInCatalogName = clsName.replaceAll(" ","---"); 
		        	/* catalog In history End's here */
		        	if(catalog_name && catalog_element){
		        		$.ajax({
		  			      url: "getCatalogTable", 
		  			      data:{'tableName':catalog_element,'catalog_name':catalog_name},
		  			      success:function(data) {
		  			    		$("#catalog").show();
		  			    		var tableData = '';
		  				    	tableData+='<table id="'+current_ID+'" class="'+checkSpaceInCatalogName+' table table-striped table-bordered" style="width:100%">';
								var thead = data["thead"];
								var tbody = data["tbody"];
								tableData += '<thead class="">'+thead+'</thead>';
								tableData += '<tbody class="">'+tbody+'</tbody>';
								tableData += '</table>';
								$("#catalog").append(tableData);
// 								var a = document.getElementById("catalog_table");
// 								var theadVar = a.getElementsByTagName("thead");
// 								console.log(' theadVar', theadVar)
// 								thead = "<tr>"+thead+"</tr>";
// 								$(theadVar).empty();									
// 								$(theadVar).append(thead);
// 								var tbodyVar = a.getElementsByTagName("tbody");
// 								$(tbodyVar).empty();
// 								$(tbodyVar).append(tbody);
								$(".catalog_save_button").empty().append("<button style='font-size: 20px;' title='Save' class='btn' onclick='saveCatalog(\""+catalog_name+"\",\""+catalog_element+"\",\""+companyName+"\",\""+folderID+"\",\""+parentID+"\",\""+current_ID+"\");'><span class='fa fa-floppy-o save-btn' aria-hidden='true'></span></button>")
								$(".catalog_save_button").append("<button id=\"downloadCatalogButton\" style='font-size: 20px;' title='Download' class='btn' onclick='downloadCatalog(\""+catalog_name+"\",\""+catalog_element+"\",\""+current_ID+"\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
// 								$("#catalog_table").append('<input type="button" class="btn btn-success" value="Save Catalog" onclick="saveCatalog(\''+catalog_name+'\',\''+catalog_element+'\',\''+companyName+'\',\''+folderID+'\',\''+parentID+'\' );"></input>');
// 								$("#catalog_table").append('<input type="button" class="btn btn-success" value="Download Catalog" onclick="downloadCatalog(\''+catalog_name+'\',\''+catalog_element+'\');"></input>');
// 								saveCatalog(catalog_name,catalog_element,companyName,folderID,parentID);
								var dataTable_catalog;
								if(dataTable_catalog_created == false){
									dataTable_catalog = $('#catalog_table').DataTable({paging: false});
									dataTable_catalog_created = true;
		  			      }	  	
								//HISTORY WORK FOR CATALOG CREATE
								if(historyTabItems.includes(catalog_name) == false){
						            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+catalog_element+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showCatalog(\''+current_ID+'\',\''+catalog_name+'\',\''+catalog_element+'\');"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/catalog.svg"/>"><br/>'+catalog_name+'</a></div></div>');
						            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
						            $("#history_tab").css("display", "flex")
						            historyTabItems.push(catalog_name);
						            numItems = $('.column').length;
									$(".history_page_no").html(numItems)
					            }else{
					            	$( "."+clsName ).remove();
						            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+catalog_element+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showCatalog(\''+current_ID+'\',\''+catalog_name+'\',\''+catalog_element+'\');"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/catalog.svg"/>"><br/>'+catalog_name+'</a></div></div>');
						            $("#history_tab").css("display", "flex");
									numItems = $('.column').length;
									$(".history_page_no").html(numItems)
					            }
					        	$.each(allDivIds, function(i, val){
					        		if(val!=current_ID){
					        			$("#"+val).css("display", "none");
					        			$( "#"+val+"11" ).css("background", "");
					        		}else{
					        			$("#"+val).css("display", "block");
					        			$( "#"+val+"11" ).css("background", "#e9e9e9");
					        			numItems = $('.column').length;
					        		
					        			$(".history_page_no").html(numItems);
					        		}
					        	});
		  			      },
		  			    async: false
		  			}); 		        		
		        		dialog.dialog( "close" );
		        	}
		        	else{
		        		dialog.dialog( "open" );
  				    	$(".alert_message").html('<div class="alert alert-warning" role="alert"> <spring:message code="select_element_enter_name"/> </div>');
  				    	alert_message_function();
		        	}
		        },
		        "<spring:message code='Cancel'/>": function() {
		          dialog.dialog( "close" );
		        }
		      },
		      close: function() {
		        form[ 0 ].reset();
		      }
		    });
		    form = dialog.find( "form" ).on( "submit", function( event ) {
		      event.preventDefault();
		      addCatalog();
		    });
		    //$( "#create-user" ).button().on( "click", function() {
		      dialog.dialog( "open" );
		    //});
		  } );  
	}
	function showCatalog(showDivID, catalogName){
		console.log(showDivID, catalogName)
		$("#historyList").css("display", "none");
    	$("#element_title").show().text(catalogName);
    	$("#downloadCatalogButton").remove();
    	$(".catalog_save_button").append("<button id=\"downloadCatalogButton\" style='font-size: 20px;' title='Save' class='btn' onclick='downloadCatalog(\""+catalogName+"\",\""+null+"\",\""+showDivID+"\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
 		$.each( dictionaryXML, function( key, value ) {
 			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
 		});
		
    	$.each(allDivIds, function(i, val){
    		if(val!=showDivID){
    			$("#"+val).css("display", "none");
    			$( "#"+val+"11" ).css("background", "");
    		}else{
    			$("#"+val).css("display", "block");
    			$( "#"+val+"11" ).css("background", "#e9e9e9");
    			numItems = $('.column').length;
    		
    			$(".history_page_no").html(numItems);
    		}
    		$("#palete").css("display", "none");
    		$("#graphId").css("display", "none");
    		$("#form_id").css("display", "block");
    		$( "#historyList" ).css("display", "none");
    	});
// 		$.ajax({
// 		      url: "getCatalogTable", 
// 		      data:{'tableName':catalog_element},
// 		      success:function(data) {
// 		    		$("#element_title").show().text(catalogName);
// 		    		$('#element_title').prop('title', catalogName);
// 					var thead = data["thead"];
// 					var tbody = data["tbody"];
// 					var a = document.getElementById("catalog_table");
// 					var theadVar = a.getElementsByTagName("thead");
// 					console.log(' theadVar', theadVar)
// 					thead = "<tr>"+thead+"</tr>";
// 					$(theadVar).empty();									
// 					$(theadVar).append(thead);
// 					var tbodyVar = a.getElementsByTagName("tbody");
// 					$(tbodyVar).empty();
// 					$(tbodyVar).append(tbody);
// 		  }
// 		}); 	
		catalogView();
		}
	// catalog work End's here
	//creating matrix
	function saveMatrix(matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID){
	$.ajax({
	 		url: "saveMatrixIntoDB",
	 		type: 'GET',
	 		data: {matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID},
	 		success: function(res) {
	 			
	 		},
	 		async: false
	});
}		
// function saveMatrix(matrixName,companyName,folderID,parentID,matrix_relation,currentTable_ID){
// 	console.log(matrixName,companyName,folderID,parentID,matrix_relation,currentTable_ID);
// 	$("#element_title").empty();
// 	$("#element_title").show().text(matrixName);
// 	var matrix_table_var = document.getElementById(currentTable_ID);
// 	var theadVar = matrix_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
// 	var theadList = [];
// 	$.each(theadVar, function (i, item) {
//           theadList.push(item.innerHTML)
//     });
// 	var tbodyVar = matrix_table_var.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
// 	console.log('tbodyVar',tbodyVar)
// 	var tbodyList = [{}];
// 	let tdList = [];
// 	$.each(tbodyVar, function (i, item) {
// 		let loop_td = item.getElementsByTagName("td");
// 		     let current_td_list = [];
//         $.each(loop_td, function (i, item) {
//             current_td_list.push(item.innerHTML);
// 		    });
//         let tdDict = {};
//         console.log(current_td_list)
//         tdDict["td"] = current_td_list;
//         tbodyList.push(tdDict);
//     });
// 	let check = tbodyList[0];
// 	if(Object.keys(check).length === 0 ){
// 		tbodyList = tbodyList.splice(1,tbodyList.length)
// 	}
// 	var matrixJson = {
// 			"matrixName":matrixName,
// 			"parentID":parentID,
// 		    "relation":matrix_relation,
// 		    "theads":[{
// 		            "th":theadList
// 		        }
// 		    ],
// 		    "tbodies":[{
// 		            "tr":tbodyList
// 		        }
// 		    ]
//   	}
// 	$.ajax({
// 	      url: "saveMatrixIntoDB", // url: "/findTables?dbName="+db_name,
// 	      contentType : 'application/json; charset=utf-8',
// 	      type: "POST",
// 	      data: JSON.stringify(matrixJson),
// 	      success:function(data) {  
// 	      }	  	
// 	});
// }		
// time Line work
function matrixname(companyName,folderID,parentID){
	$('#matrixElement1').prop('disabled', false);
	$('#matrixElement2').prop('disabled', false);
		var rowOrColumnSelected = false;
		$("#matrixElement1").html('');
	    $('#matrixElement1').append('<option disabled selected value=""> <spring:message code="select_dropdown"/> </option>');
	    $("#matrixElement2").html('');
	    $('#matrixElement2').append('<option disabled selected value=""> <spring:message code="select_dropdown"/> </option>');
	    $("#matrixRelation").html('');
	    $('#matrixRelation').append('<option disabled selected value=""> <spring:message code="select_dropdown"/> </option>');
		$.ajax({
		      url: "getElementsFromXML", // url: "/findTables?dbName="+db_name,
		      data: {},
    			success: function(data) {
   				 	$.each(data, function (i, item) {
   					 	fill_elements_in_dropdown('#matrixElement1', item);
   		          	});
   				 	$.each(data, function (i, item) {
   					 	fill_elements_in_dropdown('#matrixElement2', item);
    		         });
		        }
  		});
			$("#matrixElement1").change(function(){
				$('#matrixElement1').prop('disabled', 'disabled');
				if(rowOrColumnSelected == false){
					var rowElement = $("#matrixElement1").val();
					$("#matrixElement2").html('');
				    $('#matrixElement2').append('<option disabled selected value=""> <spring:message code="select_dropdown"/> </option>');
					$.ajax({
					      url: "getColumnElements",
					      //type: "GET",
					      data: {'rowElement':rowElement},
					      //dataType: "text/String"
			    			success: function(data) {
			    				 $.each(data, function (i, item) {
			    					 fill_elements_in_dropdown('#matrixElement2', item.replace(/_/g, ' '));
// 			     		            $('#matrixElement2').append($('<option>',{
// 			     		              value: item,
// 			     		              text : item
// 			     		            }));
			     		         });
					        }
			  		});
					rowOrColumnSelected = true;
				}
				showMatrixRelations();
			});
			$("#matrixElement2").change(function(){
				$('#matrixElement2').prop('disabled', 'disabled');
				if(rowOrColumnSelected == false){
					var colElement = $("#matrixElement2").val();
					$("#matrixElement1").html('');
				    $('#matrixElement1').append('<option disabled selected value=""> <spring:message code="select_dropdown"/> </option>');
					$.ajax({
					      url: "getRowElements",
					      //type: "GET",
					      data: {'colElement':colElement},
					      //dataType: "text/String"
			    			success: function(data) {
			    				 $.each(data, function (i, item) {
			    					 fill_elements_in_dropdown('#matrixElement1', item.replace(/_/g, ' '));
// 			     		            $('#matrixElement1').append($('<option>',{
// 			     		              value: item,
// 			     		              text : item
// 			     		            }));
			     		         });
					        }
			  		});
					rowOrColumnSelected = true;
				}
				showMatrixRelations();
			});
			function showMatrixRelations(){
				if($('#matrixElement2').is(':disabled') && $('#matrixElement1').is(':disabled')){
					let rowElement = $("#matrixElement1").val();
					let colElement = $("#matrixElement2").val();
					$.ajax({
					      url: "getRelationsForMatrix",
					      //type: "GET",
					      data: {'rowElement':rowElement,
					    	  	 'colElement':colElement
					      },
					      //dataType: "text/String"
			    			success: function(data) {
			    				$("#matrixRelation").html('');
							    $('#matrixRelation').append('<option disabled selected value=""> <spring:message code="select_dropdown"/> </option>');
			    				 $.each(data, function (i, item) {
// 			     		            $('#matrixRelation').append($('<option>',{
// 			     		              value: item,
// 			     		              text : item
// 			     		            }));
			    			    		$.ajax({
			    				 	           url: "getPropertiesDictionary",
			    				 	           type: 'POST',
			    				 	           data: {},
			    				 	           dataType: 'json', // added data type
			    				 	           success: function(langDict) {
			    			     		            $('#matrixRelation').append($('<option>',{
		 			    								 value: item,
		 			    								 text : langDict[item.replaceAll(" ", "_")]
			  			     		            	}));

			    				 	           }
			    				 	       });
			     		         });
					        }
			  		});
				}
				
			}
			
   		$( function() {
		    var dialog, form,
 		    dialog = $( "#matrixName" ).dialog({
		      autoOpen: false,
		      height: 400,
		      width: 350,
		      modal: true,
		      buttons: {
		        "<spring:message code='Create'/>": function addMatrix(){
// 		        	$("#matrix").empty();
					$('#chart').hide();
		        	$("#save_button").hide();
		        	$(".graph_button").hide();
		        	$("#element_title").empty();
		        	$("#element_title").show().text(matrixName);
		        	matrixView();
		        	var matrix_name = $("#matrix_name").val();
		        	var matrix_element1 = $("#matrixElement1").val();
		        	var matrix_element2 = $("#matrixElement2").val();
		          	var matrix_relation = $("#matrixRelation").val();
// 		        	$(element_title).empty();
// 					$("#element_title").show().text("matrix_name);
		        	if(matrix_name && matrix_element1 && matrix_element2 && matrix_relation){
		        		var current_ID = divId+divIdCount++;
		        		allDivIds.push(current_ID);
		        		$.ajax({
		  			      url: "getMatrixTable", 
		  			      type: "POST",
		  			      data:{ 'matrix_element1':matrix_element1 ,'matrix_element2':matrix_element2, 'matrix_relation': matrix_relation, 'matrix_name':matrix_name},
		  			      success:function(data) {
		  			    		var tableData = '<table id='+current_ID+' class="table table-striped table-bordered" style="width:100%">';
								var thead = data["thead"];
								var tbody = data["tbody"];
								tableData += '<thead class="">'+thead+'</thead>';
					            tableData += '<tbody class="">'+tbody+'</tbody>';
					            tableData += '</table>';
								$("#matrix").append(tableData); 
								$(".matrix_save_button").append('<button id="matrixDownload'+current_ID+'" style="font-size: 20px;" title="Download" class="btn" onclick="downloadMatrix(\''+matrixName+'\',\''+current_ID+'\');"><span class="fa fa-download download-btn" aria-hidden="true"></span></button>');
								
								$(".tags-input").tagsinput('items')
								/* matrix In history start's here */
			 		          	var clsName = matrixElement1;
			 		          	var clsName = matrixElement2;
// 			 		          	$("#matrix").empty();
			 		          	if(historyTabItems.includes(matrix_name) == false){
						            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+matrix_element1+'\',\''+matrix_element2+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\''+current_ID+'\', '+null+',\''+matrix_name+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrix_name+'</a></div></div>');
			 			            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
			 			            $("#history_tab").css("display", "flex")
			 			            historyTabItems.push(matrix_name);
			 			           	numItems = $('.column').length;
			 		            }else{
			 		            	$( "."+clsName ).remove();
			 			            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+matrix_element1+'\'\''+matrix_element2+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\''+current_ID+'\', '+null+',\''+matrix_name+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrix_name+'</a></div></div>');
			 			            $("#history_tab").css("display", "flex");
			 			            numItems = $('.column').length;
				 		   			$(".history_page_no").html(numItems)
			 		            }
			 		          	showMatrixDiv(current_ID, null,matrix_name);
					        	/* matrix In history End's here */
		  			      },
		  			      complete: function (data) {
// 		  			    		saveMatrix(matrix_name,companyName,folderID,parentID,matrix_relation,current_ID);
								saveMatrix(matrix_name,matrix_element1,matrix_element2,matrix_relation,parentID);
		  			    		refreshTree();
		  			      }
		  			}); 		        		
		        		dialog.dialog( "close" );
		        	}
		        	else{
		        		dialog.dialog( "open" );
  				    	$(".alert_message").html('<div class="alert alert-warning" role="alert"> <spring:message code="select_element_enter_name"/> </div>');
  				    	alert_message_function();
		        	}

		        },
		        "<spring:message code='Cancel'/>": function() {
		          dialog.dialog( "close" );
		        }
		      },
		      close: function() {
		        form[ 0 ].reset();
		      }
		    });
		 
		    form = dialog.find( "form" ).on( "submit", function( event ) {
		      event.preventDefault();
		      addMatrix();
		    });
		 
		    //$( "#create-user" ).button().on( "click", function() {
		      dialog.dialog( "open" );
// 		  } );  
		  } );  
	}
	
	function openRelationshipObjectForm(rowElement,columnElement,rowObject,columnObject,matrix_relation,td_id){
		console.log("td_id",td_id)
		var tableName = matrix_relation;
		
		var modal11 = document.getElementById("updateFormModal");
		$( "#modal_content" ).draggable();
		var span = document.getElementsByClassName("close")[3];
		console.log("tableName",tableName)
		document.getElementById("updateFormModal_heading").innerHTML = tableName;
		var cell = null;
		$.ajax({
		      url: "openRelationshipForm", 
		      type: "POST",
		      data:{'rowElement':rowElement,
		    	  	'columnElement':columnElement,
		    	  	'rowObject':rowObject,
		    	  	'columnObject':columnObject,
		    	  	'relation':matrix_relation,	
		    	  	'name':name
		      }
				,
			   	beforeSend: function() {
			   		$("#updateFormModal_form").empty();
			    },
		      success:function(data){
//		 			console.log(data)
					var formData="";
					var labels = [];
					var idd = "";
					var checkboxIds = "";
					var CurrenttabID = "";
					var row_name = "";
					var allIds = "";
					var AllRelRowIDs = [];
					var btnedit = '';
					var object_name_id = '';
					var relationsClass;
					var last_time_updated = '';
					var AllRelTableIDs = [];
					var radioClass = "";
					$.each(data, function(i, val){$.each(data, function(i, val){
						if(i=="row_id"){
							console.log(val)
							idd = val;
						}
						if(i=="allIds"){
							allIds = val;
						}
						if(i=="checkboxIds"){
							checkboxIds = val;
						}
						if(i=="formData"){
							formData = val;
						}
						if(i=="attributeNames"){
							labels = val;
						}
						if(i=="CurrenttabID"){
		                   CurrenttabID = val;
			            }
						if(i=="row_name"){
							row_name = val;
			            }
						if(i=="AllRelRowIDs"){
							AllRelRowIDs = val;
			            }
						if(i=="AllRelRowIDs"){
							AllRelRowIDs = val;
			            }
						if(i=="editButtonId"){
							btnedit = val;
			            }
						if(i=="object_name_id"){
							object_name_id = val;
			            }
						if(i=="relationsClassList"){
							relationsClass = val[0];
			            }
						if(i=="AllRelTableIDs"){
							AllRelTableIDs = val;
			            }
						if(i=="last_time_updated"){
							last_time_updated = val[0];
			            }
						if(i=="radioClass"){
							radioClass = val[0];
			            }
					  });});
					$( function() {
			               $( "#"+CurrenttabID ).tabs().addClass( "ui-tabs-vertical1 ui-helper-clearfix" );
			               $( "#"+CurrenttabID+" li" ).removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );
					  } );
					var imageName = tableName.toLowerCase().replaceAll('_','-');
		            imageName = imageName+'.svg';
		            var current_ID = "";
					//formData += '</form></div>'
					//console.log(formData);
					$("#updateFormModal_form").append(formData);
					
					$.each(checkboxIds, function(i, val){
						$("#"+val).on('change', function() {
							  if ($(this).is(':checked')) {
							    $(this).attr('value', 'True');
							  } else {
							    $(this).attr('value', 'False');
							  }
							  
							});
						
					});
					
// 					form_submitForUpdate(dbName, tableName, labels, idd,allIds,row_name,AllRelRowIDs,btnedit, object_name_id, imageName, current_ID,CurrenttabID[0],AllRelTableIDs);
					form_submitForMatrixRelationUpdate(dbName, tableName, labels, idd,allIds,row_name,AllRelRowIDs,btnedit, object_name_id, imageName, current_ID,CurrenttabID[0],null,last_time_updated,AllRelTableIDs,td_id,radioClass);
		      }	  	
		});
		
		 modal11.style.display = "block";
			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal11.style.display = "none";
			}
	}
	
	function form_submitForMatrixRelationUpdate(dbName, tableName, attributes, idd, allIds, row_name, AllRelRowIDs, btnedit, object_name_id,imageName, current_ID, CurrenttabID, cell, last_time_updated,AllRelTableIDs,td_id,radioClass){
		var imgTagLength = 0;
		var imgTag;
		var imgSrc = 
		$("."+radioClass).change(function() {
			let radioVar = document.getElementsByClassName(radioClass)
			$.each(radioVar, function(i, val){
				let accessAttribute = val.getAttribute("radioforaccess");
				let accessValue = val.value;
				let current_td = document.getElementById(td_id)
				let imgTags = current_td.getElementsByTagName("IMG");
				
				if(accessValue == "on"){
					imgSrc = "resources/js/examples/editors/images/images1/"+accessAttribute.replaceAll(" ","").replaceAll("_","").toLowerCase()+".png";
					if(accessAttribute=="Read"){
						console.log("Read")
					}else if(accessAttribute == "Write"){
						console.log("Write")
					}else if(accessAttribute == "Read_Write"){
						console.log("Read_Write")
					}
					console.log("accessAttribute",accessAttribute)
					if(imgTags.length>1){
						imgTag = imgTags[1];
						imgTagLength = imgTags.length;
					}
				}
				
				
			});
			
		});
		var temp = {"dbName": dbName, "tableName": tableName, "attributes": attributes, "idd": idd, "allIds": allIds, "row_name": row_name, "AllRelRowIDs": AllRelRowIDs, "btnedit": btnedit, "imageName": imageName, "current_ID": current_ID, "CurrenttabID": CurrenttabID, "cell":cell}
		get_data_for_save_button.push(temp)
		
		getDate = get_data_for_save_button[0]["dbName"]
		
//	 	if(current_ID)
		if(AllRelRowIDs.length==0)
			AllRelRowIDs[0] = "null";
		if(AllRelTableIDs.length==0)
			AllRelTableIDs[0] = "null";
			$("#"+btnedit).click(function () {
				$.ajax({
				      url: "getDateForFormSubmit", // url: "/findTables?dbName="+db_name,
				      type: "GET",
				      data: {
				    	  	'tableName' :tableName,
				    	  	'row_name' :row_name[0],
				      },
				      //dataType: "text/String"
					success: function(data) {
						
						console.log('date',data)
						console.log('rowname',row_name)
						updated_time = data.slice(0, 19);
						if(last_time_updated.slice(0, 19) === updated_time){
							var formData = [];
								$.each(allIds, function(i, val1){
									var tag = document.getElementById(val1).tagName;
									if(tag == 'TABLE'){
										var object_names_form = document.getElementById(val1).getElementsByClassName("object_name_form");
										var element_name_from_icon = document.getElementById(val1).getElementsByClassName("elementIcon");
										var loopLength = object_names_form.length;
										var allObjects = '';
										for(var i=0; i<loopLength; i++){
											var objectValue = object_names_form[i].innerHTML;
											if(objectValue==''){
												continue;
											}
											var imgSrc = element_name_from_icon[i];
											if(imgSrc!=undefined){
												imgSrc = imgSrc.getElementsByTagName("IMG")[0].src;
											
												var objectElement = imgSrc.split('/');
												objectElement = objectElement[objectElement.length-1];
												objectElement = objectElement.split('.svg');
												objectElement = objectElement[0].replaceAll('-',' ');
												objectElement = capitalizeFirstLetter(objectElement);
												objectElement = objectElement.replaceAll(' ','_');
												objectElement = objectElement.replaceAll(' Of ',' of ');
												allObjects += objectValue+'---'+objectElement+',';
											}else{
												allObjects += objectValue+",";
											}
											
										}
										
//						 					console.log('val',objectValue)
									
//						 				$.each( object_names_form, function( key, value ) {
//						 					allObjects += value.innerHTML+",";
//						 				});
										allObjects = allObjects.slice(0, -1);
										formData.push(allObjects);
									}else if(tag == 'TEXTAREA'){
										var currentAttVal = $('#'+val1).val();
										formData.push(currentAttVal);
									}else {
										formData.push($('#'+val1).val())
									}
					             });
								var id = idd[0];
								$.ajax({
									url: "validateObjectName", // url: "/findTables?dbName="+db_name,
								    //type: "GET",
								    data: {
								    	'tableName' :tableName,
								    	'object_name' :formData[0],
							    	  	'oldName': row_name[0],
									},
								      //dataType: "text/String"
									success: function(data) {
										if(data==''){			
											$.ajax({
											      url: "editRow", // url: "/findTables?dbName="+db_name,
											      type: "POST",
											      data: {'dbName':dbName,
											    	  	'tableName' :tableName,
											    	  	'attributes' :attributes,
											    	  	'id' :id,
											    	  	'oldName': row_name[0],
											    	  	'formData' :formData,
							    	  	'AllRelRowIDs' :AllRelRowIDs,
							    	  	'AllRelTableIDs':AllRelTableIDs
											      },
											      //dataType: "text/String"
												success: function(data) {
													if(imgTagLength>1){
														imgTag.src = imgSrc;
													}else{
														$("#"+td_id).append('<img style=\"width:20px; height:20px; float:right\" draggable=\"false\" src=\"'+imgSrc+'"\">');
														console.log()
													}
													let getcurrentDate = new Date();
													let gethour = getcurrentDate.getHours();
													let getMinute = getcurrentDate.getMinutes();
													//console.log("getMinute", getMinute)
													if(getMinute < 10){
														getMinute = "0"+getMinute;
													}
													let getSecond = getcurrentDate.getSeconds();
													//console.log("getSecond", getSecond)
													getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
													//console.log(getcurrentDate.toISOString().slice(0, 19).replace('T', ' '));
													last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');
											    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">Successfully Updated</div>');
											    	alert_message_function();
													refreshTree();
													var get_id = $("#"+CurrenttabID+" :input[name=\"Name\"]").attr("id");
													var new_value_input = $("#"+get_id+"").val();
										 			/* console.log("object_name_id", object_name_id[0])
										 			console.log('new_value_input',new_value_input)
										 			console.log("label_value", $("#"+object_name_id[0]+"").text(new_value_input)) */
										 			$("#"+object_name_id[0]+"").text(new_value_input);
													if(cell){
														graph1.model.setValue(cell, new_value_input);
														save_graph_for_rename_component();
										 				//graph1.updateCellSize(cell, true);
														/* var geom = cell.getGeometry();
														geom.width = 300;
														$("rect").attr("height","50"); */
														//geom.width = geom.width > width ? geom.width : width;
													}
													var change_value = $('#'+get_id).val(new_value_input);
													var removeItem = change_value[0].value+'_'+tableName;
													historyTabItems = jQuery.grep(historyTabItems	, function(value) {
														  return value != removeItem;
													});
													if(historyTabItems.includes(change_value[0].value+'_'+tableName) == false){
													 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+removeItem.replaceAll(' ','---')+'" style="background: rgb(233, 233, 233);"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
													   $("#history_tab").css("display", "flex")
													   historyTabItems.push(change_value[0].value.replaceAll(' ','---')+'_'+tableName);
													}
													$("#"+btnedit).attr('disabled', true);
												}
									    	});
										}
										else{
									    	$(".alert_message").html('<div class="alert alert-danger" role="alert">Name Already Exist!</div>');
									    	alert_message_function();
										}
							        }
							    });
						}
						else{
							$(".alert_message").html('<div class="alert alert-danger" role="alert">Another User Updated This File Please Refresh the tree!!</div>');
					    	alert_message_function();
						}
					},
	                error: function(data){ 
	                	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
				    	alert_message_function(); 
	                }
		  	});
		});
		save_button_toggle(btnedit, CurrenttabID);
	}
	
	function addInMatrixInput(val,inputClass){
		 var value = val.value;  
		  $('#'+inputClass).tagsinput('add', value);
	}
	
	function showMatrix(matrix_name , matrix_element1 , matrix_element2){
		$("#historyList").css("display", "none");
		$("#element_title").empty();
    	$("#element_title").show().text(matrix_name);
		$("#historyList").css("display", "none");
		
		$.ajax({
		      url: "getMatrixTable", 
		      type: "GET",
		      data:{ 'matrix_element1':matrix_element1 ,'matrix_element2':matrix_element2},
		      success:function(data) {
				var thead = data["thead"];
				var tbody = data["tbody"];
				var a = document.getElementById("matrix_table");
				var theadVar = a.getElementsByTagName("thead");
				console.log(' theadVar', theadVar)
				thead = "<tr>"+thead+"</tr>";
				$(theadVar).empty();									
				$(theadVar).append(thead);
				var tbodyVar = a.getElementsByTagName("tbody");
				$(tbodyVar).empty();
				$(tbodyVar).append(tbody);
		      }	  	
		}); 	
		matrixView();
	} 
	// matrix work End's here
	function deleteModelFolder(folderID,id, folderName,ulID,type, company_name,parentID){
		$("#"+folderName+"123").remove();
		///$("."+folderName+"file").remove();
		$("#recycle_bin_list").append('<li id="'+folderID+'2" class="model_list '+folderName+'" oncontextmenu="on_context_menu_restore(\''+id+'\', \''+folderID+'\', \''+folderName+'\',\''+ulID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\');"><i class="fa fa-folder" aria-hidden="true"></i>&nbsp;'+folderName.replaceAll('---', ' ')+'</li>')
 		//if(modelName!=null){
	 		$.ajax({
			      url: "deleteModelFolder", // url: "/findAttributes?dbName="+db_name,
			      data:{'id':id},//,'folderName':folderName, 'folderID':folderID
			      success:function(data) {
			    	  console.log(data)
// 			    	  refreshTree();
// 			    	  getGraphNames();
					 //$('#'+folderID).append('<li id="'+modelName+data+'" class="model_list" onclick="getDBlist(\''+modelName+'\',\''+data+'\')\" oncontextmenu="on_context_menu_remove_graph(\''+data+'\',\''+modelName+data+'\',\''+modelName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+modelName+'</li>');
			      }	  	
			}); 
		//}
 		
	}
	// roadmap work End's here
	function deleteRoadmapFolder(folderID,id, folderName,ulID,type, company_name,parentID){
		console.log("receive at roadmap delete folder")
		$("#"+folderName+"123").remove();
		///$("."+folderName+"file").remove();
		$("#recycle_bin_list").append('<li id="'+folderID+'2" class="model_list '+folderName+'" oncontextmenu="on_context_menu_restoreRoadmap(\''+id+'\', \''+folderID+'\', \''+folderName+'\',\''+ulID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\');"><i class="fa fa-folder" aria-hidden="true"></i>&nbsp;'+folderName.replaceAll('---', ' ')+'</li>')
 		//if(modelName!=null){
	 		$.ajax({
			      url: "deleteModelFolder", // url: "/findAttributes?dbName="+db_name,
			      data:{'id':id},//,'folderName':folderName, 'folderID':folderID
			      success:function(data) {
			    	  console.log(data)
// 			    	  refreshTree();
// 			    	  getGraphNames();
					 //$('#'+folderID).append('<li id="'+modelName+data+'" class="model_list" onclick="getDBlist(\''+modelName+'\',\''+data+'\')\" oncontextmenu="on_context_menu_remove_graph(\''+data+'\',\''+modelName+data+'\',\''+modelName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+modelName+'</li>');
			      }	  	
			}); 
		//}
 		
	}
	//on_context_menu_remove_roadmap
	function on_context_menu_remove_roadmap(roadmapid,liID, folderName_ID, roadmapName, companyName, parentID, parentFolder){
// 			console.log("roadmapid",roadmapid);
// 			console.log("liID",liID);
// 			console.log("roadmapfolderID",folderName_ID);
// 			console.log("roadmapName",roadmapName);
// 			console.log("companyName",companyName);
// 			console.log("parentID",parentID);
// 			console.log("**********************************")
 			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			
			  
			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+roadmapName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
			  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
// 			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+roadmapName+'\',\'SVG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_SVG"/></div></a>';
// 			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+roadmapName+'\',\'PNG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_PNG"/></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeRoadmap(\''+roadmapid+'\',\''+liID+'\', \''+folderName_ID+'\',\''+roadmapName+'\', \''+parentFolder+'\',\''+companyName+'\', \''+parentID+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  
			  
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = event.pageX + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			  			
			}); 
	}
	//on_context_menu_remove_graph
	function on_context_menu_remove_graph(graphID,liID, folderName,modelName, parentFolder){
 			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
			  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'SVG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_SVG"/></div></a>';
			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'PNG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_PNG"/></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeGraph(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = event.pageX + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			}); 
	}

// 	//on_context_menu_remove_roadmap
// 	function on_context_menu_remove_roadmap(roadmapID,roadmapName,data, roadmapName){
// 		console.log("receive remove command")
//  			  event.preventDefault();
// 			  var contextElement = document.getElementById("context-menu");
// 			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
// 			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
// 			  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
// 			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'SVG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_SVG"/></div></a>';
// 			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'PNG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_PNG"/></div></a>';
// 			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeGraph(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  
// 			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
// 			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Roadmap(\''+modelName+'\',\'SVG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_SVG"/></div></a>';
// 			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Roadmap(\''+modelName+'\',\'PNG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_PNG"/></div></a>';
// 			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeRoadmap(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  
			  
// 			  contextElement.innerHTML = content_;
// 			  contextElement.style.top = event.pageY + "px";
// 		 	  contextElement.style.left = event.pageX + "px";
// 			  contextElement.classList.add("active");

// 			window.addEventListener("click",function(){
// 			  document.getElementById("context-menu").classList.remove("active");
// 			}); 
// 	}
	
	function removeRoadmap(roadmapid,liID, folderName_ID,roadmapName, parentFolder,companyName, parentID){
// 		closeRoadmapDiv(roadmapid, roadmapName);
		console.log("roadmapName:",roadmapName)
		console.log("liID: ",liID)
		let fval = $('#element_title').text(); 
		console.log("fval ",fval)
		let spltCls = roadmapName.split(' ');
		spltCls = spltCls[0]
		$("."+spltCls+"").remove();
// 		console.log("roadmapName ",roadmapName)
// 		console.log(roadmapid+"--"+liID+"--"+folderName_ID+"++"+roadmapName+"++"+parentFolder+"++"+companyName+"++"+parentID)
		if (fval == roadmapName){
// 			console.log("Remove roadmap details")
			closeRoadmapDiv(roadmapid, roadmapName);
			$("#element_title").hide();
			$("#chart").hide();
// 			closeRoadmapDiv(roadmapid, roadmapName, companyName, parentID);
			
		}
		console.log("roadmapid ",roadmapid)
//   		--------------------------------------
		console.log("remove roadmap 1")
  		$.ajax({
		      url: "delRoadmapRowData", // url: "/findAttributes?dbName="+db_name,
		      async: false,
		      data:{'roadmapid':roadmapid},
		      success:function(data) {
 		    	  for(var i = 0; i < data.length ; i++){
//  		    		  		console.log("direct remove")
 		    		  	
// 							console.log("delete_Roadmap: "+data[i].id+" "+data[i].roadmapName+" "+folderName_ID+" "+liID+" "+companyName+" "+parentID+" "+roadmapName)		  
		    			  if(data[i].roadmapName == roadmapName){
		    				  $("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="on_context_menu_restoreRoadmap(\''+data[i].id+'\', \''+data[i].roadmapName+'\',\''+folderName_ID+'\', \''+liID+'\',\'folder\',\''+companyName+'\',\''+parentID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;'+data[i].roadmapName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
		    			  }
// 		    			  else{
// 		    				  $("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].roadmapName+'\',\''+folderName_ID+'\', \''+liID+'\',\'"folder"\',\''+companyName+'\',\''+parentID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;'+data[i].roadmapName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
// 		    			  }
		    	  }
//  		    	 else{
//    				  $("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].roadmapName+'\',\''+folderName_ID+'\', \''+liID+'\',\'"folder"\',\''+companyName+'\',\''+parentID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;'+data[i].roadmapName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
//    			  }
		    	  $.each( data, function( key, value ) {
				  });
		    	  delete dictionaryXML[roadmapName]
		    	  console.log("id99 ",roadmapid)
		    	  
		    	  $("#"+roadmapid+"").remove();
		    	  
// 		    	  $('body #'+roadmapid+'').remove();
		    	  numItemCounter();
		    	  console.log("currentWindowID ",currentWindowID)
		    		if(currentWindowID==roadmapName){
		    			var diagram = mxUtils.parseXml(newGraphXML);
		    		    var codec = new mxCodec(diagram);
		    		    codec.decode(diagram.documentElement, graph1.getModel());
		    		    $("#element_title").hide()  
		    		}
		    	  console.log("liID remove: ",liID)
		    	  $("#"+liID+"").remove();
// 		    	  getGraphNames(); 
// 			  		refreshTree(); 
		      }	  	
		}); 
  		
	}
	
	function removeGraph(graphID,liID, folderName,modelName1, parentFolder){
		console.log("remove graph: ",graphID,liID, folderName,modelName1, parentFolder)
  		$.ajax({
		      url: "delGraphRowData", // url: "/findAttributes?dbName="+db_name,
		      data:{'graphID':graphID},
		      success:function(data) {
 		    	  for(var i = 0; i < data.length ; i++){
		    				data[i].modelName.replaceAll(' ', '---');
		    				console.log("data[i].modelName", data[i].modelName)
		    				console.log("modelName1", modelName1)
		    			  if(data[i].modelName.replaceAll(' ', '---') == modelName1){
			    			   $("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
		    			  }  
		    			  else if(data[i].modelName == modelName1){
				    			$("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
		    			  }
		    	  }
		    	  $.each( data, function( key, value ) {
				  });
		    	  delete dictionaryXML[modelName1]
		    	  $(".gh"+graphID+"").remove();
		    	  numItemCounter();
		    		if(currentWindowID==modelName1+"11"){
		    			var diagram = mxUtils.parseXml(newGraphXML);
		    		    var codec = new mxCodec(diagram);
		    		    codec.decode(diagram.documentElement, graph1.getModel());
		    		    $("#element_title").hide()  
		    		}
		    	  $("#"+liID+"").remove();
		      }	  	
		});   
	}
	
	
	
	
		    	  
// 	Catalog & matrix delete starts here
	function on_context_menu_remove_catalog_matrix(graphID,liID, folderName,modelName, parentFolder,catalog_or_matrix){
		 console.log(graphID,liID, folderName,modelName, parentFolder,catalog_or_matrix)
		  event.preventDefault();
		  var contextElement = document.getElementById("context-menu");
		  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
		  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
		  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
		  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeCatalogMatrix(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\',\''+catalog_or_matrix+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
		  contextElement.innerHTML = content_;
		  contextElement.style.top = event.pageY + "px";
	 	  contextElement.style.left = event.pageX + "px";
		  contextElement.classList.add("active");

		window.addEventListener("click",function(){
		  document.getElementById("context-menu").classList.remove("active");
		}); 
	}
	
function removeCatalogMatrix(modelID,liID, folderName,modelName, parentFolder,catalog_or_matrix){
  		$.ajax({
		      url: "delCatalogMatrix", // url: "/findAttributes?dbName="+db_name,
		      data:{'modelID':modelID,'catalog_or_matrix':catalog_or_matrix},
		      success:function(data) {
		    	  if(catalog_or_matrix=='catalog'){
		    	  	$("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="recycle_bin_context_menu_catalog_matrix(\''+modelID+'\', \''+liID+'\',\''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;'+modelName+'</li>');
// 			    	  $("#"+ulID).append('<li id=\''+name.replaceAll(" ", "---")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj(\''+tableName+'\',\''+name+'\')"><span draggable="false"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+name+'</span></li>'); //onclick="showData('Application_Component','application_system')"
					  //$("#recycle_bin_list_for_object_elements").append('<li id=\''+name.replaceAll(" ", "_")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj(\''+tableName+'\',\''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+name+'</li>'); //onclick="showData('Application_Component','application_system')"
					  historyTabItems.forEach(function(element) {
			    		  console.log("element",element)
			    	  	if(modelName.replaceAll(" ", "---")+"_"+table == element){
			    	  		var index_to_delete = historyTabItems.indexOf(element);
			    	  		historyTabItems.splice(index_to_delete, 1);
			    	  		console.log("Matched")
			    		} 
			    	  	else{
			    			console.log("Not matched")	  
			    		}
			    	  });
					  $("#element_title").hide() 
			    	  $( "."+modelName.replaceAll(" ", "---")+"_"+table).remove();
			    	  $( "."+modelName.replaceAll(" ", "---")).remove();
		    	  }else{
		    		$("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="recycle_bin_context_menu_catalog_matrix(\''+modelID+'\', \''+liID+'\',\''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;'+modelName+'</li>');
					  historyTabItems.forEach(function(element) {
			    		  console.log("element",element)
			    	  	if(modelName.replaceAll(" ", "---")+"_"+table == element){
			    	  		var index_to_delete = historyTabItems.indexOf(element);
			    	  		historyTabItems.splice(index_to_delete, 1);
			    	  		console.log("Matched")
			    		} 
			    	  	else{
			    			console.log("Not matched")	  
			    		}
			    	  });
					  $("#element_title").hide() 
			    	  $( "."+modelName.replaceAll(" ", "---")+"_"+table).remove();
			    	  $( "."+modelName.replaceAll(" ", "---")).remove();		    	  
		    	  }
		    	  numItemCounter();
		    	  $("#"+liID+"").remove();
		      }	  	
		});   
	}
	
function recycle_bin_context_menu_catalog_matrix(modelID,liID, folderName,modelName, parentFolder,catalog_or_matrix){
	  event.preventDefault();
	  var contextElement = document.getElementById("context-menu");
	  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restore_catalog_matrix(\''+modelID+'\',  \''+liID+'\', \''+folderName+'\', \''+modelName+'\',\''+parentFolder+'\',\''+catalog_or_matrix+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i><spring:message code="restore"/></div></a>';
	  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteCatalogMatrixPermanently(\''+modelID+'\',  \''+modelName+'\', \''+liID+'\', \''+catalog_or_matrix+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true" ></i><spring:message code="delete"/></div></a>';
	  contextElement.innerHTML = content_;
	  contextElement.style.top = event.pageY + "px";
	  contextElement.style.left = event.pageX + "px";
	  contextElement.classList.add("active");

	window.addEventListener("click",function(){
	  document.getElementById("context-menu").classList.remove("active");
	}); 
}

function restore_catalog_matrix(modelID,liID, folderName,modelName, parentFolder,catalog_or_matrix){
	var modelDetails;
	if(catalog_or_matrix=='catalog'){
		$.ajax({
		      url: "getCatalogDetailsFromID",
		      data:{'catalogID':modelID},
		      success:function(data) {
		    	  console.log('catalog: ',data)
		    	  modelDetails= data;
		      },
				async: false
			});
	  }else{
		  $.ajax({
		      url: "getMatrixDetailsFromID",
		      data:{'matrixID':modelID},
		      success:function(data) {
		    	  modelDetails= data;
		      },
				async: false
			});
	  }
	
	folderName = folderName.replaceAll(' ','---');
	$.ajax({
	      url: "restoreCatalogMatrix",
	      data:{'modelID':modelID,'catalog_or_matrix':catalog_or_matrix},
	      success:function() {
	    	  $("#"+liID+"2").remove();
	    	  $("#"+liID.replaceAll(" ", "---")+"2").remove();
	    	  if(catalog_or_matrix=='catalog'){
				$("#"+folderName+"").append('<li  id="'+liID+'" class=\"model_list\" onclick=\"drawCatalogFromXML(\''+modelName+'\',\''+modelDetails['id']+'\',\''+modelDetails['elementName']+'\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\''+modelID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;'+modelName+'</li>');
	    	  }else{
	    		  $("#"+folderName+"").append('<li  id="'+liID+'" class=\"model_list\" onclick=\"drawMatrixFromXML(\''+modelName+'\',\''+modelDetails['matrix_element1']+'\',\''+modelDetails['matrix_element2']+'\',\''+modelDetails['matrix_relation']+'\',\''+modelDetails['parentID']+'\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\''+modelID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;'+modelName+'</li>');
	    	  }
	//    	  $("#"+folderName+"").append('<li id="'+liID+'" class="model_list" onclick="getDBlist(\''+name+'\',\''+graphID+'\')" oncontextmenu="on_context_menu_remove_graph(\''+graphID+'\', \''+liID+'\',\''+folderName+'\',\''+name+'\');">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+name+'</li>');
	      }
	});
}

function deleteCatalogMatrixPermanently(modelID, name, liID,catalog_or_matrix){
	
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: 400,
      modal: true,
      buttons: {
        "Delete": function() {
		  		$.ajax({
				      url: "deleteCatalogMatrixPermanently",
				      data:{'modelID':modelID,'catalog_or_matrix':catalog_or_matrix},
				      success:function(data) {
				    	  //alert(""+name+" is deleted!")
							if(data == "done"){
						    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+name+' is deleted!</div>');
						    	  alert_message_function();
						    	  $("#"+liID+"2").remove();
						    	  $("#"+name+"2").remove();
							}
				      }	  	
				});
		  	$( this ).dialog( "close" );
        },
        "<spring:message code='Cancel'/>": function() {
          $( this ).dialog( "close" );
        }
      }
    });
}

// roadmap delete ends here
// function on_context_menu_restoreRoadmap(graphID, name, folderName, liID,type,company_name,parentID){
function on_context_menu_restoreRoadmap(roadmapID, roadmapName, folderNameID, liID,type,company_name,parentID,folderID){
	console.log("Roadmap restore 002")
	console.log("graphID ",roadmapID)
	console.log("name ",roadmapName)
	console.log("folderName ",folderNameID)
	console.log("liID ",liID)
	console.log("type ",type)
	console.log("company_name ",company_name)
	console.log("parentID ",parentID)
	
	  event.preventDefault();
	  var contextElement = document.getElementById("context-menu");
	  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
	  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restoreRoadmap(\''+roadmapID+'\',  \''+roadmapName+'\', \''+folderNameID+'\', \''+liID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\',\''+folderID+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i><spring:message code="restore"/></div></a>';
	  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteRoadmapPermanently(\''+roadmapID+'\',  \''+roadmapName+'\', \''+folderNameID+'\', \''+liID+'\',\''+type+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true" ></i><spring:message code="delete"/></div></a>';
	  contextElement.innerHTML = content_;
	  contextElement.style.top = event.pageY + "px";
	  contextElement.style.left = event.pageX + "px";
	  contextElement.classList.add("active");

	window.addEventListener("click",function(){
	  document.getElementById("context-menu").classList.remove("active");
	}); 
}

// 	Catalog & matrix delete ends here




	function on_context_menu_restore(graphID, name, folderName, liID,type,company_name,parentID){
 			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restore(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i><spring:message code="restore"/></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteModelPermanently(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true" ></i><spring:message code="delete"/></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = event.pageX + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			}); 
	}
	
	// restore roadmap
	function restoreRoadmap(roadmapID, name, folderName, liID, type, company_name, parentID, folderID){
		if(type == 'folder'){
			var tree = '';
	  		$.ajax({
			      url: "restoreRoadmapFolder",
			      data:{'folderName':folderName,'roadmapID':roadmapID, 'folderID':folderID},
			      success:function(data) {
						tree = '';
						tree = '<li id="delete_roadmap91" class="model_list" onclick="getRoadmap(\''+name+'\',\''+roadmapID+'\',\''+company_name+'\',\''+parentID+'\')" '
						tree += 'oncontextmenu="on_context_menu_remove_roadmap(\''+roadmapID+'\',\''+liID+'\', \''+folderName+'\',\''+name+'\',\''+company_name+'\',\''+parentID+'\',\''+folderName+'\')" '
						tree += '>&nbsp;  <img style= "width:20px; height:20px" draggable="false" src="resources/images/road.svg">&nbsp;'+name+'</li>'
						console.log("tree list: ",tree)
						
					  let appendId = "#"+folderName+"";
			    	  $(appendId).append(tree);
			    	  console.log("AppentTo",appendId)
			    	  console.log("Item",tree)
			    	  
					  $("#"+liID+"2").remove();

			      }
			});	
		}
		else{
			let parentFolderName = folderName.substring(0, folderName.length - (roadmapID.length));
			console.log("parentFolderName", parentFolderName)
			folderName = folderName.replaceAll(' ','---')
			
			if($("#" + folderName).length == 0) {
			  //it doesn't exist
			  //alert("It's Parent Folder "+parentFolderName+" is deleted!");
			  $(".alert_message").html('<div class="alert alert-danger" role="alert">It\'s Parent Folder '+parentFolderName+' is deleted!</div>');
			  alert_message_function();
			}
			else{
		  		$.ajax({
				      url: "restoreData",
				      data:{'roadmapID':roadmapID},
				      success:function() {
				    	 
				    	  $("#"+liID+"2").remove();
				    	  $("#"+liID.replaceAll(" ", "---")+"2").remove();
				    	  $("#"+folderName+"").append('<li id="'+liID+'" class="model_list" onclick="getDBlist(\''+name+'\',\''+roadmapID+'\')" oncontextmenu="on_context_menu_remove_graph(\''+roadmapID+'\', \''+liID+'\',\''+folderName+'\',\''+name+'\');">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+name+'</li>');
				      }	  	
				});
		  		console.log("refresh tree")
			}
		}
	}
	// restore graph and model
	function restore(graphID, name, folderName, liID,type,company_name,parentID){
		console.log(graphID, name, folderName, liID);
		if(type == 'folder'){
			var tree = '';
	  		$.ajax({
			      url: "restoreFolder",
			      data:{'folderName':folderName,'graphID':graphID},
			      success:function(data) {
			    	  console.log("data", data)
			    	  tree+='<li id="'+folderName+'123">';
					  tree+='<span onclick = "toggleList(this)" id='+folderName+' class="caret '+folderName+' caret-down" oncontextmenu="on_context_menu_graph(\''+company_name+'\',\''+name+'\', \''+graphID+'\',\''+folderName+'\',\''+parentID+'\',\''+company_name+parentID+'\',\'folder\');">'+folderName.replaceAll('---', ' ')+'</span>';
			    	  tree+=data;
			    	  tree+='</li>';
			    	  $("#"+name+"2").remove();
			    	  $("#"+name.replaceAll(" ", "---")+"2").remove();
			    	  //<li id="new_ahsan123"><span class="caret new_ahsan caret-down" oncontextmenu="on_context_menu_graph('new_ahsan17','17', 'new_ahsan')">new_ahsan</span></li>
			    	  //$("#"+folderName+"").append('<li class="model_list">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">'+name+'</li>');
			    	  $("#"+liID).append(tree);

			    	 /*  document.getElementById(folderName).addEventListener("click", function() {
			    		  console.log("toggle");
			    		  console.log(this);
					    	this.parentElement.querySelector(".nested").classList.toggle("active");
					    	this.classList.toggle("caret-down");
					  }); */
			      }
			});	
		}
		else{
			let parentFolderName = folderName.substring(0, folderName.length - (graphID.length));
			console.log("parentFolderName", parentFolderName)
			folderName = folderName.replaceAll(' ','---')
			
			if($("#" + folderName).length == 0) {
			  //it doesn't exist
			  //alert("It's Parent Folder "+parentFolderName+" is deleted!");
			  $(".alert_message").html('<div class="alert alert-danger" role="alert">It\'s Parent Folder '+parentFolderName+' is deleted!</div>');
			  alert_message_function();
			}
			else{
  		$.ajax({
		      url: "restoreData",
		      data:{'graphID':graphID},
		      success:function() {
		    	 
		    	  $("#"+liID+"2").remove();
		    	  $("#"+liID.replaceAll(" ", "---")+"2").remove();
		    	  $("#"+folderName+"").append('<li id="'+liID+'" class="model_list" onclick="getDBlist(\''+name+'\',\''+graphID+'\')" oncontextmenu="on_context_menu_remove_graph(\''+graphID+'\', \''+liID+'\',\''+folderName+'\',\''+name+'\');">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+name+'</li>');
		      }	  	
		});
	}
		}
	}
	function toggleList(e){
    	e.parentElement.querySelector(".nested").classList.toggle("active");
    	e.classList.toggle("caret-down");
	}
	function deleteModelPermanently(graphID, name, folderName, liID, type){	
/* 		var answer = window.confirm("Are you sure to delete Permanently?");
		if (answer) {
		    //some code
			//console.log(graphID, name, folderName, liID)
			if(liID == 'undefined'){
				var tree = '';
		  		$.ajax({
				      url: "deleteFolderPermanently",
				      data:{'graphID':graphID},
				      success:function(data) {
				    	  //alert(""+folderName+" has been deleted!")
				    	  
				    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+folderName+' has been deleted!</div>');
				    	  alert_message_function();
				    	  $("#"+name+"2").remove();
				      }
				});	
			}
			else{
		  		$.ajax({
				      url: "deleteModelPermanently",
				      data:{'graphID':graphID},
				      success:function(data) {
				    	  //alert(""+name+" is deleted!")
				    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+name+' is deleted!</div>');
				    	  alert_message_function();
				    	  $("#"+liID+"2").remove();
				    	  $("#"+name+"2").remove();
				      }	  	
				});
			}
		}
		else {
		    //some code
		} */
		
		
	    $( "#dialog-confirm" ).dialog({
	      resizable: false,
	      height: "auto",
	      width: 400,
	      modal: true,
	      buttons: {
	        "Delete": function() {
				if(type == 'folder'){
					var tree = '';
			  		$.ajax({
					      url: "deleteFolderPermanently",
					      data:{'graphID':graphID},
					      success:function(data) {
					    	  //alert(""+folderName+" has been deleted!")
								if(data == "done"){
							    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+folderName+' has been deleted!</div>');
							    	  alert_message_function();
							    	  $("#"+name+"2").remove();	
								}
								else{
									$(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="object_delete_restriction"/></div>');
							    	alert_message_function();
								}
					      }
					});	
				}
				else{
			  		$.ajax({
					      url: "deleteModelPermanently",
					      data:{'graphID':graphID},
					      success:function(data) {
					    	  //alert(""+name+" is deleted!")
								if(data == "done"){
							    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+name+' is deleted!</div>');
							    	  alert_message_function();
							    	  $("#"+liID+"2").remove();
							    	  $("#"+name+"2").remove();
								}
								else{
									$(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="object_delete_restriction"/></div>');
							    	alert_message_function();
								}
					      }	  	
					});
				}
			  	$( this ).dialog( "close" );
	        },
	        "<spring:message code='Cancel'/>": function() {
	          $( this ).dialog( "close" );
	        }
	      }
	    });
	    
	}
	
	function deleteRoadmapPermanently(roadmapID, name, folderNameID, liID, type){	
				console.log("type",type)
			    $( "#dialog-confirm" ).dialog({
			      resizable: false,
			      height: "auto",
			      width: 400,
			      modal: true,
			      buttons: {
			        "Delete": function() {
// 						if(type == 'folder'){
// 							var tree = '';
// 					  		$.ajax({
// 							      url: "deleteFolderPermanently",
// 							      data:{'graphID':roadmapID},
// 							      success:function(data) {
// 							    	  //alert(""+folderName+" has been deleted!")
// 										if(data == "done"){
// 									    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+folderNameID+' has been deleted!</div>');
// 									    	  alert_message_function();
// 									    	  $("#"+name+"2").remove();	
// 										}
// 										else{
// 											$(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="object_delete_restriction"/></div>');
// 									    	alert_message_function();
// 										}
// 							      }
// 							});	
// 						}
// 						else{
					  		$.ajax({
							      url: "deleteRoadmapPermanently",
							      data:{'roadmapID':roadmapID},
							      success:function(data) {
							    	  //alert(""+name+" is deleted!")
										if(data == "done"){
									    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+name+' is deleted!</div>');
									    	  alert_message_function();
									    	  $("#"+liID+"2").remove();
									    	  $("#"+name+"2").remove();
										}
										else{
											$(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="object_delete_restriction"/></div>');
									    	alert_message_function();
										}
							      }	  	
							});
// 						}
							$("#"+liID+"2").remove();
							refreshTree();
					    	getGraphNames();
					  	$( this ).dialog( "close" );
			        },
			        "<spring:message code='Cancel'/>": function() {
			          $( this ).dialog( "close" );
			        }
			      }
			    });
			    
			}
	
	function SearchObjects() {
	    $("#myInput").on('keyup', function(){
	        var value = $(this).val().toLowerCase();
	        $("#lt li").each(function () {
	            if ($(this).text().toLowerCase().search(value) > -1) {
		            $(this).show();
		        	$(this).prev('.subjectName').last().show();
	        }
	            else {
	            	$(this).hide();
	    }
	        });
	    })
	}
	/* SearchObjects on Modal */
	function SearchObjectsOnModal() {
	    $("#myInput_1").on('keyup', function(){
	        var value = $(this).val().toLowerCase();
	        $("#modal_tree li").each(function () {
	            if ($(this).text().toLowerCase().search(value) > -1) {
		            $(this).show();
		        	$(this).prev('.subjectName').last().show();
	        }
	            else {
	            	$(this).hide();
	    }
	        });
	    })
	}
	
// 	List down roadMapList
	function roadMapList()
	{
		var roadmap = $('#new_roadmap').val();
		console.log("In explorer: ",roadmap);

// 		$("#m1 li").append(roadmap)
	}
	//Search Option For Models
	function SearchModels() {
	    $("#myInput").on('keyup', function(){
	        var value = $(this).val().toLowerCase();
	        $("#m1 li").each(function () {
	            if ($(this).text().toLowerCase().search(value) > -1) {
		            $(this).show();
		        	$(this).prev('.subjectName').last().show();
	            } 
	            else {
	            	$(this).hide();
	            }
	        });
	    })
	}
	//onclick on the history tab
	function displaydiv(){
		//$("#historyList").css("display", "block");
		var x = document.getElementById("historyList");
		if (x.style.display === "none") {
			x.style.display = "block";
		} else {
			x.style.display = "none";
		}
	}
	//By default click on the screen
	window.onclick = function(event) {
		$("#historyList").css("display", "none");
	}
	
	function get_checkbox_info(e){
	
 		if(document.getElementById(e.id).checked) {
 		    console.log("checked")
 		} else {
 			console.log("unchecked")
 		}

		console.log("event", e);
		console.log("e.id", e.id);
		console.log("e.name", e.name);
	}
	$("#save_button").hide();
	$(".graph_button").hide();
	
	var cnt = 0;
	function changePosition(){
		console.log("cnt", cnt)
		if (cnt == 0){
			var first = $("#source").detach().appendTo('#dest_div');
			cnt = 1;
		}
		else{
			var second = $("#source").detach().appendTo('#source_div');
			cnt = 0;
		}
	}
	
	//Call alert_message_function
	function alert_message_function(){
		setTimeout(function() { $(".alert_message").html(""); }, 2500);
		setTimeout(function() { $(".alertMessageForHistoryTab").html(""); }, 2500);
	}
	//Call alert_message_function
	function tree_modal_alert_message(){
		setTimeout(function() { $(".tree_modal_alert_message").html(""); }, 2500);
	}
/*  	var toggler1 = document.getElementsByClassName("recycle-bin-caret");
 	var i;

 	for (i = 0; i < toggler1.length; i++) {
 	  toggler1[i].addEventListener("click", function() {
 	    this.parentElement.querySelector(".nested").classList.toggle("active");
 	    this.classList.toggle("recycle-bin-caret-down");
 	  });
 	} */
	
	function recycle_toggle(e){
		//console.log("e",e)
		e.parentElement.querySelector(".nested").classList.toggle("active");
	    e.classList.toggle("recycle-bin-caret-down");
	}
	function show_or_hide_relationships(relCls){
		 $("."+relCls).toggle();
		 const $toggle = $('#arrowToggle');

		   if ($('#arrowToggle').hasClass('down')) {
		     $('#arrowToggle').removeClass('down');
		     $('#arrowToggle').addClass('right');
		   } else {
			   $('#arrowToggle').removeClass('right');
			   $('#arrowToggle').addClass('down');
		   }
	}
	function changeRadioValue(radioButtonID,groupRadioClass){
		console.log(radioButtonID,groupRadioClass)
		$("."+groupRadioClass).val('off');
		$("#"+radioButtonID).val('on');
	}
	/* Chart starts here */
	function organizationTab(){
		$(".chartDiv").css("display","inline-block");
		$(".formDiv").css("display","none");
		$(".leftSideButtons").css("display","none");
		$(".organizationTab").css("display","none");
		$(".homeTab").css("display","block");
		
		generatePreviouslyCreatedCharts();
	}
	function homeTab(){
		$(".chartDiv").css("display","none");
		$(".formDiv").css("display","flex");
		$(".leftSideButtons").css("display","block");
		$(".organizationTab").css("display","block");
		$(".homeTab").css("display","none");
	}

	$( "div:contains( 'CanvasJS Trial' )" )

	
	$(".close").click(function(){
// 		console.log("modal close");
		$('#myModal1').css("display", "none");
// 		$('#modal_content').css("display", "none");
		
	});
</script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<!-- Modal Table -->
<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
<script>
    function firstFunction(){
    	$("body").css("display", "inline")
  	  $('#catalogfilter').hide();
  	  getCompleteTree();
  	  getGraphNames();   
  	  getDeletedObjects();
    }
    //$(window).on("load", function(){
		$.ajax({ url: "?lang=en",
		    success: function(){
			    if(!window.location.hash) {
			        window.location = window.location + '#ltr';
			        window.location.reload();
			    }
		    }
		});
    
// 	   $('body').load('index#ltr');
// 	      setTimeout(function() {
// 	    	 $('body').show();
// 	         location.href = 'index#ltr';
// 	      }, 1000);

	  
// 	  let get_google_data = $(".goog-te-banner").remove();
	  
// 	$('#google_translate_element').on('change', function() {
// 	    language = $("select.goog-te-combo option:selected").text();
// 	    console.log(language);
	    
// 	    if(language == "Arabic" || language == "Urdu"){
// 	    	window.location = "lang=rtl";
// // 	    	$.ajax({
// // 	            url: "index",
// // 	            type: 'GET',
// // 	            data: { 
// // 	                lang: "ar", 
// // 	            },
// // 	            dataType: 'json', // added data type
// // 	            success: function(res) {
// // 	            	console.log("res", res)
// // 	            }
// // 	        });
// 	    }
// 	    else{
// 	    	window.location = "lang=en";
// // 	    	$.ajax({
// // 	            url: "index",
// // 	            type: 'GET',
// // 	            data: { 
// // 	                lang: "en", 
// // 	            },
// // 	            dataType: 'json', // added data type
// // 	            success: function(res) {
// // 	            	console.log("res", res)
// // 	            }
// // 	        });
// 	    }
// 	});
	  /* check browser language starts here */
// 	  var getFirstBrowserLanguage = function () {
// 			var nav = window.navigator,
// 			browserLanguagePropertyKeys = ['language', 'browserLanguage', 'systemLanguage', 'userLanguage'],
// 			i,
// 			language;

// 			// support for HTML 5.1 "navigator.languages"
// 			if (Array.isArray(nav.languages)) {
// 				for (i = 0; i < nav.languages.length; i++) {
// 					language = nav.languages[i];
// 					if (language && language.length) {
// 						return language;
// 					}
// 				}
// 			}

// 			// support for other well known properties in browsers
// 			for (i = 0; i < browserLanguagePropertyKeys.length; i++) {
// 				language = nav[browserLanguagePropertyKeys[i]];
// 				if (language && language.length) {
// 					return language;
// 				}
// 			}

// 			return null;
// 		};
// 		console.log(getFirstBrowserLanguage());
		/* check browser language ends here */
  //});
</script>



<!-- Hussain Work Starts Here -->

<script>
	var restoreDivIds = [];
	function changeHistoryModelpage(){
		
		
		$("#changeHistoryMyPageTable").hide();
		$("#formDiv").show();
		
// 		for(let i=0; i<restoreDivIds.length; i++){
// 			$(restoreDivIds[i]).show();
// 		}
		
		
// 		$("#element_title").show()
// 		$(".graph_button").show();
// 		$("#save_button").show();
// 		$("#form_id").show();
// 		$("#paleteDiv").show();
// 		$("#graphId").show();
	}
	
	function changeHistoryMypageButton(filterVal){

		$("#formDiv").hide();
		$("#changeHistoryMyPageTable").show();
		
		
		$("#chart").hide()
		$("#apexchartstyei9slx").hide();
		
		if(!(typeof filterVal == "string")){
			filterVal = filterVal.toString()
		}
		
		if(filterVal != ""){
			
			$.ajax({
				url: "getDataForChangeHistoryMypage", 
				type: "GET",
				data: { "filterVal" : filterVal },
				beforeSend: function() {
				    
				 	$("#loader_image_body").animate({opacity:"show"}, 1000);
				 	$("#changeHistoryMyPageTable").hide();

				},
				success: function(data) {
					var t = $('#myPageTable').DataTable();
					
					console.log("data")
					console.log(data)
					
					
					if(data.length == 0){
						t.clear().draw();
						$("#changeHistoryMyPageTable").show();
						$("#loader_image_body").animate({opacity:"hide"}, 1000);
					}else{
						t.clear();
						for(var i=0; i<data.length; i++){
							t.row.add(data[i] ).draw( false );
						 	$("#changeHistoryMyPageTable").show();
							$("#loader_image_body").animate({opacity:"hide"}, 1000);
						}
					}
				}
			});
		
		}


	}
	
	const myTimeout = setTimeout(function(){
		$(document).ready(function() {
		    $('#myPageTable').DataTable( {
		        "scrollY":	"63vh",
		        "scrollCollapse": true,
		        "paging":	true,
		        "ordering":	true,
		        "searching": true,
		        dom : 'l<"#add">frtip',
		        'columnDefs': [
		            {
		                "targets": 0, // your case first column
		                "className": "text-center",
// 		                "width": "4%"
		           }
		         ],
// 		        fixedHeader: {
// 		        	    header: false,
// 		        	    headerOffset: $ ( '#xmd-navbar' ).outerHeight ()
// 		        },
		    } );

		    $('.table').css('width', '100%')
		    $('.dataTables_scrollHeadInner').css('width', '100%')
		    $('.dataTables_empty').css('width', '100vw')
		} );		
	}, 500)

		    changeHistoryModelpage();

			togggleMyPageTabs()
			
			function togggleMyPageTabs(){
				//----------- Toggle active class between 2 mypage buttons start ------------
				var btnContainer = document.getElementById("changeHistoryMypageButtonsDiv");
				// Get all buttons with class="btn" inside the container
				var btns = btnContainer.getElementsByClassName("mp-btn");
				
				// Loop through the buttons and add the active class to the current/clicked button
				for (var i = 0; i < btns.length; i++) {
					btns[i].addEventListener("click", function() {
						var current = document.getElementsByClassName("active1");
						current[0].className = current[0].className.replace(" active1", "");
						this.className += " active1";
					});
				}
				//----------- Toggle active class between 2 mypage buttons end ------------		
			}
	

	
// 	$("#changeHistoryMyPageTable").hide();

// 	    $(".dataTables_scrollHeadInner").css({"width":"100%"});
// 	    $(".table ").css({"width":"100%"});

</script>

</html>