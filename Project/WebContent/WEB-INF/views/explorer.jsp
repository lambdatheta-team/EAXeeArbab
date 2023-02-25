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
 
 	<!--  AG-Table start -->
	<!--     <script src="https://unpkg.com/ag-grid-community/dist/ag-grid-community.min.noStyle.js"></script> -->
	<!-- 	<link rel="stylesheet" href="https://unpkg.com/ag-grid-community/dist/styles/ag-grid.css" /> -->
	<!-- 	<link rel="stylesheet" href="https://unpkg.com/ag-grid-community/dist/styles/ag-theme-alpine.css" /> -->
	
	<script type="text/javascript" src="<c:url value="/resources/js/ag-grid/ag-grid-community.min.noStyle.js" />"></script>
	<link href="<c:url value="/resources/js/ag-grid/ag-grid.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/js/ag-grid/ag-theme-alpine.css"/>" rel="stylesheet">
	<!--  AG-Table end -->
 
 
	<!-- Modal table -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"> -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
    
    <link rel="stylesheet" href="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569006288/BBBootstrap/choices.min.css?version=7.0.0">
    <script src="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569006273/BBBootstrap/choices.min.js?version=7.0.0"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<!--     <script src="WebContent\js\script.js"></script> -->
<!--     \WebContent/resources/js/ganttChart.js -->
    <script type="text/javascript" src="<c:url value="/resources/js/ganttChart.js" />"></script>
    
<%--     <script type="text/javascript" src="<c:url value="/resources/js/explorerArabic.js" />"></script> --%>
    
    
<!--     navigation.js -->
<script type="text/javascript" src="<c:url value="/resources/js/models/navigation.js" />"></script>
<!--     graph.js -->
<script type="text/javascript" src="<c:url value="/resources/js/models/graphs.js" />"></script>
<!--     matrix.js -->
<script type="text/javascript" src="<c:url value="/resources/js/models/matrix.js" />"></script>
<!--     catalog.js -->
<script type="text/javascript" src="<c:url value="/resources/js/models/catalog.js" />"></script>

<!--     attachmentFile.js -->
<script type="text/javascript" src="<c:url value="/resources/js/attachmentFile.js" />"></script>

<!--     businessProcess.js -->
<script type="text/javascript" src="<c:url value="/resources/js/businessProcess.js" />"></script>
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
<title><spring:message code="eaxee"/></title>

<%-- <link rel="icon" href="<c:url value="resources/images/eazee-Logo12.png"/>" type="image/icon type" > --%>
<link rel="icon" href="<c:url value="resources/images/snapping-removebg.png"/>" type="image/icon type" >

<!-- Information_modal css here -->
<link href="<c:url value="/resources/css/modal.css"/>" rel="stylesheet">

<!-- updateFormModal css here -->
<link href="<c:url value="/resources/css/updateFormModal.css"/>" rel="stylesheet">

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
<%-- 	<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/display-none.css"/>"> --%>
	<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/explorer/explorer-default.css"/>">
	<link rel="stylesheet" type="text/css" id="" href="<c:url value="/resources/css/explorer/explorer-default.css"/>">
	<!--  -->
	
	
	
<!-- 	<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" /> -->
<!-- 	<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js"></script> -->




<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
<!-- 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
	
	<!-- For Tabs -->
	
	<!-- Renaming a model  -->
	<script type="text/javascript" src="<c:url value="/resources/js/renameDiagrams.js" />"></script>
	<!--  -->
	
	<!-- Renaming a model  -->
	<script type="text/javascript" src="<c:url value="/resources/js/renameCatalog.js" />"></script>
	<!--  -->
	
	<!-- Renaming a navigation  -->
	<script type="text/javascript" src="<c:url value="/resources/js/renameNavigation.js" />"></script>
	<!--  -->	
	<!-- Renaming a navigation  -->
	<script type="text/javascript" src="<c:url value="/resources/js/renameRoadmap.js" />"></script>
	<!--  -->
	
	<script type="text/javascript" src="<c:url value="/resources/js/diagramFilter.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/myPage.js" />"></script>
		
  <!-- required modeler styles -->
  <link rel="stylesheet" href="https://unpkg.com/bpmn-js@11.0.5/dist/assets/bpmn-js.css">
  <link rel="stylesheet" href="https://unpkg.com/bpmn-js@11.0.5/dist/assets/diagram-js.css">
  <link rel="stylesheet" href="https://unpkg.com/bpmn-js@11.0.5/dist/assets/bpmn-font/css/bpmn.css">
  <!-- modeler distro -->
  <script src="https://unpkg.com/bpmn-js@11.0.5/dist/bpmn-modeler.development.js"></script>
  <!-- needed for this example only -->
<!--   <script src="https://unpkg.com/jquery@3.6.0/dist/jquery.js"></script> -->
  <!-- example styles -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
  
 <script defer>
  $( function() {
    $( "#tabs_1" ).tabs();
    $( "#myPageTabs" ).tabs();
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
	    var roadmap_exist_message= '<spring:message code="roadmap_exist_message"/>';
	    var new_attachment = '<spring:message code="new_attachment"/>';
	    var Create = '<spring:message code="Create"/>';
	    var Change = '<spring:message code="Change"/>';
	    var Cancel = '<spring:message code="Cancel"/>';
	    var mim = '<spring:message code="eaxee"/>';
	    var new_folder = '<spring:message code="new_folder"/>';
	    var Create_Folder = '<spring:message code="Create_Folder"/>';
	    var Create_File_Attachment = '<spring:message code="Create_File_Attachment"/>';
	    var createNewObject = '<spring:message code="new_object"/>';
	    var catalog_exist_message = '<spring:message code="catalog_exist_message"/>';
	    var catalog_saved= '<spring:message code="catalog_saved"/>';
	    var catalog_is_empty= '<spring:message code="catalog_is_empty"/>';
	    var matrixIcon = '<c:url value="/resources/images/matrix.svg"/>';
	    var historyCrossIcon = '<c:url value="/resources/images/x.svg"/>';
	    var historyCrossIcon = '<c:url value="/resources/images/x.svg"/>';
	    var attribute_111= '<spring:message code="This_is_a_test_script." />';
	    var attachment= '<spring:message code="attachment" />';
	    var recycle_bin= '<spring:message code="recycle_bin" />';
	    var new_folder= '<spring:message code="new_folder" />';
	    var new_attachment= '<spring:message code="new_attachment" />';
	    var remove= '<spring:message code="remove" />';
	    var Cant_add_more_than= '<spring:message code="Cant_add_more_than" />';
	    var remove_successfully= '<spring:message code="remove_successfully" />';
	    var successfully_updated= '<spring:message code="successfully_updated" />';
	    var another_user_updated_this_file_please_refresh_the_tree= '<spring:message code="another_user_updated_this_file_please_refresh_the_tree" />';
	    var someone_changed_the_file_name_please_refresh_the_tree= '<spring:message code="someone_changed_the_file_name_please_refresh_the_tree" />';
	    var please_fill_object_name_and_id= '<spring:message code="please_fill_object_name_and_id" />';
	    var name_already_exist= '<spring:message code="name_already_exist" />';
	    var Create_Relation= '<spring:message code="Create_Relation" />';
		var download_svg = '<spring:message code="download_svg" />';
		var download_png = '<spring:message code="download_png" />';
		var download_csv = '<spring:message code="download_csv" />';
		var attachments = '<spring:message code="attachments" />';
		var select_dropdown = '<spring:message code="select_dropdown" />';
		var Delete = '<spring:message code="delete" />';
		var action = '<spring:message code="action" />';
		var script_has_been_deleted = '<spring:message code="script_has_been_deleted" />';
		var select_a_saved_script = '<spring:message code="select_a_saved_script" />';
		var script_name_already_exists = '<spring:message code="script_name_already_exists" />';
		var script_created = '<spring:message code="script_created" />';
		var script_edited = '<spring:message code="script_edited" />';
		var enter_script_name_select_scripts = '<spring:message code="enter_script_name_select_scripts" />';
		var Reset = '<spring:message code="Reset" />';
		var drag_allowed_only_on_empty_canvas = '<spring:message code="drag_allowed_only_on_empty_canvas" />';
		var navigation_created_successfully = '<spring:message code="navigation_created_successfully" />';
		var navigation_name_already_exist = '<spring:message code="navigation_name_already_exist" />';
		var enter_navigation_name = '<spring:message code="enter_navigation_name" />';
		var navigation_saved = '<spring:message code="navigation_saved" />';
		var file_not_selected = '<spring:message code="file_not_selected" />';
		var export_as_svg = '<spring:message code="export_as_SVG" />';
		var export_as_png = '<spring:message code="export_as_PNG" />';
		var export_as_xml = '<spring:message code="export_as_XML" />';
		var file_not_selected = '<spring:message code="file_not_selected" />';
		var rename = '<spring:message code="rename" />';
		var Restore = '<spring:message code="restore" />';
		var has_been_deleted = '<spring:message code="has_been_deleted" />';
		var is_deleted = '<spring:message code="is_deleted" />';
		var its_parent_folder = '<spring:message code="its_parent_folder" />';
		var generate_roadmap = '<spring:message code="generate_roadmap" />';
		var folder_already_exist = '<spring:message code="folder_already_exist" />';
		var download = '<spring:message code="download" />';
		var attachment_created_successfully = '<spring:message code="attachment_created_successfully" />';
		var attachment_already_created = '<spring:message code="attachment_already_created" />';
		var removed_successfully = '<spring:message code="removed_successfully" />';
		var upload = '<spring:message code="upload" />';
		var select_all = '<spring:message code="select_all" />';
		var select_script = '<spring:message code="select_script" />';
		var exportSVGFiltered = '<spring:message code="export_as_SVG"/></div>';
		var exportPNGFiltered = '<spring:message code="export_as_PNG"/>';
		var renameFiltered = '<spring:message code="rename"/>';
		var removeFiltered = '<spring:message code="remove"/>';
		var filteredModalCreateButton = '<spring:message code="Create"/>'
		var filteredModalSuccessMessage = '<spring:message code="create_model_message"/>';
		var filteredModalExistingGraphMsg = '<spring:message code="model_exist_message"/>'
		var filteredModalEnterGraphName = '<spring:message code="enter_model_name"/>';
		var filteredModalCancelButton = "<spring:message code='Cancel'/>"
		var select_element = "<spring:message code='select_element'/>"
		var select_an_object = "<spring:message code='select_an_object'/>"
		var select_attributes = "<spring:message code='select_an_attributes'/>"
		var selected = "<spring:message code='selected'/>"	
		var edit = "<spring:message code = 'edit'/>"
		var Edit = "<spring:message code = 'Edit'/>"
		var export_as_PDF = "<spring:message code = 'export_as_PDF'/>"
		var export_as_excel = "<spring:message code = 'export_as_excel'/>"
		var save = "<spring:message code = 'save'/>"
		var next = "<spring:message code = 'next'/>"
		var previous = "<spring:message code = 'previous'/>"
		var	select_element_enter_name = "<spring:message code='select_element_enter_name'/>";
		var catalog_exist_message = "<spring:message code='catalog_exist_message'/>";
		var matrix_exist_message = "<spring:message code='matrix_exist_message'/>";
		var select_element_enter_name = "<spring:message code='select_element_enter_name'/>";
		var Elements_Not_Found = "<spring:message code='Elements_Not_Found'/>";
		var Page = "<spring:message code='Page'/>";
		var To = "<spring:message code='To'/>";
		var Of = "<spring:message code='Of'/>";
		var Contains = "<spring:message code='Contains'/>";
		var NotContains = "<spring:message code='NotContains'/>";
		var StartsWith = "<spring:message code='StartsWith'/>";
		var EndsWith = "<spring:message code='EndsWith'/>";
		var Equals = "<spring:message code='Equals'/>";
		var NotEqual = "<spring:message code='NotEqual'/>";
		var Blank = "<spring:message code='Blank'/>";
		var NotBlank = "<spring:message code='NotBlank'/>";
		var Filter = "<spring:message code='filter'/>";
		var Name = "<spring:message code='Name'/>";
		var new_business_process = "<spring:message code='new_business_process'/>";
		var enter_business_process_name = "<spring:message code='enter_business_process_name'/>";;
		var create_business_process_message = '<spring:message code="create_business_process_message"/>';
		var businessProcessAlreadyExists = '<spring:message code="business_process_already_exists"/>'
		
// 		var module_page = "<spring:message code='module_page'/>";
// 		var my_page_history = "<spring:message code='my_page_history'/>";
// 		var show_my_objects = "<spring:message code='show_my_objects'/>";
		
		
		
			
		var allExistElementInHistoryTab = [];
		var customDictionary = {}
		
		
	<!-- Spring:messages ends -->
</script>
	
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
var catalogSaveButton = {};
var navigationView = false;
var dictionaryXML = {};
var openFilteredDiagramFromHistoryDictionary = {};
var dictionaryGraphDates = {};
var graphEdges = {};


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
	
	$(".loader").css("display", "block");
	//$("#loader_image_palete").hide();
	if(paleteCreated==0)
		callGraph();
		callNavigationGraph();
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#navigationId").css("display", "none");
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
  	var ghj = '<ul class="nested">';
  	ghj+= data;
  	ghj+= '</ul>';
  	$('#lt').append(ghj);
  	crt();
  	//addElement(data);
  		$("#loader_image").hide();
  		$("#left_pane").show();
  		
  		$(".loader").css("display", "none");

  		if(globalLanguage == "En"){
	  		$(".caret").css('display', 'flex')
  		}else{
  			$(".caret").css('display', 'initial')
  		}
	                },
//     error: function(XMLHttpRequest, textStatus, errorThrown) {
//         alert("Please Upload Metamodel File"); 
//         window.location.href = "metamodel_user";
//     }
// 	                $(".caret").css('display', 'flex')
	                
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
			  var ghj = '<ul class="nested">';
			  ghj+= data;
			  ghj+= '</ul>';
			  $('#lt').append('<p style="margin-bottom:0px;" class="caret">'+mim+'</p>'+ghj);
			  crt();
			  $("#loader_image").hide();
			  $("#left_pane").show();
			  $("body").css("cursor", "default");
		  },
	 });
	  
	  getGraphNames();
	  getattachmentNames();
	  $('#recycle_bin_list_for_object_elements').empty();
	  getDeletedObjects();
	  getBusinessProcessNames();
	  
}

function getRoadmap(roadMapName, id,companyName, parentID, folderID){
	if(allExistElementInHistoryTab.includes(roadMapName.replaceAll(" ","---")) == false){
		allExistElementInHistoryTab.push(roadMapName.replaceAll(" ","---"))
	}	
	changeHistoryModelpage(); 
	$("#chart").show();
	$("#changeHistoryMyPageTable").hide();
	$("#apexchartstyei9slx").hide();
	$("#paleteDiv").hide();
	$("#graphId").hide();
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "none");
	$("#matrix").css("display", "none");
	$("#catalog").css("display", "none");
	$( "#historyList" ).css("display", "none");
// 	var current_ID = divId+divIdCount++;
	var current_ID = id;
// 	console.log("current_ID: ",current_ID);
// 	allDivIds.push(current_ID);
//   	var clsName = roadMapName;

// 	console.log(allDivIds,"allDivIds")
// 	$.each( dictionaryXML, function( key, value ) {
// 			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
// 	});
// 	$.each(allDivIds, function(i, val){
// 							console.log("val: ",val)
// 							$( "#"+val+"11" ).css("background", "");
// 						});
	
  	
//   	if(historyTabItems.includes(clsName) == false){
//   		$("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"> <span class="close_image" onclick="closeRoadmapDiv(\''+current_ID+'\', \''+roadMapName+'\',\''+companyName+'\',\''+parentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="getRoadmap(\''+roadMapName+'\',\''+current_ID+'\',\''+folderID+'\',\''+companyName+'\',\''+parentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/road.svg"/>"><br/>'+roadMapName+'</a></div></div>');
//         //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
//         $("#history_tab").css("display", "flex")
//         historyTabItems.push(clsName);
//         numItems = $('.column').length;
// 		$(".history_page_no").html(numItems)
// 		$( "#"+current_ID.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
//     }
//   	$( "#"+current_ID.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");

// 	$("#element_title").empty();
// 	$("#chart").show()
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
		  	$('#element_title').prop('title', roadMap_name);
		  	$.ajax({
				type: "POST",
				
				data: {ElementVal, StartActDate, EndActDate, legendData},
				url: "getTimeLineData",
				success: function(data)
				{	
				$("#chart").empty();
				const leg = listLegend;
// 				const leg = ["Null","Proposed","Active","Phasing Out","Retired"];
				var my_array = [];
				var my_legend = [];
// 				var listofList = [];
				var allowObj = 0;
				var datalist = {};
				
				for(let i=0; i<leg.length; i++){
					datalist[leg[i]] = {'data':[], "name": "" };
				}
				
				for(let i=0; i<leg.length; i++){
					for(let j=0; j<data.length; j++){
						
						if (data[j]['startDate'] =="1900-01-01" || data[j]['endDate'] =="1900-01-01" ){
							continue;
						}
						if(leg[i] == data[j]['legend']){
							allowObj += 1;
							
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
				if(allowObj > 0){
					// history tab work start
					allDivIds.push(current_ID);
				  	var clsName = roadMapName;

					$.each( dictionaryXML, function( key, value ) {
							$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
					});
					$.each(allDivIds, function(i, val){
											$( "#"+val+"11" ).css("background", "");
										});
				  	if(historyTabItems.includes(roadMapName) == false){
				  		$("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"> <span class="close_image '+folderID+'" onclick="closeRoadmapDiv(\''+current_ID+'\', \''+roadMapName+'\',\''+companyName+'\',\''+parentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="getRoadmap(\''+roadMapName+'\',\''+current_ID+'\',\''+folderID+'\',\''+companyName+'\',\''+parentID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/road.svg"/>"><br/>'+roadMapName+'</a></div></div>');
				        //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
				        $("#history_tab").css("display", "flex")
				        historyTabItems.push(roadMapName);
				        numItems = $('.column').length;
						$(".history_page_no").html(numItems)
						$( "#"+current_ID.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
				    }
				  	$( "#"+current_ID.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");

					$("#element_title").empty();
					$("#chart").show()
					$("#element_title").show().text(roadMap_name);
					$('#element_title').prop('title', roadMap_name);
					// history tab work end
				for(let i=0; i< Object.values(datalist).length; i++){
							new_array.push({ "name":keys[i], "data":obj[i].data })
				}
				var options = 
				{
					series: new_array,
					chart: {
		          	height: "95%",
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
		        yaxis: {
		        	opposite: getLanguage == "En" ? false : true,
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
		                colors: ['#f3f4f5', '#fff'],
		                
		              }
		            },
		        legend: {
		        	showForZeroSeries: true,
		        	position: getLanguage == "En" ? 'left' : 'right',
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
				} //alloeObj emd
				else{
					$(".alert_message").html('<div class="alert alert-danger" role="alert">Start and End date are not set yet.</div>');
					alert_message_function();
				}
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
	$.ajax({
	    url: "getRemovedGraphNames", // url: "/findTables?dbName="+db_name,
	 	method: 'get',
	    data: {
	    },
	    success: function (data) {
	    	$("#recycle_bin_list").html('<li><span><i class="fa fa-trash-o deleteIcon" aria-hidden="true"></i>&nbsp;&nbsp;'+recycle_bin+'</span></li>');
	    	$("#recycle_bin_list").append(data);
	    }
	  });
}

function getattachmentNames(){
	$.ajax({
	    url: "getattachmentsNames", // url: "/findTables?dbName="+db_name,
	 	method: 'get',
	 	async: true,
	    data: {
	    },
	    success: function (data) {
		  	var ghj = data;
	    	$('#m2').empty();
		  	$('#m2').append(ghj);
	    }
	  });

	$.ajax({
	    url: "getRemovedAttachmentNames", // url: "/findTables?dbName="+db_name,
	 	method: 'get',
	    data: {
	    },
	    success: function (data) {
	    	$("#recycle_bin_list_for_attachments").html('<li><span><i class="fa fa-trash-o deleteIcon" aria-hidden="true"></i>&nbsp;&nbsp;'+recycle_bin+'</span></li>');
	    	$("#recycle_bin_list_for_attachments").append(data);
	    }
	  });
}

function getBusinessProcessNames(){
	$.ajax({
	    url: "getBusinessProcessNames", // url: "/findTables?dbName="+db_name,
	 	method: 'get',
	 	async: true,
	    data: {
	    },
	    success: function (data) {
		  	var ghj = data;
	    	$('#m3').empty();
		  	$('#m3').append(ghj);
	    }
	  });

	$.ajax({
	    url: "getRemovedBusinessProcessNames", // url: "/findTables?dbName="+db_name,
	 	method: 'get',
	    data: {
	    },
	    success: function (data) {
	    	$("#recycle_bin_list_for_business_process").html('<li><span><i class="fa fa-trash-o deleteIcon" aria-hidden="true"></i>&nbsp;&nbsp;'+recycle_bin+'</span></li>');
	    	$("#recycle_bin_list_for_business_process").append(data);
	    }
	  });
}

function titleempty(){
   		$("#element_title").empty();
 	}
function showData(table,name){
	if(allExistElementInHistoryTab.includes(name.replaceAll(" ","---")) == false){
		allExistElementInHistoryTab.push(name.replaceAll(" ","---"))
	}		
// 	$("#form_id").html("");
	$("#chart").hide()
	$("#element_title").hide()
	$("#save_button").hide();
	$(".graph_button").hide();
	$(".nav_button").hide();
	if(createNew == true){
		addNewGraphInHistory();
		createNew = false;
	}
	objectsView();
	$(".loader").show();
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
			let {multiListIds} = data;
			$.each(data, function(i, val){
				//console.log("data", data.editButtonId[0]);
				if(i=="row_id"){
// 					console.log(val)
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
					// console.log("labels",labels)
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
			var name_for_class = row_name[0].replaceAll(' ','---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_');
			$( function() {
	               $( "#"+CurrenttabID ).tabs().addClass( "ui-tabs-vertical ui-helper-clearfix "+name_for_class+"" );
	               $( "#"+CurrenttabID+" li" ).removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );
			  } );
			
			var current_ID = divId+divIdCount++;
            formData = '<div id="'+current_ID+'" class="formDivArabic">'+formData+'</div>';
            allDivIds.push(current_ID);
            var imageName = tableName.toLowerCase().replaceAll('_','-');
          
            imageName = imageName+'.svg';
            
           
          	var clsName = row_name[0].replaceAll(' ','---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+'_'+tableName.replaceAll(' ','_');
            if(historyTabItems.includes(clsName) == false){
	            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+row_name+'_'+tableName+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\', \''+data.editButtonId[0]+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+row_name+'</a></div></div>');
	            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
	            $("#history_tab").css("display", "flex")
	            historyTabItems.push(clsName);
            }else{
            	$( "."+clsName ).remove();
	            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+row_name+'_'+tableName+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\', \''+data.editButtonId[0]+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+row_name+'</a></div></div>');
	            $("#history_tab").css("display", "flex");
            }
			//formData += '</form></div>'
			// console.log(formData);
			$("#form_id").append(formData);
					$(".loader").hide();
			// console.log("current_ID:",current_ID)
			// console.log("data.editButtonId[0]:",data.editButtonId[0])
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
			getMultiListValue(multiListIds);
			$( ".choices__inner" ).css( "display","block" );
			form_submitForUpdate(dbName, tableName, labels, idd,allIds,row_name,AllRelRowIDs,btnedit, object_name_id, imageName, current_ID,CurrenttabID[0],null,last_time_updated,AllRelTableIDs, dataBeforeUpdate);
			show_or_hide_relationships(relationsClass);
			$("#loader_image_body").hide();
			$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
			$("body").css("pointer-events", "initial");
	        }
	    });
	}
	function replaceSpecialCharacters(text){
		text = text.replace(/[&\/\\#+()`$"\""~%'\'';:*?<>{}]/g, '_');
		text = text.replace("–", "-")
		return text;
	}
var get_data_for_save_button = [];
function form_submitForUpdate(dbName, tableName, attributes, idd, allIds, row_name, AllRelRowIDs, btnedit, object_name_id,imageName, current_ID, CurrenttabID, cell, last_time_updated,AllRelTableIDs, dataBeforeUpdate, route){
	var temp = {"dbName": dbName, "tableName": tableName, "attributes": attributes, "idd": idd, "allIds": allIds, "row_name": row_name, "AllRelRowIDs": AllRelRowIDs, "btnedit": btnedit, "imageName": imageName, "current_ID": current_ID, "CurrenttabID": CurrenttabID, "cell":cell}
	get_data_for_save_button.push(temp)
	getDate = get_data_for_save_button[0]["dbName"]
// 	if(current_ID)
	if(AllRelRowIDs.length==0)
		AllRelRowIDs[0] = "null";
	if(AllRelTableIDs.length==0)
		AllRelTableIDs[0] = "null";
		$("#"+btnedit).click(function () {
			$("#"+btnedit).attr('disabled', true);
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
						// console.log('update time from database: ',updated_time)
						// console.log('time before first update: ',last_time_updated.slice(0, 19))
						var tagNameArray = [];
						if(last_time_updated.slice(0, 19) === updated_time){
							// console.log("3");
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
										allObjects = allObjects.slice(0, -1);
										formData.push(allObjects);
										tagNameArray.push("TABLE");
									}else if(tag == 'TEXTAREA'){
										var currentAttVal = $('#'+val1).val();
										
										if(currentAttVal == null || currentAttVal == ""){
										}else{
											currentAttVal = replaceSpecialCharacters(currentAttVal);
										}
										
										formData.push(currentAttVal);
										tagNameArray.push("TEXT");
									}
									else {
										let inputType = document.getElementById(val1).type;
										if(inputType == "date"){
											if($('#'+val1).val() == ""){
												formData.push("1900-01-01")
											}else{
												formData.push($('#'+val1).val())
											}
											tagNameArray.push("DATE");
										}else if(inputType == 'text'){
											var currentAttVal = $('#'+val1).val();
											if(currentAttVal != undefined && currentAttVal != null){
												currentAttVal = replaceSpecialCharacters(currentAttVal);
											}
											formData.push(currentAttVal);
											tagNameArray.push("TEXT");
										}
										else if(inputType == "file"){
											var fileVal = '';
											let tbodyid = val1+"tbody";
											let tbody = document.getElementById(tbodyid).getElementsByTagName("tr");
											$.each(tbody, function (i, item) {
											     let loop_td = item.getElementsByTagName("td")[1];
											     let innerHTMLvalue = loop_td.innerHTML;
											     innerHTMLvalue = innerHTMLvalue.trim();
											     fileVal+=innerHTMLvalue+";";
									      });
											fileVal = fileVal.slice(0, -1)
											formData.push(fileVal)
											tagNameArray.push("FILE");
										}else{
											if(Array.isArray($('#'+val1).val()) == true){
												var stringValueYouWant = $('#'+val1).val().join(';');
												formData.push(stringValueYouWant)
											}
											else{
												formData.push($('#'+val1).val())												
											}
											tagNameArray.push("SELECT");
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
											$(".loader").css("display", "block");
											$.ajax({
											      url: "editRow", // main 
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
											    	  'tagNames': tagNameArray,
											    	  'last_time_updated':last_time_updated
// 											    	  'historyChanges':historyChanges,
											      },
											      //dataType: "text/String"
												success: function(data) {
											    		$(".alert_message").html('<div class="alert alert-secondary" role="alert">'+successfully_updated+'</div>');
											    		alert_message_function();
											    		var get_id = $("#"+CurrenttabID+" :input[name=\"Name\"]").attr("id");
										    			var new_value_input = $("#"+get_id+"").val();
											    		if(cell==null || cell=='null'){
											    			if(route == "fromMyPage"){
											    				showDataForMyPage(tableName,formData[0])
											    			}else if(route == "catalog"){
											    				$(".loader").css("display", "none");
											    			}else{
															showData(tableName,formData[0])
											    			}
											    		}else{
											    			
											    			graph1.model.setValue(cell, new_value_input);
// 															save_graph_for_rename_component();
// 															save_graph();
											    			$(".loader").css("display", "none");
											    		}

													/*
													if(data.length>0){
														AllRelRowIDs = data;
													}
													//console.log(getcurrentDate.toISOString().slice(0, 19).replace('T', ' '));
													console.log('last_time_updated after form submit: ',last_time_updated)
											    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">Successfully Updated</div>');
											    	alert_message_function();
													
													var get_id = $("#"+CurrenttabID+" :input[name=\"Name\"]").attr("id");
													var new_value_input = $("#"+get_id+"").val();
													row_name[0] = new_value_input;
										 			$("#"+object_name_id[0]+"").text(new_value_input);
													if(cell){
														graph1.model.setValue(cell, new_value_input);
														save_graph_for_rename_component();
													}
													*/
													if( route == "fromMyPage" ){
													
													var change_value = $('#'+get_id).val(new_value_input);
													var removeItem = change_value[0].value+'_'+tableName;
													historyTabItems = jQuery.grep(historyTabItems	, function(value) {
														  return value != removeItem;
													});
														
														var historyObjectDivId = current_ID +"_myPage"
														
														// var clsName = row_name[0].replaceAll(' ', '---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_') + '_' + tableName.replaceAll(' ', '_');
														// 			   removeItem.replaceAll(' ', '---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')
																	   
														var clsName = removeItem.replaceAll(' ', '---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')
																	   removeItem.replaceAll(' ', '---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')																	   
														
														if(historyTabItems.includes(change_value[0].value+'_'+tableName) == false){
													 	$( "div#"+historyObjectDivId+"" ).replaceWith( '<div id="'+historyObjectDivId+'" class="columnMyPage '+clsName+'" style="background: rgb(233, 233, 233);"><div style="display:inline-block"><span class="close_image" onclick="closeDivFromMyPageHistory(\''+current_ID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDivMyPage(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
														   $("#history_tab_mypage").css("display", "flex")
														   var id = change_value[0].value.replaceAll(' ','---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+'_'+tableName;
														   historyTabItemsMyPage.push(id);
														}
														
													}else{
														var change_value = $('#'+get_id).val(new_value_input);
														var removeItem = change_value[0].value+'_'+tableName;
														historyTabItems = jQuery.grep(historyTabItems	, function(value) {
															  return value != removeItem;
														});
													if(historyTabItems.includes(change_value[0].value+'_'+tableName) == false){
												 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+removeItem.replaceAll(' ','---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+'" style="background: rgb(233, 233, 233);"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
													   $("#history_tab").css("display", "flex")
													   historyTabItems.push(change_value[0].value.replaceAll(' ','---').replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+'_'+tableName);
													}
														
													}

													refreshTree();
													// refreshTreeForMyPage()
													
													
													if( route == "fromMyPage" ){
														changeHistoryMypageButton($('#changeHistoryMyPageTableDaysInput').val(), 'refresh');
														myPageObjectView();
													}
													
													
													
												}
									    	});
										}
										else{
									    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+name_already_exist+'</div>');
									    	alert_message_function();
										}
							        }
							    });
						}
						else{
	// 						alert("Another User Updated This File Please Refresh the tree!!")
							$(".alert_message").html('<div class="alert alert-danger" role="alert">'+another_user_updated_this_file_please_refresh_the_tree+'</div>');
					    	alert_message_function();
						}
					},
	                error: function(data){ 
	                	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+someone_changed_the_file_name_please_refresh_the_tree+'</div>');
				    	alert_message_function(); 
	                }
		  		});
			}
			else{
            	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+please_fill_object_name_and_id+'</div>');
		    	alert_message_function(); 	
			}
	});
	save_button_toggle(btnedit, CurrenttabID);
}	
function save_button_toggle(btnedit, CurrenttabID){
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
	    button.css("border-color","#000000");
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
	$(".nav_button").hide();
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
				data:{'elementName':element,'objectName':data,'objectType':type},
				success: function(result){
					var elementIcon = element.replaceAll(' ','-');
					elementIcon = elementIcon.replaceAll('_','-');
					elementIcon = elementIcon.toLowerCase()+'.svg';
					//console.log('data',data)
					var temp = '<li id="'+data.replaceAll(' ','---')+'" style="cursor:pointer" onclick="showData(\''+element.replaceAll(' ','_')+'\',\''+data+'\')" oncontextmenu="on_context_menu_remove(\''+element.replaceAll(' ','_')+'\',\''+data+'\',\'deletedElements\')"><span title="'+data+'" draggable="true" ondragstart="drag(event,\''+data+'\',\'resources/js/examples/editors/images/images1/'+elementIcon+'\')"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+data+'</span></li>';
		           
					if(type){
						console.log('type',type)
						console.log('type2',type.replaceAll(' ','_')+'_'+element.replaceAll(' ','_'))
						
		        	   $('#'+type.replaceAll(' ','_')+'_'+element.replaceAll(' ','_')).append(temp);
		           }else{
		            $('#'+element.replaceAll(' ','_')).append(temp);
		           }
					showData(element.replaceAll(' ','_'),data);
				}
			});
	      }	
	    });
}

function showDiv(showDivID, save_btn_id){
	$(".catalog_save_button").hide();
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
	$(".nav_button").hide();
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
	
	
	
	hideDiagramFilterItemsInTheStickyHeader();
	resetCompleteDiagramFilterModalElements();	
 	if(graphSaveButton[graphName_1]==false){
 		
//  		$( function() {
//  		    $( "#dialog-confirm-for-delete-model" ).dialog({
//  		      resizable: false,
//  		      height: "auto",
//  		      width: 400,
//  		      modal: true,
//  		      buttons: {
//  		        "Delete": function() {
//  					delete dictionaryXML[graphName_1];
//  					$( "#"+graphName_1+"11" ).remove();
//  					setTimeout(function(){ displaydiv(); }, 0.5);
 					
//  					//$("#historyList").css("display", "block");
 					
//  					numItems = $('.column').length;
//  					$(".history_page_no").html(numItems)
 					
//  					if(currentWindowID==graphName_1+"11"){
//  						var diagram = mxUtils.parseXml(newGraphXML);
//  					    var codec = new mxCodec(diagram);
//  					    codec.decode(diagram.documentElement, graph1.getModel());
//  					    $("#element_title").hide()
//  					}
//  		          $( this ).dialog( "close" );
//  		        },
//  		        "<spring:message code='Cancel'/>": function() {
//  		          $( this ).dialog( "close" );
//  		        }
//  		      }
//  		    });
//  		  } );
	}
 	
	numItems = $('.column').length;
	if(numItems <= 0){
		
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
	if($('.column').length== 0){
		close_all_history_div();
	}
	$(".graph_button").css("display", "none");
	$("#graphId").hide();
	$("#palete").css("display", "none");
}

function close_all_history_div(){
	hideDiagramFilterItemsInTheStickyHeader();
	resetCompleteDiagramFilterModalElements();	
	$(".catalog_save_button").empty();
	$("#navigationId").hide();
	$("#graphId").hide();
	$("#paleteDiv").hide();
	$("#businessProcessId").hide();
	$("#element_title").empty();
	$(".column").remove();
	$("#historyList").hide();
	$("#form_id").empty();
	// 	$("#catalog").empty();
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
	$("#fit-screen-nav").css("display", "none");
	$("#zoom-in-nav").css("display", "none");
	$("#zoom-out-nav").css("display", "none");
	$("#save-button-nav").css("display", "none");
	$("#save-as-button-nav").css("display", "none");
	$("#fit-screen").css("display", "none");
	$("#zoom-in").css("display", "none");
	$("#zoom-out").css("display", "none");
	$("#save_button").css("display", "none");
	$("#save_graph_as_button").css("display", "none");
	$("#filterDiagram").css("display", "none");
	$("#change-shape").css("display", "none");
	$(".graph_button").css("display", "none");

	$("#showHideRelationships").hide();
	$("#change-shape").hide();
	
	$(".catalog_save_button").hide();
	$(".matrix_save_button").hide();
	
	
	////////////////////////////////////////
	let loadingGrid = false
	emptyTheGridTable(loadingGrid)
	////////////////////////////////////////
	
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
							   $("#history_tab").css("display", "flex")
							 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+clsName+'" style="background: rgb(233, 233, 233);"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
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
	$(".loader").show();
// 	setTimeout(alertFunc, 5000);
// 	function alertFunc(){
	//console.log('table', tableName)
	var aa = []
	console.log('idd_explorer typeof',typeof idd)
	const noNumbers = idd.replace(/[0-9]/g, '');
	var final_name = noNumbers.replaceAll('_',' ');
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
	    	beforeSend: function() {
	    		loader_image_body();
// 	    	     	$("#loader_image_body").animate({left:15, opacity:"show"}, 5000);
			},		      
		success: function(data) {
				$(".loader").hide();
				$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
				$("body").css("pointer-events", "initial");				
			var tree  = data[0]['tree'];
			var maxValues = data[1];
			
			
			let translatedValue = getTranslatedData[0][final_name.replaceAll(' ','_')];
			console.log("translatedValue",translatedValue);
			
			getLanguage == "Ar" ? $("#modal1_title").html(Create_Relation+" - "+translatedValue) :$("#modal1_title").html(translatedValue+" - "+Create_Relation);
	// 			$.each(data, function(i, val){
	// 				objectsArray.push(val.rowValue);
	//             });
	
			relationship_modal(tree,idd,maxPossibleObjects,tableName, save_btn_id,maxValues);
	// 			var res = idd.split("2");
	// // 			var title = res[0].split('_').join(' ');
	// 			var title = res[0];
	// 			var get_heading_value = '';
	// 			var create_relation_text = "<spring:message code='Create_Relation'/>";    
	//     		$.ajax({
	// 	 	           url: "getPropertiesDictionary",
	// 	 	           type: 'POST',
	// 	 	           data: {},
	// 	 	           dataType: 'json', // added data type
	// 	 	           success: function(langDict) {
	// 	 	           		$("#modal1_title").html(langDict[title]+" - "+create_relation_text);
	// 	 	           }
	// 	 	     });
		}
	});
// 	}
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

//graph1 STARTS HERE

var Displayed_nodes = [];
var old_nodes = '';
var firstNode = 1;
var paleteCreated = 0;
var graph1;
var navigationGraph;
var color = '';

var undoManager = new mxUndoManager();
var listener = function(sender, evt)
{
	undoManager.undoableEditHappened(evt.getProperty('edit'));
};
var sourceGlobal = null;
var targetGlobal = null;
var dictionaryVertex = {};



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
				// console.log('color',color)
				colorName = color;
			},
	        async: false
		});
		if(colorName == "Blue"){
			colorName="#70e5fa";
		}
		else if(colorName == "Brown"){
			colorName="#fae1bb";
		}
		else if(colorName == "Green"){
			colorName="#65fc65";
		}
		else if(colorName == "Magenta"){
			colorName="#b388b3";
		}
		else if(colorName == "Pink"){
			colorName="#f5d9d9";
		}
		else if(colorName == "Purple"){
			colorName="#cd9cff";
		}
		else if(colorName == "Red"){
			colorName="#fc7777";
		}
		else if (colorName == "Yellow"){
			colorName="#f5e29d";
		}
		return colorName;
	}


function view_xml() {
   var encoder = new mxCodec();
   var parent = graph1.getDefaultParent();
   var node = encoder.encode(graph1.getModel());
   mxUtils.popup(mxUtils.getPrettyXml(node), true);
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

function addToolbarItem(graph1, toolbar, prototype, image)
{
	// Function that is executed when the image is dropped on
	// the graph1. The cell argument points to the cell under
	// the mousepointer if there is one.
	var funct = function(graph1, evt, cell)
	{
		graph1.stopEditing(false);

		var pt = graph1.getPointForEvent(evt);
		var vertex = graph1.getModel().cloneCell(prototype);
		vertex.geometry.x = pt.x;
		vertex.geometry.y = pt.y;
		
		graph1.setSelectionCells(graph1.importCells([vertex], 0, 0, cell));
	}

	// Creates the image which is used as the drag icon (preview)
	var img = toolbar.addMode(null, image, funct);
	mxUtils.makeDraggable(img, graph1, funct);
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
// 	$("#form_id").css("display", "block");
	$("#catalog").css("display", "none");
	$("#chart").css("display", "block");
	$("#chart").hide();
	$("#matrix").css("display", "none");
	$(".catalog_save_button").css("display", "none");
	$(".matrix_save_button").css("display", "none");
	$("#changeHistoryMyPageTable").css("display", "none");
	$("#fit-screen-nav").css("display", "none");
	$("#zoom-in-nav").css("display", "none");
	$("#zoom-out-nav").css("display", "none");
	$("#save-button-nav").css("display", "none");
	$("#save-as-button-nav").hide();
	tableView = true;
	$("#navigationGraphContainer").css("display", "none");
	$("#businessProcessId").css("display", "none");
	$(".businessProcessSaveButton").css("display", "none");
}
function matrixView(){
	$(".graph_button").hide();
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "none");
	$("#catalog").css("display", "none");
	$("#matrix").css("display", "block");
	$("#fit-screen").css("display", "none");
	$("#zoom-in").css("display", "none");
	$("#zoom-out").css("display", "none");
	$("#save_button").css("display", "none");
	$("#save_graph_as_button").hide();
	$("#line").css("display", "none");
	$(".catalog_save_button").css("display", "none");
	$(".matrix_save_button").css("display", "block");
	$("#chart").hide();
	$("#chart").css("display", "none");
	$("#changeHistoryMyPageTable").css("display", "none");
	$("#fit-screen-nav").css("display", "none");
	$("#zoom-in-nav").css("display", "none");
	$("#zoom-out-nav").css("display", "none");
	$("#save-button-nav").css("display", "none");
	$("#save-as-button-nav").hide();
	$("#navigationGraphContainer").css("display", "none");
	$("#businessProcessId").css("display", "none");
	$(".businessProcessSaveButton").css("display", "none");
}
function catalogView(){
	$(".graph_button").hide();
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "none");
	$("#catalog").css("display", "block");
	$("#matrix").css("display", "none");
	$("#fit-screen").css("display", "none");
	$("#zoom-in").css("display", "none");
	$("#zoom-out").css("display", "none");
	$("#save_button").css("display", "none");
	$("#save_graph_as_button").hide();
	$("#line").css("display", "none");
	$(".catalog_save_button").css("display", "block");
	$(".matrix_save_button").css("display", "none");
	$("#changeHistoryMyPageTable").css("display", "none");
	$("#fit-screen-nav").css("display", "none");
	$("#zoom-in-nav").css("display", "none");
	$("#zoom-out-nav").css("display", "none");
	$("#save-button-nav").css("display", "none");
	$("#save-as-button-nav").hide();
	$("#navigationGraphContainer").css("display", "none");
	$("#chart").hide();
	$(".businessProcessSaveButton").css("display", "none");
	$("#businessProcessId").css("display", "none");
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
// 	$("#chart").css("display", "block");
	$("#chart").hide();
	$("#changeHistoryMyPageTable").css("display", "none");
	$("#fit-screen-nav").css("display", "none");
	$("#zoom-in-nav").css("display", "none");
	$("#zoom-out-nav").css("display", "none");
	$("#save-button-nav").css("display", "none");
	$("#save-as-button-nav").hide();
	$("#navigationGraphContainer").css("display", "none");
	$(".businessProcessSaveButton").css("display", "none");
	$("#businessProcessId").css("display", "none");
	navigationView = false;
	if(paleteCreated==0)
		callGraph();
}
function RoadMapView(){
	$(".graph_button").hide();
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "none");
	$("#catalog").css("display", "none");
	$("#matrix").css("display", "none");
	$("#fit-screen").css("display", "none");
	$("#zoom-in").css("display", "none");
	$("#zoom-out").css("display", "none");
	$("#save_button").css("display", "none");
	$("#save_graph_as_button").hide();
	$("#line").css("display", "none");
	$(".catalog_save_button").css("display", "none");
	$(".matrix_save_button").css("display", "none");
	$("#changeHistoryMyPageTable").css("display", "none");
	$("#fit-screen-nav").css("display", "none");
	$("#zoom-in-nav").css("display", "none");
	$("#zoom-out-nav").css("display", "none");
	$("#save-button-nav").css("display", "none");
	$("#save-as-button-nav").hide();
	$("#navigationGraphContainer").css("display", "none");
	$("#chart").hide();
	$(".businessProcessSaveButton").css("display", "none");
	$("#businessProcessId").css("display", "none");
}
function navigationViewjs(){
	$(".graph_button").hide();
	$("#navigationGraphContainer").css("display", "block");
	$("#palete").css("display", "none");
	$("#graphId").css("display", "none");
	$("#form_id").css("display", "none");
	$("#catalog").css("display", "none");
	$("#matrix").css("display", "none");
	$("#fit-screen").css("display", "none");
	$("#zoom-in").css("display", "none");
	$("#zoom-out").css("display", "none");
	$("#save_button").css("display", "none");
	$("#save_graph_as_button").hide();
	$("#line").css("display", "none");
	$(".catalog_save_button").css("display", "none");
	$(".matrix_save_button").css("display", "none");
	$("#changeHistoryMyPageTable").css("display", "none");
	navigationView = true;
	$("#chart").hide();
	$("#save-as-button-nav").show();
	$(".businessProcessSaveButton").css("display", "none");
	$("#businessProcessId").css("display", "none");
	
// 	$("#fit-screen-nav").css("display", "block");
// 	$("#zoom-in-nav").css("display", "block");
// 	$("#zoom-out-nav").css("display", "block");
}
function businessProcessView(){
	tableView = false;
	$("#palete").css("display", "none");
	$("#form_id").css("display", "none");
	$("#graphId").css("display", "none");
	$("#catalog").css("display", "none");
	$("#matrix").css("display", "none");
	$(".catalog_save_button").css("display", "none");
	$(".matrix_save_button").css("display", "none");
// 	$("#chart").css("display", "block");
	$("#chart").hide();
	$("#changeHistoryMyPageTable").css("display", "none");
	$("#fit-screen-nav").css("display", "none");
	$("#zoom-in-nav").css("display", "none");
	$("#zoom-out-nav").css("display", "none");
	$("#save-button-nav").css("display", "none");
	$("#save-as-button-nav").hide();
	$("#navigationGraphContainer").css("display", "none");
	$("#businessProcessId").css("display", "block");
	$(".businessProcessSaveButton").css("display", "flex");
	$("#downloadXML").css("display", "block");
	$(".graph_button").hide();
	$(".nav_button").hide();
	$("#save-as-button-nav").hide();
	$("#chart").css("display", "none");	
	navigationView = false;
	if(paleteCreated==0)
		callGraph();
}
function addNewGraphInHistory(){
	var encoder = new mxCodec();
	var parent = graph1.getDefaultParent();
	var node = encoder.encode(graph1.getModel());
	
	var xml_graph = mxUtils.getXml(node);
	
	var graphName_1 = 'New graph1';
	$("#historyList").append('<div id="'+graphName_1.replaceAll(' ','_')+'11" class="column"><div style="display:inline-block"><span class="close_image" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="resources/images/modelImage.svg"/>"><br/>'+graphName_1+'</a></div></div>');
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

//background
function mycallback(info, tab) {
    chrome.tabs.sendMessage(tab.id, "getClickedEl", {frameId: info.frameId}, data => {
        elt.value = data.value;
    });
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
				graph1 = new mxGraph(container);
				var parent = graph1.getDefaultParent();
				// Changes some default colors
				mxConstants.HANDLE_FILLCOLOR = '#99ccff';
				mxConstants.HANDLE_STROKECOLOR = '#0088cf';
				mxConstants.VERTEX_SELECTION_COLOR = '#00a8ff';

				graph1.setTooltips(true);
				// Enables rubberband selection
				new mxRubberband(graph1);
				style = graph1.getStylesheet().getDefaultEdgeStyle();
				style['strokeColor'] = '#000000';
				style['fontColor'] = '#000000';
				style['fontStyle'] = '0';
				style['fontStyle'] = '0';
				style['startSize'] = '8';
				style['endSize'] = '8';
				
				// Enables guides
				mxGraphHandler.prototype.guidesEnabled = true;
				mxEdgeHandler.prototype.snapToTerminals = true;

				var layout = new mxHierarchicalLayout(graph1);
				layout.execute(graph1.getDefaultParent());

					
				graph1.popupMenuHandler.autoExpand = true;
				graph1.setAllowDanglingEdges(false);
				graph1.setDisconnectOnMove(false);
			    
				
				graph1.popupMenuHandler.factoryMethod = function(menu, cell, evt)
				{
					
				  if(cell.vertex){
				      menu.addItem("Send to Back",null,function()
				      {
				    	  graph1.isEnabled();
				    	  graph1.orderCells("toBack");
				      }) 
				      menu.addItem("Bring to front", null, function()
				      {
				    	  graph1.isEnabled();
				    	  graph1.orderCells("toFront");
				      })
				      menu.addItem('Delete Cell', null, function()
				      {
				    	  graph1.removeCells();
				      })
				  }
				}				
				
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
								content_+='<div style="cursor: pointer" class="item" onclick="returnRelVal(\'forward\',\''+val1+'\',\''+sourceObjectName+'\',\''+targetObjectName+'\',\''+key+'\')"><i class="fa fa-long-arrow-right"></i>'+val1+'</div>';
							});
						}
						else if(key=='backward'){
							content_+='<hr>';
							$.each( value, function(key,val1) {
								content_+='<div style="cursor: pointer" class="item" onclick="returnRelVal(\'backward\',\''+val1+'\',\''+sourceObjectName+'\',\''+targetObjectName+'\',\''+key+'\')"><i class="fa fa-long-arrow-left"></i>'+val1+'</div>';
							});
							
							// console.log(value);
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
			    	// console.log("selectedImg",selectedImg)
			    	var elementName = selectedImg.src.split('/');
   					elementName = elementName[elementName.length-1];
   					elementName = elementName.split('.svg');
   					elementName = elementName[0].split('-').join(' ');
   					elementName = capitalizeFirstLetter(elementName);
   					// console.log("selectedImg",elementName)
   					
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
	   	   						// console.log('if');
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

				
// 			<!-- 	Toolbar container for the graph1 		-->
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
				
				graph1.dropEnabled = true;
				
   				mxDragSource.prototype.dragEnter = function(graph1, evt){
   					var toCheckGrouping = this.element.currentSrc.split('/');
   					toCheckGrouping = toCheckGrouping[toCheckGrouping.length-1];
   					toCheckGrouping = toCheckGrouping.split(".")[0];
   					// console.log(toCheckGrouping);
   					
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
					
   	   				mxDragSource.prototype.drop = function(	graph1, evt, dropTarget,	x, y){
						console.log('drope')
						if(toCheckGrouping=='swimlane'){
							var vertex = graph1.insertVertex(parent, null,"Container", x, y, 120, 180, 'shape=swimlane;startSize=40');
						}
						else if(toCheckGrouping=='rectangle'){
							var vertex = graph1.insertVertex(parent, null,"", x, y, 200, 200, 'shape=label;strokeColor=black;fillColor=#0000000d;rounded=0.1;shadow=0;strokeWidth=1;whiteSpace=wrap;overflow=hidden;');
						}
						else if(toCheckGrouping=='and-junction'){
							var vertex = graph1.insertVertex(parent, null,"", x, y, 20, 20, 'shape=image;image=<c:url value="resources/js/examples/editors/images/images1/and-junction1.svg"/>');
						}
						else if(toCheckGrouping=='or-junction'){
							var vertex = graph1.insertVertex(parent, null,"", x, y, 20, 20, 'shape=image;image=<c:url value="resources/js/examples/editors/images/images1/or-junction1.svg"/>');
						}
						else if(toCheckGrouping=='oval_start'){
							alert('s')
							//var edge = graph1.addEdge(parent, null,"",40,40,'startArrow=oval;endArrow=;shape=oval_start;labelBackgroundColor=#FFFFFF/>');
// 							var e1 = graph1.insertEdge(parent, null, '', x, y, 'dashed=1;'+
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
								var allVerticesDrawn = graph1.getChildVertices(parent);
								var style_cell = graph1.getModel().getStyle(allVerticesDrawn[0]);
								let vertex_width = 140;
								let vertex_height = 60;
								console.log('style_cell',style_cell)
								if(style_cell==null){
									style_cell = style;
								}
								if (style_cell.includes('shape=image')) {
									style = style.replaceAll('shape=label', 'shape=image');
									style += ';verticalLabelPosition=bottom;verticalAlign=top';
									vertex_width = 50;
									vertex_height = 40;
								}
								var vertex = graph1.insertVertex(parent, null, UniqueObjectName.split(" ").join("\n") , x, y, vertex_width, vertex_height, style);
								$("#save_button").prop('disabled', true);
								$(".graph_button").prop('disabled', true);
								graphSaveButton[graph_name] = true;
								//console.log("get_div_id", get_div_id[0]);
								var encoder = new mxCodec();
								var parent = graph1.getDefaultParent();
								var node = encoder.encode(graph1.getModel());
								var new_xml_str = mxUtils.getXml(node);
								var get_old_xml = dictionaryXML;							
								dictionaryXML[graph_name.replaceAll(' ','_')] = new_xml_str;//set key1
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

				// Installs a handler for double click events in the graph1
				// that shows an alert box
				
				graph1.addListener(mxEvent.CELLS_MOVED, function(sender, evt)
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

				graph1.addListener(mxEvent.DOUBLE_CLICK, function(sender, evt)
				{
					var cell = evt.getProperty('cell');
// 					cell.setAttribute('value', "AaAA");
					//var label = 'sdfdf';
// 					cell.setAttribute('label', label);
// 					graph1.model.setValue(cell, label);
			       
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
				
 				graph1.setConnectable(true);
 				graph1.setDisconnectOnMove(false);
//  				graph1.connectionHandler.createTarget = true;
              //  graph1.isAutoSizeCell(true);
 				graph1.htmlLabels = true;
 				graph1.centerZoom = true;
 				graph1.setResizeContainer(false);
 				graph1.setAllowNegativeCoordinates(true);
  				graph1.setCellsCloneable(false);
  				graph1.setPanning(true);
  				graph1.panningHandler.useLeftButtonForPanning = true;
  				
// 				graph1.setMultigraph(false);
				
				// Stops editing on enter or escape keypress
				var keyHandler = new mxKeyHandler(graph1);
				var rubberband = new mxRubberband(graph1);
				var addVertex = function(mylabel, icon, w, h, style)
				{
					var vertex = new mxCell(mylabel, new mxGeometry(0,0,w,h), style);
					vertex.setVertex(true);
					
				
					addToolbarItem(graph1, toolbar, vertex, icon);
				};
				var addEdge = function(mylabel, icon, w, h, style)
					{
						var edge = new mxCell(mylabel, new mxGeometry(0,0,w,h),  style);
							  edge.geometry.setTerminalPoint(new mxPoint(50, 150), true);
							  edge.geometry.setTerminalPoint(new mxPoint(150, 50), false);
						
						edge.setEdge(true);

						  var funct = function(graph1, evt, cell)
						    {
						        graph1.stopEditing(false);
						        var pt = graph1.getPointForEvent(evt);
						        var edge = graph1.getModel().cloneCell(prototype);
						        edge.geometry.x = pt.x;
						        edge.geometry.y = pt.y;       
						        graph1.setSelectionCells(graph1.importCells([edge], 0, 0, cell));
						    }
				
						  edge.geometry.relative = true;
						  edge.edge = true;

						addToolbarItem(graph1, toolbar, edge, icon);
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
	   							    		addVertex(elementNameWithLineBreak,'<c:url value="resources/js/examples/editors/images/images1/'+imageName+'.svg"/>', 135, 50, 'shape=label;image=<c:url value="resources/js/examples/editors/images/images1/'+imageName+'.svg"/>;strokeColor=Black;fillColor=#8bfa96;rounded=1;shadow=1;strokeWidth=2');
		   							    		
		   							    		if(i++%4==0){
	   							    			toolbar.addBreak();
	   							    		}
// 		   							    		console.log('i',i)
		   							    		
	   							    		}
	   							    	//	addVertex("Business\nActor",'<c:url value="/resources/js/examples/editors/images/images1/business-actor.svg"/>', 135, 50, 'shape=label;image=<c:url value="/resources/js/examples/editors/images/images1/business-actor.svg"/>;strokeColor=Black;fillColor=#8bfa96;rounded=1;shadow=1;strokeWidth=2');
	   									});
	   							    	toolbar.addLine();
	   							    	addVertex("Container",'<c:url value="resources/js/examples/editors/images/swimlane.gif"/>', 120, 160, 'shape=swimlane;startSize=40');
	   							    	addVertex("Container",'<c:url value="resources/js/examples/editors/images/rectangle.gif"/>', 120, 160, 'shape=rectangle;startSize=40');
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
//    						graph1.addListener(mxEvent.CLICK, function (sender, evt) {
//    						    var cell = evt.getProperty("cell"); // cell may be null
//    						    if (cell != null) {
//    						        SelectGraphCell(cell);
//    						        graph1.setSelectionCell(cell);
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
		//// graph1 DELETE and UNDO //////// START /////////////
		var keyHandler = new mxKeyHandler(graph1);
		keyHandler.bindKey(46, function(evt)
		{
			var cell = graph1.getSelectionCell();
			
			/*
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
			*/
			
		  if (graph1.isEnabled())
		  {
			console.log("Inside Delete Cell")
		    graph1.removeCells();
		    $("#save_button").prop('disabled', false);
		    var encoder = new mxCodec();
			var parent = graph1.getDefaultParent();
			var node = encoder.encode(graph1.getModel());
			var new_xml_str = mxUtils.getXml(node);
			var get_old_xml = dictionaryXML;							
			dictionaryXML[graph_name] = new_xml_str;//set key1
			var updated_value = dictionaryXML[graph_name];//get key1
			
		    $(".graph_button").prop('disabled', false);
		    graphSaveButton[graph_name] = false;
		  }
	
			
		});

		
	
		graph1.getModel().addListener(mxEvent.UNDO, listener);
		graph1.getView().addListener(mxEvent.UNDO, listener);

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
				// Creates the graph1 inside the given container
// 				graph1 = new mxGraph(container);
				graph1.setPanning(true);
				
				// Specifies the URL and size of the new control
				var deleteImage = new mxImage('editors/images/overlays/forbidden.png', 16, 16);

				// Overridden to add an additional control to the state at creation time
// 				mxCellRendererCreateControl = mxCellRenderer.prototype.createControl;
// 				mxCellRenderer.prototype.createControl = function(state)
// 				{
// 					mxCellRendererCreateControl.apply(this, arguments);
					
// 					graph1 = state.view.graph1;
					
// 					if (graph1.getModel().isVertex(state.cell))
// 					{
// 						if (state.deleteControl == null)
// 						{
// 							var b = new mxRectangle(0, 0, deleteImage.width, deleteImage.height);
// 							state.deleteControl = new mxImageShape(b, deleteImage.src);
// 							state.deleteControl.dialect = graph1.dialect;
// 							state.deleteControl.preserveImageAspect = false;
							
// 							this.initControl(state, state.deleteControl, false, function (evt)
// 							{
// 								if (graph1.isEnabled())
// 								{
// 									graph1.removeCells([state.cell]);
// 									mxEvent.consume(evt);
// 								}
// 							});
// 						}
// 					}
// 					else if (state.deleteControl != null)
// 					{
// 						state.deleteControl.destroy();
// 						state.deleteControl = null;
// 					}
// 				};
				
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

				new mxRubberband(graph1);
				
								
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
	
// 		graph1 = graph1;
		return false;
	}
	
	
}

                // Context menu setup
	function reload() {
		location.reload();
		}
	// dragging object from tree and droping to graph1 
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
				var pt1 = navigationGraph.getPointForEvent(ev);
				navigationCellDraw(currentObj,pt1.x,pt1.y,imageSource);
			}else{
				console.log('false')
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
					 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
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
<img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/logo-login.png"/>">
<%-- <img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/main-logo-removebg.png"/>"> --%>

<!-- loader  start-->
<div class="loader" style="display:none;"></div>
<!-- loader  end-->


<div class="container-fluid" style="margin: 0 !important; padding: 0 !important; width:100vw">
	<div class="header">
		<div>
<!-- 		<a href="home"> -->
		<a>
			<p class="image1" style="margin-left: 0px;margin-top: -5px">
				<img draggable="false" alt="logo"  width="155px" src="<c:url value="/resources/images/logo-login.png"/>">
			</p>
		</a>
		</div>
		<div style="display:flex;justify-content: space-between; padding-right:10px">
			<div id="history_tab" class="btn-group dropdown">	  
	 			<button  id="historyButton" type="button" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="displaydiv();">
	 				<img class="history-icon" alt="schema" width="20px" height="20px" src="<c:url value="resources/images/tabs-default.svg"/>"/>
					<span style="background:#e9e9e9" class="history_page_no badge badge-light">0</span>
	 			</button>
				<div id="historyList" class="dropdown-menu dropdown-menu-right table_row" style="width:350px; border: 1px solid black;transform-origin: right; height:230px; overflow-y:scroll">
					<div class="history_tool">
						<span type="button" onclick="close_all_history_div();"><spring:message code="close_all"/></span>
					</div>
				</div>
			</div>	
			
			
			<div id="history_tab_mypage" class="btn-group dropdown1" style="display:none">
			    <button id="historyButtonMyPage" type="button" class="btn" data-toggle="dropdown1" aria-haspopup="true" aria-expanded="false" onclick="displaydivmypage();">
			        <img class="history-icon" alt="schema" width="20px" height="20px" title="<spring:message code="my_page_history"/>" src="<c:url value=" resources/images/tabs-default.svg"/>"/>
			        <span style="background:#e9e9e9" class="history_page_no_mypage badge badge-light">0</span>
			    </button>
			    <div id="historyListMyPage" class="dropdown-menu dropdown-menu-right table_row" style="width:350px; border: 1px solid black;transform-origin: right; height:230px; overflow-y:scroll; display:none ">
			        <div class="history_tool">
			            <span type="button" onclick="close_all_history_div_mypage();"><spring:message code="close_all" /></span>
			        </div>
			    </div>
			</div>




			<div id="home-btn" class="languageText" style="margin-top:3px!important;">
				<!-- <a id="language" href="" class="fa-2x lang-icon" draggable="false" title="Module Page" onclick="toggleLanguageSelection()">Ar</a> -->
<!-- 				<a href="lang=rtl" class="fa-2x lang-icon" draggable="false" title="Module Page">Ar</a> -->
			</div>
		<div id="home-btn">
			<a href="home" class="fa fa-home fa-2x" draggable="false" title=<spring:message code="module_page"/> ></a>
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
							<a href="userprofile" onclick="saveCurrentUrlToLocalStorage()"><i class="fa fa-user" aria-hidden="true"></i><spring:message code="profile"/></a>
						</div>
					</div>
					<div class="account-dropdown__footer">
						<a href="logout"><i class="fa fa-power-off" aria-hidden="true"></i><spring:message code="logout"/></a>
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
			<button id="MyEnterpriseButton" class="mp-btn active1" onclick="changeHistoryModelpage()"><spring:message code="enterprise"/></button>
			<button id="MyPageButton" class="mp-btn" onclick="changeHistoryMypageButton($('#changeHistoryMyPageTableDaysInput').val(),'myPageButton')"><spring:message code="quick_access"/></button>
			<!-- <button id="MyPageButton" class="mp-btn" onclick="changeHistoryMypageButton('Default','myPageButton')">My Page</button> -->
		</div>
			
		<div style="margin-left:11%;">
			<span id="element_title" style="display: none"></span>
		</div>
		<div style="height: 40px; margin: auto;">	
	    	<span class="alert_message"></span>
		</div>
		<div id="navbar_buttons">	
			<button title="<spring:message code="diagram_filter"/>" id="filterDiagram" class="btn graph_button" onclick="openDiagramFilterModal()"><i class="fa fa-filter" style="font-size:24px;color:#ffffff"></i></button>
			<button title="<spring:message code="change_shape"/>" id="change-shape" class="btn graph_button" onclick="changeVertexShape();"><i class="fa fa-picture-o" style="font-size:24px;color:#ffffff"></i></button>
			<label id="showHideRelationships" class="switch graph_button" title="<spring:message code="show_hide_relationships"/>">
			  <input id="graphRelationshipsToggle" onclick="graphRelationshipsToggle()" style="font-size: 20px;display: inline-grid;" type="checkbox" checked="checked">
			  <div class="slider"></div>
			</label>
			<button title="<spring:message code="fit_screen"/>" id="fit-screen" class="btn graph_button" onclick="graph1.fit();"><i class="fa fa-arrows-alt fit-screen" style="font-size:24px;color:#ffffff"></i></button>
			<button title="<spring:message code="zoom_out"/>" id="zoom-out" class="btn graph_button" onclick="graph1.zoomOut();"><i class="fa fa-search-minus zoom-out" style="font-size:24px;color:#ffffff"></i></button>
			<button title="<spring:message code="zoom_in"/>" id="zoom-in" class="btn graph_button"  disabled="disabled" onclick="graph1.zoomIn();"><i class="fa fa-search-plus zoom-in" style="font-size:24px;color:#ffffff"></i></button>
			<button title="<spring:message code="fit_screen"/>" id="fit-screen-nav" class="btn nav_button" onclick="navigationGraph.fit();"><i class="fa fa-arrows-alt fit-screen" style="font-size:24px;color:#ffffff"></i></button>
			<button title="<spring:message code="zoom_out"/>" id="zoom-out-nav" class="btn nav_button" onclick="navigationGraph.zoomOut();"><i class="fa fa-search-minus zoom-out" style="font-size:24px;color:#ffffff"></i></button>
			<button title="<spring:message code="zoom_in"/>" id="zoom-in-nav" class="btn nav_button"  onclick="navigationGraph.zoomIn();"><i class="fa fa-search-plus zoom-in" style="font-size:24px;color:#ffffff"></i></button>
<!-- 			<button onclick="graphRelationshipsToggle()"></button> -->
			<button style="font-size: 20px; display:hidden" title="<spring:message code="save"/>" id="save_button" disabled="disabled" class="btn graph_button" onclick="save_graph(); "><i class="fa fa-floppy-o save-graph1" style="font-size:24px;color:#ffffff"></i></button>	
<%-- 			<button style="font-size: 20px; display:none" title="<spring:message code="save_as_graph"/>" id="save_graph_as_button" class="btn graph_button" onclick="saveGraphAs(); "><i class="fa fa-clone save-graph1" style="font-size:24px;color:#ffffff"></i></button> --%>
			<button style="font-size: 20px; display:none" title="<spring:message code="save_as_graph"/>" id="save_graph_as_button" class="btn graph_button" onclick="saveGraphAs(); "><img class="save-graph1" src="resources/images/save-as.png" style="width:24px; height:24px; color:#ffffff; margin-bottom:2px "></img></button>	
			<button style="font-size: 20px;" title="<spring:message code="save"/>" id="save-button-nav" disabled="disabled" class="btn nav_button" onclick="save_navigation(); "><i class="fa fa-floppy-o save-navigation" style="font-size:24px;color:#ffffff"></i></button>	
<%-- 			<button style="font-size: 20px; display:none" title="<spring:message code="save_as_navigation"/>" id="save-as-button-nav" class="btn nav_button" onclick="save_as_navigation(); "><i class="fa fa-clone save-navigation" style="font-size:24px;color:#ffffff"></i></button> --%>
			<button style="font-size: 20px; display:none" title="<spring:message code="save_as_navigation"/>" id="save-as-button-nav" class="btn nav_button" onclick="save_as_navigation(); "><img class="save-graph1" src="resources/images/save-as.png" style="width:24px; height:24px; color:#ffffff; margin-bottom:2px "></img></button>
			<div class="businessProcessSaveButton">
				<div id="businessProcessDropDownItemsDiv"></div>
				<button style="font-size: 20px; display:none" title="<spring:message code="save"/>" id="saveBusinessProcessButton" disabled="disabled" class="btn businessProcessButton"><i class="fa fa-floppy-o save-graph1" style="font-size:24px;color:#ffffff" onclick="saveBusinessProcessXML();"></i></button>			
			</div>
			<div class="catalog_save_button">
<!-- 				<div class="btn-group"> -->
<!-- 				  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!-- 				    Action -->
<!-- 				  </button> -->
<!-- 				  <div class="dropdown-menu"> -->
<!-- 				    <a class="dropdown-item" href="#">Action</a> -->
<!-- 				    <a class="dropdown-item" href="#">Another action</a> -->
<!-- 				    <a class="dropdown-item" href="#">Something else here</a> -->
<!-- 				    <div class="dropdown-divider"></div> -->
<!-- 				    <a class="dropdown-item" href="#">Separated link</a> -->
<!-- 				  </div> -->
<!-- 				</div> -->
			</div>
			<div class="matrix_save_button"></div>
		</div>
	</div>
	
	
	<div id="changeHistoryMyPageTable">
		
		<div id="myPageTopArea">
	
			<div id="myPageLeftPane">
				<div id="myPageObjectPallete"></div>
			</div>
			
			<div id="myPageRightPane">
			
				<div id="myPageObjectTableDiv" style="">
					<div id="changeHistoryMyPageTableDaysInputDiv" class="customFilter">
						<div style="display: flex; width: 100%; align-items: center;">
		<div class="myPageLabelAndInputDiv">
	    <label><spring:message code="object_updated_more_than"/></label>
				<!-- <input id="changeHistoryMyPageTableDaysInput" type="number" oninput="validity.valid||(value='');" min="0" value="0" onchange="changeHistoryMypageButton(this.value,'inputOnchange')" min="1"> -->
		        <input id="changeHistoryMyPageTableDaysInput" type="number" min="0" value="0" min="1">
			<!-- <input id="changeHistoryMyPageTableDaysInput" type="number" value="1" onchange="changeHistoryMypageButton(this.value,'inputOnchange')" min="1"> -->
	    <label><spring:message code="days"/></label>
		    <button class="myPageShowButton" onclick="changeHistoryMypageButton($('#changeHistoryMyPageTableDaysInput').val(),'inputOnchange')"><spring:message code="show"/></button>
		</div>

						</div>
						
						<label id="myPageToggleSwitchLabel" class="switch" title="<spring:message code="show_my_objects"/>">
						    <input id="myPageToggleCheckBox" onclick="getMyPageTableDataBasedOnSlider()" style="font-size: 20px; display: inline-grid;" type="checkbox" checked>
						    <div class="MyPageTableDataSlider"></div>
						</label>
	</div>
	
	<div id="myPageTableDiv">
	    <table id="myPageTable" class="table table-striped table-bordered" style="width:100%">
	        <thead>
	            <tr>
	                <th id="symbolColumnId"><spring:message code="symbol"/></th>
	                <th><spring:message code="name"/></th>
	                <th><spring:message code="element"/></th>
             		<th><spring:message code="created_on"/></th>
	                <th><spring:message code="last_updated_on"/></th>
	                <th><spring:message code="last_updated_by"/></th>
	                <th><spring:message code="owner_of_the_object"/></th>
             		<th><spring:message code="status"/></th>
	            </tr>
	        </thead>
	    </table>
	</div>
	</div>
	
				<div id="myPageObjectFormDiv" style="display:none;">
					<div id="form_id_mypage"></div>
				</div>
			</div>
			
		</div>
<!-- 		<div id="myPageBottomArea"></div> -->

		

	</div>
	
	<div id="formDiv" class="row formDiv">
	    <div class="col-3 mr-1 content_area panel-left">
<%-- 	    	<img id ="loader_image" alt="schema"  src="<c:url value="resources/images/loader.gif"/>"> --%>
<%-- 			<img id ="loader_image" style="display:none;" loading="lazy" alt="schema" width="200px" height="70px" src="<c:url value="resources/images/main-logo-removebg.png"/>"> --%>
			<img id ="loader_image" style="display:none;" loading="lazy" alt="schema" width="200px" height="70px" src="<c:url value="resources/images/logo-login.png"/>">
	    	<div id="left_pane">
<!-- 	    	<div class="row"> -->
<!-- 	    		<div> -->
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
							    <li><a title=<spring:message code="objects"/> href="#tabs-1" draggable="false" class="objectTab"><i class="fa fa-cog" aria-hidden="true"></i></a></li>
							    <li><a  title=<spring:message code="models"/> href="#tabs-2" draggable="false" class="modelTab"><i class="fa fa-cubes" aria-hidden="true"></i></a></li>
							    <li><a title="<spring:message code="attachments"/>" href="#tabs-3" draggable="false" class="modelTab"><i class="fa fa-file-text-o" aria-hidden="true"></i></a></li>
							    <li><a title="<spring:message code="processModel"/>" href="#tabs-4" draggable="false" class="modelTab"><i class="fa fa-th" aria-hidden="true"></i></a></li>		    				
<%-- 							    <li><a href="#tabs-1" draggable="false"><spring:message code="objects"/></a></li> --%>
<%-- 							    <li><a href="#tabs-2" draggable="false"><spring:message code="models"/></a></li> --%>
<%-- 							    <li><a href="#tabs-3" draggable="false"><spring:message code="attachments"/></a></li> --%>
							    <li class="filter"><input class="form-control" type="text" id="myInput" onkeyup="SearchObjects(); SearchModels();" placeholder="<spring:message code="filter"/>" title="Type in a name"/></li>
							 </ul>
		    				<div id="tabs-1">
			    				<ul id="myUL" style="">
			    					<li id="lt"><p style="margin-bottom:0px;" class="caret"><spring:message code="eaxee"/></p>
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
			    					
									<ul id="myULaa" style="padding-left:10px; padding-top: 3px">
									  <li>
									  <p style="margin-bottom:0px; width:100%;" id="objectrecycle" onclick="recycle_toggle(this);" style="cursor:pointer;">
									  		<i class="fa fa-trash-o deleteIcon" aria-hidden="true"></i>
									    		&nbsp;<spring:message code="recycle_bin"/>
									  </p>
									    <ul class="nested" id="recycle_bin_list_for_object_elements" style="padding-left: 30px;">
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
			    						<ul id="recycle_bin_list" style="padding-left:10px; padding-top: 3px;">
<!-- 			    		 					<li> -->
<%-- 			    								<span><i class="fa fa-trash-o deleteIcon" aria-hidden="true"></i>&nbsp;&nbsp;<spring:message code="recycle_bin"/></span> --%>
<!-- 			    							</li> -->
			    						</ul>
			    					</div>
			    				</div>
							</div>
							<div id="tabs-3">
								<div  id="context-menu" >
								</div>
								<div id="attachment">
			    					<div id="m2">
			    					</div>
			    					<div id="recycle_bin_for_attachments">
			    						<ul id="recycle_bin_list_for_attachments" style="padding-left:10px; padding-top: 3px;">
<!-- 			    		 					<li> -->
<%-- 			    								<span><i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;<spring:message code="recycle_bin"/></span> --%>
<!-- 			    							</li> -->
			    						</ul>
			    					</div>
			    				</div>
							</div>
							<div id="tabs-4">
								<div  id="context-menu" >
								</div>
								<div id="processModel">
			    					<div id="m3">
			    					</div>
			    					<div id="recycle_bin_for_process_model">
			    						<ul id="recycle_bin_list_for_business_process" style="padding-left:10px; padding-top: 3px;">
<!-- 			    		 					<li> -->
<%-- 			    								<span><i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;<spring:message code="recycle_bin"/></span> --%>
<!-- 			    							</li> -->
			    						</ul>
			    					</div>
			    				</div>
							</div>															
						</div>
	    			</div>
<!-- 	    		</div> -->
<!-- 	    	</div> -->
	    </div>
	    </div>
	    <div class="col content_area panel-right" id="cntr" >	    
	    <div id="chart"></div>
	    <div id="myPage"></div>
			<div>
				<div id="context-menu2">
				</div>
				<div id="form_id">		
				</div>
				<h1 id="table_h1" align="Center"></h1>
			    <div id="paleteDiv" class="content_area">
			    	<div id="palete"></div>
			    </div>
				
				<div id="graphId" style="margin-left: 161px;" ondrop="drop(event)" ondragover="allowDrop(event)">
					<div id="diagramFilterStickyHeaderParentDiv" style="display: none">
						<div id="diagramFilterStickyHeader">
						</div>
					</div>
				</div>
				<div id="navigationId" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
				<div id="businessProcessId" class="businessProcessDivId" style="height:100vh"></div>
<!-- 				<button id="downloadXML">Download XML</button> -->
				
				<div id="catalog">
					<div id="catalogScriptsModal" style="display: none;">
						
						<div id="catalogScriptModalLabelInput">
							<label for="name"><spring:message code="script_name"/></label>
							<input type="text" name="catalogscriptname" id="catalogScriptName" placeholder="<spring:message code="script_name"/>" class="text ui-widget-content ui-corner-all">
						</div>
						<br>
						<div class="row">
							<div id="availableColumnsForCatalogScripts" class="col-sm-5 catalog-script-col">
							</div>
							<div class="col-sm-2" style="margin: auto;">
								<i id="catalogScriptRight" class='fa fa-long-arrow-right fa-3x'></i>
								<br>
								<i id="catalogScriptLeft" class='fa fa-long-arrow-left fa-3x'></i>
							
							</div>
							<div id="addedColumnsForCatalogScripts" class="col-sm-5 catalog-script-col">
								
							
							</div>
						
						</div>
						
					</div>
					
					<div id="catalogGridParent" style="display: none">
						<div id="catalogGrid" class="ag-theme-alpine catalogAgGridTable"></div>
					</div>
					
					
				
				</div>
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

<div id="diagramFilterModal" class="modal" style="display: none;">
    <div class="modal-content" id="diagramFilterModelContent">
        <div class="modal-header">
            <span id="diagram_filter_modal_heading"><spring:message code = "diagram_filter"/></span>
            <span class="closeDiagramFilterModal" id="closeDiagramFilterModal">&times;</span>
        </div>
        <div class="modal-body">
			<div id="diagramFilterDropDownsParentDiv">
				<div>
					<span><spring:message code = "elements"/></span>
					<select name="" required id="graphElementDropdown" class="diagramFilterDropDown" style="width: 130px;" onchange="getObjectNamesForSelectedElement(); getAttributesForSelectedElement()">
					    <option value="<spring:message code = "Select_Element"/>" selected disabled></option>
					</select>
				</div>
				
				<div id="graphObjectDropdownParentDiv" disabled>
					<span><spring:message code = "objects"/></span>
				    <select id="graphObjectDropdown" multiple="multiple"></select>
				</div>
				
				<div id="graphElementAttributeDropdownParentDiv">
					<span><spring:message code = "attributes"/></span>
					<!-- <select id="graphElementAttributeDropdown" multiple="multiple"></select> -->
					<select disabled name="" required id="graphElementAttributeDropdown" class="diagramFilterDropDown" onchange="diagramFilterGetAttributeAllowableValues(this.value)">
					    <option value="" selected disabled><spring:message code = "select_an_attribute"/></option>
					</select>

				</div>
			</div>
			<div class="enableDisableObjectAttributeParentDiv">
				<input type="checkbox" id="enableDisableObjectAttribute" name="" onClick="toggleDiagramFilterDropDownSelect()">
				<label for="enableDisableObjectAttribute"> <spring:message code="enable_disable"/></label>
			</div>
		
			<div id="diagramFilterBothTableDiv">
				<div id="diagramFilterObjectTableSpanParentDiv">
					<span><spring:message code = "max_5"/></span>
					<div id="diagramFilterObjectTableParentDiv">
						<table id="diagramFilterObjectTable">
							<thead>
						    	<tr>
						    		<th><spring:message code = "object"/></th>
						    		<th><spring:message code = "color"/></th>
						        </tr>
						    </thead>
						    <tbody>
						  </tbody>
						</table>
					</div>
				</div>
				
				<div id="diagramFilterAttributeTableSpanParentDiv">
					<div id="diagramFilterAttributetTableParentDiv">
						<table id="diagramFilterAttributeTable">
							<thead>
						    	<tr>
						    		<th><spring:message code = "attribute"/></th>
						    		<th><spring:message code = "color"/></th>
						        </tr>
						    </thead>
						    <tbody>
						 	</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<div id="diagramFilterApplyAndCheckboxDiv" class="enableDisableObjectAttributeParentDiv">
				<div id="diagramFilterHideRelationshipParentDiv">
					<input type="checkbox" id="diagramFilterHideRelationship" name="" onClick="">
					<label for="diagramFilterHideRelationship"><spring:message code="hide_unrelated_unassigned_objects"/></label>
				</div>
				<div id="resetAndApplyBUttonDiv">
					<button id="diagramFilterApplyButton" onclick="resetDiagramFilter()"><spring:message code="reset"/></button>
					<button id="diagramFilterApplyButton" onclick="diagramFilterApplyButtonOnClick()"><spring:message code="apply"/></button>
				</div>
			</div>
			
        </div>
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
    		<li class="modal_filter"><input class="form-control" type="text" id="myInput_1" onkeyup="SearchObjectsOnModal();" placeholder="<spring:message code="filter"/>" title="<spring:message code="type_in_a_name"/>"/></li>
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
		<table id="example" class="table table-striped table-bordered relationshipTable" style="width:100%">
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

<!-- The Modal For Attachment Object-->
<div id="attachmentModal" class="modal" style="display: none;">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span id="attachmentTitle">&nbsp;</span>
      <span class="close" >&times;</span>
    </div>
    <div id="modal1_body" class="modal-body">
    	<ul>
    		<li class="modal_filter"><input class="form-control" type="text" id="myInput_1" onkeyup="SearchObjectsOnModal();" placeholder="<spring:message code="filter"/>" title="Type in a name"/></li>
    	</ul>
		<div>	
	    	<span class="tree_modal_alert_message"></span>
		</div>
    	<div class="get_tree_filter" id="get_attachment_tree">
    		<%-- <img id ="loader_image_for_modal" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="resources/images/eazee-Logo.png"/>"> --%>
    		<!-- <ul>
    			<li><span class="caret">LambdaTheta</span></li>
			</ul> -->
		</div>
		<table id="attachmentExample" class="table table-striped table-bordered" style="width:100%">
	        <thead>
	            <tr>
	                <th style="width: 5px !important">#</th>
	                <th><spring:message code="attachments"/></th>
	                <th style="width: 20px !important"></th>
	            </tr>
	        </thead>
	        <tbody id="table_data">
	        </tbody>
	    </table>
    	<!-- <div id="choices-multiple-remove-button"></div> -->
    	<div id="addAttachmentButtonRel"></div>
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

<!-- <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script> -->
<script type="text/javascript" src="<c:url value="/resources/js/apexcharts-bundle/dist/apexcharts.js" />"></script>


<!-- Export graph1 script file -->
<script type="text/javascript" src="<c:url value="/resources/js/exportGraph.js" />"></script>

<!-- Export graph1 script file -->
<script type="text/javascript" src="<c:url value="/resources/js/export_Graph.js" />"></script>

<!-- Export navigation script file -->
<script type="text/javascript" src="<c:url value="/resources/js/export_Navigation.js" />"></script>

<!-- updateFormModal script file -->
<script type="text/javascript" src="<c:url value="/resources/js/updateFormModal.js" />"></script>

<!-- userManagement script file -->
<script type="text/javascript" src="<c:url value="/resources/js/userManagement.js" />"></script>


<!-- click_show_input script file -->
<script type="text/javascript" src="<c:url value="/resources/js/on_double_click_show_input.js" />"></script>

<script type="text/javascript" src="<c:url value="/resources/js/global.js" />"></script>



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

<!-- Prompt For new attachment -->
<div id="dialog-form-file-upload" title="<spring:message code="Create_Attachment"/>" style="display:none">
  <form>
    <fieldset>
<%--       <label for="name"><spring:message code="file"/></label> --%>
<%--       <input type="text" name="filename" id="file_name" placeholder="<spring:message code="New_File"/>" class="text ui-widget-content ui-corner-all"> --%>
	  <input class="form-control" id="Attached_Files" style="padding: 2px; margin-bottom: 5px" type="file" name="Attached Files" multiple="multiple" required="required">      
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
  
  <div id="exportGraph">
  </div>
  
</div>

<!-- Prompt For new navigation -->
<div id="dialog-form-navigation" title="<spring:message code="create_navigation"/>" style="display:none">
  <form>
    <fieldset>
      <label for="name"><spring:message code="Create"/></label>
      <input type="text" name="navigationname" id="navigation_name" placeholder="<spring:message code="navigation_name"/>" class="text ui-widget-content ui-corner-all">
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
  
  <div id="exportGraph">
  </div>
  
</div>

<!-- Prompt For new businessProcess -->
<div id="dialog-form-businessProcess" title="<spring:message code="create_business_process"/>" style="display:none">
  <form>
    <fieldset>
      <label for="name"><spring:message code="Name"/></label>
      <input type="text" name="filename" id="businessProcessName" placeholder="<spring:message code="New_File"/>" class="text ui-widget-content ui-corner-all">
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
  <div id="exportGraph">
  </div>
</div>

<div id="dialog-form-diagram-save-as" title="Graph Warning" style="display:none">
    <form>
        <fieldset style="display: flex; flex-direction: column;">
            <div style="margin-top: 5px; margin-bottom: 20px;">
            	The object/model is updated since you opened
            </div>
            <input type="text" name="newDiagramName" id="newDiagramName" placeholder="<spring:message code="diagram_name"/>" class="text ui-widget-content ui-corner-all">
            <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
        </fieldset>
    </form>

</div>


	<!-- Dialog for Roadmap -->
	<div id="dialogGanttChart" title="<spring:message code="roadmap_definition"/>"
		style="display: none">
		<form>
			<fieldset class="GanttFieldSet">
				<div class="GanttDiv">
					<label for="name"><spring:message code="roadmap_name"/></label> 
					<input type="text"
							required=""
						name="roadmap" id="new_roadmap" placeholder="<spring:message code="new_roadmap"/>"
						class="text ui-widget-content ui-corner-all">
				</div>
				<div class="GanttDiv">
					<label for="elements"><spring:message code="element_name"/></label> 
						<select name="element"
								required=""
							id="elementNameGanttList" style="width: 130px;">
<!-- 								<option value="select" selected disabled> -->
<!-- 								</option> -->
					</select>
				</div>

				<div class="GanttDiv">
					<label for="elements"><spring:message code="start_date"/></label> 
					<select name="sDate" required=""
						id="StartDateGanttList" style="width: 130px;">
						<option value="select" selected disabled></option>
					</select>
				</div>
				<div class="GanttDiv">
					<label for="elements"><spring:message code="end_date"/></label> 
					<select name="eDate" id="EndDateGanttList" style="width: 130px;" required="">
						<option value="select" selected disabled></option>
					</select>
				</div>

				<div id="LegendGantt" class="GanttDiv">
					<label for="elements"><spring:message code="legend"/></label> 
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
<%-- <div id="translateText" title="<spring:message code="translate_text"/>" style="display:none"> --%>
<!--   <form> -->
<!--     <fieldset> -->
<%--       <label for="name"><spring:message code="changeText"/></label> --%>
<%--       <input type="text" name="changeText" id="change_text" placeholder="<spring:message code="new_text"/>" class="text ui-widget-content ui-corner-all"> --%>
<!--       <input type="submit" tabindex="-1" style="position:absolute; top:-1000px"> -->
<!--     </fieldset> -->
<!--   </form> -->
<!-- </div> -->

<!-- Dialog For new rename -->
<div id="renameText" title="<spring:message code="rename"/>" style="display:none">
  <form>
    <fieldset>
      <label for="name"><spring:message code="changeText"/></label>
      <input type="text" name="changeText" id="change_text"  class="text ui-widget-content ui-corner-all">
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
       <br><label for="elements"> <spring:message code="From"/> </label>
      <select name="elements" id="matrixElement1" style="width:130px;" >
      	 <option value="select" selected disabled> <spring:message code="select_dropdown"/></option>
      </select>
       <br><label for="elements"> <spring:message code="To"/> </label>
      <select name="elements" id="matrixElement2" style="width:130px;" >
      	 <option value="select" selected disabled><spring:message code="select_dropdown"/></option>
      </select>
          <br><label for="elements"> <spring:message code="relation"/> </label>
      <select name="elements" id="matrixRelation" style="width:130px;" >
      	 <option value="select" selected disabled><spring:message code="select_dropdown"/></option>
      </select>
      <br><label><spring:message code="select_dropdown"/><spring:message code="select_all_relationships"/></label>
      <input type="checkbox" id="selectAllRelationsMatrix">
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
<script type="text/javascript" src="<c:url value="/resources/js/multiselect-dropdown.js" />" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>




<!--     <script src="https://code.jquery.com/jquery-2.2.0.min.js"></script> -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

  <script>
//   $('#saveBusinessProcessButton').click(saveBusinessProcessXML);
//   $('#saveBusinessProcessButton').click(getXML);
// 	    var diagramUrl = '';
// //	     var diagramUrl = 'resources/bpmnFiles/process3_businessProcess.bpmn';
// //	     resources/bpmnFiles/_ssf_businessProcess.bpmn
// 	    // modeler instance
// 	    var bpmnModeler = new BpmnJS({
// 	       container: '#'+current_ID,
// 	       keyboard: {
// 	         bindTo: window
// 	       }
// 	    });
// //	     console.log("diagramUrl",diagramUrl);
// 	    /**
// 	    * Save diagram contents and print them to the console.
// 	    */
// 	    var getXMLData;
// 	    async function getXML() {
// 	      try {
// 	    	  var diagramUrl = '';
// 	    	  var result111 = await bpmnModeler.saveXML({ format: true });
// 	    	  getXMLData = result111;
// 	    	  setTimeout(saveBusinessProcessButton(), 5000);
// 	        var result = await bpmnModeler.saveXML({ format: true }, function (error, svg) {
// 	          if (error) {
// 	            return;
// 	          }
// 	          var svgBlob = new Blob([svg], {
// 	            type: 'image/svg+xml'
// 	          });
// //	           var fileName = Math.random(36).toString().substring(7) + '.xml';
// //	           var downloadLink = document.createElement('a');
// //	           downloadLink.download = fileName;
// //	           downloadLink.innerHTML = 'Get BPMN SVG';
// //	           downloadLink.href = window.URL.createObjectURL(svgBlob);
// //	           downloadLink.onclick = function (event) {
// //	             document.body.removeChild(event.target);
// //	           };
// //	           downloadLink.style.visibility = 'hidden';
// //	           document.body.appendChild(downloadLink);
// //	           downloadLink.click();
// //	           console.log("RESULT", result);
// //	           console.log('DIAGRAM', result.xml);
// 	        });         
// 	        // alert('Diagram exported. Check the developer tools!');
// 	      } catch (err) {
// 	        console.error('could not save BPMN 2.0 diagram', err);
// 	      }
// 	    }
	    
	  
// 	    async function downloadBusinessProcessXML() {
// 	        try {
// 	      	  var diagramUrl = '';
// 	      	  var result111 = await bpmnModeler.saveXML({ format: true });
// 	      	  getXMLData = result111;
// 	          var result = await bpmnModeler.saveXML({ format: true }, function (error, svg) {
// 	            if (error) {
// 	              return;
// 	            }
// 	            var svgBlob = new Blob([svg], {
// 	              type: 'image/svg+xml'
// 	            });
// 	            var fileName = Math.random(36).toString().substring(7) + '.xml';
// 	            var downloadLink = document.createElement('a');
// 	            downloadLink.download = fileName;
// 	            downloadLink.innerHTML = 'Get BPMN SVG';
// 	            downloadLink.href = window.URL.createObjectURL(svgBlob);
// 	            downloadLink.onclick = function (event) {
// 	              document.body.removeChild(event.target);
// 	            };
// 	            downloadLink.style.visibility = 'hidden';
// 	            document.body.appendChild(downloadLink);
// 	            downloadLink.click();
// //	             console.log("RESULT", result);
// //	             console.log('DIAGRAM', result.xml);
// 	          });         
// 	          // alert('Diagram exported. Check the developer tools!');
// 	        } catch (err) {
// 	          console.error('could not save BPMN 2.0 diagram', err);
// 	        }
// 	      }    
	    /**
	    * Save diagram contents and download it as SVG.
	    */
// 	    async function downloadSVG() {
// 	      try {
// 	        // var result = await bpmnModeler.saveXML({ format: true });
// 	        bpmnModeler.saveSVG({ format: true }, function (error, svg) {
// 	          if (error) {
// 	            return;
// 	          }
// 	          var svgBlob = new Blob([svg], {
// 	            type: 'image/svg+xml'
// 	          });
// 	          var fileName = Math.random(36).toString().substring(7) + '.svg';
// 	          var downloadLink = document.createElement('a');
// 	          downloadLink.download = fileName;
// 	          downloadLink.innerHTML = 'Get BPMN SVG';
// 	          downloadLink.href = window.URL.createObjectURL(svgBlob);
// 	          downloadLink.onclick = function (event) {
// 	            document.body.removeChild(event.target);
// 	          };
// 	          downloadLink.style.visibility = 'hidden';
// 	          document.body.appendChild(downloadLink);
// 	          downloadLink.click();                                        
// 	        });           
// 	      } catch (err) {
// 	        console.error('could not save BPMN 2.0 diagram', err);
// 	      }
// 	    }   
	    /**
	    * Save diagram contents and download it as PNG.
	    */
// 	    async function downloadPNG() {
// 	      try {
// 	        var t = this;
// 	        // use the modeler saveSVG method
// 	        bpmnModeler.saveSVG(function (err, svg) {
// 	            if (err) {
// 	                return;
// 	            }
// 	            try {
// 	                // can use the domUrl function from the browser
// 	                var domUrl = window.URL || window.webkitURL || window;
// 	                if (!domUrl) {
// 	                    throw new Error("(browser doesnt support this)")
// 	                }
// 	                // figure out the height and width from svg text
// 	                var match = svg.match(/height=\"(\d+)/m);
// 	                var height = match && match[1] ? parseInt(match[1], 10) : 200;
// 	                var match = svg.match(/width=\"(\d+)/m);
// 	                var width = match && match[1] ? parseInt(match[1], 10) : 200;
// 	                var margin = t.margin || 0; // set margin
// 	                var fill = t.fill || '#ffffff'; // set fill color
// 	                // it needs a namespace
// 	                if (!svg.match(/xmlns=\"/mi)) {
// 	                    svg = svg.replace('<svg ', '<svg xmlns="http://www.w3.org/2000/svg" ');
// 	                }
// 	                // create a canvas element to pass through
// 	                var canvas = document.createElement("canvas");
// 	                canvas.width = width + margin * 2;
// 	                canvas.height = height + margin * 2;
// 	                var ctx = canvas.getContext("2d");
// 	                // make a blob from the svg
// 	                var svg = new Blob([svg], {
// 	                    type: "image/svg+xml;charset=utf-8"
// 	                });
// 	                // create a dom object for that image
// 	                var url = domUrl.createObjectURL(svg);
// 	                // create a new image to hold it the converted type
// 	                var img = new Image;
// 	                // when the image is loaded we can get it as base64 url
// 	                img.onload = function () {
// 	                    // draw it to the canvas
// 	                    ctx.drawImage(this, margin, margin);
// 	                    // if it needs some styling, we need a new canvas
// 	                    if (fill) {
// 	                        var styled = document.createElement("canvas");
// 	                        styled.width = canvas.width;
// 	                        styled.height = canvas.height;
// 	                        var styledCtx = styled.getContext("2d");
// 	                        styledCtx.save();
// 	                        styledCtx.fillStyle = fill;
// 	                        styledCtx.fillRect(0, 0, canvas.width, canvas.height);
// 	                        styledCtx.strokeRect(0, 0, canvas.width, canvas.height);
// 	                        styledCtx.restore();
// 	                        styledCtx.drawImage(canvas, 0, 0);
// 	                        canvas = styled;
// 	                    }
// 	                    // we don't need the original any more
// 	                    domUrl.revokeObjectURL(url);
// 	                    // now we can resolve the promise, passing the base64 url
// 	                    //resolve(canvas.toDataURL());
// 	                    var fileName = Math.random(36).toString().substring(7) + '.png';
// 	                    var downloadLink = document.createElement('a');
// 	                    downloadLink.download = fileName;
// 	                    downloadLink.innerHTML = 'Get BPMN PNG';
// 	                    downloadLink.href = canvas.toDataURL();
// 	                    downloadLink.onclick = function (event) {
// 	                        document.body.removeChild(event.target);
// 	                    };
// 	                    downloadLink.style.visibility = 'hidden';
// 	                    document.body.appendChild(downloadLink);
// 	                    downloadLink.click();
// 	                };
// 	                // load the image
// 	                img.src = url;
// 	            } catch (err) {
// 	                reject('failed to convert svg to png ' + err);
// 	            }
// 	        });        
// 	      } catch (err) {
// 	        console.log('could not save BPMN 2.0 diagram', err);
// 	      }
// 	    }         
	    /**
	    * Open diagram in our modeler instance.
	    *
	    * @param {String} bpmnXML diagram to display
	    */
//	     async function openDiagram(bpmnXML) {
//	       // import diagram
//	       try {
//	         await bpmnModeler.importXML(bpmnXML);
//	         // access modeler components
//	         var canvas = bpmnModeler.get('canvas');
//	         var overlays = bpmnModeler.get('overlays');
//	         // zoom to fit full viewport
//	         canvas.zoom('fit-viewport');
//	         // attach an overlay to a node
//	         overlays.add('SCAN_OK', 'note', {
//	           position: {
//	             bottom: 0,
//	             right: 0
//	           },
//	           html: '<div class="diagram-note">Mixed up the labels?</div>'
//	         });
//	         // add marker
//	         canvas.addMarker('SCAN_OK', 'needs-discussion');
//	       } catch (err) {
//	         console.error('could not import BPMN 2.0 diagram', err);
//	       }
//	     }
//	     // load external diagram file via AJAX and open it
//	     $.get(diagramUrl, openDiagram, 'text');
//	     // wire save button
//	     $('#downloadXML').click(downloadXML);
//	     $('#downloadSVG').click(downloadSVG);
//	     $('#downloadPNG').click(downloadPNG);	

  </script>
</body>

<script>
	///////// multilanguage//////
// 	function googleTranslateElementInit() {
// 	  		new google.translate.TranslateElement({pageLanguage: ''}, 'google_translate_element');
// 	}
	
	    $(document).ready(function () {

        $('#graphObjectDropdown').multiselect({
        	nonSelectedText: select_an_object,
        	numberDisplayed: 0,
        	nSelectedText: selected,
			disableIfEmpty: true,
            onChange: function (option, checked, select) {

                var selectedOptions = $('#graphObjectDropdown option:selected');
                if (selectedOptions.length >= 5) {
                    // Disable all other checkboxes.
                    var nonSelectedOptions = $('#graphObjectDropdown option').filter(function() {
                        return !$(this).is(':Selected');
                    });
 
                    nonSelectedOptions.each(function() {
                        var input = $('input[value="' + $(this).val() + '"]');
                        input.prop('disabled', true);
                        input.parent('li').addClass('disabled');
                    });
                }
                else {
                    // Enable all checkboxes.
                    $('#graphObjectDropdown option').each(function() {
                        var input = $('input[value="' + $(this).val() + '"]');
                        input.prop('disabled', false);
                        input.parent('li').addClass('disabled');
                    });
                }
                
                objectDropDownOnchange(checked, option.val())
            }
        });
        
//         $('#graphElementAttributeDropdown').multiselect({
//         	nonSelectedText: 'Select an Attribute',
//         	numberDisplayed: 0,
// 			disableIfEmpty: true,
//             onChange: function (option, checked, select) {
//                 attributeDropDownOnchange(checked, option.val())
//             }
//         });

    
    });
</script>
<script>



function changeTheme(){
	
// 	document.addEventListener("keydown", function (event) {
// 		if (event.ctrlKey) {
// 		event.preventDefault();
// 		}
// 	});
	//// session time out alert
	    inactivityTime();
	    resetTimer();
	    document.body.onclick = resetServerSessionTimeOut;
	    
	
// 	let themeURL = '';
// 	var themeLink = document.getElementById("switcher-id");
// 	$.ajax({
// 	    url: "getThemeName", // url: "/findTables?dbName="+db_name,
// 	  	method: 'get',
// 	  	async: true,
// 	    data: {},
// 	    success: function (data) {
// // 		  	console.log(data)
// 		  	if(data=='dark'){
// 				themeURL = '<c:url value="/resources/css/explorer/explorer-dark.css"/>';
// 			}
// 			else if(data=='light'){
// 				themeURL ='<c:url value="/resources/css/explorer/explorer-light.css"/>';
// 			}
// 			else if(data=='default'){
// 				themeURL ='<c:url value="/resources/css/explorer/explorer-default.css"/>';
// 			}
// 		},
//         async: false
// 	  });
// 	themeLink.href = themeURL;
}

	//Prevent closing from click inside dropdown
	$(document).on('click', '.dropdown-menu', function (e) {
	  e.stopPropagation();
	});
	
	$(document).on('click', '.dropdown-menu-right', function (e) {
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
			  if(globalLanguage == "En"){
		 	  contextElement.style.left = event.pageX + "px";
			  }else{
				  contextElement.style.left = "calc("+event.pageX+"px - 120px)";
			  }
		 	  console.log("event.pageX:",event.pageX)
		 	  console.log("globalLanguage:",globalLanguage)
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
			  var content_ = '';
// 			  content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+type+'\',\''+element+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeObj(\''+element_content+'\',\''+type_content+'\', \''+ul_id+'\', \''+imageSource+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
			  
				if(globalLanguage == "En"){
		 	  contextElement.style.left = event.pageX + "px";
				}else{
				   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
				}
			  
		 	  
			  contextElement.classList.add("active");
			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			});
	}
	function removeObj(table,name, ulID){
		console.log(table,name, ulID)
		var tableName = table.split(' ').join('_');
		var elementIcon = table.replaceAll("\\s+", "-").replaceAll("_", "-").toLowerCase() + ".svg";
// 		$("#"+name.replaceAll(" ", "---").replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_')+"").remove();
		$("#"+name.replaceAll(" ", "---").replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+"").remove();
		var change_name = name.replaceAll("_"," ");
		//console.log("change_name", change_name)
 		$.ajax({
		      url: "delRowData", // url: "/findAttributes?dbName="+db_name,
		      data:{'tableName':tableName,'name':name},
		      success:function(data) {
		    	  $("#"+ulID).append('<li id=\''+name.replaceAll(" ", "---").replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj(\''+tableName+'\',\''+name+'\')"><span draggable="false"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+name+'</span></li>'); //onclick="showData('Application_Component','application_system')"
				  //$("#recycle_bin_list_for_object_elements").append('<li id=\''+name.replaceAll(" ", "_")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj(\''+tableName+'\',\''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+name+'</li>'); //onclick="showData('Application_Component','application_system')"
		    	  historyTabItems.forEach(function(element) {
		    	  	if(name.replaceAll(" ", "---").replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+"_"+table == element){
		    	  		var index_to_delete = historyTabItems.indexOf(element);
		    	  		historyTabItems.splice(index_to_delete, 1);
		    	  		console.log("Matched")
		    		} 
		    	  	else{
		    			console.log("Not matched")	  
			    	    if(allExistElementInHistoryTab.includes(name.replaceAll(" ","---")) == true){
			    	    	allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== name.replaceAll(" ","---"));
			    	    	numItemCounter();
			    	    }		    			
		    		}
		    	  });
		    	  $( "."+name.replaceAll(" ", "---").replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+"_"+table).remove();
		    	  $( "."+name.replaceAll(" ", "---").replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')).remove();
				  // refreshTreeForMyPage()
// 		    	  numItemCounter();
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
		    	  $("#"+ul_id).append('<li id=\''+element_name.replaceAll(" ", "---")+'removed\' style="cursor:pointer" oncontextmenu="on_context_menu_restore_obj_relationship(\''+table_name+'\',\''+element_name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><span draggable="false"><img style="width:15px; height:15px" draggable="false" src="resources/images/nodes.png">&nbsp;'+element_name+'</span></li>'); //onclick="showData('Application_Component','application_system')"
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
		// 		contextElement.style.left = event.pageX + "px";
		
		if(globalLanguage == "En"){
		contextElement.style.left = event.pageX + "px";
		}else{
		   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
		}
		
		contextElement.classList.add("active");
		window.addEventListener("click",function(){
		  document.getElementById("context-menu").classList.remove("active");
		}); 
	}
	function restoreObj(tableName, name, elementIcon, ul_id){
		console.log(tableName, name, ul_id);
		Image_name = (tableName.replaceAll("_", "-")+".svg").toLowerCase();
		//console.log("ImageName", Image_name);
		$("#"+name.replaceAll(" ", "---").replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+"removed").remove();
// 		var split_name = name.replaceAll("_", " ");
// 		var change_name = name.replaceAll("_"," ");
		//tree += '<li id="'+name+'" class="'+ul_id+'" style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove(\''+tableName+'\',\''+name+'\', \''+ul_id+'\')"><span title="'+name+'" draggable="false"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/application-component.svg">&nbsp;'+name+'</span></li>';
 		$.ajax({
		      url: "restoreObj",
		      data:{'tableName':tableName,'name':name, 'ul_id':ul_id},
		      success:function(data) {
		    	  //$("#"+ul_id+"_"+tableName+"").append('<li id="'+name.replaceAll(" ", "_")+'" class="'+ul_id+'" style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove(\''+tableName+'\',\''+name+'\', \''+ul_id+'\')"><span title="'+name+'" draggable="true"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/"'+elementIcon+'".svg">&nbsp;'+name+'</span></li>');
		    	  $("#"+tableName+"").append('<li id="'+name.replaceAll(" ", "---").replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.:*?<>{}]/g, '_')+'" class="'+ul_id+'" style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove(\''+tableName+'\',\''+name+'\', \'deletedElements\')"><span title="'+name+'" draggable="true"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+Image_name+'">&nbsp;'+name+'</span></li>');
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
		    	  
		    	  $("."+tableName+"").append('<li id="'+name.replaceAll(" ", "---")+'" class="'+ul_id+' " style="cursor:pointer" onclick="showData(\''+tableName+'\',\''+name+'\')" oncontextmenu="on_context_menu_remove_relationship(\''+tableName+'\',\''+name+'\', \'deletedRelationships\')"><span title="'+name+'" draggable="true"><img style="width:15px; height:15px" draggable="false" src="resources/images/nodes.png">&nbsp;'+name+'</span></li>');
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
// 		  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+folderName+'\',\''+folderID+'\',\'Folder\', \''+company_name+'\', \''+id+'\', \''+parentID+'\', \''+ulID+'\', \''+company_name+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
		  if(folderName=='0'){
			  	if(userRoles['graphCreate']==true || userRoles['catalogCreate']==true || userRoles['matrixCreate']==true)
					content_+= '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFolder(\''+company_name+'\', \''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-folder" aria-hidden="true"></i><spring:message code="new_folder"/></div></a>';
				if(userRoles['graphCreate']==true)
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_model"/></div></a>';
				if(userRoles['catalogCreate']==true)
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="catalogname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_catalog"/></div></a>';
				if(userRoles['matrixCreate']==true)
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="matrixname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="New_Matrix"/></div></a>';
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewNavigationFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_navigation"/></div></a>';
					content_ += '<a id="ganttchart01" style="text-decoration:none; cursor:cell;" onclick="ganttChart(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_roadmap"/></div></a>';
				
// 			  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>New Model</div></a>';
		  }else{
				if(userRoles['graphCreate']==true)
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_model"/></div></a>';
				if(userRoles['catalogCreate']==true)					
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="catalogname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_catalog"/></div></a>';
				if(userRoles['matrixCreate']==true)				
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="matrixname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="New_Matrix"/></div></a>';
					content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewNavigationFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_navigation"/></div></a>';
				if(userRoles['graphDelete']==true && userRoles['catalogDelete']==true && userRoles['matrixDelete']==true)
					content_ += '<a id="ganttchart01" style="text-decoration:none; cursor:cell;" onclick="ganttChart(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="new_roadmap"/></div></a>';
					content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="deleteModelFolder(\''+folderID+'\',\''+id+'\', \''+folderName+'\',\''+ulID+'\',\'folder\', \''+company_name+'\', \''+parentID+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
					
		  }
		  contextElement.innerHTML = content_;
		  contextElement.style.top = event.pageY + "px";
		// 	 	  contextElement.style.left = event.pageX + "px";
	 	  
	 	 if(globalLanguage == "En"){
	 	  contextElement.style.left = event.pageX + "px";
	 	}else{
	 	   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
	 	}
	 	  
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

	function createNewModelFile(company_name, folderID, id, graphXML, fromWhereCallThisFunction){

		if(graphXML != undefined){
			newGraphXML = graphXML
		}else{
			newGraphXML = '<mxGraphModel> <root><mxCell id="0" /><mxCell id="1" parent="0" /></root></mxGraphModel>';
		}
		
		console.log("fromWhereCallThisFunction: ",fromWhereCallThisFunction)
		if(fromWhereCallThisFunction != "SaveAsFromDialog"){
			console.log("in current if")
   		$( function() {
		    var dialog, form,
 		    dialog = $( "#dialog-form-file" ).dialog({
		      autoOpen: false,
		      height: 400,
		      width: 350,
		      modal: true,
		      buttons: {
		        "<spring:message code='Create'/>": function addUser(){
		        	$("#paleteDiv").show();
		        	$('#chart').hide();
		        	var modelName = $("#file_name").val();
			        	// modelName = modelName.replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
						// modelName = modelName.replace(/[^\w]/gi, '_');
						// modelName = replaceSpecialCharacters(modelName);
		        	
					modelName = modelName.replace(/[^\w\u0600-\u06FF\s]/gi,'_')
		        	
		        	if(modelName){
		        		$.ajax({
		      		      url: "validateModelName", // url: "/findTables?dbName="+db_name,
		      		      //type: "GET",
		      		      data: {'modelName': modelName},
		      		      async : false,
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
			});
   		
		}else{
			console.log("in current else")
			var newDiagramName = $("#newDiagramName").val();
			console.log("newDiagramName1:",newDiagramName)
			newDiagramName = newDiagramName.replace(/[^\w\u0600-\u06FF\s]/gi,'_');
			
			console.log("newDiagramName2:",newDiagramName)
			
			
			if (newDiagramName) {
			    $.ajax({
			        url: "validateModelName",
			        data: { 'modelName': newDiagramName },
			        success: function (data) {
			            if (data == '') {

			                $.ajax({
			                    url: "createNewModelFile",
			                    data: { 'id': id, 'company_name': company_name, 'graphname': newDiagramName, 'graph_json': newGraphXML },
			                    success: function (id) {

			                        $(".alert_message").html('<div class="alert alert-success" role="alert"><spring:message code="create_model_message"/></div>');
			                        alert_message_function();
			                        refreshTree();
			                        getGraphNames();
			                        $('#' + folderID).append('<li id="' + newDiagramName + id + '" class="model_list" onclick="getDBlist(\'' + newDiagramName + '\',\'' + id + '\')\" oncontextmenu="on_context_menu_remove_graph(\'' + id + '\',\'' + newDiagramName + data + '\',\'' + newDiagramName + '\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;' + newDiagramName + '</li>');
			                        getDBlist(newDiagramName, id);
			                    }
			                });
			            }
			            else {
			                $(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="model_exist_message"/></div>');
			                alert_message_function();
			            }
			        }
			    });
			}
		}
	}
	
	function saveGraphAs() {
	    $.ajax({
	        url: "getGraphCompanyNameModelNameForSaveAs",
	        data: {
	            'graphID': openedGraphID,
	            'isFiltered': isDiagramFiltered,
	        },
	        success: function (res) {

	            var companyName = res[0];
	            var diagramName = res[1];
	            var id = res[2];
	            var folderId = res[3];

	            var encoder = new mxCodec();
	            var parent = graph1.getDefaultParent();
	            var node = encoder.encode(graph1.getModel());

	            var xml_str = mxUtils.getXml(node);

	            if (isDiagramFiltered) {
	                createNewModelFileForFilteredDiagram(companyName, folderId, id, xml_str, filterItemsForStickyHeaderBar)
	            } else {

	                if (res[0] == "please save the navigation first") {
	                    $(".alert_message").html('<div class="alert alert-danger" role="alert">File should be saved before save as</div>');
	                    alert_message_function();
	                    return
	                } else {
	                    createNewModelFile(companyName, folderId, id, xml_str);
	                }
	            }
	        },
	        error: function (data) {
	            $(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
	            alert_message_function();
	        }
	    });
	}

	function deleteModelFolder(folderID,id, folderName,ulID,type, company_name,parentID){
		$("#"+folderName+"123").remove();
		///$("."+folderName+"file").remove();
		$("#recycle_bin_list").append('<li id="'+folderID+'2" class="model_list '+folderName+'" style="padding-left:38px" oncontextmenu="on_context_menu_restore(\''+id+'\', \''+folderID+'\', \''+folderName+'\',\''+ulID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\');"><i class="fa fa-folder" aria-hidden="true"></i>&nbsp;'+folderName.replaceAll('---', ' ')+'</li>')
 		//if(modelName!=null){
	 		$.ajax({
			      url: "deleteModelFolder", // url: "/findAttributes?dbName="+db_name,
			      data:{'id':id},//,'folderName':folderName, 'folderID':folderID
			      success:function(data) {
			    	  console.log(data)
			    	  $("."+folderName).click();
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
			
			  var content_ = '';
// 			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+roadmapName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
			  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
// 			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+roadmapName+'\',\'SVG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_SVG"/></div></a>';
// 			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+roadmapName+'\',\'PNG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_PNG"/></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="renameRoadmap(\''+roadmapid+'\', \''+liID+'\', \''+folderName_ID+'\', \''+roadmapName+'\', \''+companyName+'\', \''+parentID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-edit" aria-hidden="true"></i> <spring:message code="rename"/></div></a>';			  
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeRoadmap(\''+roadmapid+'\',\''+liID+'\', \''+folderName_ID+'\',\''+roadmapName+'\', \''+companyName+'\',\''+parentID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  
			  
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
				if(globalLanguage == "En"){
		 	  contextElement.style.left = event.pageX + "px";
				}else{
				   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
				}
		 	  
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			  			
			}); 
	}
	//on_context_menu_remove_graph
	function on_context_menu_remove_graph(graphID,liID, folderName,modelName, parentFolder){
			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  var content_ = '';
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
// 			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
			  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'SVG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_SVG"/></div></a>';
			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'PNG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_PNG"/></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="renameDiagram(\''+graphID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-edit" aria-hidden="true"></i><spring:message code="rename"/></div></a>';	
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeGraph(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
				// 		 	  contextElement.style.left = event.pageX + "px";
				if(globalLanguage == "En"){
		 	  contextElement.style.left = event.pageX + "px";
				}else{
				   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
				}
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			}); 
	}

			  
	
	function removeRoadmap(roadmapid,liID, folderName_ID,roadmapName, parentFolder,companyName, parentID){
// 		closeRoadmapDiv(roadmapid, roadmapName);
		let fval = $('#element_title').text(); 
		console.log("fval ",fval)
		let spltCls = roadmapName.split(' ');
		spltCls = spltCls[0]
		$("."+spltCls+"").remove();
		if (fval == roadmapName){
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
 		    		  	
		    			  if(data[i].roadmapName == roadmapName){
		    				  $("#recycle_bin_list").append('<li id="'+liID.replaceAll(" ","---")+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restoreRoadmap(\''+data[i].id+'\', \''+data[i].roadmapName+'\',\''+folderName_ID+'\', \''+liID+'\',\'folder\',\''+companyName+'\',\''+parentID+'\',\''+parentFolder+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;'+data[i].roadmapName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
		    			  }
// 		    			  else{
// 		    				  $("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file" style="padding-left: 40px"  oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].roadmapName+'\',\''+folderName_ID+'\', \''+liID+'\',\'"folder"\',\''+companyName+'\',\''+parentID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;'+data[i].roadmapName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
// 		    			  }
		    	  }
//  		    	 else{
//    				  $("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].roadmapName+'\',\''+folderName_ID+'\', \''+liID+'\',\'"folder"\',\''+companyName+'\',\''+parentID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/road.svg\">&nbsp;'+data[i].roadmapName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
//    			  }
		    	  $.each( data, function( key, value ) {
				  });
		    	  delete dictionaryXML[roadmapName]
				  if(allExistElementInHistoryTab.includes(roadmapName.replaceAll(" ","---")) == true){
					allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== roadmapName.replaceAll(" ","---"));
					numItemCounter();
				  }		    	  
		    	  $("#"+roadmapid+"").remove();
		    	  
// 		    	  $('body #'+roadmapid+'').remove();
// 		    	  numItemCounter();
		    	  console.log("currentWindowID ",currentWindowID)
		    		if(currentWindowID==roadmapName){
		    			var diagram = mxUtils.parseXml(newGraphXML);
		    		    var codec = new mxCodec(diagram);
		    		    codec.decode(diagram.documentElement, graph1.getModel());
		    		    $("#element_title").hide()  
		    		}
		    	  $("#"+liID.replaceAll(" ","---")+"").remove();
// 		    	  getGraphNames(); 
// 			  		refreshTree(); 
		      }	  	
		}); 
  		
	}
	function removeGraph(graphID,liID, folderName,modelName1, parentFolder){
		console.log("remove graph1: ",graphID,liID, folderName,modelName1, parentFolder)
  		$.ajax({
		      url: "delGraphRowData", // url: "/findAttributes?dbName="+db_name,
		      data:{'graphID':graphID},
		      success:function(data) {
 		    	  for(var i = 0; i < data.length ; i++){
		    				data[i].modelName.replaceAll(' ', '---');
		    			  if(data[i].modelName.replaceAll(' ', '---') == modelName1){
			    			   $("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
		    			  }  
		    			  else if(data[i].modelName == modelName1){
				    			$("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
		    			  }
		    	  }
		    	  $.each( data, function( key, value ) {
				  });
		    	  delete dictionaryXML[modelName1.replaceAll("---","_")]
		    	  $(".gh"+graphID+"").remove();
		    	    if(allExistElementInHistoryTab.includes(modelName1.replaceAll(" ","---")) == true){
		    	    	allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== modelName1.replaceAll(" ","---"));
		    	  numItemCounter();
		    	    }		    	  
		    		if(currentWindowID==modelName1.replaceAll("---","_")+"11"){
		    			var diagram = mxUtils.parseXml(newGraphXML);
		    		    var codec = new mxCodec(diagram);
		    		    codec.decode(diagram.documentElement, graph1.getModel());
		    		    $("#element_title").hide() 
		    		    $("#palete").css("display", "none");
		    			$("#fit-screen").css("display", "none");
		    			$("#zoom-in").css("display", "none");
		    			$("#zoom-out").css("display", "none");
		    			$("#save_button").css("display", "none");
		    			$("#save_graph_as_button").css("display", "none");
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
		  var content_ = '';
		  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
// 		  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
		  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
		  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="renameCatalogMatrix(\''+graphID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\',\''+catalog_or_matrix+'\')"><div class="item"><i class="fa fa-edit" aria-hidden="true"></i><spring:message code="rename"/></div></a>';		  
		  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeCatalogMatrix(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\',\''+catalog_or_matrix+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i><spring:message code="remove"/></div></a>';
		  contextElement.innerHTML = content_;
		  contextElement.style.top = event.pageY + "px";
			if(globalLanguage == "En"){
	 	  contextElement.style.left = event.pageX + "px";
			}else{
			   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
			}
	 	  
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
		    	  	$("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px;" oncontextmenu="recycle_bin_context_menu_catalog_matrix(\''+modelID+'\', \''+liID+'\',\''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;'+modelName+'</li>');
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
				    	    if(allExistElementInHistoryTab.includes(modelName.replaceAll(" ","---")) == true){
				    	    	allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== modelName.replaceAll(" ","---"));
				    	    	numItemCounter();
				    	    }				    			
			    		}
			    	  });
					  $("#element_title").hide();
					  $(".catalog_save_button").hide();
			    	  $( "."+modelName.replaceAll(" ", "---")+"_"+table).remove();
			    	  $( "."+modelName.replaceAll(" ", "---")).remove();
			    	  
			    	  //////////////////////// Empty the AG-GRID Table start ////////////////////////////////////
					  var loadingGrid = false
					  emptyTheGridTable(loadingGrid)
					  //////////////////////// Empty the AG-GRID Table end  ////////////////////////////////////
					  
		    	  }else{
		    		$("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px;" oncontextmenu="recycle_bin_context_menu_catalog_matrix(\''+modelID+'\', \''+liID+'\',\''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;'+modelName.replaceAll("---"," ")+'</li>');
					  historyTabItems.forEach(function(element) {
			    		  console.log("element",element)
			    	  	if(modelName.replaceAll(" ", "---")+"_"+table == element){
			    	  		var index_to_delete = historyTabItems.indexOf(element);
			    	  		historyTabItems.splice(index_to_delete, 1);
			    	  		console.log("Matched")
			    		} 
			    	  	else{
			    			console.log("Not matched")
				    	    if(allExistElementInHistoryTab.includes(modelName.replaceAll(" ","---")) == true){
				    	    	allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== modelName.replaceAll(" ","---"));
				    	    	numItemCounter();
				    	    }			    			
			    		}
			    	  });
					  $("#element_title").hide();
					  $(".matrix_save_button").hide();
			    	  $( "."+modelName.replaceAll(" ", "---")+"_"+table).remove();
			    	  $( "."+modelName.replaceAll(" ", "---")).remove();		    	  
		    	  }
// 		    	  numItemCounter();
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
	  
		if(globalLanguage == "En"){
	  contextElement.style.left = event.pageX + "px";
		}else{
		   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
		}
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
				$("#"+folderName+"").append('<li  id="'+liID+'" class=\"model_list\ '+parentFolder+'" onclick=\"drawCatalogFromXML(\''+modelName+'\',\''+modelDetails['id']+'\',\''+modelDetails['elementName']+'\', \''+parentFolder+'\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\''+modelID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/catalog.svg\">&nbsp;'+modelName+'</li>');
	    	  }else{
	    		  $("#"+folderName+"").append('<li  id="'+liID+'" class=\"model_list\ '+parentFolder+'" onclick=\"drawMatrixFromXML(\''+modelName+'\',\''+modelDetails['matrix_element1']+'\',\''+modelDetails['matrix_element2']+'\',\''+modelDetails['matrix_relation']+'\',\''+modelDetails['parentID']+'\', \''+parentFolder+'\')\" oncontextmenu=\"on_context_menu_remove_catalog_matrix(\''+modelID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\', \''+catalog_or_matrix+'\')\">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/matrix.svg\">&nbsp;'+modelName.replaceAll("---", " ")+'</li>');
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
						    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+name.replaceAll("---"," ")+' is deleted!</div>');
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
	
	  event.preventDefault();
	  var contextElement = document.getElementById("context-menu");
	  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
	  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restoreRoadmap(\''+roadmapID+'\',  \''+roadmapName+'\', \''+folderNameID+'\', \''+liID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\',\''+folderID+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i><spring:message code="restore"/></div></a>';
	  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteRoadmapPermanently(\''+roadmapID+'\',  \''+roadmapName+'\', \''+folderNameID+'\', \''+liID+'\',\''+type+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true" ></i><spring:message code="delete"/></div></a>';
	  contextElement.innerHTML = content_;
	  contextElement.style.top = event.pageY + "px";
		if(globalLanguage == "En"){
	  contextElement.style.left = event.pageX + "px";
		}else{
		   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
		}
	  
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
				if(globalLanguage == "En"){
		 	  contextElement.style.left = event.pageX + "px";
				}else{
				   contextElement.style.left = "calc("+event.pageX+"px - 120px)";
				}
		 	  
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
// 						tree = '<li id="delete_roadmap91" class="model_list '+folderName+'" onclick="getRoadmap(\''+name+'\',\''+roadmapID+'\',\''+company_name+'\',\''+parentID+'\')" '
						tree = '<li id='+liID.replaceAll(" ","---")+' class="model_list '+parentID.replaceAll(" ","---")+'" onclick="getRoadmap(\''+name+'\',\''+roadmapID+'\',\''+folderID+'\',\''+company_name+'\',\''+parentID.replaceAll(" ","---")+'\')" '
						tree += 'oncontextmenu="on_context_menu_remove_roadmap(\''+roadmapID+'\',\''+liID+'\', \''+folderName+'\',\''+name+'\',\''+folderID+'\',\''+company_name+'\',\''+parentID+'\',\''+folderID+'\')" '
						tree += '>&nbsp;  <img style= "width:20px; height:20px" draggable="false" src="resources/images/road.svg">&nbsp;'+name+'</li>'
						console.log("tree list: ",tree)
						
					  let appendId = "#"+folderName+"";
			    	  $(appendId).append(tree);
			    	  
					  $("#"+liID.replaceAll(" ","---")+"2").remove();

			      }
			});	
		}
		else{
			let parentFolderName = folderName.substring(0, folderName.length - (roadmapID.length));
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
				    	  $("#"+folderName+"").append('<li id="'+liID+'" class="model_list '+parentFolderName+'" onclick="getDBlist(\''+name+'\',\''+roadmapID+'\',\''+parentFolderName+'\')" oncontextmenu="on_context_menu_remove_graph(\''+roadmapID+'\', \''+liID+'\',\''+folderName+'\',\''+name+'\');">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+name+'</li>');
				      }	  	
				});
		  		console.log("refresh tree")
			}
		}
	}
	// restore graph1 and model
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
			    	  console.log("folderName:",folderName)
			    	  // $("."+folderName).hide();
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
			  $(".alert_message").html('<div class="alert alert-danger" role="alert">It\'s Parent Folder '+parentFolderName+' is deleted!</div>');
			  alert_message_function();
			}
			else{
		  		$.ajax({
				      url: "restoreData",
				      data:{'graphID':graphID},
				      success:function(response) {
				    	  
						
				    	if( (response.length == 1) && (response[0].isFiltered == "true") ){
							var filteredDetails = response[0].filteredDetails.replaceAll("\"", "%%")							
					    	  $("#"+liID+"2").remove();
					    	  $("#"+liID.replaceAll(" ", "---")+"2").remove();
					    	  $("#"+folderName+"").append('<li id="'+liID+'" class="model_list '+folderName+' '+type+'" onclick="drawFilteredDiagram(\''+graphID+'\',\''+folderName+'\',\''+name+'\', \''+filteredDetails+'\')" oncontextmenu="on_context_menu_remove_filtered_graph(\''+graphID+'\', \''+liID+'\',\''+folderName+'\',\''+name.replaceAll(" ","---")+'\',\''+type+'\');">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImageFiltered.svg\">&nbsp;'+name+'</li>');							
						}else{
					    	  $("#"+liID+"2").remove();
					    	  $("#"+liID.replaceAll(" ", "---")+"2").remove();
					    	  $("#"+folderName+"").append('<li id="'+liID+'" class="model_list '+folderName+' '+type+'" onclick="getDBlist(\''+name+'\',\''+graphID+'\',\''+folderName+'\', \''+type+'\')" oncontextmenu="on_context_menu_remove_graph(\''+graphID+'\', \''+liID+'\',\''+folderName+'\',\''+name.replaceAll(" ","---")+'\',\''+type+'\');">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+name+'</li>');
						}
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
									    	  $(".alert_message").html('<div class="alert alert-success" role="alert">'+folderName.replaceAll("---"," ")+' has been deleted!</div>');
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
// 		numItems = $('.column').length;
		if($('.column').length>=1){ 
			
		var x = document.getElementById("historyList");
		if (x.style.display === "none") {
			x.style.display = "block";
		} else {
			x.style.display = "none";
		}
	}
		else{
			$(".alert_message").html('<div class="alert alert-info" role="alert">No History Found</div>');
			alert_message_function();
			close_all_history_div();
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
	$(".nav_button").hide();
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
		// getCompleteTreeForMyPage();
  	  getGraphNames();   
  	  getattachmentNames();
  	  getDeletedObjects();
  	  getBusinessProcessNames();
		// getDeletedObjectsForMyPage()
		getElementsForObjectPalleteForMyPage()
		getUserName()
    }
    //$(window).on("load", function(){
    	/* Language starts here */
/* 		$.ajax({ url: "?lang=en",
		    success: function(){
			    if(!window.location.hash) {
			        window.location = window.location + '#ltr';
			        window.location.reload();
			    }
		    }
		}); */
		/* Language ends here */
</script>
<!-- Hussain Work Starts Here -->
<script>
	var restoreDivIds = [];
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
	function resetFileTag(fileTagID){
		$('#'+fileTagID).val(''); 
	}
	function uploadFilesFromObjectForm(row_id,elementName,fileTagID,tbodyID){
		var fileVal = '';
		var data = new FormData();
		jQuery.each(jQuery('#'+fileTagID)[0].files, function(i, file) {
			fileVal+=elementName+row_id+file['name']+";";
		});
		fileVal = fileVal.slice(0, -1)
		
		var format = /[–`!@#$%^&*+\=\[\]{}':"\\|,<>\/?~]/;
		//console.log('fileVal',fileVal)
		// console.log( format.test(fileVal) );
		if(format.test(fileVal)){
			$(".alert_message").html('<div class="alert alert-danger" role="alert">File Names Contains Invalid Character. Please Rename Your Files.</div>');
			alert_message_function();
		}else{
			var data = new FormData();
			jQuery.each(jQuery('#'+fileTagID)[0].files, function(i, file) {
			    data.append('file-'+i, file);
			    
			});
			var fileName = $('#'+fileTagID+'')[0].files[0].name
			data.append('fileNameFrontEnd',  encodeURI(fileName));
			
			
			data.append('objectID', row_id);
			data.append('elementName', elementName);
			data.append('fileVal', encodeURI(fileVal));
			data.append('tbodyID', tbodyID);
			$.ajax({
				url:'addMultipleFileDataFromForm',
				data: data,
			    cache: false,
			    contentType: false,
			    processData: false,
				type:'POST',
				success: function(res){
					$("#"+tbodyID).empty();
	            	$("#"+tbodyID).append(res);
				}			
			});
		}
	}
	function getMultiListValue(multiListIds){
		multiListIds.map((item, index)=>{
			var multipleCancelButton = new Choices("#"+item+"", {
				removeItemButton: true,
				maxItemCount:100,
				searchResultLimit:5,
				renderChoiceLimit:5
			});
		})
	}
	function removeObjectUploadedFile(fileName,elementName,row_id,tbodyID){
		$.ajax({
            url: "removeObjectUploadedFile",
            type: 'GET',
            data: {fileName,elementName,row_id,tbodyID},
            success: function(res) {
            	$("#"+tbodyID).empty();
            	$("#"+tbodyID).append(res);
            }
        });
	}
	 
	function downloadObjectUploadedFile(file,fileName){
		window.open('downloadObjectUploadedFile?attachedFile='+file+'&fileName='+fileName);
	}
	$("#save_button").hide();
</script>
<script>
var globalLanguage = ""
	getLangFormLocalStorage()

	function getLangFormLocalStorage(){
		
		var localStorageLanguage = localStorage.getItem("language");
		
		
		if(localStorageLanguage == null){
			localStorage.setItem("language", "En");
			globalLanguage = localStorage.getItem("language") 
		}else{
			globalLanguage = localStorage.getItem("language")
		}
		
		// document.getElementById('language').href = "?lang="+globalLanguage
		switchLanguageCssFile(globalLanguage)
		// $('#language').text(globalLanguage);
	}


	function toggleLanguageSelection(){
		// 		$(".loader").css("display", "block");
		// 		$('body').css("filter","blur(1px)");
		
		var text = $('#language').text();
		document.getElementById('language').href = "?lang="+globalLanguage
				
		if(text == "Ar"){
			text = "En"
		}else{
			text = "Ar"
		}
				
		globalLanguage = text
		
		$('#language').text(text);
		localStorage.setItem("language", text);
		
		switchLanguageCssFile(text)
	}

	function switchLanguageCssFile(lang){
		
		var arbicLanguageCssFile   = '<c:url value="/resources/css/explorer/explorerArabic.css"/>';
		var englishLanguageCssFile = '<c:url value="/resources/css/explorer/explorer-default.css"/>';
		
		var themeURL = '';
		lang == "En" ? themeURL = englishLanguageCssFile: themeURL = arbicLanguageCssFile;
		
		var themeLink = document.getElementById("switcher-id");
		themeLink.href = themeURL;
	}
	
	getTranslatedData = [];
	getLanguage= localStorage.getItem("language")
	$.ajax({
	       url: getLanguage == "Ar" ? "getPropertiesDictionaryArabic" : "getPropertiesDictionary",
	       async: false, 
	       type: 'POST',
	       data: {},
	       dataType: 'json', // added data type
	       success: function(langDict) {
				customDictionary = langDict
				getTranslatedData.push(langDict);
	       }
	});

	
</script>

<script type="text/javascript">

function saveCurrentUrlToLocalStorage(){
	    localStorage.setItem("prevUrl", window.location.href);
}


/* Initialize the ag-grid Table start */
	const gridOptions = {
		defaultColDef: {
			editable: false,
			sortable: true,
			resizable: true,
			filter: true,
			minWidth: 200,
			flex: 1,
		},
		enableRtl: (globalLanguage == "En") ? false : true,
		columnDefs: [],
		rowData: [],
		pagination: true,
		suppressRowClickSelection: true,
		pivotPanelShow: "always",
		animateRows: true,
		components: {
			openObjectFormWhenClickOnObjectNameFromCatalog: openObjectFormWhenClickOnObjectNameFromCatalog
		},
		localeText:{
			page: Page,
			to: To,
			of: Of,
		    contains: Contains,
		    notContains: NotContains,
		    startsWith: StartsWith,
		    endsWith: EndsWith,
		    equals: Equals,
		    notEqual: NotEqual,
		    blank: Blank,
		    notBlank: NotBlank,
		    filterOoo: Filter+"..."
		}
  };

  // setup the grid after the page has finished loading
  document.addEventListener("DOMContentLoaded", () => {
    const gridDiv = document.querySelector("#catalogGrid");
    new agGrid.Grid(gridDiv, gridOptions);
  });

/* Initialize the ag-grid Table end */
</script>


</html>