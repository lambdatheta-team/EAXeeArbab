<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<!--     <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'> -->
<!--     <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script> -->
<!--     <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script> -->
    
<!-- userinfo css -->
<link href="<c:url value="/resources/css/userinfo.css"/>" rel="stylesheet">

<!-- TagsInput -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" integrity="sha512-xmGTNt20S0t62wHLmQec2DauG9T+owP9e6VU8GigI0anN7OXLip9i7IwEhelasml2osdxX71XcYm6BQunTQeQg==" crossorigin="anonymous" />    
    
<meta charset="utf-8">
    
<meta charset="ISO-8859-1">
<title>EAXEE -Ar</title>

<link rel="icon" href="<c:url value="resources/images/eazee-Logo12.png"/>" type="image/icon type" >

<!-- Information_modal css here -->
<link href="<c:url value="/resources/css/modal_rtl.css"/>" rel="stylesheet">

<!-- updateFormModal css here -->
<link href="<c:url value="/resources/css/updateFormModal_rtl.css"/>" rel="stylesheet">


<link href="<c:url value="/resources/css/index_rtl.css"/>" rel="stylesheet">
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
	
<script type="text/javascript" src="<c:url value="/resources/js/translateText.js" />"></script>
<!-- google translate -->
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

	<!-- Loads and initializes the library -->
	<script type="text/javascript" src="<c:url value="/resources/js/mxClient.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/xmlToJSON.js" />"></script>
<!-- 	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
	
	<!-- For Tabs -->
	
 <script defer>
  $( function() {
    $( "#tabs_1" ).tabs();
  } );
  

  
  

	<!-- Spring:messages starts -->
    var header_value= '<spring:message code="information" />';
    var attribute_111= '<spring:message code="This_is_a_test_script." />';
    var save_changes= '<spring:message code="save_changes" />';
    var no_data_found_modal= '<spring:message code="no_data_found_modal" />';
    var showing_0_out_0_entries= '<spring:message code="showing_0_out_0_entries" />';
    var create_matrix = '<spring:message code="create_matrix"/>';
    var lambdatheta = '<spring:message code="lambdatheta" />';
	<!-- Spring:messages ends -->

</script>
  
  
<style>
.model_list:hover{
	background: #e9e9e9;
	cursor:pointer;
}

/* tr.odd {
    display: none;
} */

.caret:hover{

background-color: #0d7e8a;
color:#ffffff

}

.model_list:hover{

background-color: #0d7e8a !important;
color:#ffffff;
}

#recycle_bin:hover{

background-color: #0d7e8a;
cursor:pointer;
color:#ffffff

}

#objectrecycle:hover{

background-color: #0d7e8a;
cursor:pointer;
color:#ffffff

}

.nested active:hover{

background-color: #9ccaf7;

}
.ui-tabs .ui-tabs-nav li.ui-tabs-active {
    background: #0d7e8a !important;
}
#element_title {
    background: #0d7e8a;
    color: #ffffff;
}
#fit-screen,#save_button,#zoom-in,#zoom-out{

transition: transform .2s;

}
#fit-screen:hover{transform: scale(1.5);}
#save_button:hover{transform: scale(1.5);}
#zoom-in:hover{transform: scale(1.5);}
#zoom-out:hover{transform: scale(1.5);}

#EN{
    margin-top: 4px;
}
 #history_tab{
/*  	display:inline; */
    height:48px;
    width:56px; 
/*     position:fixed; */
 }
#home-btn a{
padding:10px;
padding-right:20px;
color:black;
}
::-webkit-scrollbar {
  width: 10px;
/* 	transform:rotateX(180deg); */
/* 	-webkit-transform:rotateX(180deg); */
}

/* Track */
::-webkit-scrollbar-track {
  box-shadow: inset 0 0 10px #0d7e8a; 
  border-radius: 10px;
}
 
/* Handle */
::-webkit-scrollbar-thumb {
background:#13a9ba;
  border-radius: 10px; 
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
	background:#13a9ba;
}
#colorInput{

/* background-image: url("resources/js/examples/editors/images/images1/color-picker.png");   */
margin-top: 5px;
 } 


* {
	font-family: 'SST Arabic Light', sans-serif;
	font-weight: bold;
}
html,
body {
/*   height: 100%; */
  /*font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;*/
  padding: 0 !important;
  margin: 0 !important;
  overflow: auto;
/*   background:blue; */
  width: 100%;
  height: 100%;
  overflow-x: hidden;
  font-size: 14px;
/*   width: 100%; */
}

.panel-right {
    min-height: 100%;
    max-height: 100%;
}

#left_pane{
	margin-right: 0px !important;
}

.account-item {
	position: relative !important;
}
.account-dropdown{
	min-width: 220px;
    position: absolute;
    top: 57px !important;
    right: -109px !important;
    background: #e3fdff;
    border: black;
    box-shadow: 5px 12px 16px 13px rgb(0 0 0 / 10%);
    transition: all 0.6s ease;
    transform-origin: left top;
    z-index: 3;
    
    
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    
    
}

.account-dropdown:after {
	content: '';
	display: block;
	width: 19px;
	height: 19px;
	border-bottom: 9px solid #fff;
	border-top: 9px solid transparent;
	border-left: 9px solid transparent;
	border-right: 9px solid transparent;
	position: absolute;
	top: -18px;
	right: 170px !important;
}

.userProfile {
    display: flex !important;
    justify-content: space-between;
    align-items: center;
    width: 140px;
    
}

.account-dropdown__item a i {
    margin-right: 0px !important;
}

.account-dropdown__footer a i {
	margin-right: 0px !important;
}

.account-item>.content {
	
	padding-left: 24px !important;
}


#loader_image, #loader_image_palete{
  display: block;
  margin-left: auto;
  margin-right: auto;
  margin-top:50%;
}

/* Prompt height */
.ui-dialog-content{
	height: 100% !important;
	margin-left: auto;
    margin-right: auto;
}
#objectrecycle:hover{

background-color: #0d7e8a;
cursor:pointer;
color:#ffffff

}
.panel-container {
  display: flex;
  flex-direction: row;
  border: 1px solid silver;
  overflow: hidden;
  
  /* avoid browser level touch actions */
  xtouch-action: none;
}

.panel-left {
  margin-right: -2px !important;
  direction:rtl;
  flex: 0 0 auto;
  /* only manually resize */
  padding: 10px;
  width:100%;
  min-height: 100%;
  max-height: 100%;
  min-width: 250px;
  white-space: nowrap;
  background: #838383;
  color: white;
}

.ui-icon-gripsmall-diagonal-se {
     background-position: 1000px 1000px;
}

.panel-right {
/*   flex: 0 0 auto; */
  /* only manually resize */
/*   padding: 10px; */
  width:100%;
  min-height: 100%;
  max-height: 100%;
  min-width: 250px;
  white-space: nowrap;
  background: #838383;
  color: white;
}


.column {
  float: left;
  width: 25%;
  /* padding: 10px; */
  /* height: 70px; */ /* Should be removed. Only for demonstration */
  box-sizing: border-box;
  border:0.1px solid #e9e9e9;
  border-width: thin;
  height: 100px;
  overflow: hidden;
  padding:5px !important;
  /* white-space : normal; */
  white-space: inherit; word-break: break-word;
  font-size:10px;
  font-weight: bolder;
  text-align: center;
  /* letter-spacing: 1px; */
/*   font-family: "Times New Roman", Times, serif; */
  font-style: italic;
  text-transform: capitalize;
  color: #3a3a3a;
  cursor:default;
}

.column a{
	text-decoration: none;
	color:black;
	width: 80ch;
}

.close_image{
	float: right;
}
/* Clear floats after the columns */
.table_row:after {
  content: "";
  display: table;
  clear: both;
}
.arrow {
  border: solid black;
  border-width: 0 3px 3px 0;
  display: inline-block;
  padding: 3px;
}

.left{
    transform: rotate(0deg);
    -webkit-transform: rotate(137deg);
}

.right {
  transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
}
.down {
  transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
}

/* ---------- FOR TAGS INPUT START */
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

@media only screen and (max-width: 1500px) {
  .filter{
  	width: 40% !important;
  }
}

@media only screen and (min-width: 1500px) {
  .filter{
  	width: 50% !important;
  }
}


#Other
{
   width:20px;
   width:20px;
}
#updateFormModal_form > div > form > label{
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  max-width: 250px;
}

/* foreignObject > div > div > div {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  max-width: 100px;
} */
/* Small devices (tablets or large size smart phone of size 768px and up) */ 
/* @media (min-width: @screen-sm-min) {  */
/* 	  .filter{ */
/* 	  	width: 40% !important; */
/* 	  } */
/*   }  */

/* /* Medium devices (desktops, laptops of size 992px and up) */  */
/* @media (min-width: @screen-md-min) { */
/* 	 .filter{ */
/* 		width: 40% !important; */
/* 	 } */
/*   }  */

/* /* Large devices (large desktops, screens of size 1200px and up) */  */
/* @media (min-width: @screen-lg-min) {    */
/* 	.filter{ */
/* 		width: 50% !important; */
/* 	} */
/*   } */

/* ---------FOR TAGS INPUT END */



/* .splitter { */
/*   flex: 0 0 auto; */
/*   width: 18px;   */
/*   background: url(https://raw.githubusercontent.com/RickStrahl/jquery-resizable/master/assets/vsizegrip.png) center center no-repeat #535353; */
/*   min-height: 200px; */
/*   cursor: col-resize;   */
/* } */

/* .panel-right { */
/*   flex: 1 1 auto; */
/*   /* resizable */ */
/*   padding: 10px; */
/*   width: 150px; */
/*   min-height: 200px; */
/*   max-height: 100%; */
/*   min-width: 100px; */
/*   max-width: 100px; */
/*   background: #eee; */
/* } */


/* vertical panel */

/* .panel-container-vertical { */
/*   display: flex; */
/*   flex-direction: column; */
/*   height: 500px; */
/*   border: 1px solid silver; */
/*   overflow: hidden; */
/* } */

/* .panel-top { */
/*   flex: 0 0 auto; */
/*   /* only manually resize */ */
/*   padding: 10px; */
/*   height: 150px; */
/*   width: 100%; */
/*   white-space: nowrap; */
/*   background: #838383; */
/*   color: white; */
/* } */

/* .splitter-horizontal { */
/*   flex: 0 0 auto; */
/*   height: 18px; */
/*   background: url(https://raw.githubusercontent.com/RickStrahl/jquery-resizable/master/assets/hsizegrip.png) center center no-repeat #535353; */
/*   cursor: row-resize; */
/* } */

/* .panel-bottom { */
/*   flex: 1 1 auto; */
/*   /* resizable */ */
/*   padding: 10px; */
/*   min-height: 200px; */
/*   background: #eee; */
/* } */

/* label { */
/*   font-size: 1.2em; */
/*   display: block; */
/*   font-weight: bold; */
/*   margin: 30px 0 10px; */
/* } */

/* pre { */
/*   margin: 20px; */
/*   padding: 10px; */
/*   background: #eee; */
/*   border: 1px solid silver; */
/*   border-radius: 4px; */
/*   overflow: auto; */
/* } */
</style>
<style>
/* html, body { */
/*   height: 100%; */
/*   margin: 0; */
/* } 

*/

/* .layers:hover{
	background: #e1e6f6;	
	width: 100%;
} */
/* .layers:active{ */
/* 	background: #e1e6f6;	 */
/* } */
/* .layers:focus{ */
/* 	background: #E9E9E9; */
/* 	width: 100vw; */
/* } */

/* .elements:hover{
	background: #e1e6f6;	
	width: 100%;
} */
/* .elements:active{ */
/* 	background: #e1e6f6;	 */
/* } */
/* .elements:focus{ */
/* 	background: #E9E9E9; */
/* 	width: 100vw; */
/* } */


/* .sub_elements:hover{
	background: #e1e6f6;	
	width: 100%;	
} */
/* .sub_elements:active{ */
/* 	background: #e1e6f6;	 */
/* } */
/* .sub_elements:focus{ */
/* 	background: #E9E9E9; */
/* 	width: 100vw; */
/* } */

#paleteDiv{

 			/*resize:both;*/
/*             overflow:auto;  */
           
}

#cntr{

 			/*resize:both;*/
/*              overflow-y: auto;  */
            
}

#context-menu {
  position:fixed;
  z-index:10000;
  width:150px;
/*   background:#1b1a1a; */
  background:#E9E9E9;
  border-radius:5px;
  transform:scale(0);
  transform-origin:top right;
  text-align: right;
}
#context-menu.active {
  transform:scale(1);
  transition:transform 300ms ease-in-out;
}
#context-menu .item {
  padding:8px 10px;
  font-size:14px;
/*   color:#eee; */
  color: black;
}
#context-menu .item:hover {
/*   background:#555; */
  background:#e1e6f6;
}
#context-menu .item i {
  display:inline-block;
  margin-right:5px;
}
#context-menu hr {
  margin:2px 0px;
  border-color:#555;
}
#context-menu2 {
		border-radius: 5px;
		width: auto;
		padding: 0;
		font-size: 10pt;
		color: #777;
    	z-index: 5;
    	background: #E9E9E9;
	}

  #context-menu2 {
  --mouse-x: 0;
  --mouse-y: 0;
  display: none;
  position: fixed;
  margin: 0;
  left: 0;
  top: 0;
  /* The following line is responsible for all the magic */
  transform: translateX(min(var(--mouse-x), calc(100vw - 100%)))
             translateY(min(var(--mouse-y), calc(100vh - 100%)));
}

#context-menu2 .item {
	padding: 8px 10px;
	font-size: 13px;
	/*   color:#eee; */
	color: black;
}

#context-menu2 .item:hover {
	/*   background:#555; */
	background: #e1e6f6;
}

#context-menu2 .item i {
	display: inline-block;
	margin-right: 5px;
}

#context-menu2 hr {
	margin: 2px 0px;
	border-color: #555;
}
.border_class{
	border: 1px solid grey;
	padding: 10px;
	border-radius: 5px;
	margin: 10px 0 10px 0;
}
#tabs{
		//background-color:#c2cfff;
/* 		border: 2px solid black; */
	}
	#tabs_1{
		//background-color:#c2cfff;
		border-style: none;
	}
	
	#form_id{
/* 		background-color:#c2cfff; */
/* 		border-left: 1px solid black; */
		height: 80.5vh;

	}

      
      div.abc
      { //border: 2px solid  black;
       // max-width: 25%;
/*             height: 75vh; */
            height:83vh;
            width:100%;
             max-width:100%; 
             min-width:200px; 
        //max-height:600px;
/*           Overflow-x:scroll; */
            overflow-x:hidden;
             /*resize:both;*/
            overflow-y:auto;
            /*cursor: not-allowed;*/
      } 
      ul, #myUL {
  list-style-type: none;
}

#myUL, #model, #model1 {
   margin: 0;
   padding: 0; 
}

#myUL1 {
  margin-left: 130px;
  padding-bottom: 20px;
  display: inline-block;
}

ul.ui-tabs-nav.ui-corner-all.ui-helper-reset.ui-helper-clearfix.ui-widget-header {
    background-color: white;
    border: none;
}
.caret {
  cursor: pointer;
  -webkit-user-select: none; /* Safari 3.1+ */
  -moz-user-select: none; /* Firefox 2+ */
  -ms-user-select: none; /* IE 10+ */
  user-select: none;
  white-space: nowrap;
}
.header{
    display: flex;
    justify-content: space-between;
    width: 100vw;
    margin-bottom: -10px;
    background: #f8f9fa;
    height: 60px !important;	
}
.caret::before {
  //content: "\25B6";
  content: '';
  background: url(<c:url value="/resources/images/folder-plus.svg" />); /*url('https://image.flaticon.com/icons/svg/148/148947.svg'); */
 // width: /* width of the image */;
 // height: /* height of the image */;
  //content:url(<c:url value="/resources/images/Folder.ico" />);
  height:16px;
  width:16px;
  //color: black;
  display: inline-block;
  margin-right: 6px;
  margin-left:10px;
  fill: green;
}

.caret-down::before {
	background: url(<c:url value="/resources/images/folder-minus.svg" />);
	height:16px;
  	width:16px;
  	display: inline-block;
  	margin-right: 6px;
  	margin-left:10px;
  //transform: rotate(90deg);  
}

.recycle-bin-caret::before {
  //content: "\25B6";
  content: '';
/*   background: url(<c:url value="/resources/images/folder-plus.svg" />); /*url('https://image.flaticon.com/icons/svg/148/148947.svg'); */ */
 // width: /* width of the image */;
 // height: /* height of the image */;
  content:url(<c:url value="/resources/images/trash-open.svg" />);
  height:20px;
  width:20px;
  //color: black;
/*   display: inline-block; */
/*   margin-top: 10px; */
/*   margin-right: 6px; */
/*   margin-left:10px; */
/*   fill: green; */
/*   font-family: 'FontAwesome'; */
/*   //content: "\f1f8"; */
}

.recycle-bin-caret-down::before {
  //content: "\25B6";
  content: '';
/*   background: url(<c:url value="/resources/images/folder-plus.svg" />); /*url('https://image.flaticon.com/icons/svg/148/148947.svg'); */ */
 // width: /* width of the image */;
 // height: /* height of the image */;
  content:url(<c:url value="/resources/images/trash-close.svg" />);
  height:20px;
  width:20px;
  //color: black;
/*   display: inline-block; */
/*   MARGIN-RIGHT: 6PX; */
/*   MARGIN-LEFT:10PX; */
  fill: green;
/*   font-family: 'FontAwesome'; */
/*   //content: "\f1f8";  */
}


.nested {
	display: none;
}

.active {
	display: block;
}

.unselectable{
	 user-select: none;
}

/* catalog filter */


#catalogfilter {
  background-image: url('/resources/js/examples/editors/images/images1/searchf.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#catalog_table {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

/*Navbar starts here*/
@media (min-width: 992px){
	.dropdown-menu .dropdown-toggle:after{
		border-top: .3em solid transparent;
	    border-right: 0;
	    border-bottom: .3em solid transparent;
	    border-left: .3em solid;
	}
	.dropdown-menu .dropdown-menu{
		margin-left:0; margin-right: 0;
	}
	.dropdown-menu li{
		position: relative;
	}
	.nav-item .submenu{ 
		display: none;
		position: absolute;
		left:100%; top:-7px;
	}
	.nav-item .submenu-left{ 
		right:100%; left:auto;
	}
	.dropdown-menu > li:hover{ background-color: #f1f1f1 }
	.dropdown-menu > li:hover > .submenu{
		display: block;
	}
}
/*Navbar ends here*/
	
/* 	.ui-tabs-vertical { width: 100%; background: #e9e9e9}
	.ui-tabs-vertical .ui-tabs-nav { padding: .2em .1em .2em .2em; float: left; width: 18%; overflow-x: hidden; overflow-y: hidden;}
	.ui-tabs-vertical .ui-tabs-nav li { clear: left; width: 100vh; border-bottom-width: 1px !important; border-right-width: 0 !important; margin: 0 -1px .2em 0; font-size: 14px;}
	.ui-tabs-vertical .ui-tabs-nav li a { display:inline-block; }
	.ui-tabs-vertical .ui-tabs-nav li.ui-tabs-active { padding-bottom: 0; padding-right: .1em; border-right-width: 1px; }
	.ui-tabs-vertical .ui-tabs-panel {   border-left: 6px solid #E9E9E9;height: 100%;padding: 1em; float: left; width: 82%;  background: #ffffff !important}
	.ui-tabs-vertical .ui-tabs-panel label{font-size: 14px; font-weight: bold;}
	.ui-tabs-vertical .ui-tabs-panel h3{font-size: 14px; font-weight: bold;}
	.ui-tabs-vertical .ui-tabs-panel checkbox{width: 5px; height:5px} */

	.ui-tabs-vertical { width: 100%;}
	.ui-tabs-vertical .ui-tabs-nav { padding: .2em .1em .2em .2em; float: right; width: 18%; overflow-x: hidden; overflow-y: hidden;}
	.ui-tabs-vertical .ui-tabs-nav li { clear: left; width: 100%; border-bottom-width: 1px !important; border-right-width: 0 !important; margin: 0 -1px .2em 0; font-size: 14px;}
	.ui-tabs-vertical .ui-tabs-nav li a { display:inline-block; }
	.ui-tabs-vertical .ui-tabs-nav li.ui-tabs-active { padding-bottom: 0; padding-right: .1em; border-right-width: 1px; }
	.ui-tabs-vertical .ui-tabs-panel {   border-left: 6px solid #E9E9E9;height: 100%;padding: 1em; float: left; width: 82%;  background: #ffffff !important}
	.ui-tabs-vertical .ui-tabs-panel label{font-size: 14px; font-weight: bold;}
	.ui-tabs-vertical .ui-tabs-panel h3{font-size: 14px; font-weight: bold;}
	.ui-tabs-vertical .ui-tabs-panel checkbox{width: 5px; height:5px}
	.ui-widget-content{ border: none !important; }
	.ui-tabs-nav li{text-align: right;}
	/* form{ background: #e9e9e9} */
	
a.fullTab{
	width:100%;
}
	

#palete img {
	width: 24px !important;
	height: 26px !important;
	margin:5px !important;
/* 	all: unset; */
/* 	margin-right:5px; */
}
	
image{
	float: right;
	margin-left: 50;
}
.btnsave, #btnedit , .btn-Submit{
	float: right;
 	/* background-color: #f6f6f6 */; /* Green */
	/*border: 2px solid black;*/
/* 	color: white; */
	padding: 5px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
}
#btnsave:hover{
  background-color: #ededed;
}
#btnsave:active{
  background-color: #007fff;
}

.model_list:hover{
	background: #e9e9e9;
	cursor:pointer;
}

.matirixFirstTd{
	text-align:right !important;
}

/* tr.odd {
    display: none;
} */

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
			  $('#lt').append('<span class="caret"><spring:message code="lambdatheta"/></span>'+ghj);
			  crt();
			  $("#loader_image").hide();
			  $("#left_pane").show();
		  },
	 });
	  
	  getGraphNames();
	  $('#recycle_bin_list_for_object_elements').empty();
	  getDeletedObjects();
/* 	  $('#lt_relationship').empty();
	  $.ajax({
		  url: "getCompleteRelationsTree", 
		  method: 'get',
		  data: {},
		  success: function (data) {
			  var ghj = '<ul class="nested">';
			  ghj+= data;
			  ghj+= '</ul>';
			  $('#lt_relationship').append('<span class="caret">Relationships</span>'+ghj);
		  },
	 });
	  
	  $('#lt_relationship_connector').empty();
	  $.ajax({
		  url: "getCompleteRelationConnectorsTree", 
		  method: 'get',
		  data: {},
		  success: function (data) {
			  var ghj = '<ul class="nested">';
			  ghj+= data;
			  ghj+= '</ul>';
			  $('#lt_relationship_connector').append('<span class="caret">Relationship Connectors</span>'+ghj);
		  },
	 }); */
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
	    	/*
	    	$.each( data, function( key, value ) {
	    		$("#recycle_bin_list").append('<li class="model_list" oncontextmenu="on_context_menu_restore(\''+value.id+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">'+value.modelName+'</li>')
	    		//<li oncontextmenu="on_context_menu_restore(\''+graphID+'\',\''+liID+'\');""><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">'+value.modelName+'</li>'
	    		//<a style="text-decoration:none; cursor:pointer;" href="javascript:restore(\''+graphID+'\',\''+liID+'\')">
	    	});*/

	    	$("#recycle_bin_list").html('<li><span><i class="fa fa-trash-o" aria-hidden="true"></i>&nbsp;&nbsp;<spring:message code="recycle_bin"/></span></li>');
	    	$("#recycle_bin_list").append(data);
	    }
	  });
}

function showData(table,name){
// 	$("#form_id").html("");
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
	      url: "getRowData_rtl", // url: "/findAttributes?dbName="+db_name,
	      type: "POST",
	      
	      data:{'tableName':tableName,
	    	  	'name':name},
	    	  	dataType: "json",
	    	  	beforeSend: function() {
	    	    	loader_image_body();
// 	    	     	$("#loader_image_body").animate({left:15, opacity:"show"}, 5000);
	    	        //$("#loader_image").show();
	    	    },
		success: function(data) {
// 			console.log(data)
// 			console.log(data)
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
	            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'" style="float: right;"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+row_name+'_'+tableName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\', \''+data.editButtonId[0]+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+row_name+'</a></div></div>');
	            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
	            $("#history_tab").css("display", "flex")
	            historyTabItems.push(clsName);
            }else{
            	$( "."+clsName ).remove();
	            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'" style="float: right;"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+row_name+'_'+tableName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\', \''+data.editButtonId[0]+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+row_name+'</a></div></div>');
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
			form_submitForUpdate(dbName, tableName, labels, idd,allIds,row_name,AllRelRowIDs,btnedit, object_name_id, imageName, current_ID,CurrenttabID[0],null,last_time_updated,AllRelTableIDs);
			show_or_hide_relationships(relationsClass);
			$("#loader_image_body").hide();
			$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
			$("body").css("pointer-events", "initial");
	        }
	    	  	
	    });
	}
var get_data_for_save_button = [];
function form_submitForUpdate(dbName, tableName, attributes, idd, allIds, row_name, AllRelRowIDs, btnedit, object_name_id,imageName, current_ID, CurrenttabID, cell, last_time_updated,AllRelTableIDs){

	
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
											      //type: "GET",
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
													 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+removeItem.replaceAll(' ','---')+'" style="background: rgb(233, 233, 233);"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
													   $("#history_tab").css("display", "flex")
													   historyTabItems.push(change_value[0].value.replaceAll(' ','---')+'_'+tableName);
													}
													$("#"+btnedit).attr('disabled', true);
												}
									    	});
										}
										else{
									    	$(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="model_exist_message"/></div>');
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
					var temp = '<li id="'+data.replaceAll(' ','---')+'" style="cursor:pointer" onclick="showData(\''+element.replaceAll(' ','_')+'\',\''+data+'\')" oncontextmenu="on_context_menu_remove(\''+element.replaceAll(' ','_')+'\',\''+data+'\',\'deletedElements\')"><span title="'+data+'" draggable="true" ondragstart="drag(event,\''+data+'\',\'http://localhost:8080/EAZee/resources/js/examples/editors/images/images1/'+elementIcon+'\')"><img style="width:20px; height:20px" draggable="false" src="resources/js/examples/editors/images/images1/'+elementIcon+'">&nbsp;'+data+'</span></li>';
		            $('#'+element.replaceAll(' ','_')).append(temp);
					showData(element.replaceAll(' ','_'),data);
				}
			});
	      }	
	    });
}

function showDiv(showDivID, save_btn_id){
	$("#element_title").hide()
	//console.log("save_btn_id", save_btn_id)
	
	//$("#"+save_btn_id+"").prop("disabled", true)
	//$(".submit-data").prop('disabled', true);
	$.each( dictionaryXML, function( key, value ) {
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
	});
	
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
 					
 					//var next_id = $("#"+showDivID+"").next().attr('id');
 					//$( "#"+graphName_1+"" ).hide();
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
	else{
		delete dictionaryXML[graphName_1];
		
		//var next_id = $("#"+showDivID+"").next().attr('id');
		//$( "#"+graphName_1+"" ).hide();
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
	} 

	
	/*  */

	/*  */
}

function close_all_history_div(){
	$("#element_title").empty();
	$(".column").remove();
	$("#historyList").hide();
	//$("#graphId").empty();
	$("#form_id").empty();
	$("#catalog").hide();

	var diagram = mxUtils.parseXml(newGraphXML);
        var codec = new mxCodec(diagram);
        codec.decode(diagram.documentElement, graph1.getModel());
	//$("#history_tab").hide();
	
	dictionaryXML = {}
	historyTabItems = []	
	//dictionaryXML[""];
	
	numItems = $('.column').length;
	$(".history_page_no").html(numItems)
	$("#element_title").hide()
	
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
				//console.log('aa',allObjects)
// 					console.log('val',objectValue)
			
// 				$.each( object_names_form, function( key, value ) {
// 					allObjects += value.innerHTML+",";
// 				});
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
							 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+clsName+'" style="background: rgb(233, 233, 233);"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
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
			    	$(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="model_exist_message"/></div>');
			    	alert_message_function();
				}
	        }
	    });
	});
}

function openFormOnCellDoubleClick(cellValue,elementName,cell){
	elementName = elementName.replaceAll(' ', '_');
	$.ajax({
         url: "getPropertiesDictionary",
         type: 'POST',
         data: {},
         dataType: 'json', // added data type
         success: function(langDict) {
         		$("#updateFormModal_heading").html(langDict[elementName]);
         }
     });
	updateFormModal(cellValue,elementName,cell)
	
}

function showRelationsObjects(currentElementName,row_name,tableName, idd,maxObjects, save_btn_id){
	
	//console.log('table', tableName)
	var aa = []
// 	console.log('idd_explorer',idd)
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
			console.log("data ",data)
			var tree  = data[0]['tree'];
			var maxValues = data[1];
// 			$.each(data, function(i, val){
// 				objectsArray.push(val.rowValue);
//             });

			relationship_modal(tree,idd,maxPossibleObjects,tableName, save_btn_id,maxValues);
			var res = idd.split("2");
// 			var title = res[0].split('_').join(' ');
			var title = res[0];
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
var color = '';
function updateGraph(objectName, x,y,imgSrc){
		
		var newObjectName = objectName;
		var newObjectElement = imgSrc.split('/');
		newObjectElement = newObjectElement[newObjectElement.length-1];
		newObjectElement = newObjectElement.split('.svg');
		newObjectElement = newObjectElement[0].replaceAll('-',' ');
		newObjectElement = capitalizeFirstLetter(newObjectElement);
		newObjectElement = newObjectElement.replaceAll(' ','_')
		imageSource = imageSource.replaceAll('.svg','1.svg');
		//console.log(imgSrc)
		var parent = graph1.getDefaultParent();
		objectName = objectName.split(' ').join('\n');
		
		var objectExists= false;
	  	//console.log(v1)
	  	
		var encoder = new mxCodec();
		var node = encoder.encode(graph1.getModel());
		var xml = mxUtils.getXml(node);
// 		vv = model.getCell('5');
// 		console.log('vv',vv)
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
		var style = 'shape=label;image='+imageSource+';imageHeight=14;imageWidth=22;strokeColor='+stColor+';fillColor='+color+';rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;';
	  	if(objectExists==false){
			var v1 = graph1.insertVertex(parent, null , objectName, x, y, 135, 55,style);
			$intRate.each(function(index, element) {
				if(element.attributes["value"]) {
					var cellId = element.attributes["id"].value;
					var v2 = graph1.getModel().getCell(cellId)
				
				var loopCellValue = element.attributes["value"].value;
				
				loopCellValue = loopCellValue.replaceAll('\n',' ');
				var loopImageValue = element.attributes["style"].value;
					loopImageValue = loopImageValue.split('1.svg')
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
		
		var keyHandler = new mxKeyHandler(graph1);
		keyHandler.bindKey(46, function(evt)
		{
		  if (graph1.isEnabled())
		  {
		    graph1.removeCells();
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

function setVertexColor(imageNameWithoutExt){
	if(imageNameWithoutExt == "business actor" || imageNameWithoutExt == "business role" || imageNameWithoutExt == "business collaboration" || imageNameWithoutExt == "business interface" || imageNameWithoutExt == "business process" || imageNameWithoutExt == "business function" || imageNameWithoutExt == "business interaction" || imageNameWithoutExt == "business event" || imageNameWithoutExt == "business service" || imageNameWithoutExt == "business object" || imageNameWithoutExt == "contract" || imageNameWithoutExt == "representation" || imageNameWithoutExt == "product"){
		color = '#e4cb68';
//			stColor = '#c1a940'
	}
	else if(imageNameWithoutExt == "application component" || imageNameWithoutExt == "application collaboration" || imageNameWithoutExt == "application interface" || imageNameWithoutExt == "application function" || imageNameWithoutExt == "application interaction" || imageNameWithoutExt == "application process"|| imageNameWithoutExt == "application event"|| imageNameWithoutExt == "application service" || imageNameWithoutExt == "data object"){
		color = '#85cadc';
//			stColor = '#63f7f0'
	}
	else if ( imageNameWithoutExt == "node" || imageNameWithoutExt == "device" || imageNameWithoutExt == "system software" || imageNameWithoutExt == "technology collaboration" || imageNameWithoutExt == "technology interface" || imageNameWithoutExt == "path" || imageNameWithoutExt == "communication network" || imageNameWithoutExt == "technology function" || imageNameWithoutExt == "technology process" || imageNameWithoutExt == "technology interaction" || imageNameWithoutExt == "technology event" || imageNameWithoutExt == "technology service" || imageNameWithoutExt == "artifact"){
		
		color = '#aad4a2'
//			stColor = '#fcad47'						
	}
	else if (imageNameWithoutExt == "equipment" || imageNameWithoutExt == "facility" || imageNameWithoutExt == "distribution network" || imageNameWithoutExt == "material" || imageNameWithoutExt == "gap" || imageNameWithoutExt == "plateau"){
								
		color = '#aad4a2'
//			stColor = '#b34ff7'
	}
	else if (imageNameWithoutExt == "deliverable" || imageNameWithoutExt == "implementation event" || imageNameWithoutExt == "work package"){
		
		color = '#deb196'				
//			stColor = '#ff1f24'
	}
	else if (imageNameWithoutExt == "stakeholder" || imageNameWithoutExt == "driver" || imageNameWithoutExt == "assessment" || imageNameWithoutExt == "goal" || imageNameWithoutExt == "outcome" || imageNameWithoutExt == "principle" || imageNameWithoutExt == "requirement" || imageNameWithoutExt == "constraint" || imageNameWithoutExt == "meaning" || imageNameWithoutExt == "value"){
							
		color = '#b3c1e6'
//			stColor = '#fcf753'
	}
	else if (imageNameWithoutExt == "resource" || imageNameWithoutExt == "capability" || imageNameWithoutExt == "value stream" || imageNameWithoutExt == "course of action"){
							
		color = '#e2d4a5'			
//			stColor = '#fa78f7'
	}
	else if (imageNameWithoutExt == "location"){
		
		color = '#e8ad60'			
//			stColor = '#fa78f7'
	}
	
	else if (imageNameWithoutExt == "grouping"){
		
		color = '#a7a7a3'			
//			stColor = '#fa78f7'
	}
}

function callGraph(graphId,objects)
		{
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
				$("#graphId").append('<div id="graphContainer" style="position:relative;width:91%;height:83vh;cursor:default;scroll;"></div>');
				
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
							
// 							if(value.length==[0]){
								
// 								swal("No Relation Found", {
// 									  buttons: ["Aww yiss!"],
// 									})
// 								context-menu2.hide();
// 							}
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
			    	sourceObjectName = sourceObjectName.split('1.svg');
			    	sourceObjectName = sourceObjectName[0].split('-').join(' ');
			    	sourceObjectName = capitalizeFirstLetter(sourceObjectName);
			    	
			    	var targetObjectName = target.style.split('/');
			    	targetObjectName = targetObjectName[targetObjectName.length-1];
			    	targetObjectName = targetObjectName.split('1.svg');
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
	   	   						console.log('yess');
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
				tbContainer.style.top = "0px";
				tbContainer.style.right = "0%";
				tbContainer.style.bottom = "10px";
				tbContainer.style.left = "86%";
				tbContainer.style.height = "100%";
				tbContainer.style.width = "min-content";
				tbContainer.style.spacingY = '50px';
				tbContainer.style.overflowY = "scroll";
				tbContainer.style.direction = "rtl";
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
				
				// Matches DnD inside the graph
//   				mxDragSource.prototype.getDropTarget = function(graph, x, y)
// 				{
//   					console.log("graph",graph)
// // 					var cell = graph.getCellAt(x, y);
					
// // 					if (!graph.isValidDropTarget(cell))
// // 					{
// // 						cell = null;
// // 					}
					
// // 					return cell;
// 				};




   				mxDragSource.prototype.dragEnter = function(graph, evt){
   					var toCheckGrouping = this.element.currentSrc.split('/');
   					toCheckGrouping = toCheckGrouping[toCheckGrouping.length-1];
   					toCheckGrouping = toCheckGrouping.split(".")[0];
   					console.log(toCheckGrouping);
   					
   					var imageSource = this.element.src;
					var element = this.element.src.split('/');
					var imageSource = this.element.src;
					imageSource = imageSource.replaceAll('.svg','1.svg');
					
					var imageName = element[element.length-1]
					var imageNameWithoutExt = imageName.split('-').join(' ')
					imageNameWithoutExt = imageNameWithoutExt.split(".")[0];
					
					if(imageNameWithoutExt == "business actor" || imageNameWithoutExt == "business role" || imageNameWithoutExt == "business collaboration" || imageNameWithoutExt == "business interface" || imageNameWithoutExt == "business process" || imageNameWithoutExt == "business function" || imageNameWithoutExt == "business interaction" || imageNameWithoutExt == "business event" || imageNameWithoutExt == "business service" || imageNameWithoutExt == "business object" || imageNameWithoutExt == "contract" || imageNameWithoutExt == "representation" || imageNameWithoutExt == "product"){
						color = '#e4cb68';
// 						stColor = '#c1a940'
					}
					else if(imageNameWithoutExt == "application component" || imageNameWithoutExt == "application collaboration" || imageNameWithoutExt == "application interface" || imageNameWithoutExt == "application function" || imageNameWithoutExt == "application interaction" || imageNameWithoutExt == "application process"|| imageNameWithoutExt == "application event"|| imageNameWithoutExt == "application service" || imageNameWithoutExt == "data object"){
						color = '#85cadc';
// 						stColor = '#63f7f0'
					}
					else if ( imageNameWithoutExt == "node" || imageNameWithoutExt == "device" || imageNameWithoutExt == "system software" || imageNameWithoutExt == "technology collaboration" || imageNameWithoutExt == "technology interface" || imageNameWithoutExt == "path" || imageNameWithoutExt == "communication network" || imageNameWithoutExt == "technology function" || imageNameWithoutExt == "technology process" || imageNameWithoutExt == "technology interaction" || imageNameWithoutExt == "technology event" || imageNameWithoutExt == "technology service" || imageNameWithoutExt == "artifact"){
						
						color = '#aad4a2'
// 						stColor = '#fcad47'						
					}
					else if (imageNameWithoutExt == "equipment" || imageNameWithoutExt == "facility" || imageNameWithoutExt == "distribution network" || imageNameWithoutExt == "material" || imageNameWithoutExt == "gap" || imageNameWithoutExt == "plateau"){
												
						color = '#aad4a2'
// 						stColor = '#b34ff7'
					}
					else if (imageNameWithoutExt == "deliverable" || imageNameWithoutExt == "implementation event" || imageNameWithoutExt == "work package"){
						
						color = '#deb196'				
// 						stColor = '#ff1f24'
					}
					else if (imageNameWithoutExt == "stakeholder" || imageNameWithoutExt == "driver" || imageNameWithoutExt == "assessment" || imageNameWithoutExt == "goal" || imageNameWithoutExt == "outcome" || imageNameWithoutExt == "principle" || imageNameWithoutExt == "requirement" || imageNameWithoutExt == "constraint" || imageNameWithoutExt == "meaning" || imageNameWithoutExt == "value"){
											
						color = '#b3c1e6'
// 						stColor = '#fcf753'
					}
					else if (imageNameWithoutExt == "resource" || imageNameWithoutExt == "capability" || imageNameWithoutExt == "value stream" || imageNameWithoutExt == "course of action"){
						
						color = '#e2d4a5'			
// 						stColor = '#fa78f7'
					}
					else if (imageNameWithoutExt == "location"){
					
						color = '#e8ad60'			
// 						stColor = '#fa78f7'
					}
					else if (imageNameWithoutExt == "grouping"){
						
						color = '#a7a7a3'			
// 						stColor = '#fa78f7'
					}
					var style = 'shape=label;strokeColor='+stColor+';fillColor='+color+';rounded=1;shadow=1;strokeWidth=2;image='+imageSource+';imageHeight=14;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;'
					 
// 						console.log("element",element)
//    						console.log("imageName",imageName)
//    						console.log("imageNameWithoutExt",imageNameWithoutExt)
//    						console.log('--------------------')
					
   	   				mxDragSource.prototype.drop = function(	graph, evt, dropTarget,	x, y){
						
						if(toCheckGrouping=='swimlane'){
							var vertex = graph1.insertVertex(parent, null,"Container", x, y, 120, 180, 'shape=swimlane;startSize=40');
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
								
								
								var vertex = graph1.insertVertex(parent, null, UniqueObjectName.split(" ").join("\n") , x, y, 135, 55, style);
								
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
								if(imageNameWithoutExt == "business actor"){
									//$("#Application_Component").append('<li><span draggable="true" ondragstart="drag(event,\'Application Component\',\''+imageSource+'\')" class=""><img  alt="" src='+imageSource+'></img>Application Component</span></li>')
									$("#Business_Actor").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\',\''+imageSource+'\', \'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "business role"){
									//$("#Application_Interface").append('<li><span draggable="true" ondragstart="drag(event,\'Application Interface\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Application Interface</span></li>')
									$("#Business_Role").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\', \'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "business collaboration"){
									//$("#Application_Function").append('<li><span draggable="true" ondragstart="drag(event,\'Application Function\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Application Function</span></li>')
									$("#Business_Collaboration").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "business interface"){
									//$("#Application_Service").append('<li><span draggable="true" ondragstart="drag(event,\'Application Service\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Application Service</span></li>')
									$("#Business_Interface").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "business process"){
									//$("#Business_Process").append('<li><span draggable="true" ondragstart="drag(event,\'Business Process\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Business Process</span></li>')
									$("#Business_Process").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "business function"){
									//$("#Service").append('<a href="#" id="Role"><li><span draggable="true" ondragstart="drag(event,\'Service\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Service</span></li></a>');
									$("#Business_Function").append('<a href="#" id="Role"><li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li></a>');
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "business interaction"){
									//$("#Business_Function").append('<a href="#" id="Role"><li><span draggable="true" ondragstart="drag(event,\'Business Function\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Business Function</span></li></a>');
									$("#Business_Interaction").append('<a href="#" id="Role"><li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li></a>');
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "business event"){
									//$("#Service_Contract").append('<li><span draggable="true" ondragstart="drag(event,\'Service Contract\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Service Contract</span></li>')
									$("#Business_Event").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "business service"){
									//$("#Service_Contract").append('<li><span draggable="true" ondragstart="drag(event,\'Service Contract\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Service Contract</span></li>')
									$("#Business_Service").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "business object"){
									//$("#Business_Capability").append('<li><span draggable="true" ondragstart="drag(event,\'Business Capability\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Business Capability</span></li>')
									$("#Business_Object").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}	
								else if(imageNameWithoutExt == "contract"){
									//$("#Service_Contract").append('<li><span draggable="true" ondragstart="drag(event,\'Service Contract\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Service Contract</span></li>')
									$("#Contract").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "representation"){
									//$("#Value_Stream").append('<li><span draggable="true" ondragstart="drag(event,\'Value Stream\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Value Stream</span></li>')
									$("#Representation").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "product"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Product").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "application component"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Application_Component").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "application collaboration"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Application_Collaboration").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "application interface"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Application_Interface").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "application function"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Application_Function").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "application interaction"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Application_Interaction").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "application process"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Application_Process").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "application event"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Application_Event").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "application service"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Application_Service").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "data object"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Data_Object").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "node"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Node").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "device"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Device").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "system software"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#System_Software").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "technology collaboration"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Technology_Collaboration").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "technology interface"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Technology_Interface").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "path"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Path").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "communication network"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Communication_Network").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "technology function"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Technology_Function").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "technology process"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Technology_Process").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "technology interaction"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Technology_Interaction").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "technology event"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Technology_Event").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "technology service"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Technology_Service").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "artifact"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Artifact").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "equipment"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Equipment").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "facility"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Facility").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "distribution network"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Distribution_Network").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "material"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Material").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "work package"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Work_Package").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "deliverable"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Deliverable").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "implementation event"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Implementation_Event").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "plateau"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Plateau").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "gap"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Gap").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "artifact"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Artifact").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "stakeholder"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Stakeholder").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "driver"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Driver").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "assessment"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Assessment").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "goal"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Goal").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "outcome"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Outcome").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "principle"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Principle").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "requirement"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Requirement").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "constraint"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Constraint").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "meaning"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Meaning").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "value"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Value").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "resource"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Resource").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "capability"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Capability").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "value stream"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Value_Stream").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "course of action"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Course_of_Action").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "location"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Location").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
								else if(imageNameWithoutExt == "grouping"){
									//$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+imageSource+'\')" class=""><img alt="" src='+imageSource+'></img>Course of Action</span></li>')
									$("#Grouping").append('<li id="'+UniqueObjectName+'" class="Other" style="cursor:pointer" onclick="showData(\''+elementName1+'\',\''+UniqueObjectName+'\')" oncontextmenu="on_context_menu_remove(\''+elementName1+'\',\''+UniqueObjectName+'\', \''+imageSource+'\',\'Other\')"><span title="'+UniqueObjectName+'" draggable="true" ondragstart="drag(event,\''+UniqueObjectName+'\',\''+imageSource+'\')" class=""><img id="Other" alt="" src='+imageSource+'></img>&nbsp;'+UniqueObjectName+'</span></li>')
									addInDB(elementName1,UniqueObjectName);
								}
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
					console.log('cell ',cell)
					console.log("value", cell.value)
// 					cell.setAttribute('value', "AaAA");
					//var label = 'sdfdf';
// 					cell.setAttribute('label', label);
// 					graph.model.setValue(cell, label);
			       
// 					cell.value.setAttribute('label', "AaAA");
// 					cell.value = "asdsad";

					if(cell != null && cell.vertex == true){
						var cellValue = cell.value;
						var elementName = cell.style.split('/');
						elementName = elementName[elementName.length-1];
						elementName = elementName.split('1.svg');
						elementName = elementName[0].split('-').join(' ');
						elementName = capitalizeFirstLetter(elementName);
						openFormOnCellDoubleClick(cellValue,elementName,cell);
// 						alert(cell.value);
				
					}
			    });
/* 				mxDragSource.prototype.dragEnter = function(graph, evt){
					console.log(this)
					var element = this.element.src.split('/');
					var imageName = element[element.length-1]
					var imageNameWithoutExt = imageName.replace("-", " ").split(".")[0];

					if(imageNameWithoutExt == "application component"){
						$("#Application_Component").append('<li><span draggable="true" ondragstart="drag(event,\'Application Component\',\''+this.element.src+'\')" class=""><img  alt="" src='+this.element.src+'></img>Application Component</span></li>')
						addInDB('Application Component');
					}
					else if(imageNameWithoutExt == "application interface"){
						$("#Application_Interface").append('<li><span draggable="true" ondragstart="drag(event,\'Application Interface\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Application Interface</span></li>')
						addInDB('Application Interface');
					}
					else if(imageNameWithoutExt == "application function"){
						$("#Application_Function").append('<li><span draggable="true" ondragstart="drag(event,\'Application Function\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Application Function</span></li>')
						addInDB('Application Function');
					}
					else if(imageNameWithoutExt == "application service"){
						$("#Application_Service").append('<li><span draggable="true" ondragstart="drag(event,\'Application Service\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Application Service</span></li>')
						addInDB('Application Service');
					}
					else if(imageNameWithoutExt == "business process"){
						$("#Business_Process").append('<li><span draggable="true" ondragstart="drag(event,\'Business Process\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Business Process</span></li>')
						addInDB('Business Process');
					}
					else if(imageNameWithoutExt == "service"){
						$("#Service").append('<a href="#" id="Role"><li><span draggable="true" ondragstart="drag(event,\'Service\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Service</span></li></a>');
						addInDB('Service');
					}
					else if(imageNameWithoutExt == "business function"){
						$("#Business_Function").append('<a href="#" id="Role"><li><span draggable="true" ondragstart="drag(event,\'Business Function\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Business Function</span></li></a>');
						addInDB('Business Function');
					}
					else if(imageNameWithoutExt == "service contract"){
						$("#Service_Contract").append('<li><span draggable="true" ondragstart="drag(event,\'Service Contract\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Service Contract</span></li>')
						addInDB('Service Contract');
					}
					else if(imageNameWithoutExt == "business capability"){
						$("#Business_Capability").append('<li><span draggable="true" ondragstart="drag(event,\'Business Capability\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Business Capability</span></li>')
						addInDB('Business Capability');
					}	
					else if(imageNameWithoutExt == "value stream"){
						$("#Value_Stream").append('<li><span draggable="true" ondragstart="drag(event,\'Value Stream\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Value Stream</span></li>')
						addInDB('Value Stream');
					}
					else if(imageNameWithoutExt == "course of action"){
						$("#Course_of_Action").append('<li><span draggable="true" ondragstart="drag(event,\'Course of Action\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Course of Action</span></li>')
						addInDB('Course of Action');
					}
					else if(imageNameWithoutExt == "data object"){
						$("#Data_Object").append('<li><span draggable="true" ondragstart="drag(event,\'Data Object\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Data Object</span></li>')
						addInDB('Data Object');
					}
					else if(imageNameWithoutExt == "data component"){
						$("#Data_Component").append('<li><span draggable="true" ondragstart="drag(event,\'Data Component\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Data Component</span></li>')
						addInDB('Data Component');
					}
					else if(imageNameWithoutExt == "driver"){
						$("#Driver").append('<li><span draggable="true" ondragstart="drag(event,\'Driver\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Driver</span></li>')
						addInDB('Driver');
					}
					else if(imageNameWithoutExt == "goal"){
						$("#Goal").append('<li><span draggable="true" ondragstart="drag(event,\'Goal\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Goal</span></li>')
						addInDB('Goal');
					}
					else if(imageNameWithoutExt == "indicator"){
						$("#Indicator").append('<li><span draggable="true" ondragstart="drag(event,\'Indicator\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Indicator</span></li>')
						addInDB('Indicator');
					}
					else if(imageNameWithoutExt == "principle"){
						$("#Principle").append('<li><span draggable="true" ondragstart="drag(event,\'Principle\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Principle</span></li>')
						addInDB('Principle');
					}
					else if(imageNameWithoutExt == "standard"){
						$("#Standard").append('<li><span draggable="true" ondragstart="drag(event,\'Standard\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Standard</span></li>')
						addInDB('Standard');
					}
					else if(imageNameWithoutExt == "risk"){
						$("#Risk").append('<li><span draggable="true" ondragstart="drag(event,\'Risk\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Risk</span></li>')
						addInDB('Risk');
					}
					else if(imageNameWithoutExt == "work package"){
						$("#Work_Package").append('<li><span draggable="true" ondragstart="drag(event,\'Work Package\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Work Package</span></li>')
						addInDB('Work_Package');
					}
					else if(imageNameWithoutExt == "architecture state"){
						$("#Architecture_State").append('<li><span draggable="true" ondragstart="drag(event,\'Architecture State\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Architecture State</span></li>')
						addInDB('Architecture_State');
					}
					else if(imageNameWithoutExt == "gap"){
						$("#Gap").append('<li><span draggable="true" ondragstart="drag(event,\'Gap\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Gap</span></li>')
						addInDB('Gap');
					}
					else if(imageNameWithoutExt == "requirement"){
						$("#Requirement").append('<li><span draggable="true" ondragstart="drag(event,\'Requirement\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Requirement</span></li>')
						addInDB('Requirement');
					}
					else if(imageNameWithoutExt == "domain"){
						$("#Domain").append('<li><span draggable="true" ondragstart="drag(event,\'Domain\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Domain</span></li>')
						addInDB('Domain');
					}
					else if(imageNameWithoutExt == "organization unit"){
						$("#Organization_Unit").append('<li><span draggable="true" ondragstart="drag(event,\'Organization Unit\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Organization Unit</span></li>')
						addInDB('Organization_Unit');
					}
					else if(imageNameWithoutExt == "actor"){
						$("#Actor").append('<li><span draggable="true" ondragstart="drag(event,\'Actor\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Actor</span></li>')
						addInDB('Actor');
					}
					else if(imageNameWithoutExt == "role"){
						$("#Role").append('<li><span draggable="true" ondragstart="drag(event,\'Role\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Role</span></li>')
						addInDB('Role');
					}
					else if(imageNameWithoutExt == "location"){
						$("#Location").append('<li><span draggable="true" ondragstart="drag(event,\'Location\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Location</span></li>')
						addInDB('Location');
					}
					else if(imageNameWithoutExt == "technology service"){
						$("#Technology_Service").append('<li><span draggable="true" ondragstart="drag(event,\'Technology Service\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Technology Service</span></li>')
						addInDB('Technology_Service');
					}
					else if(imageNameWithoutExt == "technology product"){
						$("#Technology_Product").append('<li><span draggable="true" ondragstart="drag(event,\'Technology Product\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Technology Product</span></li>')
						addInDB('Technology_Product');
					}
					else if(imageNameWithoutExt == "technology component"){
						$("#Technology_Component").append('<li><span draggable="true" ondragstart="drag(event,\'Technology Component\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Technology	Component</span></li>')
						addInDB('Technology_Component');
					}
					else if(imageNameWithoutExt == "communication network"){
						$("#Communication_Network").append('<li><span draggable="true" ondragstart="drag(event,\'Communication Network\',\''+this.element.src+'\')" class=""><img alt="" src='+this.element.src+'></img>Communication	Network</span></li>')
						addInDB('Communication_Network');
					}
					else{}
				} */
				
/* 				var addEdge = function(mylabel, icon, w, h, style)
				{
					var edge = new mxCell(mylabel, new mxGeometry(0,0,w,h),  style);
 					  edge.geometry.setTerminalPoint(new mxPoint(500, 400), true);
 					  edge.geometry.setTerminalPoint(new mxPoint(350, 350), false);
					
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
					  
 					  edge.geometry.relative =true;
					  edge.edge = true;
				

// 					  edge = graph.addEdge(edge);
 					 
					  
					addToolbarItem(graph, toolbar, edge, icon);
				} */
					
				
				
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
   						graph.addListener(mxEvent.CLICK, function (sender, evt) {
   						    var cell = evt.getProperty("cell"); // cell may be null
   						    if (cell != null) {
   						        SelectGraphCell(cell);
   						        graph.setSelectionCell(cell);
   						    }
   						    evt.consume();
   						});
				
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

function getDBlist(graphName_1,id){
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
								cellElementName = cellElementName.split('1.svg')[0];
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
							$("#historyList").append('<div id="'+graphName_1.replaceAll(' ','_')+'11" class="column gh'+id+'" style="float: right;"><div style="display:inline-block"><span class="close_image" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','_')+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\',\''+id+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>"><br/>'+graphName_1+'</a></div></div>');
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
	var button_prop = graphSaveButton[graphName];
	console.log(button_prop)
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
	$('#element_title').prop('title', graphName_1);
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
	$("#matrix").css("display", "none");
	$(".catalog_save_button").css("display", "none");
	$(".matrix_save_button").css("display", "none");
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
	if(paleteCreated==0)
		callGraph();
}

function addNewGraphInHistory(){
	var encoder = new mxCodec();
	var parent = graph1.getDefaultParent();
	var node = encoder.encode(graph1.getModel());
	
	var xml_graph = mxUtils.getXml(node);
	
	var graphName_1 = 'New Graph';
	$("#historyList").append('<div id="'+graphName_1.replaceAll(' ','_')+'11" class="column" style="float: right;"><div style="display:inline-block"><span class="close_image" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','_')+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>"><br/>'+graphName_1+'</a></div></div>');
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
			setVertexColor(elementName);
// 		  console.log(ev,obj,img)
		  ev.dataTransfer.setData(obj, ev.target.id);
		  currentObj = obj;
		  imageSource = img;
		}

		function drop(ev) {
		    var pt = graph1.getPointForEvent(ev);
			updateGraph(currentObj,pt.x,pt.y,imageSource)
			$("#save_button").prop('disabled', false);
			$(".graph_button").prop('disabled', false);
			console.log(graph_name)
			graphSaveButton[graph_name] = false;
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
					 	$( "div#"+current_ID+"11" ).replaceWith( '<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"><br/>'+change_value[0].value+'</a></div></div>' );
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
		
		
</script>
</head>
<body onload="firstFunction()" style="display:none">
<%-- <img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/eazee-Logo.png"/>"> --%>
<img id ="loader_image_body" style="display:none;" loading="lazy" alt="schema" width="200px" height="50px" src="<c:url value="/resources/images/main-logo-removebg.png"/>">
<div class="container-fluid" style="margin: 0 !important; padding: 0 !important; width:100vw;">
	<div class="header" style="direction:rtl">
		<div>
			<a href="home">
				<p class="image1" style="margin-left: 5px;margin-top: 3px">
					<img draggable="false" alt="logo"  width="155px" src="<c:url value="/resources/images/main-logo-removebg.png"/>">
				</p>
			</a>
		</div>
		<div style="display:flex;justify-content: space-between; padding-right:10px">
			<div id="history_tab" class="btn-group dropdown">	  
	 			<button  type="button" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" onclick="displaydiv();">
	 				<img class="history-icon" alt="schema" width="20px" height="20px" src="<c:url value="resources/images/tabs-default.svg"/>"/>
					<span style="background:#e9e9e9" class="history_page_no badge badge-light">0</span>
	 			</button>
				<div id="historyList" class="dropdown-menu dropdown-menu-right table_row" style="width:350px; border: 1px solid black;transform-origin: right; height:230px; overflow-y:scroll">
					<div class="history_tool">
						<span type="button" onclick="close_all_history_div();"><spring:message code="close_all"/></span>
					</div>
				</div>
			</div>	
<!-- 			<div id="home-btn" class="languageText" style="margin-top:3px!important;"> -->
<!-- 				<a href="lang=rtl" class="fa-2x lang-icon" draggable="false" title="Module Page">Ar</a> -->
<!-- 			</div> -->
			<div id="EN" class="languageText" style="margin-top:3px!important;">
				<a href="lang=en" class="fa-2x" draggable="false" title="Module Page" >EN</a>
			</div>	
			<div id="home-btn">
				<a href="home" class="fa fa-home fa-2x" draggable="false" title="Module Page" ></a>
			</div>
			
<!-- 	 /////////////////////////////////////////////////////////   -->
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
							<a href="userprofile" class="userProfile"><i class="fa fa-user" aria-hidden="true"></i><span>Account</span></a>
						</div>
					</div>
					<div class="account-dropdown__footer">
						<a href="logout" class="userProfile" ><i class="fa fa-power-off" aria-hidden="true"></i><span>Logout</span></a>
					</div>
				</div>
			</div>
<!-- 	/////////////////////////////////////////////////////////			  -->
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

	
	<div class="navbar" style="background:#0d7e8a; width:100%;height:55px" dir="rtl">
		<div style="margin-right:27%;">
			<span id="element_title" style="display: none"></span>
		</div>
		<div style="height: 30px;">	
	    	<span class="alert_message"></span>
		</div>
		<div>	
			<button title="Fit screen" id="fit-screen" class="btn graph_button" onclick="graph1.fit();"><i class="fa fa-arrows-alt" style="font-size:24px;color:#ffffff"></i></button>
			<button title="Zoom out" id="zoom-out" class="btn graph_button" onclick="graph1.zoomOut();"><i class="fa fa-search-minus" style="font-size:24px;color:#ffffff"></i></button>
			<button title="Zoom in" id="zoom-in" class="btn graph_button"  disabled="disabled" onclick="graph1.zoomIn();"><i class="fa fa-search-plus" style="font-size:24px;color:#ffffff"></i></button>
			<button style="font-size: 20px;" title="Save" id="save_button" disabled="disabled" class="btn" onclick="save_graph(); "><i class="fa fa-floppy-o" style="font-size:24px;color:#ffffff"></i></button>	
			<div class="catalog_save_button"></div>
			<div class="matrix_save_button"></div>
		</div>
	</div>
<!-- 	<div class="row" style="background:#e1e6f6; height: 83vh; width: 100vw"> -->
		<div class="row" style="background:#ffffff; height: 83vh; width: 100vw">
	    <div class="col content_area panel-right" id="cntr" style="margin-left:1% !important">
			<div>
				<div id="context-menu2">
				</div>
				<div id="form_id" style="overflow-Y:auto" >		
				</div>
				<h1 id="table_h1" align="Center"></h1>
				<div id="graphId" ondrop="drop(event)" ondragover="allowDrop(event)">
				</div>
			    <div id="paleteDiv" class="content_area">
			    	<div id="palete">
			    	</div>
			    </div>
				<div id="catalog" class="catalog_matrix_main_div" dir="rtl">
<!-- 					<input type="text" id="catalogfilter" onkeyup="catalogfilter();" placeholder="Search for names.." title="Type in a name"> -->
					<table id="catalog_table" class="table table-striped table-bordered catalog_matrix_table">
						<thead class="catalog_matrix_table_thead"></thead>
						<tbody class="catalog_matrix_table_tbody">
						</tbody>
					</table>
				</div>
				<div id="matrix" class="catalog_matrix_main_div" dir="rtl">
<!-- 					<input type="text" id="catalogfilter" onkeyup="catalogfilter();" placeholder="Search for names.." title="Type in a name"> -->
					<table id="matrix_table" class="table table-striped table-bordered catalog_matrix_table">
						<thead class="catalog_matrix_table_thead"></thead>
						<tbody class="catalog_matrix_table_tbody">
						</tbody>
					</table>
				</div>
			</div>
	    </div>
	    <div class="col-3 ml-1 content_area panel-left">
<%-- 	    	<img id ="loader_image" alt="schema"  src="<c:url value="resources/images/loader.gif"/>"> --%>
			<img id ="loader_image" style="display:none;" loading="lazy" alt="schema" width="200px" height="70px" src="<c:url value="resources/images/main-logo-removebg.png"/>">
	    	<div id="left_pane" style="margin-right:-5%">

<!-- 	    	<div class="row"> -->
	    		<div>

	    			<div class="abc" style="overflow-x: auto !important">
		    			<div  id="context-menu" >
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
		    			
		    			<div style="height: 100%; width: 100% !important; overflow-y:scroll;" id="tabs_1">
		    				<div style="width: 100%; overflow: hidden">
			    				<ul class="object_model_align" style="width: 100%; margin-right: -17%;">
			    					<li dir="rtl" class="filter"><input class="form-control" type="text" id="myInput" onkeyup="SearchObjects(); SearchModels();" placeholder="<spring:message code="filter"/>" title="Type in a name"/></li>
								    <li><a href="#tabs-2" draggable="false"><spring:message code="models"/></a></li>
									<li class="ui-tabs-active ui-state-active"><a href="#tabs-1" draggable="false"><spring:message code="objects"/></a></li>
								</ul>
							 </div>
		    				<div id="tabs-1">
			    				<ul id="myUL">
			    					<li id="lt" style="text-align: right" dir="rtl">
			    						<span class="caret"><spring:message code="lambdatheta"/></span>
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
									  <li style="text-align: right" dir="rtl">
									  <span id="objectrecycle" class="fa fa-trash-o" onclick="recycle_toggle(this);"><spring:message code="recycle_bin"/></span>
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
			    					<div id="m1" style="text-align: right" dir="rtl">
			    					</div>
			    					<div id="recycle_bin" style="text-align: right" dir="rtl">
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
<!-- 	    <div id="paleteDiv" class="col 2 mr content_area"> -->
<%-- 	    	<img id ="loader_image_palete" alt="schema"  src="<c:url value="resources/images/ajax-loader.gif"/>"> --%>
<!-- 	    	<div id="palete"> -->
<!-- 	    	</div> -->
<!-- 	    </div> -->
	</div>

<!-- The Modal -->
<div id="myModal" class="modal" style="display: none;">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <span id="modal_heading"></span>
    </div>
    <div dir="rtl" class="modal-body">
      <p align="right" id="modal_info_text"></p>
    </div>
	<!--     <div class="modal-footer"> -->
	<!--       <h3>Modal Footer</h3> -->
	<!--     </div> -->
  </div>
</div>

<!-- The Modal For Relationship-->
<div id="myModal1" class="modal" style="display: none;">
  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close" >&times;</span>
      <span id="modal1_title">&nbsp;</span>
    </div>
    <div id="modal1_body" class="modal-body" dir="rtl" style="text-align: right">
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
      <span class="close" >&times;</span>
      <span id="updateFormModal_heading"></span>
    </div>
    <div id="updateFormModal_body" class="modal-body" dir="rtl">
    	<div id="updateFormModal_form"></div>
    	<div id="addButton"></div>
      <!-- <p id="modal_info_text1"></p> -->
    </div>
	<!--     <div class="modal-footer"> -->
	<!--       <h3>Modal Footer</h3> -->
	<!--     </div> -->
  </div>
</div>

<!-- <input type="text" value="Amsterdam,Washington,Sydney,Beijing,Cairo" data-role="tagsinput"  /> -->

<!-- <input type="text" value="abc" data-role="tagsinput"  class="form-control" readonly> -->

<!--     <div class="row d-flex justify-content-center mt-100"> -->
<!--         <div class="col-md-6">  -->
<!--         <select id="choices-multiple-remove-button" placeholder="Select upto 5 tags" multiple> -->
<!--             <option value="HTML">HTML</option> -->
<!--             <option value="Jquery">Jquery</option> -->
<!--             <option value="CSS">CSS</option> -->
<!--             <option value="Bootstrap 3">Bootstrap 3</option> -->
<!--             <option value="Bootstrap 4">Bootstrap 4</option> -->
<!--             <option value="Java">Java</option> -->
<!--             <option value="Javascript">Javascript</option> -->
<!--             <option value="Angular">Angular</option> -->
<!--             <option value="Python">Python</option> -->
<!--             <option value="Hybris">Hybris</option> -->
<!--             <option value="SQL">SQL</option> -->
<!--             <option value="NOSQL">NOSQL</option> -->
<!--             <option value="NodeJS">NodeJS</option> -->
<!--         </select>  -->
<!--         </div> -->
<!--     </div> -->
    
</div>

<!-- <div class="row"> -->
<!-- 	<div id="options" class="col-sm-3" > -->
<!-- 		<a href="fromExcel"><button>Import/Export Database</button></a> -->
<!-- 		<a href="metamodel_user"><button>MetaModel</button></a> -->
<!-- 		<a onclick="callGraphOrTableView()"><button id="callGraphOrTableView">Graphical View</button></a> -->
<!-- 		<hr> -->
<!-- 		<div class="abc"> -->
<!-- 			<ul id="myUL"> -->
<!-- 				<li id="lt"><span class="caret">LambdaTheta</span> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div class="col-sm-9"> -->
<!-- 		<h1 id="table_h1" align="Center"></h1> -->
<!-- 		<div id="form_id">		 -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->

<!-- Information_modal script file -->
<script type="text/javascript" src="<c:url value="/resources/js/information_modal_rtl.js" />"></script>

<!-- Relationship_modal script file -->
<script type="text/javascript" src="<c:url value="/resources/js/relationship_modal_rtl.js" />"></script>

<!-- Export Graph script file -->
<script type="text/javascript" src="<c:url value="/resources/js/exportGraph.js" />"></script>

<!-- Export Graph script file -->
<script type="text/javascript" src="<c:url value="/resources/js/export_Graph.js" />"></script>

<!-- updateFormModal script file -->
<script type="text/javascript" src="<c:url value="/resources/js/updateFormModal_rtl.js" />"></script>


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
    <fieldset class="changebodyDirection">
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
    <fieldset class="changebodyDirection">
      <label for="name"><spring:message code="file"/></label>
      <input type="text" name="filename" id="file_name" placeholder="<spring:message code="New_File"/>" class="text ui-widget-content ui-corner-all">
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
  
  <div id="exportGraph">
  </div>
  
</div>

<!-- Dialog For new catalog -->
<div id="catalogName" title="<spring:message code="Create_Catalog"/>" style="display:none">
  <form>
    <fieldset class="changebodyDirection">
      <label for="name"><spring:message code="catalog"/></label>
      <input type="text" name="catalogname" id="catalog_name" placeholder="<spring:message code="new_catalog"/>" class="text ui-widget-content ui-corner-all">
      <br/>
      <label for="elements"><spring:message code="select_element"/></label>
<!--       <select name="elements" id="catalogElements" style="width:130px;" > -->
      <select name="elements" id="catalogElements" style="" >
      	 <option value="select" selected disabled><spring:message code="select_dropdown"/></option>
      </select>
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>

<!-- Dialog For new translateText -->
<div id="translateText" title="<spring:message code="translate_text"/>" style="display:none; direction:rtl">
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
    <fieldset class="changebodyDirection">
      <label for="name"><spring:message code="matrix"/></label>
      <input type="text" name="matrixname" id="matrix_name" placeholder="<spring:message code="New_Matrix"/>" class="text ui-widget-content ui-corner-all">
       <br><label for="elements"> <spring:message code="row"/> </label>
      <select name="elements" id="matrixElement1" style="width:130px;" >
      	 <option value="select" selected disabled><spring:message code="select_dropdown"/></option>
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
<!-- <script>
$( function() {
    var dialog, form,
 
      // From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
      emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
      name = $( "#name" ),
      email = $( "#email" ),
      password = $( "#password" ),
      allFields = $( [] ).add( name ).add( email ).add( password ),
      tips = $( ".validateTips" );
 
    function updateTips( t ) {
      tips
        .text( t )
        .addClass( "ui-state-highlight" );
      setTimeout(function() {
        tips.removeClass( "ui-state-highlight", 1500 );
      }, 500 );
    }
 
    function checkLength( o, n, min, max ) {
      if ( o.val().length > max || o.val().length < min ) {
        o.addClass( "ui-state-error" );
        updateTips( "Length of " + n + " must be between " +
          min + " and " + max + "." );
        return false;
      } else {
        return true;
      }
    }
 
    function checkRegexp( o, regexp, n ) {
      if ( !( regexp.test( o.val() ) ) ) {
        o.addClass( "ui-state-error" );
        updateTips( n );
        return false;
      } else {
        return true;
      }
    }
 
    function addUser() {
      var valid = true;
      allFields.removeClass( "ui-state-error" );
 
      valid = valid && checkLength( name, "username", 3, 16 );
      valid = valid && checkLength( email, "email", 6, 80 );
      valid = valid && checkLength( password, "password", 5, 16 );
 
      valid = valid && checkRegexp( name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter." );
      valid = valid && checkRegexp( email, emailRegex, "eg. ui@jquery.com" );
      valid = valid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
 
      if ( valid ) {
        $( "#users tbody" ).append( "<tr>" +
          "<td>" + name.val() + "</td>" +
          "<td>" + email.val() + "</td>" +
          "<td>" + password.val() + "</td>" +
        "</tr>" );
        dialog.dialog( "close" );
      }
      return valid;
    }
 
    dialog = $( "#dialog-form" ).dialog({
      autoOpen: false,
      height: 400,
      width: 350,
      modal: true,
      buttons: {
        "Create an account": addUser,
        Cancel: function() {
          dialog.dialog( "close" );
        }
      },
      close: function() {
        form[ 0 ].reset();
        allFields.removeClass( "ui-state-error" );
      }
    });
 
    form = dialog.find( "form" ).on( "submit", function( event ) {
      event.preventDefault();
      addUser();
    });
 
    $( "#create-user" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
  } );
  </script> -->



<!-- <button id="create-user">Create new user</button> -->
<!-- jquery prompt ends here-->
<!-- nonExistingElements script file -->
 <!-- TAGS INPUT -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.js" integrity="sha512-VvWznBcyBJK71YKEKDMpZ0pCVxjNuKwApp4zLF3ul+CiflQi6aIJR+aZCP/qWsoFBA28avL5T5HA+RE+zrGQYg==" crossorigin="anonymous"></script>

<script type="text/javascript" src="<c:url value="/resources/js/nonExistingElements.js" />"></script>


</body>

<script>
	///////// multilanguage//////
// 	function googleTranslateElementInit() {
// 	  		new google.translate.TranslateElement({pageLanguage: ''}, 'google_translate_element');
// 	}
</script>
<script>
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
// 	$(".panel-left").resizable({
// 	   handleSelector: ".splitter",
// 	   resizeHeight: false
// 	});

	//oncontextmenu_object
	function on_context_menu(element, type){
			var element_content = element;
			var type_content = type;
//  		alert("You clicked on_context_menu")

			  			
			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_= '<a style="text-decoration:none; cursor:cell;" href="javascript:addNew(\''+element_content+'\',\''+type_content+'\')"><div class="item"><spring:message code="new_object"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = (event.pageX - 150) + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			});
	}
	
	//Right click Context-menu off
	document.addEventListener('contextmenu', event => event.preventDefault());
	
	//on_context_menu_remove_object
	function on_context_menu_remove(element, type, ul_id){
			var element_content = element;
			var type_content = type;
			  			
			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+type+'\',\''+element+'\')"><div class="item"><spring:message code="translate_text"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeObj(\''+element_content+'\',\''+type_content+'\', \''+ul_id+'\', \''+imageSource+'\')"><div class="item"><spring:message code="remove"/>&nbsp;<i class="fa fa-trash-o" aria-hidden="true"></i></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = (event.pageX - 150) + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			});
	}
	
	function removeObj(table,name, ulID){
		var tableName = table.split(' ').join('_');
		//console.log("imageSource", imageSource);
		//console.log(table,name,ul_id)
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
		    		  console.log("element", element)
		    		  console.log("name", name.replaceAll(" ", "---"))
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
			  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeObjRelationship(\''+element_content+'\',\''+type_content+'\', \''+liID+'\')"><div class="item"><spring:message code="remove"/>&nbsp;<i class="fa fa-trash-o" aria-hidden="true"></i></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = (event.pageX - 150) + "px";
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
			  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeObjRelationshipConnector(\''+element_content+'\',\''+type_content+'\', \''+element_type+'\')"><div class="item"><spring:message code="remove"/>&nbsp;<i class="fa fa-trash-o" aria-hidden="true"></i></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = (event.pageX - 150) + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			});
	}
	
	function removeObjRelationshipConnector(table_name,element_name, ul_id){ //ul_id

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
	
	function numItemCounter(){
  	  if(numItems != 0 ){
    	  numItems = numItems - 1;
    	  $(".history_page_no").html(numItems);  
	  }
	}
	
	function on_context_menu_restore_obj(tableName, name, elementIcon, ul_id){
		event.preventDefault();
		//console.log("tableName:"+tableName+", name: "+name+"");

		var contextElement = document.getElementById("context-menu");
		var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restoreObj(\''+tableName+'\',  \''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><div class="item"><spring:message code="restore"/>&nbsp;<i class="fa fa-undo" aria-hidden="true"></i></div></a>';
		content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteObjPermanently(\''+tableName+'\',  \''+name+'\', \''+ul_id+'\')"><div class="item"><spring:message code="delete"/>&nbsp;<i class="fa fa-trash" aria-hidden="true"></i></div></a>';
		contextElement.innerHTML = content_;
		contextElement.style.top = event.pageY + "px";
		contextElement.style.left = (event.pageX - 150) + "px";
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
// 		console.log("split_name", split_name)
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
		var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restoreObjRelationship(\''+tableName+'\',  \''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><div class="item"><spring:message code="restore"/>&nbsp;<i class="fa fa-undo" aria-hidden="true"></i></div></a>';
		content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteObjPermanently(\''+tableName+'\',  \''+name+'\', \''+ul_id+'\')"><div class="item"><spring:message code="delete"/>&nbsp;<i class="fa fa-trash" aria-hidden="true"></i></div></a>';
		contextElement.innerHTML = content_;
		contextElement.style.top = event.pageY + "px";
		contextElement.style.left = (event.pageX - 150) + "px";
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
		var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restoreObjRelationshipConnector(\''+tableName+'\',  \''+name+'\', \''+elementIcon+'\', \''+ul_id+'\')"><div class="item"><spring:message code="restore"/>&nbsp;<i class="fa fa-undo" aria-hidden="true"></i></div></a>';
		content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteObjPermanently(\''+tableName+'\',  \''+name+'\', \''+ul_id+'\')"><div class="item"><spring:message code="delete"/>&nbsp;<i class="fa fa-trash" aria-hidden="true"></i></div></a>';
		contextElement.innerHTML = content_;
		contextElement.style.top = event.pageY + "px";
		contextElement.style.left = (event.pageX - 150) + "px";
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
		
		//console.log("name", name)
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
		console.log("company_name", company_name)
		//console.log('parent id',folderName);
 		//var element_content = element;
		//var type_content = type;
		//alert("You clicked on_context_menu")
		  			
		  event.preventDefault();
		  var contextElement = document.getElementById("context-menu");
		  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
		  //var content_= '<a style="text-decoration:none; cursor:cell;" onclick="createNewGraph()"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>New Folder</div></a>';
		  var content_= "";
		  if(folderName=='0'){
			  content_+= '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFolder(\''+company_name+'\', \''+folderID+'\',\''+id+'\')"><div class="item"><spring:message code="new_folder"/>&nbsp;<i class="fa fa-folder" aria-hidden="true"></i></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><spring:message code="new_model"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="catalogname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><spring:message code="new_catalog"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="matrixname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><spring:message code="New_Matrix"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
// 			  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>New Model</div></a>';
		  }else{
			  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewModelFile(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><spring:message code="new_model"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="catalogname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><spring:message code="new_catalog"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:cell;" onclick="matrixname(\''+company_name+'\',\''+folderID+'\',\''+id+'\')"><div class="item"><spring:message code="New_Matrix"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="deleteModelFolder(\''+folderID+'\',\''+id+'\', \''+folderName+'\',\''+ulID+'\',\'folder\', \''+company_name+'\', \''+parentID+'\')"><div class="item"><spring:message code="remove"/>&nbsp;<i class="fa fa-trash" aria-hidden="true"></i></div></a>';
		  }
		  contextElement.innerHTML = content_;
		  contextElement.style.top = event.pageY + "px";
	 	  contextElement.style.left = (event.pageX - 150) + "px";
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

	function downloadCatalog(catalog_name , catalog_element){
	
		console.log(catalog_name);	
    	console.log(catalog_element);
    	var catalog_table_var = document.getElementById("catalog_table");
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
	
	function saveCatalog(catalog_name ,catalog_element,companyName,folderID,parentID){
    	console.log(catalog_name);	
    	console.log(catalog_element);
    	var catalog_table_var = document.getElementById("catalog_table");
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
  					
		        }
		});
    	
	}

	function drawCatalogFromXML(catalogName,id,elementName){
		/* catalog In history start's here */
    	$("#element_title").empty();
    	$("#element_title").show().text(catalogName);
		console.log(catalogName);
//     	$(element_title).show(catalogName);		
		catalogView();
    	var current_ID = divId+divIdCount++;
      	var clsName = catalogName;
      	console.log(elementName);
      	if(historyTabItems.includes(catalog_name) == false){
            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'" style="float: right;"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+catalogName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showCatalog(\''+catalogName+'\',\''+catalogName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/catalog.svg"/>"><br/>'+catalogName+'</a></div></div>');
            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
            $("#history_tab").css("display", "flex")
            historyTabItems.push(catalog_name);
            console.log('aa',historyTabItems)
            numItems = $('.column').length;
			$(".history_page_no").html(numItems)
        }else{
        	$( "."+clsName ).remove();
            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'" style="float: right;"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+catalogName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showCatalog(\''+catalogName+'\',\''+catalogName+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/catalog.svg"/>"><br/>'+catalogName+'</a></div></div>');
            $("#history_tab").css("display", "flex");
			numItems = $('.column').length;
			$(".history_page_no").html(numItems)
        }

    	/* catalog In history End's here */
    		$.ajax({
			      url: "getCatalogTableFromXML", 
			      data:{'catalog_id':id},
			      success:function(data) {
			    		$("#catalog").show();
					var thead = data["thead"];
					var tbody = data["tbody"];
					var a = document.getElementById("catalog_table");
					var theadVar = a.getElementsByTagName("thead");
					console.log(' theadVar', theadVar)
					thead = "<tr>"+thead+"</tr>";
					$(theadVar).empty();									
					$(theadVar).append(thead);
					var tbodyVar = a.getElementsByTagName("tbody");
					$(tbodyVar).empty();
					$(tbodyVar).append(tbody);
					
// 					$("#catalog_save_button").text("Save Button")
					$(".catalog_save_button").empty().append("<button style='font-size: 20px;' title='Save' class='btn' onclick='saveCatalog(\""+catalogName+"\",\""+elementName+"\");'><span class='fa fa-floppy-o' aria-hidden='true'></span></button>")
					$(".catalog_save_button").append("<button style='font-size: 20px;' title='Save' class='btn' onclick='downloadCatalog(\""+catalogName+"\",\""+elementName+"\");'><span class='fa fa-download' aria-hidden='true'></span></button>")
					
// 					$(tbodyVar).append('<input type="button" class="btn btn-success" value="Save Catalog" onclick="saveCatalog(\''+catalogName+'\',\''+elementName+'\');"></input>');
// 					$(tbodyVar).append('<input type="button" class="btn btn-success" value="Download Catalog" onclick="downloadCatalog(\''+catalogName+'\',\''+elementName+'\');"></input>');
					var dataTable_catalog;
					if(dataTable_catalog_created == false){
						dataTable_catalog = $('#catalog_table').DataTable({paging: false});
						dataTable_catalog_created = true;
					}
			      
			      }
    		}); 		        		
	}
	
	function fill_elements_in_dropdown(append_id, item){

// 		 if(item == "Business Actor"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Actor"/>'
// 			 }));
// 		 }
// 		 else if(item == "Business Role"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Role"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Business Collaboration"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Collaboration"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Business Interface"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Interface"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Business Process"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Process"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Business Function"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Function"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Business Interaction"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Interaction"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Business Event"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Event"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Business Service"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Service"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Business Object"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Business_Object"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Contract"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Contract"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Representation"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Representation"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Product"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Product"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Application Component"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Application_Component"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Application Collaboration"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Application_Collaboration"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Application Interface"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Application_Interface"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Application Function"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Application_Function"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Application Interaction"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Application_Interaction"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Application Process"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Application_Process"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Application Event"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Application_Event"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Application Service"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Application_Service"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Data Object"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Data_Object"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Node"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Node"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Device"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Device"/>'
// 			 })); 
// 		 }
// 		 else if(item == "System Software"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="System_Software"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Technology Collaboration"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Technology_Collaboration"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Technology Interface"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Technology_Interface"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Path"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Path"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Communication Network"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Communication_Network"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Technology Function"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Technology_Function"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Technology Process"){
// 			 $('#catalogElements').append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Technology_Process"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Technology Interaction"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Technology_Interaction"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Technology Event"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Technology_Event"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Technology Service"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Technology_Service"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Artifact"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Artifact"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Equipment"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Equipment"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Facility"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Facility"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Distribution Network"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Distribution_Network"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Material"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Material"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Work Package"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Work_Package"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Deliverable"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Deliverable"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Implementation Event"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Implementation_Event"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Plateau"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Plateau"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Gap"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Gap"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Stakeholder"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Stakeholder"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Driver"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Driver"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Assessment"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Assessment"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Goal"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Goal"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Outcome"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Outcome"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Principle"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Principle"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Requirement"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Requirement"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Constraint"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Constraint"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Meaning"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Meaning"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Value"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Value"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Resource"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Resource"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Capability"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Capability"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Value Stream"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Value_Stream"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Course of Action"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Course_of_Action"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Location"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Location"/>'
// 			 })); 
// 		 }
// 		 else if(item == "Grouping"){
// 			 $(append_id).append($('<option>',{ 
// 				 value: item,
// 				 text : '<spring:message code="Grouping"/>'
// 			 })); 
// 		 }
		//$('#catalogElements').empty();
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
    					 fill_elements_in_dropdown('#catalogElements', item);
//     		            $('#catalogElements').append($('<option>',{ 
//     		              value: item,
//     		              text : item
//     		            }));
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
		        "<spring:message code='Create'/>": function addCatalog(){
		        	catalogView();
		        	$(element_title).empty();
					$("#element_title").show().text(document.getElementById("catalog_name").value);
		        	$('#catalogfilter').show();
		        	var catalog_name = $("#catalog_name").val();
		        	var catalog_element = $("#catalogElements").val();
		        	/* catalog In history start's here */
		        	var current_ID = divId+divIdCount++;
		        	allDivIds.push(current_ID);
		          	var clsName = catalog_name;
		        	/* catalog In history End's here */
		        	if(catalog_name && catalog_element){
		        		$.ajax({
		  			      url: "getCatalogTable_rtl", 
		  			      data:{'tableName':catalog_element,'catalog_name':catalog_name},
		  			      success:function(data) {
		  			    		$("#catalog").show();
								var thead = data["thead"];
								var tbody = data["tbody"];
								var a = document.getElementById("catalog_table");
								var theadVar = a.getElementsByTagName("thead");
								console.log(' theadVar', theadVar)
								thead = "<tr>"+thead+"</tr>";
								$(theadVar).empty();									
								$(theadVar).append(thead);
								var tbodyVar = a.getElementsByTagName("tbody");
								$(tbodyVar).empty();
								$(tbodyVar).append(tbody);
								$(".catalog_save_button").empty().append("<button style='font-size: 20px;' title='Save' class='btn' onclick='saveCatalog(\""+catalog_name+"\",\""+catalog_element+"\",\""+companyName+"\",\""+folderID+"\",\""+parentID+"\");'><span class='fa fa-floppy-o' aria-hidden='true'></span></button>")
								$(".catalog_save_button").append("<button style='font-size: 20px;' title='Download' class='btn' onclick='downloadCatalog(\""+catalog_name+"\",\""+catalog_element+"\");'><span class='fa fa-download' aria-hidden='true'></span></button>")
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
						            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+catalog_element+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showCatalog(\''+current_ID+'\',\''+catalog_name+'\',\''+catalog_element+'\');titleForCatalog(\''+catalogName+'\');"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/catalog.svg"/>"><br/>'+catalog_name+'</a></div></div>');
						            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
						            $("#history_tab").css("display", "flex")
						            historyTabItems.push(catalog_name);
						            numItems = $('.column').length;
									$(".history_page_no").html(numItems)
					            }else{
					            	$( "."+clsName ).remove();
						            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+catalog_element+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showCatalog(\''+current_ID+'\',\''+catalog_name+'\',\''+catalog_element+'\');titleForCatalog(\''+catalogName+'\');"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/catalog.svg"/>"><br/>'+catalog_name+'</a></div></div>');
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
// 							     $('#catalog_table tbody')
// 							         .on( 'mouseenter', 'td', function () {
// 							             var colIdx = dataTable_catalog.cell(this).index().column;
							  
// 							             $( dataTable_catalog.cells().nodes() ).removeClass( 'highlight' );
// 							             $( dataTable_catalog.column( colIdx ).nodes() ).addClass( 'highlight' );
// 							         } );
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
	
	function showCatalog(showDivID, catalogName, catalog_element){
		/* For hide history tab */
// 		$( "#historyList" ).css("display", "none");
		/* For Remove color from object elements */
// 		$.each(allDivIds, function(i, val){
// 			$( "#"+val+"11" ).css("background", "");
// 		});
		/* For Remove color from model elements */
		$("#historyList").css("display", "none");
		$("#element_title").empty();
    	$("#element_title").show().text(catalogName);
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
		$.ajax({
		      url: "getCatalogTable", 
		      data:{'tableName':catalog_element},
		      success:function(data) {
		    		$("#element_title").show().text(catalogName);
		    		$('#element_title').prop('title', catalogName);
					var thead = data["thead"];
					var tbody = data["tbody"];
					var a = document.getElementById("catalog_table");
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
		catalogView();
	} 
	function catalogfilter() {
		
// 		  $("catalogfilter").hide
// 		  var input, filter, table, tr, td, i, txtValue;
// 		  input = document.getElementById("catalogfilter");
// 		  filter = input.value.toUpperCase();
// 		  table = document.getElementById("catalog_table");
// 		  tr = table.getElementsByTagName("tr");
// 		  for (i = 0; i < tr.length; i++) {
// 		    td = tr[i].getElementsByTagName("td")[0];
// 		    if (td) {
// 		      txtValue = td.textContent || td.innerText;
// 		      if (txtValue.toUpperCase().indexOf(filter) > -1) {
// 		        tr[i].style.display = "";
// 		      } else {
// 		        tr[i].style.display = "none";
// 		      }
// 		    }       
// 		  }
		}

	// catalog work End's here
function downloadMatrix(matrixName,elementName){
	var matrix_table_var = document.getElementById("matrix_table");
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
// 	console.log('theadList',theadList)
// 	console.log('tbodyList',tbodyList)
// // 	$.ajax({
// 	      url: "downloadMatrixAsExcel", // url: "/findTables?dbName="+db_name,
// 	      type: "POST",
// 	      data: {'theadList':theadList,
// 	    	  	 'tbodyList':tbodyList},
// 	      //dataType: "text/String"
// 			success: function(data) {
	
// 	        }
// 	});
}	
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
		      //type: "GET",
		      data: {},
		      //dataType: "text/String"
    			success: function(data) {
//     				$('#catalogElements').empty();
   				 	$.each(data, function (i, item) {
   					 	fill_elements_in_dropdown('#matrixElement1', item);
//    		            $('#matrixElement1').append($('<option>',{ 
//    		              value: item,
//    		              text : item
//    		            }));
   		          	});
   				 	$.each(data, function (i, item) {
   					 	fill_elements_in_dropdown('#matrixElement2', item);
//     		            $('#matrixElement2').append($('<option>',{ 
//     		              value: item,
//     		              text : item
//     		            }));
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
		        	$("#save_button").hide();
		        	$(".graph_button").hide();
		        	matrixView();
		        	$(element_title).empty();
// 					$("#element_title").show().text(document.getElementById("catalog_name").value);
// 		        	$('#catalogfilter').show();
		        	var matrix_name = $("#matrix_name").val();
		        	var matrix_element1 = $("#matrixElement1").val();
		        	var matrix_element2 = $("#matrixElement2").val();
		          	var matrix_relation = $("#matrixRelation").val();
		        	$(element_title).empty();
					$("#element_title").show().text(document.getElementById("matrix_name").value);
		        	console.log(matrix_name);
		        	console.log(matrix_element1);
		        	console.log(matrix_element2);
 		          	
		        	if(matrix_name && matrix_element1 && matrix_element2 && matrix_relation){
		        		var current_ID = divId+divIdCount++;
		        		
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
					            
// 								var a = document.getElementById("matrix_table");
// 								var theadVar = a.getElementsByTagName("thead");
// 								console.log(' theadVar', theadVar);
// 								thead = "<tr>"+thead+"</tr>";
// 								$(theadVar).empty();									
// 								$(theadVar).append(thead);
// 								var tbodyVar = a.getElementsByTagName("tbody");
// 								tbody = "<tr>"+tbody+"</tr>";
// 								$(tbodyVar).empty();
// 								$(tbodyVar).append(tbody);
								$("#matrix").empty(); 
								$("#matrix").append(tableData); 
// 								$("#matrix").append('<Button class="btn btn-success" onclick="downloadMatrix(\''+matrix_name+'\',\''+current_ID+'\')"> Download Matrix </Button>'); 
								showMatrixDiv(current_ID, null);
// 								$(".matrix_save_button").empty().append("<button style='font-size: 20px;' title='Save' class='btn' onclick='downloadMatrix(\""+matrix_name+"\",\""+matrix_element1+"\",\""+matrix_element2+"\");'><span class='fa fa-download' aria-hidden='true'></span></button>")
								$(".tags-input").tagsinput('items')
								/* matrix In history start's here */
			 		          	var clsName = matrixElement1;
			 		          	var clsName = matrixElement2;
								
			 		          	if(historyTabItems.includes(matrix_name) == false){
						            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+matrix_element1+'\',\''+matrix_element2+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrix(\''+matrix_name+'\',\''+matrix_element1+'\',\''+matrix_element2+'\');titleForCatalog(\''+matrixName+'\');"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrix_name+'</a></div></div>');
			 			            //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
			 			            $("#history_tab").css("display", "flex")
			 			            historyTabItems.push(matrix_name);
			 			            console.log('aa',historyTabItems)
			 		            }else{
			 		            	$( "."+clsName ).remove();
			 			            $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeDiv(\''+current_ID+'\', \''+matrix_element1+'\'\''+matrix_element2+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrix(\''+matrix_name+'\',\''+matrix_element1+'\',\''+matrix_element2+'\');titleForCatalog(\''+matrixName+'\');"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrix_name+'</a></div></div>');
			 			            $("#history_tab").css("display", "flex");
			 		            }
					        	/* matrix In history End's here */
		  			      },
		  			      complete: function (data) {
		  			    		saveMatrix(matrix_name,companyName,folderID,parentID,matrix_relation,current_ID);
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
function drawMatrixFromXML(matrixName,id){
	$("#chart").hide();
	$(element_title).empty();
	$("#element_title").show().text(matrixName);
	var current_ID = divId+divIdCount++;
	allDivIds.push(current_ID);
  	var clsName = matrixName;
  	if(historyTabItems.includes(matrixName) == false){
        $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+current_ID+'\', \''+matrixName+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\''+current_ID+'\', '+null+')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrixName+'</a></div></div>');
        //$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
        $("#history_tab").css("display", "flex")
        historyTabItems.push(matrix_name);
        console.log('aa',historyTabItems)
        numItems = $('.column').length;
		$(".history_page_no").html(numItems)
    }else{
    	$( "."+clsName ).remove();
        $("#historyList").append('<div id="'+current_ID+'11" class="column '+clsName+'"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\''+matrixName+'\', \''+matrixName+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="showMatrixDiv(\''+current_ID+'\', '+null+')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/matrix.svg"/>"><br/>'+matrixName+'</a></div></div>');
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
//		    		$("#"+current_ID).show();
//		    	$("#"+current_ID).css("display", "block");
//	 			var matrixDiv = document.getElementById("matrix");
 			var tableData = '<table id='+current_ID+' class="table table-striped table-bordered non-block" style="width:100%">';
			var thead = data["thead"];
			var tbody = data["tbody"];
			tableData += '<thead class="">'+thead+'</thead>';
			tableData += '<tbody class="">'+tbody+'</tbody>';
			tableData += '</table>';
//				var a = document.getElementById("matrix_table");
//				var theadVar = a.getElementsByTagName("thead");
//				console.log(' theadVar', theadVar)
//				thead = "<tr>"+thead+"</tr>";
//				$(theadVar).empty();									
//				$(theadVar).append(thead);
//				var tbodyVar = a.getElementsByTagName("tbody");
//				$(tbodyVar).empty();
			$("#matrix").empty();
			$("#matrix").append(tableData);
			$("#matrix").append('<Button class="btn btn-success" onclick="downloadMatrix(\''+matrixName+'\',\''+current_ID+'\')"> Download Matrix </Button>'); 
			$('.non-block').css('display', '!important');
// 			showMatrixDiv(current_ID, null);
	      }
	});
}
	function openRelationshipObjectForm(rowElement,columnElement,rowObject,columnObject,matrix_relation){
		
		var tableName = matrix_relation;
		
		var modal11 = document.getElementById("updateFormModal");
		$( "#modal_content" ).draggable();
		var span = document.getElementsByClassName("close")[2];
		console.log("tableName",tableName)
		document.getElementById("updateFormModal_heading").innerHTML = tableName;
		var cell = null;
		$.ajax({
		      url: "openRelationshipForm_rtl", 
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
					form_submitForUpdate(dbName, tableName, labels, idd,allIds,row_name,AllRelRowIDs,btnedit, object_name_id, imageName, current_ID,CurrenttabID[0],null,last_time_updated,AllRelTableIDs);
		      }	  	
		});
		
		 modal11.style.display = "block";
			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal11.style.display = "none";
			}
	}
	
	function addInMatrixInput(val,inputClass){
		 var value = val.value;  
		  $('#'+inputClass).tagsinput('add', value);
	}
	
	function showMatrix(matrix_name , matrix_element1 , matrix_element2){
		$("#historyList").css("display", "none");
		$("#element_title").empty();
    	$("#element_title").show().text(matrix_name);
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
		//console.log(folderID);
		//console.log(id);
		//console.log(folderName+"123");
		
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
	
	//on_context_menu_remove_graph
	function on_context_menu_remove_graph(graphID,liID, folderName,modelName, parentFolder){
			//var element_content = element;
			//var type_content = type;
 			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><spring:message code="translate_text"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
			  //content_ += '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\')"><div class="item"><spring:message code="translate_text"/>&nbsp;<i class="fa fa-plus" aria-hidden="true"></i></div></a>';
			  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'SVG\')"><div class="item"><spring:message code="export_as_SVG"/>&nbsp;<i class="fa fa-download" aria-hidden="true"></i></div></a>';
			  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'PNG\')"><div class="item"><spring:message code="export_as_PNG"/>&nbsp;<i class="fa fa-download" aria-hidden="true"></i></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeGraph(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\')"><div class="item"><spring:message code="remove"/>&nbsp;<i class="fa fa-trash-o" aria-hidden="true"></i></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = (event.pageX - 150) + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			}); 
	}
	
	function removeGraph(graphID,liID, folderName,modelName1, parentFolder){
		//console.log("element", $("#element_title").text());
		//console.log("modelName1", modelName1)
		//$("#recycle_bin_list").empty();
		//$("#recycle_bin_list").append('<li><span><i class="fa fa-trash-o" aria-hidden="true"></i> Recycle Bin</span></li>')
 		//alert(graphname);
		//var tableName = table.split(' ').join('_');
  		$.ajax({
		      url: "delGraphRowData", // url: "/findAttributes?dbName="+db_name,
		      data:{'graphID':graphID},
		      success:function(data) {
		    	  
 		    	  for(var i = 0; i < data.length ; i++){
		    		  
		    		  //console.log("data[i].modelName",data[i].modelName1);
		    		  //console.log("data[data.length-1].modelName", data[data.length-1].modelName)
		    		  
		    		  //if(data.length >= 1){
		    			  //$("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list" onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')" oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+data[i].modelName+'</li>')

		    				data[i].modelName.replaceAll(' ', '---');
		    				console.log("data[i].modelName", data[i].modelName)
		    				console.log("modelName1", modelName1)
		    			  if(data[i].modelName.replaceAll(' ', '---') == modelName1){
		    				
			    			   //console.log("Matched")
			    			   //console.log("data[i].modelName == data[data.length-1].modelName",data[i].modelName == data[data.length-1].modelName)
			    		  	   //$("#element_title").hide()  
			    			   $("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
		    			  }  
		    			  else if(data[i].modelName == modelName1){
		    	   		
				    			//console.log("Matched")
				    			//console.log("data[i].modelName == data[data.length-1].modelName",data[i].modelName == data[data.length-1].modelName)
				    		  	//$("#element_title").hide()  
				    			$("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file"  oncontextmenu="on_context_menu_restore(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
			    			  
		    			  }
		    		  //} 
		    	  }
		    	  $.each( data, function( key, value ) {
		    		  
				  });
		    	  //refreshTree();
		    	  //document.getElementById(liID).style.display="none";
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
	
	//on_context_menu_restore
	function on_context_menu_restore(graphID, name, folderName, liID,type,company_name,parentID){
 			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restore(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\')"><div class="item"><spring:message code="restore"/>&nbsp;<i class="fa fa-undo" aria-hidden="true"></i></div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteModelPermanently(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\')"><div class="item"><spring:message code="delete"/>&nbsp;<i class="fa fa-trash" aria-hidden="true" ></i></div></a>';
			  contextElement.innerHTML = content_;
			  contextElement.style.top = event.pageY + "px";
		 	  contextElement.style.left = (event.pageX - 150) + "px";
			  contextElement.classList.add("active");

			window.addEventListener("click",function(){
			  document.getElementById("context-menu").classList.remove("active");
			}); 
	}
	
	
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
	//Search Option For Object
// 	function SearchObjects() {
// 	    var input, filter, ul, li, span, i, txtValue;
// 	    input = document.getElementById("myInput");
// 	    filter = input.value.toUpperCase();
// 	    ul = document.getElementById("lt");
// 	    li = ul.getElementsByTagName("li");
// 	    for (i = 0; i < li.length; i++) {
// 	        a = li[i].getElementsByTagName("span")[0];
// 	        txtValue = a.textContent || a.innerText;
// 	        if (txtValue.toUpperCase().indexOf(filter) > -1) {
// 	            li[i].style.display = "";
// 	        } else {
// 	            li[i].style.display = "none";
// 	        }
// 	    }
// 	}

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
		     $('#arrowToggle').addClass('left');
		   } else {
			   $('#arrowToggle').removeClass('left');
			   $('#arrowToggle').addClass('down');
		   }
	}	
</script>
<!-- Modal Table -->
<!-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> -->
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
<script>
function firstFunction(){
	$("body").css("display", "inline")
}
// $(window).on("load", function(){
	
	$.ajax({ url: "?lang=ar",
	    success: function(){
		    if(!window.location.hash) {
		        window.location = window.location + '#rtl';
		        window.location.reload();
		    }
	    }
	});
  $('#catalogfilter').hide();
  getCompleteTree();
  getGraphNames();   
  getDeletedObjects();
// });
</script>
	<!-- for header dropdown start -->
    <script type="text/javascript" src="<c:url value="/resources/js/animsition.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>
    <!-- for header dropdown end -->
</html>