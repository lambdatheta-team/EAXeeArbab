var currentTabId;
var getTotalImgURI = [];
var getChartNameForPdf = [];
var getChartName = [];
var logoImg = [];
//let checkPdfData = [];
getTranslatedData = [];
getLanguage= localStorage.getItem("language")
$.ajax({
       url: getLanguage == "En" ? "getPropertiesDictionary" : "getPropertiesDictionaryArabic",
       async: false, 
       type: 'POST',
       data: {},
       dataType: 'json', // added data type
       success: function(langDict) {
			getTranslatedData.push(langDict);
       }
});
getTranslatedDataInArabic = [];
$.ajax({
       url: "getPropertiesDictionaryArabic",
       async: false, 
       type: 'POST',
       data: {},
       dataType: 'json', // added data type
       success: function(langDict) {
			getTranslatedDataInArabic.push(langDict);
       }
});
$(function() {
	var tabTitle = $("#tab_title"),
		tabContent = $("#tab_content"),
		tabTemplate = "<li><a href='#{href}' title='#{label}' ondblclick='changeTabName(this);'>#{label}</a> <span class='ui-icon ui-icon-closethick' role='presentation'></span></li>",
		tabCounter;
	var tabs = $("#tabs").tabs();	
	$(".disabled").attr('disabled','disabled')
	getChartDataFromDB();
	function getChartDataFromDB(){
		$.ajax({
			url: "getTabsFromDB", // url: "/findAttributes?dbName="+db_name,
			type: "GET",
//			data: { 'tab_title': label, 'containerid': id },
			dataType: "json",
			beforeSend: function() {
			},
			success: function(data) {
				if(data.length  == '0' || data.length  == 0){
//					dialog.dialog( "open" );	
					tabCounter = 2;		
				}
				else{
					const tabsIdArray = data.map(({ tab_id }) => tab_id);
					let maxTabNo = []
					for(i=0; i<tabsIdArray.length; i++){
						maxTabNo.push(Number(tabsIdArray[i].split('-')[1]))
					}
					maxTabNo.sort(function(a, b){return b - a});
					tabCounter = maxTabNo[0]+1;
//					tabCounter = data.length+1;
//					tabCounter++;
					for (const element of data) { // You can use `let` instead of `const` if you like
					    var label = element.tab_name,
//							id = "tabs-" + tabCounter,
							id = element.tab_id,
							li = $(tabTemplate.replace(/#\{href\}/g, "#" + id).replace(/#\{label\}/g, label)),
							tabContentHtml = tabContent.val() || "Tab " + tabCounter + " content.";				 
					    tabs.find(".ui-tabs-nav").append(li);
					    tabs.append("<div id='" + element.tab_id + "'><p>" + generateChartDiv(element.tab_id) +"</p></div>");
//						tabs.append("<div id='" + element.tab_id + "'><p>" + $("#chartContainer").html() +"</p></div>");
						tabs.tabs("refresh");
//						tabCounter++;					
					}
					enableDownloadPdfButtonInstantly()
				}
				$( "#tabs" ).tabs({
				  active: 1
				});				
			},
		});	
	}
	// Modal dialog init: custom buttons and a "close" callback resetting the form inside
	var dialog = $("#dialog").dialog({
		autoOpen: false,
		modal: true,
		buttons: {
			[Add]: function() {
				addTab();
				$(this).dialog("close");
			},
			[Cancel]: function() {
				$(this).dialog("close");
			}
		},
		close: function() {
			form[0].reset();
		}
	});
	// AddTab form: calls addTab function on submit and closes the dialog
	var form = dialog.find("form").on("submit", function(event) {
		addTab();
		dialog.dialog("close");
		event.preventDefault();
	});
	// Actual addTab function: adds new tab using the input from the form above
	function addTab() {
		$(".loader").css("display", "block");
		var count = $("#tabs li a").length;
		if(count <= 9){
			var label = tabTitle.val() || "Tab " + tabCounter,
				id = "tabs-" + tabCounter,
				li = $(tabTemplate.replace(/#\{href\}/g, "#" + id).replace(/#\{label\}/g, label)),
				tabContentHtml = tabContent.val() || "Tab " + tabCounter + " content.";
			$.ajax({
				url: "addTabIntoDatabase", // url: "/findAttributes?dbName="+db_name,
				type: "POST",
				data: { 'tab_title': label, 'containerid': id },
				dataType: "json",
				beforeSend: function() {
				},
				success: function(data) {
					if(data == 0){
						$(".loader").css("display", "none");
				    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+tab_name_already_exist+'</div>');
				    	alert_message_function();
					}
					else{
						$(".loader").css("display", "none");
						tabs.find(".ui-tabs-nav").append(li);
						tabs.append("<div id='" + id + "'><p>" + generateChartDiv(id) +"</p></div>");
				//		tabs.append("<div id='" + id + "'><p>" + $("#chartContainer").html() + "</p></div>");
						tabs.tabs("refresh");
						$( "#tabs" ).tabs({
						  active: tabCounter-1
						});			
						tabCounter++;
					}
				},
			});			
		}
		else{
			$(".loader").css("display", "none");
			$(".alert_message").html('<div class="alert alert-danger" role="alert">'+you_are_restricted_to_create_more_than_10_tabs+'</div>');
			alert_message_function();
		}
	}
		function generateChartDiv(tab_id){
			var addTabDivData = '<div id="chartContainer">';
			// FIRST DIV
			addTabDivData += `<div class="row chartRow">`;
			for(var i = 1 ; i < 4 ; i++){
//			addTabDivData +=`	<div id="div`+i+`" class="col-lg-4 col-md-6 col-sm-12" ondrop="drop(event)"
			addTabDivData +=`	<div id="div`+i+`" class="col-4" ondrop="drop(event)"
					ondragover="allowDrop(event)">
					<div class="change_direction setHeading">
						<div class="editChartNameDiv">
							<div class="changeChartName_`+tab_id+`_`+i+`" style="display:none">
								<input class="chartName_`+tab_id+`_`+i+` chartNameInputBorder" />
								<i class="saveChartButtonEnable`+tab_id+`_`+i+` fa fa-pencil-square-o" aria-hidden="true"  style="display:none;" onclick="saveChartName('`+tab_id+`_`+i+`','`+tab_id+`chartContainer`+i+`')"></i>
							</div>
							<h4 ondblclick="this.readOnly=''; enableChartSaveButton('`+tab_id+`_`+i+`','Save`+tab_id+`_`+i+`')" class="heading_`+tab_id+`_`+i+` defaultHeading">${Chart} `+i+`</h4>
						</div>
						<div>
							<button class="btn btn-info" onclick="textView('`+tab_id+`_`+i+`')" title='`+text_view+`'><i class="fa fa-font" style="font-size:24px;color:#ffffff"></i></button>
							<button class="btn btn-info" onclick="graphView('`+tab_id+`_`+i+`')" title='`+graph_view+`'><i class="fa fa-bar-chart-o" style="font-size:24px;color:#ffffff"></i></button>
							<button id=delete_${tab_id+"_"+i} class="btn btn-info" onclick="deleteChart('`+tab_id+`_`+i+`')" disabled title='`+Delete+`'><i class="fa fa-trash-o" style="font-size:24px;color:#ffffff"></i></button>
							<button class="btn btn-info" id="Save`+tab_id+`_`+i+`" title='`+save+`' disabled><i class="fa fa-floppy-o" style="font-size:24px;color:#ffffff" ></i></button>
						</div>
					</div>
					<hr>
						<div>
							<div draggable="false" ondragstart="drag(event)" id="drag`+i+`" class="dragArabic">
								<div id="`+tab_id+`chartContainer`+i+`" style="">
									<div class="row">
										<div class="col-4">
											<label id="labelForElement`+tab_id+`_`+i+`" for="elementDropdown`+tab_id+`_`+i+`" style="display:none;">${Select_Element}</label>
											<select class="form-control selectWidth" id="elementDropdown`+tab_id+`_`+i+`" style="display:none;">
												<option value="" selected disabled hidden>${Select_Element}</option>
											</select>
										</div>
										<div class="col-4">
											<label id="labelForAttribute`+tab_id+`_`+i+`" for="attributeDropdown`+tab_id+`_`+i+`" style="display:none;">${Select_Attribute}</label>
											<select class="form-control selectWidth" id="attributeDropdown`+tab_id+`_`+i+`" style="display:none;">
												<option value="" selected disabled hidden>${Select_Attribute}</option>
											</select>
											<button class="btn btn-info multipleChartAndOperation`+tab_id+`_`+i+` multipleChartAndOperationButton`+tab_id+`_`+i+` addButtonAlign" style="display:none;" onclick="addAttribute('`+tab_id+`_`+i+`')">${Add}</button>
										</div>
										<div class="col-4">
											<label id="labelForOperation`+tab_id+`_`+i+`" for="operationDropdown`+tab_id+`_`+i+`" style="display:none;">${Select_Operation}</label>
											<select class="form-control selectWidth" id="operationDropdown`+tab_id+`_`+i+`" style="display:none;">
												<option value="" selected disabled hidden>${Select_Operation}</option>
												<option value="Count">${Count}</option>
												<option value="Average">${Average}</option>
												<option value="Distribution">${Distribution}</option>
											</select>
										</div>
									</div>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<div class="row">
										<div class="col-6">
											<textarea  class="attributesTextArea`+tab_id+`_`+i+` multipleChartAndOperation`+tab_id+`_`+i+` form-control attributesTextArea" rows="" cols="" style="display:none;	border: 2px solid rgb(24, 162, 184);background: rgb(145, 228, 241) !important;resize: none" readonly></textarea>
											<button class="btn btn-info remove`+tab_id+`_`+i+`" style="display:none;" onclick="removeAddAttribute('`+tab_id+`_`+i+`')">${Remove}</button>
										</div>
										<div class="col-6 multipleChartAndOperation`+tab_id+`_`+i+` graphChartOptions" style="display:none">
											<div>
												<p class="disabled">${Operation_Applied_on}</p>
												<input class="disabled" type="radio" id="element`+tab_id+`_`+i+`" name="operationValue" value="Element">
												<label for="html">${Element}</label><br>
												<input class ="disabled" type ="radio" id="attribute`+tab_id+`_`+i+`" name="operationValue" value="Attribute">
												<label for="css">${Attribute}</label><br>
												</div>
												<div>
												<label class ="multipleChartAndOperation`+tab_id+`_`+i+`" id="" for="" style="display:none;">${Select_Chart_Type}</label>
												<select  id="chartType`+tab_id+`_`+i+`" class ="multipleChartAndOperation`+tab_id+`_`+i+` form-control" id="operationDropdown`+tab_id+`_`+i+`" style="display:none;">
												<option value="" selected disabled hidden>${Chart_Type}</option>
												<option value="bar">${Column}</option>
												<option value="clusteredBar">${Clustered_Column}</option>
												<option value="pie">${Pie}</option>
												</select>
												</div>
												</div>
												</div>
												<div class ="row">
												<div class ="col chartButtonDivArabic">
												<button class="btn btn-info reset`+tab_id+`_`+i+`" style="display:none;" onclick="resetData('`+tab_id+`_`+i+`')">${Reset}</button>
												<button class ="btn btn-info" id="generateTextButton`+tab_id+`_`+i+`" style="display:none;" onclick="generateTable('`+tab_id+`_`+i+`')">${Generate}</button>
												<button class ="btn btn-info generateGraphButtonArabic"  id="generateGraphButton`+tab_id+`_`+i+`" style="display:none;" onclick="generateGraph('`+tab_id+`_`+i+`','Save`+tab_id+`_`+i+`')">${Generate_Chart}</button>
												</div>
												</div>
											</div>
										</div>
									</div>
								</div>`;
			}
			addTabDivData += `</div>
							<br><hr>`;
			//SECOND DIV
			addTabDivData += `<div class="row chartRow">`;
			for(var i = 4 ; i < 7 ; i++){
//			addTabDivData +=`	<div id="div`+i+`" class="col-lg-4 col-md-6 col-sm-12" ondrop="drop(event)"
			addTabDivData +=`	<div id="div`+i+`" class="col-4" ondrop="drop(event)"
					ondragover="allowDrop(event)">
					<div class="change_direction setHeading">
						<div class="editChartNameDiv">
							<div class="changeChartName_`+tab_id+`_`+i+`" style="display:none">
								<input class="chartName_`+tab_id+`_`+i+` chartNameInputBorder" placeholder="Chart `+i+`"  />
								<i class="saveChartButtonEnable`+tab_id+`_`+i+` fa fa-pencil-square-o" aria-hidden="true"  style="display:none;" onclick="saveChartName('`+tab_id+`_`+i+`','`+tab_id+`chartContainer`+i+`')"></i>
							</div>
							<h4 ondblclick="this.readOnly=''; enableChartSaveButton('`+tab_id+`_`+i+`','Save`+tab_id+`_`+i+`')" class="heading_`+tab_id+`_`+i+`">${Chart} `+i+`</h4>						
						</div>
						<div>
							<button class="btn btn-info" onclick="textView('`+tab_id+`_`+i+`')" title='`+text_view+`'><i class="fa fa-font" style="font-size:24px;color:#ffffff"></i></button>
							<button class="btn btn-info" onclick="graphView('`+tab_id+`_`+i+`')" title='`+graph_view+`'><i class="fa fa-bar-chart-o" style="font-size:24px;color:#ffffff"></i></button>
							<button id=delete_${tab_id+"_"+i} class="btn btn-info" onclick="deleteChart('`+tab_id+`_`+i+`')" disabled title='`+Delete+`'><i class="fa fa-trash-o" style="font-size:24px;color:#ffffff"></i></button>
							<button class="btn btn-info" id="Save`+tab_id+`_`+i+`" title='`+save+`' disabled><i class="fa fa-floppy-o" style="font-size:24px;color:#ffffff" ></i></button>
						</div>
					</div>
					<hr>
						<div>
							<div draggable="false" ondragstart="drag(event)" id="drag`+i+`" class="dragArabic">
								<div id="`+tab_id+`chartContainer`+i+`">
									<div class="row">
										<div class="col">
											<label id="labelForElement`+tab_id+`_`+i+`" for="elementDropdown`+tab_id+`_`+i+`" style="display:none;">${Select_Element}</label>
											<select class="form-control selectWidth" id="elementDropdown`+tab_id+`_`+i+`" style="display:none;">
												<option value="" selected disabled hidden>${Select_Element}</option>
											</select>
										</div>
										<div class="col">
											<label id="labelForAttribute`+tab_id+`_`+i+`" for="attributeDropdown`+tab_id+`_`+i+`" style="display:none;">${Select_Attribute}</label>
											<select class="form-control selectWidth" id="attributeDropdown`+tab_id+`_`+i+`" style="display:none;">
												<option value="" selected disabled hidden>${Select_Attribute}</option>
											</select>
											<button class="btn btn-info multipleChartAndOperation`+tab_id+`_`+i+` multipleChartAndOperationButton`+tab_id+`_`+i+` addButtonAlign" style="display:none;" onclick="addAttribute('`+tab_id+`_`+i+`')">${Add}</button>
										</div>
										<div class="col">
											<label id="labelForOperation`+tab_id+`_`+i+`" for="operationDropdown`+tab_id+`_`+i+`" style="display:none;">${Select_Operation}</label>
											<select class="form-control selectWidth" id="operationDropdown`+tab_id+`_`+i+`" style="display:none;">
												<option value="" selected disabled hidden>${Select_Operation}</option>
												<option value="Count">${Count}</option>
												<option value="Average">${Average}</option>
												<option value="Distribution">${Distribution}</option>
											</select>
										</div>
									</div>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<div class="row">
										<div class="col-6">
											<textarea class="attributesTextArea`+tab_id+`_`+i+` multipleChartAndOperation`+tab_id+`_`+i+` form-control attributesTextArea" rows="" cols="" style="display:none;	border: 2px solid rgb(24, 162, 184);background: rgb(145, 228, 241) !important;resize: none" readonly></textarea>
											<button class="btn btn-info remove`+tab_id+`_`+i+`" style="display:none;" onclick="removeAddAttribute('`+tab_id+`_`+i+`')">${Remove}</button>
										</div>
										<div class="col-6 multipleChartAndOperation`+tab_id+`_`+i+`" style="display:none">
											<div>
												<p class="disabled">${Operation_Applied_on}</p>
												<input class="disabled" type="radio" id="element`+tab_id+`_`+i+`" name="operationValue" value="Element">
												<label for="html">${Element}</label><br>
												<input class ="disabled" type ="radio" id="attribute`+tab_id+`_`+i+`" name="operationValue" value="Attribute">
												<label for="css">${Attribute}</label><br>
												</div>
												<div>
												<label class ="multipleChartAndOperation`+tab_id+`_`+i+`" id="" for="" style="display:none;">${Select_Chart_Type}</label>
												<select  id="chartType`+tab_id+`_`+i+`" class ="multipleChartAndOperation`+tab_id+`_`+i+` form-control" id="operationDropdown`+tab_id+`_`+i+`" style="display:none;">
												<option value="" selected disabled hidden>${Chart_Type}</option>
												<option value="bar">${Column}</option>
												<option value="clusteredBar">${Clustered_Column}</option>
												<option value="pie">${Pie}</option>
												</select>
												</div>
												</div>
												</div>
												<div class ="row">
												<div class ="col chartButtonDivArabic">
												<button class="btn btn-info reset`+tab_id+`_`+i+`" style="display:none;" onclick="resetData('`+tab_id+`_`+i+`')">${Reset}</button>
												<button class ="btn btn-info" id="generateTextButton`+tab_id+`_`+i+`" style="display:none;" onclick="generateTable('`+tab_id+`_`+i+`')">${Generate}</button>
												<button class ="btn btn-info generateGraphButtonArabic"  id="generateGraphButton`+tab_id+`_`+i+`" style="display:none;" onclick="generateGraph('`+tab_id+`_`+i+`','Save`+tab_id+`_`+i+`')">${Generate_Chart}</button>
												</div>
												</div>
											</div>
										</div>
									</div>
								</div>`;
			}							
			addTabDivData += `</div>`;
			//END DIV
			addTabDivData += `</div>`;
			return addTabDivData;
		}
	// AddTab button: just opens the dialog
	$("#add_tab")
		.button()
		.on("click", function() {
			dialog.dialog("open");
		});
	var getPanelId;
	// Close icon: removing the tab on click
	tabs.on("click", "span.ui-icon-closethick", function() {
		var panelId = tabs.find(".ui-tabs-active").attr("aria-controls");
		var panelIdThis = $(this).closest("li").attr("aria-controls");
		var tempThis = $(this).closest("li");
		getPanelId = panelId;
	    $( "#dialog-confirm" ).dialog({
	      resizable: false,
	      height: "auto",
	      width: 400,
	      modal: true,
	      buttons: {
	        [Delete]: function() {
			  	$.ajax({
					url: "deleteTabsAndRecordsFromDatabase",
					data: {
//						 'panelId':panelId,
						'panelId':panelIdThis
					},
					success:function(data) {
						if(data == 1){
//							location.reload();
//							 panelId     = tabs.find(".ui-tabs-active").closest("li").remove().attr("aria-controls");
//							 panelIdThis     = $(this).closest("li").remove().attr("aria-controls");
 							 tempThis.remove();
							$("#"+panelIdThis).remove()
//							panelIdThis =  $(this).closest("li").remove();
					    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+tab_has_been_deleted+'</div>');
					    	alert_message_function();
						}
						else{
							$(".alert_message").html('<div class="alert alert-danger" role="alert">'+you_are_restricted_to_delete_the_tab+'</div>');
					    	alert_message_function();
						}
					}	  	
				});
			  	$( this ).dialog( "close" );
	        },
	        [Cancel]: function() {
	          $( this ).dialog( "close" );
	        }
	      }
	    });
//	    var panelId = $(this).closest("li").remove().attr("aria-controls");
//		$("#" + panelId).remove();
//		
//		$.ajax({
//			url: "deleteTabsAndRecordsFromDatabase",
//			data: {'panelId':panelId},
//			success: function(data) {
//				tabs.tabs("refresh");		
//			}
//		});		
	});
	tabs.on("keyup", function(event) {
		if (event.altKey && event.keyCode === $.ui.keyCode.BACKSPACE) {
			var panelId = tabs.find(".ui-tabs-active").remove().attr("aria-controls");
			$("#" + panelId).remove();
			tabs.tabs("refresh");
		}
	});
	$("#tabs").tabs({
	    activate: function (event, ui) {
			getChartNameForPdf = [];
			getTotalImgURI = [];		
	    	currentTabId = ui.newPanel[0].id;
	    	document.getElementById('downloadPDFButtonId').disabled = true;
//	    	generatePreviouslyCreatedCharts();
	    	window.setTimeout(generatePreviouslyCreatedCharts,50);
	    	enableDownloadPdfButton();
//	    	generatePreviouslyCreatedCharts();
	    }
	});	
});
function textView(id) {
	$(".loader").css("display", "block");
	$("#elementDropdown" + id).empty();
	const getContainerId = id.split("_");
	let chart_id = getContainerId[0]+"chartContainer" + getContainerId[1];	
	var t1 = document.getElementById(chart_id);
	// Used in a simple conditional statement
	if (t1.getElementsByTagName('svg').length) {
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Delete_The_Chart_First}</div>`);
		alert_message_function();		
	}
	else{
		$("#elementDropdown" + id).css("display", "inline");
		$("#attributeDropdown" + id).css("display", "inline");
		$("#generateTextButton" + id).css("display", "inline");
		$("#generateTextButton" + id).prop('disabled', true);
		$("#generateGraphButton" + id).css("display", "none");
		$("#labelForOperation" + id).css("display", "none");
		$("#operationDropdown" + id).css("display", "none");
		$(".multipleChartAndOperation" + id).css("display", "none");
		$(".remove" + id).css("display", "none");
		$(".reset" + id).css("display", "none");	
		$.ajax({
			url: "getElementsFromXML",
			data: {},
			success: function(data) {
				$("#elementDropdown" + id).append('<option disabled selected value=""> '+Select_Element+' </option>');
				$.each(data, function(i, item) {
					var getDivID = "#elementDropdown" + id;
					// fill_elements_in_dropdown(getDivID, item)
					$("#elementDropdown" + id).append($('<option>', {
						value: item,
						text: customDictionary[item.replaceAll(" ","_")]
					}));
				});
			}
		});
		//	$("#elementDropdown").append(new Option("option A", "value"));
		// $("#attributeDropdown").append(new Option("option B", "value"));
		$("#elementDropdown" + id).change(function() {
			$(".multipleChartAndOperationButton"+id).prop("disabled",false)
			$("#attributeDropdowntabs"+id).empty();
			$(".attributesTextArea"+id).empty();
			fillAttributeValuesInDropdown(id);
		});
	}
	$(".loader").css("display", "none");
}
function fill_elements_in_dropdown(append_id, item){
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
function fillAttributeValuesInDropdown(id) {
	var element = $("#elementDropdown" + id).val();
	$.ajax({
		url: "getAttributesFromDB",
		data: { 'elementName': element },
		success: function(data) {
			$("#attributeDropdown" + id).empty();
			$.each(data, function(i, item) {
				// var getDivid = "#attributeDropdown" + id;
				// fill_elements_in_dropdown(getDivid, item);
				$("#attributeDropdown" + id).append($('<option>', {
					value: item,
					text: customDictionary[item.replaceAll(" ","_")]
				}));
			});
			$("#generateTextButton" + id).prop('disabled', false);
			$("#generateGraphButton" + id).prop('disabled', false);
		}
	});
}
function graphView(id) {
	$("#elementDropdown" + id).empty();
	const getContainerId = id.split("_");
	let chart_id = getContainerId[0]+"chartContainer" + getContainerId[1];	
	var t1 = document.getElementById(chart_id);
	// Used in a simple conditional statement
	if (t1.getElementsByTagName('svg').length) {
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Delete_The_Chart_First}</div>`);
		alert_message_function();		
	}
	else{
		$(".multipleChartAndOperation" + id).css("display", "block");
		$("#labelForElement" + id).css("display", "inline");
		$("#elementDropdown" + id).css("display", "inline");
		$("#labelForAttribute" + id).css("display", "inline");
		$("#attributeDropdown" + id).css("display", "inline");
		$("#labelForOperation" + id).css("display", "inline");
		$("#operationDropdown" + id).css("display", "inline");
		$(".remove" + id).css("display", "block");
		$(".reset" + id).css("display", "inline");
		$("#generateTextButton" + id).css("display", "none");
		$("#generateGraphButton" + id).css("display", "inline");
		$("#generateGraphButton" + id).prop('disabled', true);
		$.ajax({
			url: "getElementsFromXML",
			data: {},
			success: function(data) {
					 var getDivID = "#elementDropdown" + id;
				$(getDivID).append('<option disabled selected value=""> '+Select_Element+' </option>');
				$.each(data, function(i, item) {
					// fill_elements_in_dropdown(getDivID, item)
					$(getDivID).append($('<option>', {
						value: item,
						text: customDictionary[item.replaceAll(" ","_")]
					}));
				});
			}
		});
		$("#elementDropdown" + id).change(function() {
			$(".multipleChartAndOperationButton"+id).prop("disabled",false)
			$(".attributesTextArea"+id).empty();
			$("#attributeDropdown"+id).empty();
			fillAttributeValuesInDropdown(id);
			attributeArray = [];
		});
		$("#operationDropdown" + id).change(function() {
			$(".disabled").removeAttr('disabled');
		});
	}
}
let attributeArray = [];
function addAttribute(id){
	var getTranslatedData = [];
	$.ajax({
           url: "getPropertiesDictionary",
           async: false, 
           type: 'POST',
           data: {},
           dataType: 'json', // added data type
           success: function(langDict) {
				getTranslatedData.push(langDict);
           }
     });
	let getElementName = $("#elementDropdown"+id).val();
	let getAttribute = $("#attributeDropdown"+id).val();
	let getAttributeNameFormMessageFile = getAttribute.replaceAll(' ', '_');
	var getTransalatedWord = getTranslatedData[0][getAttributeNameFormMessageFile];
	attributeArray.push(getAttribute)
//	let addAttribute = $(".attributesTextArea"+id).append(getAttribute+"\n");
	let addAttribute = $(".attributesTextArea"+id).append(getTransalatedWord+"\n");
	var getSameAttibutes = $.ajax({
		url: "getSameAttributesName",
		data: {
			'getElementName': getElementName,
			'getAttribute': getAttribute,
		},
		success: function(data) {
			let unique1 = data.filter((o) => attributeArray.indexOf(o) === -1);
			let unique2 = attributeArray.filter((o) => data.indexOf(o) === -1);
			const unique = unique1.concat(unique2);
			unique.pop();
			$("#attributeDropdown" + id).empty();
			if(unique.length != 0){
				$.each(unique, function(i, item) {
					$.ajax({
				           url: "getPropertiesDictionary",
				           type: 'POST',
				           data: {},
				           dataType: 'json', // added data type
				           success: function(langDict) {
								$("#attributeDropdown" + id).append($('<option>', {
									value: item,
	//								text: item
									text: langDict[item.replaceAll(" ", "_")]
								}));				
				           }
				     });						
				});	
				$(".multipleChartAndOperationButton"+id).prop("disabled",false)
			}
			else{
				$(".multipleChartAndOperationButton"+id).prop("disabled",true)
			}
		},
		async: false
	});
}
function removeAddAttribute(id){
	$('.attributesTextArea'+id).html('');
}
function resetData(id){
	graphView(id);
	$('#elementDropdown'+id).html("");
	$('#attributeDropdown'+id).html(`<select class="form-control selectWidth" style="display: inline;"><option value="" selected="" disabled="" hidden="">${select_attribute}</option></select>`);
	$('#operationDropdown'+id).html(`<select class="form-control selectWidth" id="operationDropdowntabs-8_1" style="display: inline;"><option value="" selected="" disabled="" hidden="">${select_operation}</option><option value="Count">${count}</option><option value="Average">${average}</option><option value="Distribution">${distribution}</option></select>`);
	$('.attributesTextArea'+id).html('');
	$('#element'+id).prop("checked", false);
	$('#attribute'+id).prop("checked", false);
	$('#chartType'+id).html(`<select id="chartTypetabs-8_1" class="multipleChartAndOperationtabs-8_1 form-control" style="display: block;"><option value="" selected="" disabled="" hidden="">${chart_type}</option><option value="bar">${column}</option><option value="clusteredBar">${clustered_column}</option><option value="pie">${pie}</option></select>`);
//	graphView(id);
}
function generateGraph(id, saveButton) {
	//alert("generateGraph")
	$(".loader").css("display", "block");
	var chartData = getDataForChart(id);
	var chartMultipleData = getMultipleDataForChart(id);
	var chartAverageMultipleData = getAverageMultipleDataForChart(id);
	var chartType = $("#chartType" + id).val();
	let element_Check = $("#element" + id).val();
	let attribute_Check = $("#attribute" + id).val();
	let get_operation_value = '';
	let operationDropdown = $("#operationDropdown" + id).val();
	if(document.getElementById('element'+id).checked) {
	  	//Element radio button is checked
		get_operation_value = element_Check;
	}else if(document.getElementById('attribute'+id).checked) {
	  	//Attribute radio button is checked
		get_operation_value = attribute_Check;
	}
	if(chartType == 'bar' && operationDropdown == null){
		drawChart(chartType, chartData, id, true, saveButton);
		enableSaveButton(id);
	}
	else if(get_operation_value == "" && operationDropdown == null){
		if(chartType == 'clusteredBar'){
			drawclusteredBudgetChart(chartType, chartMultipleData, id, false, saveButton);
			enableSaveButton(id);
		}
		else{
//			alert("Try Valid Chart!");
			disableGenerateGraphButton(id);
	    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();
		}
	}
	else if(operationDropdown == 'Count'){
		if(chartType == 'bar' && get_operation_value == 'Element'){
			drawChartCountElement(chartType, chartData, id, false, saveButton);
			enableSaveButton(id);
		}
		else if(chartType == 'clusteredBar' && get_operation_value == 'Element'){
			drawclusteredChartCountElement(chartType, chartMultipleData, id, false, saveButton);
			enableSaveButton(id);
		}
		else{
//			alert("Try Valid Chart!");
			disableGenerateGraphButton(id);
	    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();
		}	
	}
	else if(operationDropdown == 'Average'){
		if(chartType == 'bar' && get_operation_value == 'Attribute'){
			drawChartAverageColumn(chartType, chartAverageMultipleData, id, false, saveButton);
			enableSaveButton(id);
		}
		else{
			disableGenerateGraphButton(id);
	    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();			
		}
	}
	else if(operationDropdown == 'Distribution'){
		if(chartType == 'pie' && get_operation_value == 'Attribute'){
			drawChartDistributionElement(chartType, chartData, id, false, saveButton);
			enableSaveButton(id);
		}
		else{
//			alert("Try Valid Chart!");
			disableGenerateGraphButton(id);
	    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();
		}
	}
	else{
//		alert("Try Valid Chart!")
		disableGenerateGraphButton(id);
    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Try_Valid_Chart}</div>`);
    	alert_message_function();
	}
	$(".loader").css("display", "none");
}
function disableGenerateGraphButton(id){
	$("#generateGraphButton"+id).prop('disabled',true)
}
function enableSaveButton(id){
	$("#Save"+id).prop("disabled",false)
}
function getDataForChart(id) {
	const elementValue = $("#elementDropdown" + id).val();
//	const attributeValue = $("#attributeDropdown" + id).val();
	let attributeValue = $(".attributesTextArea" + id).val();
	attributeValue = attributeValue.trim();
	var dataForChart = $.ajax({
		url: "generateChartTable",
		data: {
			'elementName': elementValue,
			'attributeValue': attributeValue,
		},
		success: function(data) {
		},
		async: false
	});
	return dataForChart.responseJSON;
}
function getMultipleDataForChart(id) {
	const elementValue = $("#elementDropdown" + id).val();
	const attributeValue = $("#attributeDropdown" + id).val();
	var dataForChart = $.ajax({
		url: "generateMultipleChartTable",
		contentType: "application/json",
		data: {
			'elementName': elementValue,
			"attributeValue": attributeArray,
		},
		success: function(data) {
		},
		async: false
	});
	return dataForChart.responseJSON;
}
function getAverageMultipleDataForChart(id) {
	const elementValue = $("#elementDropdown" + id).val();
	const attributeValue = $("#attributeDropdown" + id).val();
	var dataForChart = $.ajax({
		url: "generateAverageMultipleChartTable",
		contentType: "application/json",
		data: {
			'elementName': elementValue,
			"attributeValue": attributeArray,
		},
		success: function(data) {
		},
		async: false
	});
	return dataForChart.responseJSON;
}
function generateTable(id) {
	const elementValue = $("#elementDropdown" + id).val();
	const attributeValue = $("#attributeDropdown" + id).val();
//	$('#classModal').modal('show')
	$.ajax({
		url: "getElementsFromXML",
		data: {},
		success: function(data) {
			$.each(data, function(i, item) {
				fill_elements_in_table(item)
			});
		}
	});
	function fill_elements_in_table(item){
	//$('#catalogElements').empty();
		$.ajax({
	           url: "getPropertiesDictionary",
	           type: 'POST',
	           data: {},
	           dataType: 'json', // added data type
	           success: function(langDict) {
	        		$.ajax({
	        			url: "generateChartTable",
	        			data: {
	        				'elementName': elementValue,
	        				'attributeValue': attributeValue,
	        			},
	        			success: function(data) {
							if(data.attributeRow == 0 && data.nameRow == 0){
								$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
								alert_message_function();					
							}
							else{
								var modal = document.getElementById("chartModal");
								$(".modal-content").draggable();
								var span = document.getElementById("closeChartModal");
								$('#chartTable').empty();
								var loopLength = data['nameRow'].length;
								for (var i = 0; i < loopLength; i++) {
									//document.getElementById("modal_info_text").innerHTML = attribute_tip;
									$('#chartTable').append('<tr><td>' + data["nameRow"][i] + '</td><td>' + langDict[data["attributeRow"][i].trim().replaceAll(" ", "_")] + '</td></tr>');
//									$('#chartTable').append('<tr><td>' + data["nameRow"][i] + '</td><td>' + data["attributeRow"][i] + '</td></tr>');
									// $('#chartTable').append('<tr><td>my data</td><td>more data</td></tr>');	
								}
								//}
								modal.style.display = "block";
								span.onclick = function() {
									modal.style.display = "none";
								}
								$.each(data, function(i, item) {
								});
							}
	        			}
	        		});        	 
	           }
	       });	
		}
//	function fill_elements_in_table(item){
//	//$('#catalogElements').empty();
//		$.ajax({
//	           url: "getPropertiesDictionary",
//	           type: 'POST',
//	           data: {},
//	           dataType: 'json', // added data type
//	           success: function(langDict) {
//	        		$.ajax({
//	        			url: "generateChartTable",
//	        			data: {
//	        				'elementName': elementValue,
//	        				'attributeValue': attributeValue,
//	        			},
//	        			success: function(data) {
//	        				var modal = document.getElementById("chartModal");
//	        				$(".modal-content").draggable();
//	        				var span = document.getElementById("closeChartModal");
//	        				$('#chartTable').empty();
//	        				var loopLength = data['nameRow'].length;
//	        				for (var i = 0; i < loopLength; i++) {
//	        					var getAttributeValue = data["attributeRow"][i];
//	        					//document.getElementById("modal_info_text").innerHTML = attribute_tip;
//	        					$('#chartTable').append('<tr><td>' + data["nameRow"][i] + '</td><td>' + langDict[data["attributeRow"][i].trim().replaceAll(" ", "_")] + '</td></tr>');
//	        					// $('#chartTable').append('<tr><td>my data</td><td>more data</td></tr>');	
//	        				}
//	        				modal.style.display = "block";
//	        				span.onclick = function() {
//	        					modal.style.display = "none";
//	        				}
//	        				$.each(data, function(i, item) {
//	        				});
//	        			}
//	        		});        	 
//	           }
//	       });	
//		}
//		$.ajax({
//			url: "generateChartTable",
//			data: {
//				'elementName': elementValue,
//				'attributeValue': attributeValue,
//			},
//			success: function(data) {
//				if(data.attributeRow == 0 && data.nameRow == 0){
//					$(".alert_message").html(`<div class="alert alert-danger" role="alert">No Data Found!</div>`);
//					alert_message_function();					
//				}
//				else{
//					var modal = document.getElementById("chartModal");
//					$(".modal-content").draggable();
//					var span = document.getElementById("closeChartModal");
//					$('#chartTable').empty();
//					var loopLength = data['nameRow'].length;
//					for (var i = 0; i < loopLength; i++) {
//						//document.getElementById("modal_info_text").innerHTML = attribute_tip;
//						$('#chartTable').append('<tr><td>' + data["nameRow"][i] + '</td><td>' + data["attributeRow"][i] + '</td></tr>');
//						// $('#chartTable').append('<tr><td>my data</td><td>more data</td></tr>');	
//					}
//					//}
//					modal.style.display = "block";
//					span.onclick = function() {
//						modal.style.display = "none";
//					}
//					$.each(data, function(i, item) {
//					});
//				}
//			}
//		});
}
//function generateTable(id) {
//	const elementValue = $("#elementDropdown" + id).val();
//	const attributeValue = $("#attributeDropdown" + id).val();
////	$('#classModal').modal('show')
//
//	$.ajax({
//		url: "generateChartTable",
//		data: {
//			'elementName': elementValue,
//			'attributeValue': attributeValue,
//		},
//		success: function(data) {
//			var modal = document.getElementById("chartModal");
//			$(".modal-content").draggable();
//			var span = document.getElementById("closeChartModal");
//			$('#chartTable').empty();
//			var loopLength = data['nameRow'].length;
//			for (var i = 0; i < loopLength; i++) {
//				//document.getElementById("modal_info_text").innerHTML = attribute_tip;
//				$('#chartTable').append('<tr><td>' + data["nameRow"][i] + '</td><td>' + data["attributeRow"][i] + '</td></tr>');
//				// $('#chartTable').append('<tr><td>my data</td><td>more data</td></tr>');	
//			}
//			modal.style.display = "block";
//			span.onclick = function() {
//				modal.style.display = "none";
//			}
//			$.each(data, function(i, item) {
//			});
//		}
//	});
//}
function drawclusteredChartCountElement(chartType, chartMultipleData, id, countGraph, saveButton){
//	extra
	let element_name = $("#elementDropdown"+id).val();
	let operation_value = document.querySelector('input[name="operationValue"]:checked').value;
	let attributesTextArea = $(".attributesTextArea"+id).val();
	if(chartMultipleData != undefined){
		if(chartMultipleData.attributeValues[0].includes("Very High") || chartMultipleData.attributeValues[0].includes("High") || chartMultipleData.attributeValues[0].includes("Medium") || chartMultipleData.attributeValues[0].includes("Low") || chartMultipleData.attributeValues[0].includes("Very Low")){
			const getContainerId = id.split("_");
			var element = $("#elementDropdown" + id).val();
			var attribute = $("#attributeDropdown" + id).val();
			let countsArray = [];
			let insertIntoArray = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				const counts = {};
				chartMultipleData.attributeValues[i].forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
				countsArray.push(counts);
				insertIntoArray += chartMultipleData.attributeValues[i]+",";
			}
			var getUniqueValue = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				getUniqueValue.push(...chartMultipleData.attributeValues[i]);
			}
			function onlyUnique(value, index, self) {
			  return self.indexOf(value) === index;
			}	
			getUniqueValue = getUniqueValue.filter(onlyUnique);
			var newStr = insertIntoArray.substring(0, insertIntoArray.length - 1);
			let splitComma = newStr.split(",");
		//	let legends = [...new Set(splitComma)];
			let legends = ['Very Low', 'Low', 'Medium', 'High', 'Very High'];
			let getCount = [];
			for(var i = 0 ; i <= countsArray.length-1 ; i++){
				let getCurrentLoopCount = [];
				for(var j = 0 ; j <= countsArray.length-1 ; j++){
					getValues = legends[i];
					if(countsArray[j][getValues] == undefined){
						countsArray[j][getValues] = 0;
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
					else{
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
				}
				getCount.push(getCurrentLoopCount);
			}
			/*
			let clusteredChartData = "";
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
				}
			}
			let JSON_clusteredChartData = JSON.parse(clusteredChartData)
			*/
			let clusteredChartData = [];
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					let clusteredChartData1 = {};
						clusteredChartData1['name'] = legends[i];
						clusteredChartData1['data'] = getCount[i];
						clusteredChartData.push(clusteredChartData1);
				}
			}
			var merged = [].concat.apply([], getCount);
			const check = (list) => {
				const setItem = new Set(list);
				return setItem.size <= 1;
			}
			var checkArrayValue = check(merged);	
			if(checkArrayValue === false){
				let chartName = getLanguage == "En" ? 'bar1' : element;
				let chart_title = element+" Maturity";
				var chart_title1 = element.replace(/\s+/g, "_");
				chart_title1 = getTranslatedDataInArabic[0][chart_title1];
				var chart_title2 = "Maturity".replace(/\s+/g, "_");
				chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
				var chart_title_in_arabic = chart_title2+" "+chart_title1;
				let x_axis_label = element+ " Characteristics";
				let x_axis_label_in_arabic = "مميزات "+ chart_title1;
				let y_axis_title = attribute;	
			//	var yAxisData = [];
			//	var yAxisLabel = [];
				var categoriesArray = [];
			//	let getcharNumfunction = getcharNum2(chartData);
			//	categoriesArray = chartData['nameRow'];
			//	yAxisData = getcharNumfunction[0];
			//	yAxisLabel = getcharNumfunction[1];
				var getOperationValue = $("#operationDropdown"+id).val();
				let graphDataJson = {
					'chartNameVal':$(".heading_"+id).html(),
					'element_name':element_name,
					'tab_id': getContainerId[0],
					'chartName': chartName,
					chart_title: chart_title,
					'chart_title_in_arabic':chart_title_in_arabic,
					'chartType': chartType,
					'chartOperation': getOperationValue,
					yAxisData: JSON.stringify(clusteredChartData.reverse()),
					xAxisLabel: x_axis_label,
					y_axis_title: y_axis_title,
			//		yAxisLabel: JSON.stringify(yAxisLabel),
					categoriesArray: JSON.stringify(attributeArray),
					'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
					'operation_value':operation_value,
					'attributesTextArea': JSON.stringify(attributeArray),
				};
				$("#"+saveButton).click(function() {
//					graphDataJson = JSON.stringify(graphDataJson);
					$.ajax({
						url: "saveChart",
						contentType: 'application/json; charset=utf-8',
						type: "POST",
						data: JSON.stringify(graphDataJson),
						dataType: 'json',
						success: function(data) {
				    		$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
				    		alert_message_function();				
						}
					});
				});
			//	$("#chartContainer" + id).empty();
			    var categories_array_in_arabic = [];
			    for(var i = 0 ; i <= attributeArray.length-1; i++){
					var temp = attributeArray[i].toString().replace(/\s+/g, "_");
					categories_array_in_arabic.push(getTranslatedData[0][temp]);
				}
				getLegendsDataFromMessageFile(clusteredChartData);				
				$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
				$("#delete_"+id).prop( "disabled", false );
				var dataPoints = [];
				var options = {
					chart : {
						type : 'bar'
					},
					plotOptions : {
						bar : {
							horizontal : false,
							columnWidth : '55%',
							endingShape : 'rounded'
						},
					},
					dataLabels : {
						enabled : false
					},
			//		series : [ {name : 'Very Low',data : [2,1]},{name : 'Low',data : [0,1]}, ],
					series: clusteredChartData,
					xaxis : {
						categories : getLanguage == "En" ? attributeArray : categories_array_in_arabic.reverse(),
			//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
			//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
			//					"AppComp8", "AppComp9" ],
						title : {
			//				text : 'Application Component',
							text: getLanguage == "En" ? x_axis_label : x_axis_label_in_arabic,
						},
						lines : {
							show : true
						},
						labels: {
//							offsetY: getLanguage == "En" ? 0 : 100,
//							offsetX: getLanguage == "En" ? 0 : -10,					
						},						
					},
					yaxis : {
						// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
						// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
						// 							"AppComp8", "AppComp9" ],
						opposite: getLanguage == "En" ? false : true,
						title : {
							text : getLanguage == "En" ? 'Number of '+element_name : customDictionary[element_name.replaceAll(" ","_")]+' عدد ',
						},
						lines : {
							show : true
						}
					},
					title : {
			//			text : 'Traffic Sources',
						text: getLanguage == "En" ? chart_title : chart_title_in_arabic,
						align : 'center',
					},
					grid : {
						position : 'front'
					},
					legend: {
						horizontalAlign: 'center',
					},
				}
			//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
			//			options);
				var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
					options);
//				chart.render();	
				chart.render().then(() => {
				    window.setTimeout(function() {
					    chart.dataURI().then(({ imgURI, blob }) => {
							getTotalImgURI.push(imgURI)
							getChartNameForPdf.push(getChartName);
					    })
				    }, 1000) 
				})	
			}
			else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
				alert_message_function();		
			}		
		}
		else{
			const getContainerId = id.split("_");
			var element = $("#elementDropdown" + id).val();
			var attribute = $("#attributeDropdown" + id).val();
			let countsArray = [];
			let insertIntoArray = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				const counts = {};
				chartMultipleData.attributeValues[i].forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
				countsArray.push(counts);
				insertIntoArray += chartMultipleData.attributeValues[i]+",";
			}
			var getUniqueValue = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				getUniqueValue.push(...chartMultipleData.attributeValues[i]);
			}
			function onlyUnique(value, index, self) {
			  return self.indexOf(value) === index;
			}	
			getUniqueValue = getUniqueValue.filter(onlyUnique);
			var newStr = insertIntoArray.substring(0, insertIntoArray.length - 1);
			let splitComma = newStr.split(",");
		//	let legends = [...new Set(splitComma)];
			let legends = getUniqueValue;
			let getCount = [];
			for(var i = 0 ; i <= countsArray.length-1 ; i++){
				let getCurrentLoopCount = [];
				for(var j = 0 ; j <= countsArray.length-1 ; j++){
					getValues = legends[i];
					if(countsArray[j][getValues] == undefined){
						countsArray[j][getValues] = 0;
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
					else{
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
				}
				getCount.push(getCurrentLoopCount);
			}
			/*
			let clusteredChartData = "";
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
				}
			}
			let JSON_clusteredChartData = JSON.parse(clusteredChartData)
			*/
	//		let clusteredChartData = [];
	//		for(let i = 0; i <= legends.length-1; i++){
	//			if(getCount[i] !== undefined){
	//				let clusteredChartData1 = {};
	//					clusteredChartData1['name'] = legends[i];
	//					clusteredChartData1['data'] = getCount[i];
	//					clusteredChartData.push(clusteredChartData1);
	//			}
	//		}
			let clusteredChartData = [];
			for(var i = 0 ; i < legends.length ; i++){
				let tempLegend = legends[i];
				let tempArray = [];
				for(var j = 0 ; j < countsArray.length ; j++){
					var keys = Object.keys(countsArray[j]);
					let matched = keys.find(k => tempLegend == k)
					if(matched != undefined){
						tempArray.push(countsArray[j][matched])
					}else{
						tempArray.push(0)
					}
				}
				let tempData = {name:tempLegend, data:tempArray}
				clusteredChartData.push(tempData);
			}
			var merged = [].concat.apply([], getCount);
			const check = (list) => {
				const setItem = new Set(list);
				return setItem.size <= 1;
			}
			var checkArrayValue = check(merged);	
			if(checkArrayValue === false){
				let chartName = 'bar1';
				let chart_title = element+" Maturity";
				var chart_title1 = element.replace(/\s+/g, "_");
				chart_title1 = getTranslatedDataInArabic[0][chart_title1];
				var chart_title2 = "Maturity".replace(/\s+/g, "_");
				chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
				var chart_title_in_arabic = chart_title2+" "+chart_title1;
				let x_axis_label = element+ " Characteristics";
				let y_axis_title = attribute;	
			//	var yAxisData = [];
			//	var yAxisLabel = [];
				var categoriesArray = [];
			//	let getcharNumfunction = getcharNum2(chartData);
			//	categoriesArray = chartData['nameRow'];
			//	yAxisData = getcharNumfunction[0];
			//	yAxisLabel = getcharNumfunction[1];
				var getOperationValue = $("#operationDropdown"+id).val();
				let graphDataJson = {
					'chartNameVal':$(".heading_"+id).html(),
					'element_name':element_name,
					'tab_id': getContainerId[0],
					'chartName': chartName,
					chart_title: chart_title,
					'chart_title_in_arabic':chart_title_in_arabic,
					'chartType': chartType,
					'chartOperation': getOperationValue,
					yAxisData: JSON.stringify(clusteredChartData.reverse()),
					xAxisLabel: x_axis_label,
					y_axis_title: y_axis_title,
			//		yAxisLabel: JSON.stringify(yAxisLabel),
					categoriesArray: JSON.stringify(attributeArray),
					'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
					'operation_value':operation_value,
					'attributesTextArea': JSON.stringify(attributeArray),
				};
				$("#"+saveButton).click(function() {
//					graphDataJson = JSON.stringify(graphDataJson);
					$.ajax({
						url: "saveChart",
						contentType: 'application/json; charset=utf-8',
						type: "POST",
						data: JSON.stringify(graphDataJson),
						dataType: 'json',
						success: function(data) {
				    		$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
				    		alert_message_function();				
						}
					});
				});
			//	$("#chartContainer" + id).empty();
				$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
				$("#delete_"+id).prop( "disabled", false );
				var dataPoints = [];
				var options = {
					chart : {
						type : 'bar'
					},
					plotOptions : {
						bar : {
							horizontal : false,
							columnWidth : '55%',
							endingShape : 'rounded'
						},
					},
					dataLabels : {
						enabled : false
					},
			//		series : [ {name : 'Very Low',data : [2,1]},{name : 'Low',data : [0,1]}, ],
					series: clusteredChartData,
					xaxis : {
						categories : attributeArray,
			//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
			//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
			//					"AppComp8", "AppComp9" ],
						title : {
			//				text : 'Application Component',
							text: x_axis_label,
						},
						lines : {
							show : true
						},
					},
					yaxis : {
						// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
						// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
						// 							"AppComp8", "AppComp9" ],
						title : {
							text : 'Number of '+element_name,
						},
						lines : {
							show : true
						}
					},
					title : {
			//			text : 'Traffic Sources',
						text: chart_title,
						align : 'center',
					},
					grid : {
						position : 'front'
					},
					legend: {
						horizontalAlign: 'center',
					},
				}
			//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
			//			options);
				var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
					options);
//				chart.render();	
				chart.render().then(() => {
				    window.setTimeout(function() {
					    chart.dataURI().then(({ imgURI, blob }) => {
							getTotalImgURI.push(imgURI)
							getChartNameForPdf.push(getChartName);
					    })
				    }, 1000) 
				})	
			}
			else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
				alert_message_function();		
			}		
		}	
	}
	else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${first_add_attribute}</div>`);
				alert_message_function();			
	}
}
function drawclusteredBudgetChart(chartType, chartMultipleData, id, countGraph, saveButton){
	$(".loader").css("display", "block");
	const getContainerId = id.split("_");
	var element = $("#elementDropdown" + id).val();
	let attributesTextArea = $(".attributesTextArea"+id).val();
	/*Convert Millions*/
	let convertedMillion = [];
	for(let i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
		let tempArray = []
		for(let j = 0 ; j <= chartMultipleData.attributeValues[i].length-1 ; j++){
			var convertMillionToPoint = (parseInt(chartMultipleData.attributeValues[i][j]) / 1000000).toFixed(3);
			tempArray.push(convertMillionToPoint)
		}
		convertedMillion.push(tempArray.reverse())
	}
	let clusteredChartData = [];
	for(let i = 0; i <= attributeArray.length-1; i++){
				let clusteredChartData1 = {};
					clusteredChartData1['name'] = attributeArray[i];
//					clusteredChartData1['data'] = chartMultipleData.attributeValues[i];
					clusteredChartData1['data'] = convertedMillion[i];
					clusteredChartData.push(clusteredChartData1);
	}
//	$("#chartContainer" + id).empty();
	var merged = [].concat.apply([], convertedMillion);
	const check = (list) => {
		const setItem = new Set(list);
		return setItem.size <= 1;
	}
	var checkArrayValue = check(merged);	
	if(checkArrayValue === false){
		$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
		$("#delete_"+id).prop( "disabled", false );
		var dataPoints = [];
		var chartName = "bar1";
		let chart_title = "Budget Utilization";
		var chart_title1 = chart_title.replace(/\s+/g, "_");
		chart_title1 = getTranslatedData[0][chart_title1];		
		var chart_title_in_arabic = chart_title1;		
		let yAxisLabel = "Millions"; 
		var getOperationValue = $("#operationDropdown"+id).val();
		let graphDataJson = {
			'chartNameVal':$(".heading_"+id).html(),
			'element_name': element,
			'tab_id': getContainerId[0],
			'chartName': chartName,
			'chart_title':chart_title,
			'chart_title_in_arabic':chart_title_in_arabic,
			'chartType': chartType,
			'chartOperation': getOperationValue,
			yAxisData: JSON.stringify(clusteredChartData),
			y_axis_title: yAxisLabel,
			categoriesArray: JSON.stringify(chartMultipleData.nameRow),
			'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
			'attributesTextArea':JSON.stringify(attributeArray)
		};
		$("#"+saveButton).click(function() {
//			graphDataJson = JSON.stringify(graphDataJson);
			$.ajax({
				url: "saveChart",
				contentType: 'application/json; charset=utf-8',
				type: "POST",
				data: JSON.stringify(graphDataJson),
				dataType: 'json',
				success: function(data) {
			    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
			    	alert_message_function();				
				}
			});
		});
		getLegendsDataFromMessageFile(clusteredChartData);
		var options = {
			chart : {
				type : 'bar'
			},
			plotOptions : {
				bar : {
					horizontal : false,
					columnWidth : '55%',
					endingShape : 'rounded'
				},
			},
			dataLabels : {
				enabled : false
			},
	//		series : [ {name : 'Very Low',data : ['2','1']},{name : 'Low',data : ['0','1']}, ],
			series: clusteredChartData,
			xaxis : {
				categories : getLanguage == "En" ? chartMultipleData.nameRow : chartMultipleData.nameRow.reverse(),
	//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
	//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
	//					"AppComp8", "AppComp9" ],
	//			title : {
	//				text : 'Application Component',
	//			},
				lines : {
					show : true
				},
				labels: {
//					offsetY: getLanguage == "En" ? 0 : 100,
//					offsetX: getLanguage == "En" ? 0 : -10,					
				},				
			},
			yaxis : {
	//			 					categories : [ "AppComp1", "AppComp2", "AppComp3",
	//			 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
	//			 							"AppComp8", "AppComp9" ],
				opposite: getLanguage == "En" ? false : true ,
				title : {
					text : getLanguage == "En" ? 'Millions' : 'ملايين',
				},
				lines : {
					show : true
				},
	      		tickAmount: 6,
			},
			title : {
	//			text : 'Traffic Sources',
				text : getLanguage == "En" ? "Budget Utilization" : "استخدام الميزانية",
				align : 'center',
			},
			grid : {
				position : 'front'
			},
			legend: {
				horizontalAlign: 'center',
			},
		}
	//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
	//			options);
		var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
			options);
//		chart.render();	
		chart.render().then(() => {
		    window.setTimeout(function() {
			    chart.dataURI().then(({ imgURI, blob }) => {
					getTotalImgURI.push(imgURI)
					getChartNameForPdf.push(getChartName);
			    })
		    }, 1000) 
		})	
	}
	else{
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
		alert_message_function();		
	}
	$(".loader").css("display", "none");
}
function drawChartAverageColumn(chartType, chartMultipleData, id, countGraph, saveButton){
	let element_name = $("#elementDropdown"+id).val();
	let operation_value = document.querySelector('input[name="operationValue"]:checked').value;
	let attributesTextArea = $(".attributesTextArea"+id).val();
	if(chartMultipleData != undefined){
		if(chartMultipleData.attributeValues[0].includes("Very High") || chartMultipleData.attributeValues[0].includes("High") || chartMultipleData.attributeValues[0].includes("Medium") || chartMultipleData.attributeValues[0].includes("Low") || chartMultipleData.attributeValues[0].includes("Very Low")){
			let checkArray = {"Very High": 5, "High":4, "Medium":3, "Low":2, "Very Low":1};
			const getContainerId = id.split("_");
			var element = $("#elementDropdown" + id).val();
			var attribute = $("#attributeDropdown" + id).val();		
			let enumArray = [];
			let dataArray = chartMultipleData.attributeValues;
			let countsArray = [];
			let insertIntoArray = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				const counts = {};
				chartMultipleData.attributeValues[i].forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
				countsArray.push(counts);
				insertIntoArray += chartMultipleData.attributeValues[i]+",";
			}
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				let pushIterationData = [];
				for(let j = 0 ; j <= chartMultipleData.nameRow.length-1 ; j++){
					pushIterationData.push(checkArray[dataArray[i][j]]);
				}
				enumArray.push(pushIterationData)
			}
			let setArrayData = [];
			let getAverageArray = [];
			let sumOfIteration = [];
			for(var i = 0 ; i <= chartMultipleData.nameRow.length-1 ; i++){
				let pushIterationData = [];
				let sumNumber = 0;
				for(var j = 0 ; j <= enumArray.length-1 ; j++){
					pushIterationData.push(checkArray[dataArray[j][i]]);
					sumNumber += (checkArray[dataArray[j][i]])/enumArray.length;
				}
		//		sumOfIteration.push(Math.round(sumNumber.toFixed(2)));
				sumOfIteration.push(sumNumber.toFixed(2));
				sumNumber = "";
				setArrayData.push(pushIterationData)
				getAverageArray.push(sumOfIteration)
			}
		//	let legendArray = ["Optimized", "Managed", "Functional", "Challenged", "Initial", "None"];
			let OptimizedArray = []
			let ManagedArray = []
			let FunctionalArray = []
			let ChallengedArray = []
			let InitialArray = []
			let NoneArray = []
		//	for(var i = 0 ; i <= legendArray.length-1 ; i++){
				for(var  j = 0 ; j <= sumOfIteration.length-1 ; j++){
					if(sumOfIteration[j] >= 5 ){
						OptimizedArray.push(Number(sumOfIteration[j]))
					}
					else{
						OptimizedArray.push(0)
					}
					if(sumOfIteration[j] >= 4 && sumOfIteration[j] < 5){
						ManagedArray.push(Number(sumOfIteration[j]))
					}
					else{
						ManagedArray.push(0)
					}
					if(sumOfIteration[j] >= 3 && sumOfIteration[j] < 4){
						FunctionalArray.push(Number(sumOfIteration[j]))
					}
					else{
						FunctionalArray.push(0)
					}
					if(sumOfIteration[j] >= 2 && sumOfIteration[j] < 3){
						ChallengedArray.push(Number(sumOfIteration[j]))
					}
					else{
						ChallengedArray.push(0)
					}
					if(sumOfIteration[j] < 2){
						InitialArray.push(Number(sumOfIteration[j]))
					}
					else{
						InitialArray.push(0)
					}
					if(isNaN(sumOfIteration[j])){
						NoneArray.push(0)
					}
					else{
						NoneArray.push(0)
					}
				}
		//	}
			var newStr = insertIntoArray.substring(0, insertIntoArray.length - 1);
			let splitComma = newStr.split(",");
		//	let legends = [...new Set(splitComma)];
			let legends = ['Very Low', 'Low', 'Medium', 'High', 'Very High'];
			let getCount = [];
			for(var i = 0 ; i <= countsArray.length-1 ; i++){
				let getCurrentLoopCount = [];
				for(var j = 0 ; j <= countsArray.length-1 ; j++){
					getValues = legends[i];
					if(countsArray[j][getValues] == undefined){
						countsArray[j][getValues] = 0;
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
					else{
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
				}
				getCount.push(getCurrentLoopCount);
			}
			/*
			let clusteredChartData = "";
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
				}
			}
			let JSON_clusteredChartData = JSON.parse(clusteredChartData)
			*/
			let clusteredChartData = [];
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					let clusteredChartData1 = {};
						clusteredChartData1['name'] = legends[i];
						clusteredChartData1['data'] = getCount[i];
						clusteredChartData.push(clusteredChartData1);
				}
			}
		//	$("#chartContainer" + id).empty();
//			$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
			var yAxisData = [];
		//	var series = "{name : 'Optimized',data : ["+OptimizedArray+"]}, {name : 'Managed',data : ["+ManagedArray+"]}, {name : 'Functional',data : ["+FunctionalArray+"]}, {name : 'Challenged',data : ["+ChallengedArray+"]}, {name : 'Initial',data : ["+InitialArray+"]}, {name : 'None',data : ["+NoneArray+"]},";
			yAxisData.push({name : 'Optimized' ,data : OptimizedArray}, {name : 'Managed',data : ManagedArray}, {name : 'Functional',data : FunctionalArray}, {name : 'Challenged',data : ChallengedArray}, {name : 'Initial',data : InitialArray}, {name : 'None',data : NoneArray});
			var getValues = [];
			for(var i = 0 ; i <= yAxisData.length-1;i++){
				getValues.push(yAxisData[i].data);
			}
			var merged = [].concat.apply([], getValues);
			const check = (list) => {
				const setItem = new Set(list);
				return setItem.size <= 1;
			}
			var checkArrayValue = check(merged);
			if(checkArrayValue === false){
			//	var series = "aaaa";
				var categoriesArray = [];
				let chartName = 'bar1';
				let chart_title = element+" Criticality";
				var chart_title1 = element.replace(/\s+/g, "_");
				chart_title1 = getTranslatedDataInArabic[0][chart_title1];
				var chart_title2 = "Criticality";
				chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
				var chart_title_in_arabic = chart_title2+" "+chart_title1;	
				let x_axis_label = element;
				let y_axis_title = "Maturity Score";	
				var getOperationValue = $("#operationDropdown"+id).val();
				let graphDataJson = {
					'chartNameVal':$(".heading_"+id).html(),
					'element_name':element_name,
					'tab_id': getContainerId[0],
					chart_title: chart_title,
					'chart_title_in_arabic':chart_title_in_arabic,
					'chartName': chartName,
					'chartType': chartType,
					'chartOperation': 'Average',
					yAxisData: JSON.stringify(yAxisData),
					xAxisLabel: x_axis_label,
					y_axis_title: y_axis_title,		
			//		yAxisLabel: JSON.stringify(yAxisLabel),
					categoriesArray: JSON.stringify(chartMultipleData.nameRow),
					'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
					'operation_value':operation_value,
					'attributesTextArea':JSON.stringify(attributeArray)
				};
				$("#"+saveButton).click(function() {
//					graphDataJson = JSON.stringify(graphDataJson);
					$.ajax({
						url: "saveChart",
						contentType: 'application/json; charset=utf-8',
						type: "POST",
						data: JSON.stringify(graphDataJson),
						dataType: 'json',
						success: function(data) {
					    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
					    	alert_message_function();				
						}
					});
				});
				var dataPoints = [];
				var options = {
					chart : {
						type : 'bar'
					},
					plotOptions : {
						bar : {
							horizontal : false,
							columnWidth : '55%',
							endingShape : 'rounded'
						},
					},
					dataLabels : {
						enabled : false
					},
					series : [ 
						{
							name : getLanguage == "En" ? 'Optimized' : 'المحسن',
			//				data : [0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0]
							data : getLanguage == "En" ? OptimizedArray : OptimizedArray.reverse()
						}, 
						{
							name : getLanguage == "En" ? 'Managed' : 'تدار',
							data : getLanguage == "En" ? ManagedArray : ManagedArray.reverse() 
						}, 
						{
							name : getLanguage == "En" ? 'Functional' : 'وظيفي',
							data : getLanguage == "En" ? FunctionalArray : FunctionalArray.reverse()
						}, 
						{
							name : getLanguage == "En" ? 'Challenged' : 'تحدى',
							data : getLanguage == "En" ? ChallengedArray : ChallengedArray.reverse() 
						}, 
						{
							name : getLanguage == "En" ? 'Initial' : 'مبدئي',
							data : getLanguage == "En" ? InitialArray : InitialArray.reverse()
						}, 
						{
							name : getLanguage == "En" ? 'None' : 'لا أحد',
							data : getLanguage == "En" ? NoneArray : NoneArray.reverse()
						},
					],
			//		series: clusteredChartData.reverse(),
					xaxis : {
						categories : getLanguage == "En" ? chartMultipleData.nameRow : chartMultipleData.nameRow.reverse(),
			//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
			//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
			//					"AppComp8", "AppComp9" ],
						title : {
							text : getLanguage == "En" ? 'Application Component' : chart_title1,
						},
						lines : {
							show : true
						},
						labels: {
//							offsetY: getLanguage == "En" ? 0 : 100,
//							offsetX: getLanguage == "En" ? 0 : -10,					
						},						
					},
					yaxis : {
						// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
						// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
						// 							"AppComp8", "AppComp9" ],
						opposite: getLanguage == "En" ? false : true,
						title : {
							text : getLanguage == "En" ? 'Maturity Score' : y_axis_arabic_title,
						},
						lines : {
							show : true
						}
					},
					title : {
						text : getLanguage == "En" ? 'Application Criticality' : chart_title_in_arabic,
						align : 'center',
					},
					grid : {
						position : 'front'
					},
					legend: {
						position: getLanguage == "En" ? 'right' : 'left',
						horizontalAlign: 'center',
					},
					colors: ['#00b0f0', '#00b050', '#c55a11', '#bf9000', '#ff0000', '#000000'],
				}
				$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
				$("#delete_"+id).prop( "disabled", false );
				var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
						options);
//					chart.render();		
				chart.render().then(() => {
				    window.setTimeout(function() {
					    chart.dataURI().then(({ imgURI, blob }) => {
							getTotalImgURI.push(imgURI)
							getChartNameForPdf.push(getChartName);
					    })
				    }, 1000) 
				})						
			}
			else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
				alert_message_function();		
			}	
		}
		else{
			var getUniqueValue = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				getUniqueValue.push(...chartMultipleData.attributeValues[i]);
			}
			function onlyUnique(value, index, self) {
			  return self.indexOf(value) === index;
			}	
			getUniqueValue = getUniqueValue.filter(onlyUnique);
			let checkArray1 = [];
			let checkArray2 = {};	
			for(var i = getUniqueValue.length-1 ; i >= 0 ; i--){
				let getIndexValue = getUniqueValue[i];
				checkArray2[getIndexValue] = i+1;
			}
			checkArray1.push(checkArray2);
			const getContainerId = id.split("_");
			var element = $("#elementDropdown" + id).val();
			var attribute = $("#attributeDropdown" + id).val();
			let checkArray = checkArray1[0];
			let enumArray = [];
			let dataArray = chartMultipleData.attributeValues;
			let countsArray = [];
			let insertIntoArray = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				const counts = {};
				chartMultipleData.attributeValues[i].forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
				countsArray.push(counts);
				insertIntoArray += chartMultipleData.attributeValues[i]+",";
			}
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				let pushIterationData = [];
				for(let j = 0 ; j <= chartMultipleData.nameRow.length-1 ; j++){
					pushIterationData.push(checkArray[dataArray[i][j]]);
				}
				enumArray.push(pushIterationData)
			}
			let setArrayData = [];
			let getAverageArray = [];
			let sumOfIteration = [];
			for(var i = 0 ; i <= chartMultipleData.nameRow.length-1 ; i++){
				let pushIterationData = [];
				let sumNumber = 0;
				for(var j = 0 ; j <= enumArray.length-1 ; j++){
					pushIterationData.push(checkArray[dataArray[j][i]]);
					sumNumber += (checkArray[dataArray[j][i]])/enumArray.length;
				}
		//		sumOfIteration.push(Math.round(sumNumber.toFixed(2)));
				sumOfIteration.push(sumNumber.toFixed(2));
				sumNumber = "";
				setArrayData.push(pushIterationData)
				getAverageArray.push(sumOfIteration)
			}
		//	let legendArray = ["Optimized", "Managed", "Functional", "Challenged", "Initial", "None"];
			let OptimizedArray = []
			let ManagedArray = []
			let FunctionalArray = []
			let ChallengedArray = []
			let InitialArray = []
			let NoneArray = []
		//	for(var i = 0 ; i <= legendArray.length-1 ; i++){
				for(var  j = 0 ; j <= sumOfIteration.length-1 ; j++){
					if(sumOfIteration[j] >= 5 ){
						OptimizedArray.push(Number(sumOfIteration[j]))
					}
					else{
						OptimizedArray.push(0)
					}
					if(sumOfIteration[j] >= 4 && sumOfIteration[j] < 5){
						ManagedArray.push(Number(sumOfIteration[j]))
					}
					else{
						ManagedArray.push(0)
					}
					if(sumOfIteration[j] >= 3 && sumOfIteration[j] < 4){
						FunctionalArray.push(Number(sumOfIteration[j]))
					}
					else{
						FunctionalArray.push(0)
					}
					if(sumOfIteration[j] >= 2 && sumOfIteration[j] < 3){
						ChallengedArray.push(Number(sumOfIteration[j]))
					}
					else{
						ChallengedArray.push(0)
					}
					if(sumOfIteration[j] < 2){
						InitialArray.push(Number(sumOfIteration[j]))
					}
					else{
						InitialArray.push(0)
					}
					if(isNaN(sumOfIteration[j])){
						NoneArray.push(0)
					}
					else{
						NoneArray.push(0)
					}
				}
		//	}
			var newStr = insertIntoArray.substring(0, insertIntoArray.length - 1);
			let splitComma = newStr.split(",");
		//	let legends = [...new Set(splitComma)];
			let legends = ['Very Low', 'Low', 'Medium', 'High', 'Very High'];
			let getCount = [];
			for(var i = 0 ; i <= countsArray.length-1 ; i++){
				let getCurrentLoopCount = [];
				for(var j = 0 ; j <= countsArray.length-1 ; j++){
					getValues = legends[i];
					if(countsArray[j][getValues] == undefined){
						countsArray[j][getValues] = 0;
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
					else{
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
				}
				getCount.push(getCurrentLoopCount);
			}
			/*
			let clusteredChartData = "";
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
				}
			}
			let JSON_clusteredChartData = JSON.parse(clusteredChartData)
			*/
			let clusteredChartData = [];
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					let clusteredChartData1 = {};
						clusteredChartData1['name'] = legends[i];
						clusteredChartData1['data'] = getCount[i];
						clusteredChartData.push(clusteredChartData1);
				}
			}
		//	$("#chartContainer" + id).empty();
//			$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
			var yAxisData = [];
		//	var series = "{name : 'Optimized',data : ["+OptimizedArray+"]}, {name : 'Managed',data : ["+ManagedArray+"]}, {name : 'Functional',data : ["+FunctionalArray+"]}, {name : 'Challenged',data : ["+ChallengedArray+"]}, {name : 'Initial',data : ["+InitialArray+"]}, {name : 'None',data : ["+NoneArray+"]},";
			yAxisData.push({name : 'Optimized' ,data : OptimizedArray}, {name : 'Managed',data : ManagedArray}, {name : 'Functional',data : FunctionalArray}, {name : 'Challenged',data : ChallengedArray}, {name : 'Initial',data : InitialArray}, {name : 'None',data : NoneArray});
			var getValues = [];
			for(var i = 0 ; i <= yAxisData.length-1;i++){
				getValues.push(yAxisData[i].data);
			}
			var merged = [].concat.apply([], getValues);
			const check = (list) => {
				const setItem = new Set(list);
				return setItem.size <= 1;
			}
			var checkArrayValue = check(merged);
			if(checkArrayValue === false){
			//	var series = "aaaa";
				var categoriesArray = [];
				let chartName = 'bar1';
				let chart_title = element+" Criticality";
				var chart_title1 = element.replace(/\s+/g, "_");
				chart_title1 = getTranslatedDataInArabic[0][chart_title1];
				var chart_title2 = "Criticality";
				chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
				var chart_title_in_arabic = chart_title2+" "+chart_title1;	
				let x_axis_label = element;
				let y_axis_title = "Maturity Score";	
				var getOperationValue = $("#operationDropdown"+id).val();
				let graphDataJson = {
					'chartNameVal':$(".heading_"+id).html(),
					'element_name':element_name,
					'tab_id': getContainerId[0],
					chart_title: chart_title,
					'chart_title_in_arabic':chart_title_in_arabic,
					'chartName': chartName,
					'chartType': chartType,
					'chartOperation': 'Average',
					yAxisData: JSON.stringify(yAxisData),
					xAxisLabel: x_axis_label,
					y_axis_title: y_axis_title,		
			//		yAxisLabel: JSON.stringify(yAxisLabel),
					categoriesArray: JSON.stringify(chartMultipleData.nameRow),
					'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
					'operation_value':operation_value,
					'attributesTextArea':JSON.stringify(attributeArray)					
				};
				$("#"+saveButton).click(function() {
//					graphDataJson = JSON.stringify(graphDataJson);
					$.ajax({
						url: "saveChart",
						contentType: 'application/json; charset=utf-8',
						type: "POST",
						data: JSON.stringify(graphDataJson),
						dataType: 'json',
						success: function(data) {
					    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
					    	alert_message_function();				
						}
					});
				});
				var dataPoints = [];
				var options = {
					chart : {
						type : 'bar'
					},
					plotOptions : {
						bar : {
							horizontal : false,
							columnWidth : '55%',
							endingShape : 'rounded'
						},
					},
					dataLabels : {
						enabled : false
					},
					series : [ 
						{
							name : 'Optimized',
			//				data : [0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0]
							data : OptimizedArray
						}, 
						{
							name : 'Managed',
							data : ManagedArray
						}, 
						{
							name : 'Functional',
							data : FunctionalArray
						}, 
						{
							name : 'Challenged',
							data : ChallengedArray
						}, 
						{
							name : 'Initial',
							data : InitialArray
						}, 
						{
							name : 'None',
							data : NoneArray
						},
					],
			//		series: clusteredChartData.reverse(),
					xaxis : {
						categories : chartMultipleData.nameRow,
			//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
			//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
			//					"AppComp8", "AppComp9" ],
						title : {
							text : 'Application Component',
						},
						lines : {
							show : true
						},
					},
					yaxis : {
						// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
						// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
						// 							"AppComp8", "AppComp9" ],
						title : {
							text : 'Maturity Score',
						},
						lines : {
							show : true
						}
					},
					title : {
						text : 'Application Criticality',
						align : 'center',
					},
					grid : {
						position : 'front'
					},
					legend: {
						position: 'right',
						horizontalAlign: 'center',
					},
					colors: ['#00b0f0', '#00b050', '#c55a11', '#bf9000', '#ff0000', '#000000'],
				}
				$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
				$("#delete_"+id).prop( "disabled", false );
				var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
						options);
//					chart.render();	
				chart.render().then(() => {
				    window.setTimeout(function() {
					    chart.dataURI().then(({ imgURI, blob }) => {
							getTotalImgURI.push(imgURI)
							getChartNameForPdf.push(getChartName);
					    })
				    }, 1000) 
				})						
			}
			else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
				alert_message_function();		
			}	
		}		
	}
	else{
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">${first_add_attribute}</div>`);
		alert_message_function();			
	}
}
function onlyUnique(value, index, self) {
	return self.indexOf(value) === index;
}
function drawChart(chartType, chartData, id, countGraph, saveButton) {
	const getContainerId = id.split("_");
	var element = $("#elementDropdown" + id).val();
	var attribute = $(".attributesTextArea" + id).val().trim();
//	let operation_value = $("input[name=operationValue]").val();
	let operation_value = document.querySelector('input[name="operationValue"]:checked').value;
	var yAxisData = [];
	var yAxisLabel = [];
	var categoriesArray = [];
	if(chartData != undefined){
		let getcharNumfunction = getcharNum2(chartData);
		categoriesArray = chartData['nameRow'];
		yAxisData = getcharNumfunction[0];
		yAxisLabel = getcharNumfunction[1];
		const check = (list) => {
			const setItem = new Set(list);
			return setItem.size <= 1;
		}
		var checkArrayValue = check(yAxisData);
		if(checkArrayValue === false){
		//	if (countGraph == false) {
		//		let unique = chartData['attributeRow'].filter(onlyUnique);
		//		categoriesArray = unique;
		//
		//		for (let x = 0; x < unique.length; x++) {
		//			let count = 0, i;
		//			for (i = 0; i < chartData['attributeRow'].length; i++) {
		//				if (chartData['attributeRow'][i].indexOf(unique[x]) !== -1) {
		//					count++;
		//				}
		//			}
		//			yAxisData.push(count);
		//		}
		//	} else {
		//		var tempArray = [];
		//		var arr1 = chartData['attributeRow'];
		//		var arr_length = arr1.length;
		//		categoriesArray = chartData['nameRow'];
		//		var yAxisIndex = 1;
		//		for (var x = 1; x <= arr_length; x++) {
		//			let tempIndex = 0;
		//			if (tempArray.includes(arr1[x - 1])) {
		//				tempIndex = tempArray.indexOf(arr1[x - 1]) + 1;
		//			} else {
		//				tempArray.push(arr1[x - 1]);
		//				tempIndex = yAxisIndex++;
		//			}
		//			yAxisData.push(tempIndex);
		//			yAxisLabel.push({
		//				y: tempIndex,
		////				borderColor: '#00E396',
		//				label: {
		////					borderColor: '#00E396',
		//					borderColor: '#FFFFFF',
		//					style: {
		//						color: '#000000',
		////						background: '#00E396'
		//					},
		//					position:'left',
		//					offsetY: 5.5,
		//					text: arr1[x - 1]
		//				}
		//			});
		//		}
		//	}
			let chartName = 'bar1';
			let chart_title = element+" "+attribute;
			var chart_title1 = element.replace(/\s+/g, "_");
			chart_title1 = getTranslatedDataInArabic[0][chart_title1];
			var chart_title2 = attribute.replace(/\s+/g, "_");
			chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
			var chart_title_in_arabic = chart_title2+" "+chart_title1;
			let x_axis_label = element;
			let y_axis_title = attribute;
			var getOperationValue = $("#operationDropdown"+id).val();
		var y_axis_label_in_arabic = y_axis_title.replace(/\s+/g, "_");
		y_axis_label_in_arabic = getTranslatedData[0][y_axis_label_in_arabic];
		var x_axis_label_in_arabic = x_axis_label.replace(/\s+/g, "_");
		x_axis_label_in_arabic = getTranslatedData[0][x_axis_label_in_arabic];
			let graphDataJson = {
				'chartNameVal':$(".heading_"+id).html(),
				'element_name':element,
				'tab_id': getContainerId[0],
				'chart_title': chart_title,
				'chart_title_in_arabic': chart_title_in_arabic,
				'chartName': chartName,
				'chartType': chartType,
				'chartOperation': getOperationValue,
				yAxisData: JSON.stringify(yAxisData),
				yAxisLabel: JSON.stringify(yAxisLabel),
				xAxisLabel: x_axis_label,
				y_axis_title: y_axis_title,
				categoriesArray: JSON.stringify(categoriesArray),
				'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
				'attributesTextArea':attribute,
				'operation_value':operation_value
			};
			$("#"+saveButton).click(function() {
//				graphDataJson = JSON.stringify(graphDataJson);
				$.ajax({
					url: "saveChart",
					contentType: 'application/json; charset=utf-8',
					type: "POST",
					data: JSON.stringify(graphDataJson),
					dataType: 'json',
					success: function(data) {
				    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
				    	alert_message_function();				
					}
				});
			});
		for(var i = 0 ; i <= yAxisLabel.length-1 ; i++){
			var getDataFromMessageFile = yAxisLabel[i]['label'].text
			var temp = getDataFromMessageFile.replace(/\s+/g, "_");
			let temp1 = getTranslatedData[0][temp];
			yAxisLabel[i]['label'].text = temp1;				
		}			
			$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
			$("#delete_"+id).prop( "disabled", false );
		//	("#"+getContainerId[0]+"chartContainer"+getContainerId[1])
		//	$("#chartContainer" + id).empty();
			var options = {
				chart: {
					type: chartType
				},
				dataLabels : {
					enabled : false
				},
				series: [{
					name: quantity,
					data: getLanguage == "En" ? yAxisData: yAxisData.reverse(),
				}],
				annotations:
				{
					yaxis: yAxisLabel,
				},
				yaxis:{
					opposite: getLanguage == "En" ? false: true,
					show: true,
					labels: {
						show: false
					},
					title: {
						//text: 'yaxis'
						text: getLanguage == "En" ? attribute: y_axis_label_in_arabic,
					},
				},
				xaxis: {
					categories: getLanguage == "En" ? categoriesArray:categoriesArray.reverse(),
					title: {
						//text: 'xaxis'
						text: getLanguage == "En" ? element: x_axis_label_in_arabic,
					},
					label: {
		//					borderColor: '#00E396',
						borderColor: '#FFFFFF',
						style: {
							color: '#000000',
		//						background: '#00E396'
						},
						//position:'left',
						offsetY: 1,
						//offsetX: -5,
					}
				},
				title : {
					//text : 'Traffic Sources',
					text : getLanguage == "En" ? element+" "+attribute:chart_title_in_arabic,
					align : 'center',
				},
				grid: {
				  padding: {
				    left: 50
				  }
				}
			}
		//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
		//		options);
			var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
				options);
//			chart.render();		
				chart.render().then(() => {
				    window.setTimeout(function() {
					    chart.dataURI().then(({ imgURI, blob }) => {
							getTotalImgURI.push(imgURI)
							getChartNameForPdf.push(getChartName);
					    })
				    }, 1000) 
				})
		}
		else{
			$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
			alert_message_function();			
		}	
	}
	else{
			$(".alert_message").html(`<div class="alert alert-danger" role="alert">${first_add_attribute}</div>`);
			alert_message_function();			
	}
}
function getcharNum(chartData){
	var yAxisData = [];
	var yAxisLabel = [];
	var categoriesArray = [];
		var tempArray = [];
		var arr1 = chartData['attributeRow'];
		var arr_length = arr1.length;
		categoriesArray = chartData['nameRow'];
		var yAxisIndex = 1;
		for (var x = 1; x <= arr_length; x++) {
			let tempIndex = 0;
			if (tempArray.includes(arr1[x - 1])) {
				tempIndex = tempArray.indexOf(arr1[x - 1]) + 1;
			} else {
				tempArray.push(arr1[x - 1]);
				tempIndex = yAxisIndex++;
			}
			yAxisData.push(tempIndex);
			yAxisLabel.push({
				y: tempIndex,
//				borderColor: '#00E396',
				label: {
//					borderColor: '#00E396',
					borderColor: '#FFFFFF',
					style: {
						color: '#000000',
//						background: '#00E396'
					},
					position:'left',
					offsetY: 5.5,
					offsetX: -5,
					text: arr1[x - 1]
				}
			});
		}	
		return [yAxisData,yAxisLabel];
}
function getcharNum2(chartData){
	var yAxisData = [];
	var yAxisLabel = [];
	var categoriesArray = [];
		var tempArray = [];
		var arr1 = chartData['attributeRow'];
		var arr_length = arr1.length;
		categoriesArray = chartData['nameRow'];
		var yAxisIndex = 1;
		for (var x = 1; x <= arr_length; x++) {
			let tempIndex = 0;
			if (tempArray.includes(arr1[x - 1])) {
//				tempIndex = tempArray.indexOf(arr1[x - 1]) + 1;
				tempArray.push(arr1[x - 1]);
				if(tempArray[x-1] == 'Very Low'){
					tempIndex = 1;
				}
				if(tempArray[x-1] == 'Low'){
					tempIndex = 2;
				}
				if(tempArray[x-1] == 'Medium'){
					tempIndex = 3;
				}
				if(tempArray[x-1] == 'High'){
					tempIndex = 4;
				}
				if(tempArray[x-1] == 'Very High'){
					tempIndex = 5;
				}
//				else{
//					tempIndex = tempArray.indexOf(arr1[x - 1]) + 1;
//				}
			} else {
				tempArray.push(arr1[x - 1]);
				if(tempArray[x-1] == 'Very Low'){
					tempIndex = 1;
				}
				if(tempArray[x-1] == 'Low'){
					tempIndex = 2;
				}
				if(tempArray[x-1] == 'Medium'){
					tempIndex = 3;
				}
				if(tempArray[x-1] == 'High'){
					tempIndex = 4;
				}
				if(tempArray[x-1] == 'Very High'){
					tempIndex = 5;
				}
//				else{
//					tempIndex = yAxisIndex++;
//				}
//				tempIndex = yAxisIndex++;
			}
			yAxisData.push(tempIndex);
			yAxisLabel.push({
				y: tempIndex,
//				borderColor: '#00E396',
				label: {
//					borderColor: '#00E396',
					borderColor: '#FFFFFF',
					style: {
						color: '#000000',
//						background: '#00E396'
					},
					position:'left',
					offsetY: 5.5,
					offsetX: -5,
					text: arr1[x - 1]
				}
			});
		}	
		const check = (list) => {
			const setItem = new Set(list);
			return setItem.size <= 1;
		}
		var checkArrayValue = check(yAxisData);
		if(checkArrayValue == true){
			return getcharNum(chartData)
		}	
		else{
			return [yAxisData,yAxisLabel];	
		}	
}
function drawChartCountElement(chartType, chartData, id, countGraph, saveButton) {
//	extra
	let element_name = $("#elementDropdown"+id).val();
//	let operation_value = $("input[name=operationValue]").val();
	let operation_value = document.querySelector('input[name="operationValue"]:checked').value;
	let attributesTextArea = $(".attributesTextArea"+id).val();
	const getContainerId = id.split("_");
	var element = $("#elementDropdown" + id).val();
//	var attribute = $("#attributeDropdown" + id).val();
	var attribute = $(".attributesTextArea" + id).val();
	var yAxisData = [];
	var yAxisLabel = [];
	var categoriesArray = [];
//	if (countGraph == false) {
		let unique = chartData['attributeRow'].filter(onlyUnique);
		categoriesArray = unique;
		if(categoriesArray.indexOf('Very High') !== -1 || categoriesArray.indexOf('High') !== -1 || categoriesArray.indexOf('Medium') !== -1 || categoriesArray.indexOf('Low') !== -1 || categoriesArray.indexOf('Very Low') !== -1){
			/*		let sortOrder = ["Very High", "High", "Medium", "Low", "Very Low"];
					//const sortOrder = ['Zebra', 'Van'];
					const sorter = (a, b) => {
					   if(categoriesArray.includes(a)){
					      return -1;
					   };
					   if(categoriesArray.includes(b)){
					      return 1;
					   };
					   return 0;
					};
					sortOrder.sort(sorter);
					categoriesArray = sortOrder;
					*/
					const counts = {};
					chartData['attributeRow'].forEach((x) => {
					  counts[x] = (counts[x] || 0) + 1;
					});
					let tempArr = []
					for(var i = 0 ; i <= unique.length-1 ; i++){
						tempArr.push(counts[unique[i]])
					}
					yAxisData = tempArr;
					
					let compArray = ["Very High", "High", "Medium", "Low", "Very Low"];
					let pushArray = [];
					for(var i = 0 ; i <= compArray.length-1; i++){
						for(var j = 0 ; j <= compArray.length-1 ; j++){
							if(compArray[i] == categoriesArray[j]){
								pushArray.push(compArray[i]);
							}
						}
					}
					let makeObj = {};
					let yAxisArray = [];
					for(var i = 0 ; i <= categoriesArray.length-1 ; i++){
						makeObj[categoriesArray[i]] = yAxisData[i]; 
					}
					categoriesArray = pushArray;
					yAxisData = yAxisArray;
					for(var i = 0 ; i <= pushArray.length-1; i++){
						yAxisArray.push(makeObj[pushArray[i]]);
					}
			/*		for (let x = 0; x < unique.length; x++) {
						let count = 0, i;
						for (i = 0; i < chartData['attributeRow'].length; i++) {
							if (chartData['attributeRow'][i].indexOf(unique[x]) !== -1) {
								count++;
							}
						}
						yAxisData.push(count);
					}*/
			//
			////	} else {
			//		var tempArray = [];
			//		var arr1 = chartData['attributeRow'];
			//		var arr_length = arr1.length;
			//		categoriesArray = chartData['nameRow'];
			//		var yAxisIndex = 1;
			//		for (var x = 1; x <= arr_length; x++) {
			//			let tempIndex = 0;
			//			if (tempArray.includes(arr1[x - 1])) {
			//				tempIndex = tempArray.indexOf(arr1[x - 1]) + 1;
			//			} else {
			//				tempArray.push(arr1[x - 1]);
			//				tempIndex = yAxisIndex++;
			//			}
			//			yAxisData.push(tempIndex);
			//			yAxisLabel.push({
			//				y: tempIndex,
			////				borderColor: '#00E396',
			//				label: {
			////					borderColor: '#00E396',
			//					borderColor: '#FFFFFF',
			//					style: {
			//						color: '#000000',
			////						background: '#00E396'
			//					},
			//					position:'left',
			//					offsetY: 5.5,
			//					text: arr1[x - 1]
			//				}
			//			});
			//		}
			////	}
				const check = (list) => {
					const setItem = new Set(list);
					return setItem.size <= 1;
				}
				var checkArrayValue = check(yAxisData);
				if(checkArrayValue === false){
					yAxisTitle = 'yaxis:{show: true,labels: {show: true},title: {text: "Number of "'+element_name+'},},';
					let chart_title = ""+element+ " "+attribute+"";
					let x_axis_label = attribute;
					let y_axis_title = element;	
					let chartName = 'bar1';
					var getOperationValue = $("#operationDropdown"+id).val();
					var chart_title1 = element.trim().replace(/\s+/g, "_");
					chart_title1 = getTranslatedDataInArabic[0][chart_title1];
					var chart_title2 = attribute.trim().replace(/\s+/g, "_");
					chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
					var chart_title_in_arabic = chart_title2+" "+chart_title1;
					let graphDataJson = {
						'chartNameVal':$(".heading_"+id).html(),
						'tab_id': getContainerId[0],
						'element_name':element_name,
						'chart_title': chart_title,
						'chart_title_in_arabic': chart_title_in_arabic,
						'chartName': chartName,
						'chartType': chartType,
						'chartOperation': getOperationValue,
				//		'yAxisTitle': JSON.stringify(yAxisTitle),
				//		xAxisLabel: JSON.stringify(xAxisTitle),
						yAxisData: JSON.stringify(yAxisData),
						yAxisLabel: JSON.stringify(yAxisLabel),
						xAxisLabel: x_axis_label,
						y_axis_title: y_axis_title,		
						categoriesArray: JSON.stringify(categoriesArray),
						'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
						'operation_value': operation_value,
						'attributesTextArea': attributesTextArea,
					};
					$("#"+saveButton).click(function() {
//						graphDataJson = JSON.stringify(graphDataJson);
						$.ajax({
							url: "saveChart",
							contentType: 'application/json; charset=utf-8',
							type: "POST",
							data: JSON.stringify(graphDataJson),
							dataType: 'json',
							async: 'true',
							success: function(data) {
								if(data == '1'){
							    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
							    	alert_message_function();	
							    }
							    else if(data == '0'){
							    	$(".alert_message").html(`<div class="alert alert-warning" role="alert">${chart_already_exists}</div>`);
							    	alert_message_function();								
								}			
							}
						});
					});
				//	$("#chartContainer" + id).empty();
					$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
					$("#delete_"+id).prop( "disabled", false );
					var options = {
						chart: {
							type: chartType
						},
						dataLabels : {
							enabled : false
						},
						series: [{
							name: quantity,
							data: getLanguage == "En" ? yAxisData : yAxisData.reverse(),
						}],
						annotations:
						{
							yaxis: getLanguage == "En" ? yAxisLabel : yAxisLabel.reverse(),
				
						},
						yaxis:{
							show: true,
							opposite: getLanguage == "En" ? false : true,
							labels: {
								show: true
							},
							title: {
								//text: 'yaxis'
								text: getLanguage == "En" ? 'Number of '+element_name: customDictionary[element_name.replaceAll(" ","_")]+' عدد ',
							},
						},
						xaxis: {
							categories: getLanguage == "En" ? categoriesArray : categories_array_in_arabic.reverse(),
							title: {
								//text: 'xaxis'
								text: getLanguage == "En" ? attribute : y_axis_arabic_title,
							},
						},
						title : {
							//text : 'Traffic Sources',
							text : getLanguage == "En" ? element+" "+attribute : chart_title_in_arabic,
							align : 'center',
						},
						grid: {
						  padding: {
						    left: 50
						  }
						}
					}
					var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
						options);
//					chart.render();		
					chart.render().then(() => {
					    window.setTimeout(function() {
						    chart.dataURI().then(({ imgURI, blob }) => {
								getTotalImgURI.push(imgURI)
								getChartNameForPdf.push(getChartName);
						    })
					    }, 1000) 
					})
				}
				else{
					$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
					alert_message_function();			
				}			
		}
		else{
					const counts = {};
					chartData['attributeRow'].forEach((x) => {
					  counts[x] = (counts[x] || 0) + 1;
					});
					
					let tempArr = []
					for(var i = 0 ; i <= unique.length-1 ; i++){
						tempArr.push(counts[unique[i]])
					}
					yAxisData = tempArr;
					
					let makeObj = {};
					let yAxisArray = [];
					for(var i = 0 ; i <= categoriesArray.length-1 ; i++){
						makeObj[categoriesArray[i]] = yAxisData[i]; 
					}
			
					yAxisData = yAxisArray;
					for(var i = 0 ; i <= categoriesArray.length-1; i++){
						yAxisArray.push(makeObj[categoriesArray[i]]);
					}
				const check = (list) => {
					const setItem = new Set(list);
					return setItem.size <= 1;
				}
				var checkArrayValue = check(yAxisData);	
				if(checkArrayValue === false){
					yAxisTitle = 'yaxis:{show: true,labels: {show: true},title: {text: "Number of "'+element_name+'},},';
					let chart_title = ""+element+ " "+attribute+"";
					let x_axis_label = attribute;
					let y_axis_title = element;	
					var y_axis_arabic_title = y_axis_title.replace(/\s+/g, "_");
					y_axis_arabic_title = getTranslatedData[0][y_axis_arabic_title];		
					let chartName = 'bar1';
					var getOperationValue = $("#operationDropdown"+id).val();
					
					var chart_title1 = element.replace(/\s+/g, "_");
					chart_title1 = getTranslatedDataInArabic[0][chart_title1];
					var chart_title2 = attribute.replace(/\s+/g, "_");
					chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
					var chart_title_in_arabic = chart_title2+" "+chart_title1;
				    var categories_array_in_arabic = [];
				    for(var i = 0 ; i <= categoriesArray.length-1; i++){
						var temp = categoriesArray[i].toString().replace(/\s+/g, "_");
						categories_array_in_arabic.push(getTranslatedData[0][temp]);
					}				
					let graphDataJson = {
						'chartNameVal':$(".heading_"+id).html(),
						'tab_id': getContainerId[0],
						'chart_title': chart_title,
						'chart_title_in_arabic': chart_title_in_arabic,
						'chartName': chartName,
						'chartType': chartType,
						'chartOperation': getOperationValue,
				//		'yAxisTitle': JSON.stringify(yAxisTitle),
				//		xAxisLabel: JSON.stringify(xAxisTitle),
						yAxisData: JSON.stringify(yAxisData),
						yAxisLabel: JSON.stringify(yAxisLabel),
						xAxisLabel: x_axis_label,
						y_axis_title: y_axis_title,		
						categoriesArray: JSON.stringify(categoriesArray),
						'divID': getContainerId[0]+"chartContainer" + getContainerId[1]
					};
					$("#"+saveButton).click(function() {
//						graphDataJson = JSON.stringify(graphDataJson);
						$.ajax({
							url: "saveChart",
							contentType: 'application/json; charset=utf-8',
							type: "POST",
							data: JSON.stringify(graphDataJson),
							dataType: 'json',
							success: function(data) {
						    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
						    	alert_message_function();				
							}
						});
					});
				//	$("#chartContainer" + id).empty();
					$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
					$("#delete_"+id).prop( "disabled", false );
					var options = {
						chart: {
							type: chartType
						},
						dataLabels : {
							enabled : false
						},
						series: [{
							name: quantity,
							data: getLanguage == "En" ? yAxisData : yAxisData.reverse(),
						}],
						annotations:
						{
							yaxis: getLanguage == "En" ? yAxisLabel : yAxisLabel.reverse(),
				
						},
						yaxis:{
							show: true,
							opposite: getLanguage == "En" ? false : true,
							labels: {
								show: true
							},
							title: {
								//text: 'yaxis'
								text: getLanguage == "En" ? 'Number of '+element_name : customDictionary[element_name.replaceAll(" ","_")]+' عدد ',
							},
						},
						xaxis: {
							categories: categoriesArray,
							title: {
								//text: 'xaxis'
								text: getLanguage == "En" ? attribute : y_axis_arabic_title,
							},
						},
						title : {
							//text : 'Traffic Sources',
							text : getLanguage == "En" ? element+" "+attribute  : chart_title_in_arabic,
							align : 'center',
						},
						grid: {
						  padding: {
						    left: 50
						  }
						}
					}
					var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
						options);
//					chart.render();	
					chart.render().then(() => {
					    window.setTimeout(function() {
						    chart.dataURI().then(({ imgURI, blob }) => {
								getTotalImgURI.push(imgURI)
								getChartNameForPdf.push(getChartName);
						    })
					    }, 1000) 
					})	
				}
				else{
					$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
					alert_message_function();			
				}				
		}
}
function drawChartDistributionElement(chartType, chartData, id, countGraph, saveButton){
//	extra
	let element_name = $("#elementDropdown"+id).val();
	let operation_value = document.querySelector('input[name="operationValue"]:checked').value;
	let attributesTextArea = $(".attributesTextArea"+id).val();
	if(chartData != undefined){
		const getContainerId = id.split("_");
		var attribute = $("#attributeDropdown" + id).val();
		var yAxisData = [];
		var yAxisLabel = [];
		var categoriesArray = [];
		yAxisData = chartData.attributeRow.map(Number);
		const check = (list) => {
			const setItem = new Set(list);
			return setItem.size <= 1;
		}
		var checkArrayValue = check(yAxisData);	
		if(checkArrayValue === false){
			$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
			$("#delete_"+id).prop( "disabled", false );
			var options = {
				//series : [ 14, 7, 46, 1, 28, 4],
				series: yAxisData,
				chart : {
		//			width : 500,
		//			height: 500,
					type : 'pie',
				    toolbar: {
				      show: true
				    },
				},
				title : {
					//text : 'Traffic Sources',
		//			text: attribute,
					text: getLanguage == "En" ? "Budget Distribution" : "توزيع الميزانية",
					align : 'center',
				},
				labels : chartData.nameRow,
				responsive : [ {
					breakpoint : 480,
					options : {
						chart : {
		//					width : 200
						},
					}
				} ],
				legend : {
					position : 'bottom',
		//			horizontalAlign: 'center', 
				}
			};
			let chartName = 'bar1';
		//	var getOperationValue = $("#operationDropdown"+id).val();
			let graphDataJson = {
				'chartNameVal':$(".heading_"+id).html(),
				'element_name':element_name,
				'tab_id': getContainerId[0],
				'chartName': chartName,
				'chartType': chartType,
				'chartOperation': 'Distribution',
		//		'chartOperation': getOperationValue,
		//		'yAxisTitle': JSON.stringify(yAxisTitle),
				xAxisLabel: attribute,
				yAxisData: JSON.stringify(yAxisData),
				yAxisLabel: JSON.stringify(chartData.nameRow),
				categoriesArray: JSON.stringify(categoriesArray),
				'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
				'operation_value':operation_value,
				'attributesTextArea':attributesTextArea,
			};
			$("#"+saveButton).click(function() {
//				graphDataJson = JSON.stringify(graphDataJson);
				$.ajax({
					url: "saveChart",
					contentType: 'application/json; charset=utf-8',
					type: "POST",
					data: JSON.stringify(graphDataJson),
					dataType: 'json',
					success: function(data) {
//				    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
						$(".alert_message").html(`<div class="alert alert-success" role="alert">${Graph_Saved_Successfully}!</div>`);
				    	alert_message_function();				
					}
				});
			});
			var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
				options);
		//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
		//			options);
//			chart.render();	
			chart.render().then(() => {
			    window.setTimeout(function() {
				    chart.dataURI().then(({ imgURI, blob }) => {
						getTotalImgURI.push(imgURI)
						getChartNameForPdf.push(getChartName);
				    })
			    }, 1000) 
			})	
		}else{
			$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
			alert_message_function();		
		}		
	}
	else{
			$(".alert_message").html(`<div class="alert alert-danger" role="alert">${add_attribute_data_not_valid}</div>`);
			alert_message_function();		
	}
}
function drawChartFromDB(data,containerID){
	let makingGetID = containerID.split("chartContainer")
	let getID = makingGetID[0]+"_"+makingGetID[1];
	let saveID = "Save"+makingGetID[0]+"_"+makingGetID[1];
	let element_name = data['element_name'];
	let attributeTextArea = data['attributesTextArea'];
	let operation_value = data['operation_value'];
	let chart_type = data['chart_type'];
	let chart_Operation = data['chart_Operation'];
	let chart_name = data['chart_name'];
	let chart_title = data['chart_title'];
	let chart_title_in_arabic_from_database = data['chart_title_in_arabic'];
	let x_axis_label = data['x_axis_label'];
	let y_axis_title = data['y_axis_title'];
	let y_axis_data = JSON.parse(data['y_axis_data']);
	let y_axis_lable = JSON.parse(data['y_axis_label']);
	let categories_array = JSON.parse(data['categories_array']);
	var makeDeleteID = containerID.split("chartContainer");
	var tab_id = makeDeleteID[0]+"_"+makeDeleteID[1];
	var deleteID = "delete_"+makeDeleteID[0]+"_"+makeDeleteID[1];
	$(".heading_"+tab_id).html(data['tab_name']);
	if(data.chart_type == "bar" && data.chart_Operation == "null"){
		generateGraphFromDB(getID, saveID, chart_type, element_name, attributeTextArea, chart_Operation, operation_value);
//		var y_axis_label_in_arabic = y_axis_title.replace(/\s+/g, "_");
//		y_axis_label_in_arabic = getTranslatedData[0][y_axis_label_in_arabic];
//				
//		var x_axis_label_in_arabic = x_axis_label.replace(/\s+/g, "_");
//		x_axis_label_in_arabic = getTranslatedData[0][x_axis_label_in_arabic];
//		
//		for(var i = 0 ; i <= y_axis_lable.length-1 ; i++){
//			var getDataFromMessageFile = y_axis_lable[i]['label'].text
//			var temp = getDataFromMessageFile.replace(/\s+/g, "_");
//			let temp1 = getTranslatedData[0][temp];
//			y_axis_lable[i]['label'].text = temp1;				
//		}		
//		var options = {
//			chart: {
//				type: data['chart_type']
//			},
//			dataLabels : {
//				enabled : false
//			},
//			series: [{
//				name: quantity,
//				data: getLanguage == "En" ? y_axis_data : y_axis_data.reverse(),
//			}],
//			annotations:
//			{
//				yaxis: getLanguage == "En" ? y_axis_lable : y_axis_lable.reverse(),
//	
//			},
//			yaxis:{
//				opposite: getLanguage == "En" ? false : true,
//				show: true,
//				labels: {
//					show: false
//				},
//				title: {
//					text: getLanguage == "En" ? y_axis_title : y_axis_label_in_arabic,
////					text: 'Number of '+element_name
//				},
//			},
//			xaxis: {
//				categories: getLanguage == "En" ? categories_array : categories_array.reverse(),
//				title: {
//					text: getLanguage == "En" ? x_axis_label : x_axis_label_in_arabic,
////					text: "X-Axis"
//				},
//				labels:{
//					offsetY: getLanguage == "En" ? 0 : 100,
//					offsetX: getLanguage == "En" ? 0 : -10,
//				},
//			},
//			title : {
////				text : 'Heading',
//				text : getLanguage == "En" ? chart_title : chart_title_in_arabic_from_database,
//				align : 'center',
//			},
//			grid: {
//			  padding: {
//			    left: 50
//			  }
//			}
//		}
////        setTimeout(createChart, 0);
////        function createChart() {
//			$("#"+deleteID).prop( "disabled", false);
//			$(".heading_"+tab_id).html(data['tab_name']);
//			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
//			chart.render();
////		}
	}
	if(data.chart_type == "bar" && ( data.chart_Operation == "Count" || data.chart_Operation == "count")){
//		let element_name = data['element_name'];
//		let attributeTextArea = data['attributesTextArea'];
//		let operation_value = data['operation_value'];		
		generateGraphFromDB(getID, saveID, chart_type, element_name, attributeTextArea, chart_Operation, operation_value);
//		var y_axis_arabic_title = y_axis_title.replace(/\s+/g, "_");
//		y_axis_arabic_title = getTranslatedData[0][y_axis_arabic_title];
//		
//	    var categories_array_in_arabic = [];
//	    for(var i = 0 ; i <= categories_array.length-1; i++){
//			var temp = categories_array[i].toString().replace(/\s+/g, "_");
//			categories_array_in_arabic.push(getTranslatedData[0][temp]);
//		}
//		var options = {
//			chart: {
//				type: data['chart_type']
//			},
//			dataLabels : {
//				enabled : false
//			},
//			series: [{
//				name: quantity,
//				data: getLanguage == "En" ? y_axis_data : y_axis_data.reverse(),
//			}],
//			annotations:
//			{
//				yaxis: getLanguage == "En" ? y_axis_lable : y_axis_lable.reverse(),
//			},
//			yaxis:{
//				show: true,
//				opposite: getLanguage == "En" ? false : true,
//				labels: {
//					show: true
//				},
//				title: {
//					//text: 'yaxis'
//					text: getLanguage == "En" ? 'Number of '+element_name: customDictionary[element_name.replaceAll(" ","_")]+' عدد ',
//				},
//			},
//			xaxis: {
//				categories: getLanguage == "En" ? categories_array: categories_array_in_arabic.reverse(),
//				title: {
//					text: getLanguage == "En" ? y_axis_title : y_axis_arabic_title,
////					text: "X-Axis"
//				},
//			},
//			title : {
////				text : 'Heading',
//				text : getLanguage == "En" ? chart_title: chart_title_in_arabic_from_database,
//				align : 'center',
//			},
//			grid: {
//			  padding: {
//			    left: 50
//			  }
//			}
//		}
////        setTimeout(createChart, 0);
////        function createChart() {
//			$("#"+deleteID).prop( "disabled", false);
//			$(".heading_"+tab_id).html(data['tab_name']);
//			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
//			chart.render();
//		}
	}
	if(data.chart_type == "clusteredBar" && ( data.chart_Operation == "Count" || data.chart_Operation == "count")){
		generateGraphFromDB(getID, saveID, chart_type, element_name, attributeTextArea, chart_Operation, operation_value);
//		/*get x-axis label*/
//		var ret = x_axis_label.replace(' Characteristics','');
//		var chart_title1 = ret.replace(/\s+/g, "_");
//		chart_title1 = getTranslatedData[0][chart_title1];		
//	    var categories_array_in_arabic = [];
//	    for(var i = 0 ; i <= categories_array.length-1; i++){
//			var temp = categories_array[i].toString().replace(/\s+/g, "_");
//			categories_array_in_arabic.push(getTranslatedData[0][temp]);
//		}
//		getLegendsDataFromMessageFile(y_axis_data);
//		
//		var options = {
//			chart : {
//				type : 'bar'
//			},
//			plotOptions : {
//				bar : {
//					horizontal : false,
//					columnWidth : '55%',
//					endingShape : 'rounded'
//				},
//			},
//			dataLabels : {
//				enabled : false
//			},
//			series: y_axis_data,
//			xaxis : {
//				categories : getLanguage == "En" ? categories_array: categories_array_in_arabic.reverse(),
//				title : {
////					text : 'Application Component',
//					text: getLanguage == "En" ? x_axis_label: chart_title1+" مميزات",
//				},
//				lines : {
//					show : true
//				},
//			},
//			yaxis : {
//				opposite: getLanguage == "En" ? false:true,
//				title : {
//					text : getLanguage == "En" ? 'Number of '+element_name:customDictionary[element_name.replaceAll(" ","_")]+' عدد ',
//				},
//				lines : {
//					show : true
//				}
//			},
//			title : {
////				text : 'Traffic Sources',
//				text : getLanguage == "En" ? chart_title:chart_title_in_arabic_from_database,
//				align : 'center',
//			},
//			grid : {
//				position : 'front'
//			},
//			legend: {
//				horizontalAlign: 'center',
//			},
//		}
//
////        setTimeout(createChart, 0);
////        function createChart() {
//			$("#"+deleteID).prop( "disabled", false);
//			$(".heading_"+tab_id).html(data['tab_name']);
//			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
//			chart.render();
////		}
	}
	if(data.chart_Operation == "Average" && data.chart_type == "bar"){
		var y_axis_arabic_title = y_axis_title.replace(/\s+/g, "_");
		y_axis_arabic_title = getTranslatedData[0][y_axis_arabic_title];
		var x_axis_arabic_title = x_axis_label.replace(/\s+/g, "_");
		x_axis_arabic_title = getTranslatedData[0][x_axis_arabic_title];
		generateGraphFromDB(getID, saveID, chart_type, element_name, attributeTextArea, chart_Operation, operation_value, y_axis_arabic_title, x_axis_arabic_title, y_axis_data, categories_array, chart_title_in_arabic_from_database);
//						
//		getLegendsDataFromMessageFile(y_axis_data);
//		var options = {
//			chart : {
//				type : 'bar'
//			},
//			plotOptions : {
//				bar : {
//					horizontal : false,
//					columnWidth : '55%',
//					endingShape : 'rounded'
//				},
//			},
//			dataLabels : {
//				enabled : false
//			},
//			series: y_axis_data,
//			xaxis : {
////				categories : [ 'AppComp1', 'AppComp2', "AppComp3",
////						"AppComp4", "AppComp5", "AppComp6", "AppComp7",
////						"AppComp8", "AppComp9" , "AppComp10" , "AppComp11" , "AppComp12" ],
//				categories: getLanguage == "En" ? categories_array:categories_array.reverse(),
//				title : {
////					text : 'Application Component',
//					text : getLanguage == "En" ? x_axis_label:x_axis_arabic_title,
//				},
//				lines : {
//					show : true
//				},
//				labels:{
//					offsetY: getLanguage == "En" ? 0 : 100,
//					offsetX: getLanguage == "En" ? 0 : -10,
//				},				
//			},
//			yaxis : {
//				opposite: getLanguage == "En" ? false: true,
//				title : {
////					text : 'Maturity Score',
//					text: getLanguage == "En" ? y_axis_title:y_axis_arabic_title,
//				},
//				lines : {
//					show : true
//				},
//			},
//			title : {
////				text : 'Application Criticality',
//				text : getLanguage == "En" ? chart_title:chart_title_in_arabic_from_database,
//				align : 'center',
//			},
//			grid : {
//				position : 'front'
//			},
//			legend: {
//				position: getLanguage == "En" ? 'right':'left',
//				horizontalAlign: 'center',
//			},
//			colors: ['#00b0f0', '#00b050', '#c55a11', '#bf9000', '#ff0000', '#000000'],
//		}	
////        setTimeout(createChart, 0);
////        function createChart() {
//			$("#"+deleteID).prop( "disabled", false);
//			$(".heading_"+tab_id).html(data['tab_name']);
//			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
//			chart.render();
////		}
	}
	if(data.chart_Operation == "Distribution" && data.chart_type == "pie"){
		generateGraphFromDB(getID, saveID, chart_type, element_name, attributeTextArea, chart_Operation, operation_value);
//		x_axis_label_in_arabic = getTranslatedData[0][x_axis_label_in_arabic];		
//		var options = {
////			series : [500000,254762,1609235,34562,981727,135467],
//			series: y_axis_data,
//			chart : {
////				width : 500,
////				height: 500,
//				type : 'pie',
//			    toolbar: {
//			      show: true
//			    },
//			},
//			title : {
////				text : 'Traffic Sources',
//				text: getLanguage == "En" ? data.x_axis_label:'توزيع الميزانية',
//				align : 'center',
//			},
////			labels: ["Business_Process_0HPiRx0","Business_Process_6pfIj81","Business_Process_Spaos12","Business_Process_JAcHZ93","Business_Process_1Dq7Yp4","Business_Process_CDFq0n5"],
//			labels : y_axis_lable,
//			responsive : [ {
////				breakpoint : 480,
//				options : {
//					chart : {
////						width : 200
//					},
//				}
//			} ],
//			legend : {
//				position : 'bottom',
//	//			horizontalAlign: 'center', 
//			}
//		};
////        setTimeout(createChart, 100);
////        function createChart() {
//			$("#"+deleteID).prop( "disabled", false);
//			$(".heading_"+tab_id).html(data['tab_name']);
//			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
//			chart.render();
////		}
	}
	if(data.chart_type == "clusteredBar" && data.chart_Operation == "null"){
		generateGraphFromDB(getID, saveID, chart_type, element_name, attributeTextArea, chart_Operation, operation_value);
//		var chart_title_in_arabic = chart_title.replace(/\s+/g, "_");
//		chart_title_in_arabic = getTranslatedData[0][chart_title_in_arabic];
//		getLegendsDataFromMessageFile(y_axis_data);	
//	
//		var options = {
//			chart : {
//				type : 'bar'
//			},
//			plotOptions : {
//				bar : {
//					horizontal : false,
//					columnWidth : '55%',
//					endingShape : 'rounded'
//				},
//			},
//			dataLabels : {
//				enabled : false
//			},
//			series: y_axis_data,
//			xaxis : {
//				categories : getLanguage == "En" ? categories_array: categories_array.reverse(),
//				lines : {
//					show : true
//				},
//				labels: {
//					offsetY: getLanguage == "En" ? 0 : 100,
//					offsetX: getLanguage == "En" ? 0 : -10,					
//				},				
//			},
//			yaxis : {
//				opposite: getLanguage == "En" ? false: true,
//				title : {
//					text : getLanguage == "En" ? 'Millions':'ملايين',
//				},
//				lines : {
//					show : true
//				},
//	      		tickAmount: 6,
//			},
//			title : {
////				text : 'Traffic Sources',
//				text: getLanguage == "En" ? chart_title:chart_title_in_arabic_from_database, 
//				align : 'center',
//			},
//			grid : {
//				position : 'front'
//			},
//			legend: {
//				horizontalAlign: 'center',
//			},
//		}
////        setTimeout(createChart, 0);
////        function createChart() {
//			$("#"+deleteID).prop( "disabled", false);
//			$(".heading_"+tab_id).html(data['tab_name']);
//			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
//			chart.render();
////		}
	}
}
function getLegendsDataFromMessageFile(y_axis_data){
	for(var i = 0 ; i <= y_axis_data.length-1 ; i++){
		var temp = y_axis_data[i]['name'].replace(/\s+/g, "_");
		let temp1 = getTranslatedData[0][temp];
		y_axis_data[i]['name'] = temp1;				
		y_axis_data[i]['data'].reverse()
	}	
}
function generatePreviouslyCreatedCharts(){
	var chart_id = [];
//	for(var i =1; i<=6;i++){
//		let chart_id = 'chartContainer'+i;
		$.ajax({
			url: "getChartDataFromDivID",
			data: {
				'chart_div_id':currentTabId
			},
			success: function(data) {
				for(var i = 0 ; i <= data.length-1 ; i++){
//					let chart_id = 'chartContainer'+i;
					if(data!='' && data!=null){
						chart_id = data[i].div_id; 
						drawChartFromDB(data[i],chart_id)
					}
				}
//				if(data!='' && data!=null){
//					drawChartFromDB(data,chart_id)
//				}
			},
			async: false
		});
//	}
}
function deleteChart(id){
//	var checkDelete = confirm("Are you sure? You want to delete the chart.");
//	if(checkDelete == true){
//		const getContainerId = id.split("_");
//		let chart_id = getContainerId[0]+"chartContainer" + getContainerId[1];
//	//	$("#chartContainer" + id).empty();
//		$.ajax({
//				url: "deleteChartDataFromDivID",
//				data: {
//					'chart_div_id':chart_id
//				},
//				success: function(data) {
//					location.reload();
//					if(data!='' && data!=null){
//						$("#"+chart_id).empty();
//	//					drawChartFromDB(data,chart_id)
//	//					drawClusteredChartFromDB(data,chart_id)
//					}
//					else{
//	//					drawChartFromDB(data,chart_id)
//						$("#"+chart_id).empty();
//					}
//				},
//				complete: function(){
//					
//				},
//				async: false
//			});		
//	}
//	else{
//		
//	}
	$( "#dialog-confirm" ).dialog({
	  resizable: false,
	  height: "auto",
	  width: 400,
	  modal: true,
	  buttons: {
	    [Delete]: function() {
		const getContainerId = id.split("_");
		let chart_id = getContainerId[0]+"chartContainer" + getContainerId[1];
		$.ajax({
				url: "deleteChartDataFromDivID",
				data: {
					'chart_div_id':chart_id
				},
				success: function(data) {
					if(data == 1){
						location.reload();
						$("#"+chart_id).empty();
					}
					else{
//						$("#"+chart_id).empty();
						$(".alert_message").html(`<div class="alert alert-danger" role="alert">${you_are_restricted_to_delete_the_chart}</div>`);
						alert_message_function();
					}
				},
				complete: function(){
				},
				async: false
			});	
	        $( this ).dialog( "close" );
	    },
	    [Cancel]: function() {
	      $( this ).dialog( "close" );
	    }
	  }
	});  
}
	/* Charts ends here */
	//Call alert_message_function
	function alert_message_function(){
		setTimeout(function() { $(".alert_message").html(""); }, 2500);
		setTimeout(function() { $(".alertMessageForHistoryTab").html(""); }, 2500);
	}
	var lastchartNameVal;
	function enableChartSaveButton(id, saveButton){
		let splitID = id.split("_");
		let makeChartContrainerID = splitID[0]+"chartContainer"+splitID[1];
		let checkIfChartExist = $("#"+makeChartContrainerID).attr("style");
		if(checkIfChartExist){
			$(".heading_"+id).css("display","none");
			$(".changeChartName_"+id).css("display","inline");
			$(".saveChartButtonEnable"+id).css('display','inline');
			let chartNameVal = $(".heading_"+id).html();
			$(".chartName_"+id).val(chartNameVal);
			lastchartNameVal = chartNameVal;
		}
		else{
	    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${first_create_chart}</div>`);
	    	alert_message_function();			
		}
	}
	function saveChartName(id, chartContainerId){
		$(".heading_"+id).css("display","inline");
		$(".changeChartName_"+id).css("display","none");
		$(".saveChartButtonEnable"+id).css('display','none');
		let getChartName = $(".chartName_"+id).val();
		let tab_id = id;
		if(getChartName != "" || getChartName.length !== 0){
			$.ajax({
				url: "saveChartName",
				type: "POST",
				data: {chartContainerId, getChartName},
				success: function(data) {
					$(".heading_"+id).html(getChartName);
			    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${graphName_Change_Successfully}</div>`);
			    	alert_message_function();				
				}
			});			
		}
		else{
			$.ajax({
				url: "saveChartName",
				type: "POST",
				data: {"chartContainerId":chartContainerId, "getChartName":lastchartNameVal},
				success: function(data) {
					$(".heading_"+id).html(lastchartNameVal);
			    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${graphName_Change_Successfully}</div>`);
			    	alert_message_function();				
				}
			});				
		}
	}
function changeTabName(e){
	let getTabTitle = e.text;
	let getTabId = e.id;
	$("#tab_title").val(getTabTitle)
	// AddTab button: just opens the dialog
	// Modal dialog init: custom buttons and a "close" callback resetting the form inside
	var dialog = $("#dialog").dialog({
		autoOpen: false,
		modal: true,
		buttons: {
			[Add]: function() {
				changeTabNameModal(getTabTitle, getTabId);
				$(this).dialog("close");
			},
			[Cancel]: function() {
				$(this).dialog("close");
			}
		},
		close: function() {
			$(this).dialog("close");
//			form[0].reset();
		}
	});	
	dialog.dialog("open");
}
// Chnage Tab Name
// Actual addTab function: adds new tab using the input from the form above
function changeTabNameModal(label, getTabId) {
	let updateText = $("#tab_title").val();
	$.ajax({
		url: "changeTabName", // url: "/findAttributes?dbName="+db_name,
		type: "POST",
		data: { 'oldLabel':label, 'newLabel':updateText },
		dataType: "json",
		beforeSend: function() {
		},
		success: function(data) {
			$("#"+getTabId).text(updateText);
//			location.reload()
		},
	});			
}
function generateGraphFromDB(id, saveButton, chartType, element, attribute, operationDropdown, operation_value, y_axis_arabic_title, x_axis_arabic_title, y_axis_data, categories_array, chart_title_in_arabic_from_database) {
//	var chartType = $("#chartType" + id).val();
	let element_Check = element;
	let attribute_Check = attribute;
	let get_operation_value = operationDropdown;
//	var operationDropdown = $("#operationDropdown" + id).val();
//	if(document.getElementById('element'+id).checked) {
//	  	//Element radio button is checked
//		get_operation_value = element_Check;
//	}else if(document.getElementById('attribute'+id).checked) {
//	  	//Attribute radio button is checked
//		get_operation_value = attribute_Check;
//	}
	if(chartType == 'bar' && operationDropdown == 'null'){	
		var chartData = getDataForChartFromDB(id, element, attribute, operation_value);
		drawChartNullFromDB(chartType, chartData, id, true, saveButton, element, attribute, operation_value);
//		enableSaveButton(id);
	}
	else if(operation_value == "null" && operationDropdown == 'null'){
		if(chartType == 'clusteredBar'){
			var chartMultipleData = getMultipleDataForChartFromDB(id, element, attribute);
			drawclusteredBudgetChartFromDB(chartType, chartMultipleData, id, false, saveButton, element, attribute, operation_value);
//			enableSaveButton(id);
		}
		else{
			disableGenerateGraphButton(id);
	    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();
		}
	}
	if(operationDropdown == 'Count'){
		if(chartType == 'bar' && operation_value == 'Element'){
			var chartData = getDataForChartFromDB(id, element, attribute, operation_value);
			drawChartCountElementFromDB(chartType, chartData, id, false, saveButton, element, attribute, operation_value);
//			enableSaveButton(id);
		}
		else if(chartType == 'clusteredBar' && operation_value == 'Element'){
			var chartMultipleData = getMultipleDataForChartFromDB(id, element, attribute);
			drawclusteredChartCountElementFromDB(chartType, chartMultipleData, id, false, saveButton, element, attribute, operation_value);
//			enableSaveButton(id);
		}
		else{
			disableGenerateGraphButton(id);
	    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();
		}	
	}
	else if(operationDropdown == 'Average'){
		if(chartType == 'bar' && operation_value == 'Attribute'){
			var chartAverageMultipleData = getAverageMultipleDataForChartFromDB(id, element, attribute);			
			drawChartAverageColumnFromDB(chartType, chartAverageMultipleData, id, false, saveButton, element, attribute, operation_value, y_axis_arabic_title, x_axis_arabic_title, y_axis_data, categories_array, chart_title_in_arabic_from_database);
//			enableSaveButton(id);
		}
		else{
			disableGenerateGraphButton(id);
	    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();			
		}
	}
	else if(operationDropdown == 'Distribution'){
		if(chartType == "pie" && operation_value == "Attribute"){
			var chartData = getDataForChartFromDB(id, element, attribute, operation_value);
			drawChartDistributionElementFromDB(chartType, chartData, id, false, saveButton, element, attribute, operation_value);
//			enableSaveButton(id);
		}
		else{
//			alert("Try Valid Chart!");
			disableGenerateGraphButton(id);
	    	$(".alert_message").html(`<div class="alert alert-danger" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();
		}
	}
//	else{
////		alert("Try Valid Chart!")
//		disableGenerateGraphButton(id);
//    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Try_Valid_Chart}</div>`);
//    	alert_message_function();
//	}
}
function getDataForChartFromDB(id, element, attribute) {
	const elementValue = element;
//	const attributeValue = $("#attributeDropdown" + id).val();
	let attributeValue = attribute;
	attributeValue = attributeValue.trim();
	var dataForChart = $.ajax({
		url: "generateChartTable",
		data: {
			'elementName': elementValue,
			'attributeValue': attributeValue,
		},
		success: function(data) {
		},
		async: false
	});
	return dataForChart.responseJSON;
}
function getMultipleDataForChartFromDB(id, element, attribute) {
	const elementValue = element;
	const attributeValue = attribute;
	const withoutFirstAndLast = attributeValue.slice(1, -1).replaceAll("\"", "");
	var array = withoutFirstAndLast.split(",");
	var dataForChart = $.ajax({
		url: "generateMultipleChartTable",
		contentType: "application/json",
		data: {
			'elementName': elementValue,
			"attributeValue": array,
		},
		success: function(data) {
		},
		async: false
	});
	return dataForChart.responseJSON;
}
function getAverageMultipleDataForChartFromDB(id, element, attribute) {
	const elementValue = element;
	const attributeValue = attribute;
	const withoutFirstAndLast = attributeValue.slice(1, -1).replaceAll("\"", "");
	var array = withoutFirstAndLast.split(",");	
	var dataForChart = $.ajax({
		url: "generateAverageMultipleChartTable",
		contentType: "application/json",
		data: {
			'elementName': elementValue,
			"attributeValue": array,
		},
		success: function(data) {
		},
		async: false
	});
	return dataForChart.responseJSON;
} 
function drawChartCountElementFromDB(chartType, chartData, id, countGraph, saveButton, element, attribute, operation_value) {
	let getChartName = $(".heading_"+id).html();
	element_name = element;
	operation_value = operation_value;
	attributesTextArea = attribute;
	const getContainerId = id.split("_");
	var yAxisData = [];
	var yAxisLabel = [];
	var categoriesArray = [];
//	if (countGraph == false) {
		let unique = chartData['attributeRow'].filter(onlyUnique);
		categoriesArray = unique;
		if(categoriesArray.indexOf('Very High') !== -1 || categoriesArray.indexOf('High') !== -1 || categoriesArray.indexOf('Medium') !== -1 || categoriesArray.indexOf('Low') !== -1 || categoriesArray.indexOf('Very Low') !== -1){
					const counts = {};
					chartData['attributeRow'].forEach((x) => {
					  counts[x] = (counts[x] || 0) + 1;
					});
					let tempArr = []
					for(var i = 0 ; i <= unique.length-1 ; i++){
						tempArr.push(counts[unique[i]])
					}
					yAxisData = tempArr;
					let compArray = ["Very High", "High", "Medium", "Low", "Very Low"];
					let pushArray = [];
					for(var i = 0 ; i <= compArray.length-1; i++){
						for(var j = 0 ; j <= compArray.length-1 ; j++){
							if(compArray[i] == categoriesArray[j]){
								pushArray.push(compArray[i]);
							}
						}
					}
					let makeObj = {};
					let yAxisArray = [];
					for(var i = 0 ; i <= categoriesArray.length-1 ; i++){
						makeObj[categoriesArray[i]] = yAxisData[i]; 
					}
					categoriesArray = pushArray;
					yAxisData = yAxisArray;
					for(var i = 0 ; i <= pushArray.length-1; i++){
						yAxisArray.push(makeObj[pushArray[i]]);
					}
				const check = (list) => {
					const setItem = new Set(list);
					return setItem.size <= 1;
				}
				var checkArrayValue = check(yAxisData);
				if(checkArrayValue === false){
					yAxisTitle = 'yaxis:{show: true,labels: {show: true},title: {text: "Number of "'+element_name+'},},';
					let chart_title = ""+element+ " "+attribute+"";
					let x_axis_label = attribute;
					let y_axis_title = element;	
					let chartName = 'bar1';
					var getOperationValue = $("#operationDropdown"+id).val();
					var chart_title1 = element.trim().replace(/\s+/g, "_");
					chart_title1 = getTranslatedDataInArabic[0][chart_title1];
					var chart_title2 = attribute.trim().replace(/\s+/g, "_");
					chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
					var chart_title_in_arabic = chart_title2+" "+chart_title1;
					let graphDataJson = {
						'chartNameVal':$(".heading_"+id).html(),
						'tab_id': getContainerId[0],
						'element_name':element_name,
						'chart_title': chart_title,
						'chart_title_in_arabic': chart_title_in_arabic,
						'chartName': chartName,
						'chartType': chartType,
						'chartOperation': getOperationValue,
				//		'yAxisTitle': JSON.stringify(yAxisTitle),
				//		xAxisLabel: JSON.stringify(xAxisTitle),
						yAxisData: JSON.stringify(yAxisData),
						yAxisLabel: JSON.stringify(yAxisLabel),
						xAxisLabel: x_axis_label,
						y_axis_title: y_axis_title,		
						categoriesArray: JSON.stringify(categoriesArray),
						'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
						'operation_value': operation_value,
						'attributesTextArea': attributesTextArea,
					};
					$("#"+saveButton).click(function() {
//						graphDataJson = JSON.stringify(graphDataJson);
						$.ajax({
							url: "saveChart",
							contentType: 'application/json; charset=utf-8',
							type: "POST",
							data: JSON.stringify(graphDataJson),
							dataType: 'json',
							async: 'false',
							success: function(data) {
								if(data == '1'){
							    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
							    	alert_message_function();	
							    }
							    else if(data == '0'){
							    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${chart_already_exists}</div>`);
							    	alert_message_function();								
								}					
							}
						});
					});
					$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
					$("#delete_"+id).prop( "disabled", false );
				    var categories_array_in_arabic = [];
				    for(var i = 0 ; i <= categoriesArray.length-1; i++){
						var temp = categoriesArray[i].toString().replace(/\s+/g, "_");
						categories_array_in_arabic.push(getTranslatedData[0][temp]);
					}						
					var options = {
						chart: {
							type: chartType
						},
						dataLabels : {
							enabled : false
						},
						series: [{
							name: quantity,
							data: getLanguage == "En" ? yAxisData : yAxisData.reverse(),
						}],
						annotations:
						{
							yaxis: getLanguage == "En" ? yAxisLabel : yAxisLabel.reverse(),
						},
						yaxis:{
							show: true,
							opposite: getLanguage == "En" ? false : true,
							labels: {
								show: true
							},
							title: {
								//text: 'yaxis'
								text: getLanguage == "En" ? 'Number of '+element_name: customDictionary[element_name.replaceAll(" ","_")]+' عدد ',
							},
						},
						xaxis: {
							categories: getLanguage == "En" ? categoriesArray : categories_array_in_arabic.reverse(),
							title: {
								//text: 'xaxis'
								text: getLanguage == "En" ? attribute : y_axis_arabic_title,
							},
						},
						title : {
							//text : 'Traffic Sources',
							text : getLanguage == "En" ? element+" "+attribute : chart_title_in_arabic,
							align : 'center',
						},
						grid: {
						  padding: {
						    left: 50
						  }
						}
					}
					var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
						options);
//					chart.render();		
					chart.render().then(() => {
					    window.setTimeout(function() {
						    chart.dataURI().then(({ imgURI, blob }) => {
								getTotalImgURI.push(imgURI)
								getChartNameForPdf.push(getChartName);
						    })
					    }, 1000) 
					})
				}
				else{
					$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
					alert_message_function();			
				}			
		}
		else{
					const counts = {};
					chartData['attributeRow'].forEach((x) => {
					  counts[x] = (counts[x] || 0) + 1;
					});
					let tempArr = []
					for(var i = 0 ; i <= unique.length-1 ; i++){
						tempArr.push(counts[unique[i]])
					}
					yAxisData = tempArr;
					let makeObj = {};
					let yAxisArray = [];
					for(var i = 0 ; i <= categoriesArray.length-1 ; i++){
						makeObj[categoriesArray[i]] = yAxisData[i]; 
					}
					yAxisData = yAxisArray;
					for(var i = 0 ; i <= categoriesArray.length-1; i++){
						yAxisArray.push(makeObj[categoriesArray[i]]);
					}
				const check = (list) => {
					const setItem = new Set(list);
					return setItem.size <= 1;
				}
				var checkArrayValue = check(yAxisData);	
				if(checkArrayValue === false){
					yAxisTitle = 'yaxis:{show: true,labels: {show: true},title: {text: "Number of "'+element_name+'},},';
					let chart_title = ""+element+ " "+attribute+"";
					let x_axis_label = attribute;
					let y_axis_title = element;	
					var y_axis_arabic_title = y_axis_title.replace(/\s+/g, "_");
					y_axis_arabic_title = getTranslatedData[0][y_axis_arabic_title];		
					let chartName = 'bar1';
					var getOperationValue = $("#operationDropdown"+id).val();
					var chart_title1 = element.replace(/\s+/g, "_");
					chart_title1 = getTranslatedDataInArabic[0][chart_title1];
					var chart_title2 = attribute.replace(/\s+/g, "_");
					chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
					var chart_title_in_arabic = chart_title2+" "+chart_title1;
				    var categories_array_in_arabic = [];
				    for(var i = 0 ; i <= categoriesArray.length-1; i++){
						var temp = categoriesArray[i].toString().replace(/\s+/g, "_");
						categories_array_in_arabic.push(getTranslatedData[0][temp]);
					}				
					let graphDataJson = {
						'chartNameVal':$(".heading_"+id).html(),
						'tab_id': getContainerId[0],
						'chart_title': chart_title,
						'chart_title_in_arabic': chart_title_in_arabic,
						'chartName': chartName,
						'chartType': chartType,
						'chartOperation': getOperationValue,
				//		'yAxisTitle': JSON.stringify(yAxisTitle),
				//		xAxisLabel: JSON.stringify(xAxisTitle),
						yAxisData: JSON.stringify(yAxisData),
						yAxisLabel: JSON.stringify(yAxisLabel),
						xAxisLabel: x_axis_label,
						y_axis_title: y_axis_title,		
						categoriesArray: JSON.stringify(categoriesArray),
						'divID': getContainerId[0]+"chartContainer" + getContainerId[1]
					};
					$("#"+saveButton).click(function() {
//						graphDataJson = JSON.stringify(graphDataJson);
						$.ajax({
							url: "saveChart",
							contentType: 'application/json; charset=utf-8',
							type: "POST",
							data: JSON.stringify(graphDataJson),
							dataType: 'json',
							success: function(data) {
								if(data == '1'){
							    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
							    	alert_message_function();	
							    }
							    else if(data == '0'){
							    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${chart_already_exists}</div>`);
							    	alert_message_function();								
								}					
							}
						});
					});
				//	$("#chartContainer" + id).empty();
					$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
					$("#delete_"+id).prop( "disabled", false );
					var options = {
						chart: {
							type: chartType
						},
						dataLabels : {
							enabled : false
						},
						series: [{
							name: quantity,
							data: getLanguage == "En" ? yAxisData : yAxisData.reverse(),
						}],
						annotations:
						{
							yaxis: getLanguage == "En" ? yAxisLabel : yAxisLabel.reverse(),
						},
						yaxis:{
							show: true,
							opposite: getLanguage == "En" ? false : true,
							labels: {
								show: true
							},
							title: {
								//text: 'yaxis'
								text: getLanguage == "En" ? 'Number of '+element_name : customDictionary[element_name.replaceAll(" ","_")]+' عدد ',
							},
						},
						xaxis: {
							categories: categoriesArray,
							title: {
								//text: 'xaxis'
								text: getLanguage == "En" ? attribute : y_axis_arabic_title,
							},
						},
						title : {
							//text : 'Traffic Sources',
							text : getLanguage == "En" ? element+" "+attribute  : chart_title_in_arabic,
							align : 'center',
						},
						grid: {
						  padding: {
						    left: 50
						  }
						}
					}
					var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
						options);
//					chart.render();		
					chart.render().then(() => {
					    window.setTimeout(function() {
						    chart.dataURI().then(({ imgURI, blob }) => {
								getTotalImgURI.push(imgURI)
								getChartNameForPdf.push(getChartName);
						    })
					    }, 1000) 
					})
				}
				else{
					$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
					alert_message_function();			
				}				
		}
}
function drawChartNullFromDB(chartType, chartData, id, countGraph, saveButton, element, attribute, operation_value) {
	const getContainerId = id.split("_");
	let getChartName = $(".heading_"+id).html();
//	var element = $("#elementDropdown" + id).val();
	var element = element;
//	var attribute = $(".attributesTextArea" + id).val().trim();
	var attribute = attribute;
//	let operation_value = $("input[name=operationValue]").val();
	var operation_value = operation_value;
	var yAxisData = [];
	var yAxisLabel = [];
	var categoriesArray = [];
	if(chartData != undefined){
		let getcharNumfunction = getcharNum2(chartData);
		categoriesArray = chartData['nameRow'];
		yAxisData = getcharNumfunction[0];
		yAxisLabel = getcharNumfunction[1];
		const check = (list) => {
			const setItem = new Set(list);
			return setItem.size <= 1;
		}
		var checkArrayValue = check(yAxisData);
		if(checkArrayValue === false){
		//	if (countGraph == false) {
		//		let unique = chartData['attributeRow'].filter(onlyUnique);
		//		categoriesArray = unique;
		//
		//		for (let x = 0; x < unique.length; x++) {
		//			let count = 0, i;
		//			for (i = 0; i < chartData['attributeRow'].length; i++) {
		//				if (chartData['attributeRow'][i].indexOf(unique[x]) !== -1) {
		//					count++;
		//				}
		//			}
		//			yAxisData.push(count);
		//		}
		//	} else {
		//		var tempArray = [];
		//		var arr1 = chartData['attributeRow'];
		//		var arr_length = arr1.length;
		//		categoriesArray = chartData['nameRow'];
		//		var yAxisIndex = 1;
		//		for (var x = 1; x <= arr_length; x++) {
		//			let tempIndex = 0;
		//			if (tempArray.includes(arr1[x - 1])) {
		//				tempIndex = tempArray.indexOf(arr1[x - 1]) + 1;
		//			} else {
		//				tempArray.push(arr1[x - 1]);
		//				tempIndex = yAxisIndex++;
		//			}
		//			yAxisData.push(tempIndex);
		//			yAxisLabel.push({
		//				y: tempIndex,
		////				borderColor: '#00E396',
		//				label: {
		////					borderColor: '#00E396',
		//					borderColor: '#FFFFFF',
		//					style: {
		//						color: '#000000',
		////						background: '#00E396'
		//					},
		//					position:'left',
		//					offsetY: 5.5,
		//					text: arr1[x - 1]
		//				}
		//			});
		//		}
		//	}
			let chartName = 'bar1';
			let chart_title = element+" "+attribute;
			var chart_title1 = element.replace(/\s+/g, "_");
			chart_title1 = getTranslatedDataInArabic[0][chart_title1];
			var chart_title2 = attribute.replace(/\s+/g, "_");
			chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
			var chart_title_in_arabic = chart_title2+" "+chart_title1;
			let x_axis_label = element;
			let y_axis_title = attribute;
			var getOperationValue = $("#operationDropdown"+id).val();
		var y_axis_label_in_arabic = y_axis_title.replace(/\s+/g, "_");
		y_axis_label_in_arabic = getTranslatedData[0][y_axis_label_in_arabic];
		var x_axis_label_in_arabic = x_axis_label.replace(/\s+/g, "_");
		x_axis_label_in_arabic = getTranslatedData[0][x_axis_label_in_arabic];
			let graphDataJson = {
				'chartNameVal':$(".heading_"+id).html(),
				'element_name':element,
				'tab_id': getContainerId[0],
				'chart_title': chart_title,
				'chart_title_in_arabic': chart_title_in_arabic,
				'chartName': chartName,
				'chartType': chartType,
				'chartOperation': getOperationValue,
				yAxisData: JSON.stringify(yAxisData),
				yAxisLabel: JSON.stringify(yAxisLabel),
				xAxisLabel: x_axis_label,
				y_axis_title: y_axis_title,
				categoriesArray: JSON.stringify(categoriesArray),
				'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
				'attributeTextArea':attribute,
				'operation_value':operation_value
			};
			$("#"+saveButton).click(function() {
//				graphDataJson = JSON.stringify(graphDataJson);
				$.ajax({
					url: "saveChart",
					contentType: 'application/json; charset=utf-8',
					type: "POST",
					data: JSON.stringify(graphDataJson),
					dataType: 'json',
					success: function(data) {
				    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
				    	alert_message_function();				
					}
				});
			});
		for(var i = 0 ; i <= yAxisLabel.length-1 ; i++){
			var getDataFromMessageFile = yAxisLabel[i]['label'].text
			var temp = getDataFromMessageFile.replace(/\s+/g, "_");
			let temp1 = getTranslatedData[0][temp];
			yAxisLabel[i]['label'].text = temp1;				
		}			
			$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
			$("#delete_"+id).prop( "disabled", false );
		//	("#"+getContainerId[0]+"chartContainer"+getContainerId[1])
		//	$("#chartContainer" + id).empty();
			var options = {
				chart: {
					type: chartType
				},
				dataLabels : {
					enabled : false
				},
				series: [{
					name: quantity,
					data: getLanguage == "En" ? yAxisData: yAxisData.reverse(),
				}],
				annotations:
				{
					yaxis: yAxisLabel,
				},
				yaxis:{
					opposite: getLanguage == "En" ? false: true,
					show: true,
					labels: {
						show: false,
//						offsetY: getLanguage == "En" ? 0 : 100,
//						offsetX: getLanguage == "En" ? 0 : -10,						
					},
					title: {
						//text: 'yaxis'
						text: getLanguage == "En" ? attribute: y_axis_label_in_arabic,
					},
				},
				xaxis: {
					categories: getLanguage == "En" ? categoriesArray:categoriesArray.reverse(),
//					offsetY: getLanguage == "En" ? 0 : 100,
//					offsetX: getLanguage == "En" ? 0 : -40,
					title: {
						//text: 'xaxis'
						text: getLanguage == "En" ? element: x_axis_label_in_arabic,
					},
					labels: {
		//					borderColor: '#00E396',
						borderColor: '#FFFFFF',
						style: {
							color: '#000000',
		//						background: '#00E396'
						},
						rotate: -60,
//						offsetY: getLanguage == "En" ? 0 : 100,
//						offsetX: getLanguage == "En" ? 0 : -15,												
					}
				},
				title : {
					//text : 'Traffic Sources',
					text : getLanguage == "En" ? element+" "+attribute:chart_title_in_arabic,
					align : 'center',
				},
				grid: {
				  padding: {
				    left: 50
				  }
				}
			}
		//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
		//		options);
			var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
				options);
//			chart.render();		
			chart.render().then(() => {
			    window.setTimeout(function() {
				    chart.dataURI().then(({ imgURI, blob }) => {
						getTotalImgURI.push(imgURI);
						getChartNameForPdf.push(getChartName);
				    })
			    }, 1000) 
			})
		}
		else{
			$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
			alert_message_function();			
		}	
	}
	else{
			$(".alert_message").html(`<div class="alert alert-danger" role="alert">${first_add_attribute}</div>`);
			alert_message_function();			
	}
}
function drawChartDistributionElementFromDB(chartType, chartData, id, countGraph, saveButton, element, attribute, operation_value){
	let getChartName = $(".heading_"+id).html();
//	extra
	element_name = element;
	operation_value = operation_value;
	attributesTextArea = attribute;
	if(chartData != undefined){
		const getContainerId = id.split("_");
		var attribute = $("#attributeDropdown" + id).val();
		var yAxisData = [];
		var yAxisLabel = [];
		var categoriesArray = [];
		yAxisData = chartData.attributeRow.map(Number);
		const check = (list) => {
			const setItem = new Set(list);
			return setItem.size <= 1;
		}
		var checkArrayValue = check(yAxisData);	
		if(checkArrayValue === false){
			$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
			$("#delete_"+id).prop( "disabled", false );
			var options = {
				//series : [ 14, 7, 46, 1, 28, 4],
				series: yAxisData,
				chart : {
		//			width : 500,
		//			height: 500,
					type : 'pie',
				    toolbar: {
				      show: true
				    },
				},
				title : {
					//text : 'Traffic Sources',
		//			text: attribute,
					text: getLanguage == "En" ? "Budget Distribution" : "توزيع الميزانية",
					align : 'center',
				},
				labels : chartData.nameRow,
				responsive : [ {
					breakpoint : 480,
					options : {
						chart : {
		//					width : 200
						},
					}
				} ],
				legend : {
					position : 'bottom',
		//			horizontalAlign: 'center', 
				}
			};
			let chartName = 'bar1';
		//	var getOperationValue = $("#operationDropdown"+id).val();
			let graphDataJson = {
				'chartNameVal':$(".heading_"+id).html(),
				'element_name':element_name,
				'tab_id': getContainerId[0],
				'chartName': chartName,
				'chartType': chartType,
				'chartOperation': 'Distribution',
		//		'chartOperation': getOperationValue,
		//		'yAxisTitle': JSON.stringify(yAxisTitle),
				xAxisLabel: attribute,
				yAxisData: JSON.stringify(yAxisData),
				yAxisLabel: JSON.stringify(chartData.nameRow),
				categoriesArray: JSON.stringify(categoriesArray),
				'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
				'operation_value':operation_value,
				'attributesTextArea':attributesTextArea,
			};
			$("#"+saveButton).click(function() {
//				graphDataJson = JSON.stringify(graphDataJson);
				$.ajax({
					url: "saveChart",
					contentType: 'application/json; charset=utf-8',
					type: "POST",
					data: JSON.stringify(graphDataJson),
					dataType: 'json',
					success: function(data) {
//				    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
						$(".alert_message").html(`<div class="alert alert-success" role="alert">${Graph_Saved_Successfully}!</div>`);
				    	alert_message_function();				
					}
				});
			});
			var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
				options);
		//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
		//			options);
//			chart.render();	
			chart.render().then(() => {
			    window.setTimeout(function() {
				    chart.dataURI().then(({ imgURI, blob }) => {
						getTotalImgURI.push(imgURI)
						getChartNameForPdf.push(getChartName);
				    })
			    }, 1000) 
			})	
		}else{
			$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
			alert_message_function();		
		}		
	}
	else{
			$(".alert_message").html(`<div class="alert alert-danger" role="alert">${add_attribute_data_not_valid}</div>`);
			alert_message_function();		
	}
}
function drawclusteredChartCountElementFromDB(chartType, chartMultipleData, id, countGraph, saveButton, element, attribute, operation_value){
	let getChartName = $(".heading_"+id).html();
//	extra
	element_name = element;
	operation_value = operation_value;
	const withoutFirstAndLast = attribute.slice(1, -1).replaceAll("\"", "");
	var array = withoutFirstAndLast.split(",");
	attributesTextArea = array;
	if(chartMultipleData != undefined){
		if(chartMultipleData.attributeValues[0].includes("Very High") || chartMultipleData.attributeValues[0].includes("High") || chartMultipleData.attributeValues[0].includes("Medium") || chartMultipleData.attributeValues[0].includes("Low") || chartMultipleData.attributeValues[0].includes("Very Low")){
			const getContainerId = id.split("_");
			var element = element;
			var attribute = attributesTextArea;
			let countsArray = [];
			let insertIntoArray = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				const counts = {};
				chartMultipleData.attributeValues[i].forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
				countsArray.push(counts);
				insertIntoArray += chartMultipleData.attributeValues[i]+",";
			}
			var getUniqueValue = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				getUniqueValue.push(...chartMultipleData.attributeValues[i]);
			}
			function onlyUnique(value, index, self) {
			  return self.indexOf(value) === index;
			}	
			getUniqueValue = getUniqueValue.filter(onlyUnique);
			var newStr = insertIntoArray.substring(0, insertIntoArray.length - 1);
			let splitComma = newStr.split(",");
		//	let legends = [...new Set(splitComma)];
			let legends = ['Very Low', 'Low', 'Medium', 'High', 'Very High'];
			let getCount = [];
			for(var i = 0 ; i <= countsArray.length-1 ; i++){
				let getCurrentLoopCount = [];
				for(var j = 0 ; j <= countsArray.length-1 ; j++){
					getValues = legends[i];
					if(countsArray[j][getValues] == undefined){
						countsArray[j][getValues] = 0;
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
					else{
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
				}
				getCount.push(getCurrentLoopCount);
			}
			/*
			let clusteredChartData = "";
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
				}
			}
			let JSON_clusteredChartData = JSON.parse(clusteredChartData)
			*/
			let clusteredChartData = [];
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					let clusteredChartData1 = {};
						clusteredChartData1['name'] = legends[i];
						clusteredChartData1['data'] = getCount[i];
						clusteredChartData.push(clusteredChartData1);
				}
			}
			var merged = [].concat.apply([], getCount);
			const check = (list) => {
				const setItem = new Set(list);
				return setItem.size <= 1;
			}
			var checkArrayValue = check(merged);	
			if(checkArrayValue === false){
				let chartName = getLanguage == "En" ? 'bar1' : element;
				let chart_title = element+" Maturity";
				var chart_title1 = element.replace(/\s+/g, "_");
				chart_title1 = getTranslatedDataInArabic[0][chart_title1];
				var chart_title2 = "Maturity".replace(/\s+/g, "_");
				chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
				var chart_title_in_arabic = chart_title2+" "+chart_title1;
				let x_axis_label = element+ " Characteristics";
				x_axis_label_in_arabic = "مميزات "+ chart_title1;
				let y_axis_title = attribute;	
			//	var yAxisData = [];
			//	var yAxisLabel = [];
				var categoriesArray = [];
			//	let getcharNumfunction = getcharNum2(chartData);
			//	categoriesArray = chartData['nameRow'];
			//	yAxisData = getcharNumfunction[0];
			//	yAxisLabel = getcharNumfunction[1];
//				var getOperationValue = $("#operationDropdown"+id).val();
				var getOperationValue = operation_value;
				let graphDataJson = {
					'chartNameVal':$(".heading_"+id).html(),
					'element_name':element_name,
					'tab_id': getContainerId[0],
					'chartName': chartName,
					chart_title: chart_title,
					'chart_title_in_arabic':chart_title_in_arabic,
					'chartType': chartType,
					'chartOperation': getOperationValue,
					yAxisData: JSON.stringify(clusteredChartData.reverse()),
					xAxisLabel: x_axis_label,
					y_axis_title: y_axis_title,
			//		yAxisLabel: JSON.stringify(yAxisLabel),
					categoriesArray: JSON.stringify(attributeArray),
					'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
					'operation_value':operation_value,
					'attributesTextArea': JSON.stringify(attributeArray),
				};
				$("#"+saveButton).click(function() {
//					graphDataJson = JSON.stringify(graphDataJson);
					$.ajax({
						url: "saveChart",
						contentType: 'application/json; charset=utf-8',
						type: "POST",
						data: JSON.stringify(graphDataJson),
						dataType: 'json',
						success: function(data) {
				    		$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
				    		alert_message_function();				
						}
					});
				});
			//	$("#chartContainer" + id).empty();
			    var categories_array_in_arabic = [];
			    for(var i = 0 ; i <= array.length-1; i++){
					var temp = array[i].toString().replace(/\s+/g, "_");
					categories_array_in_arabic.push(getTranslatedData[0][temp]);
				}
				getLegendsDataFromMessageFile(clusteredChartData);				
				$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
				$("#delete_"+id).prop( "disabled", false );
				var dataPoints = [];
				var options = {
					chart : {
						type : 'bar'
					},
					plotOptions : {
						bar : {
							horizontal : false,
							columnWidth : '55%',
							endingShape : 'rounded'
						},
					},
					dataLabels : {
						enabled : false
					},
			//		series : [ {name : 'Very Low',data : [2,1]},{name : 'Low',data : [0,1]}, ],
					series: clusteredChartData,
					xaxis : {
						categories : getLanguage == "En" ? attributeArray : categories_array_in_arabic,
			//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
			//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
			//					"AppComp8", "AppComp9" ],
						title : {
			//				text : 'Application Component',
							text: getLanguage == "En" ? x_axis_label : x_axis_label_in_arabic,
						},
						lines : {
							show : true
						},
						labels: {
//							offsetY: getLanguage == "En" ? 0 : 100,
//							offsetX: getLanguage == "En" ? 0 : -10,					
						},						
					},
					yaxis : {
						// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
						// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
						// 							"AppComp8", "AppComp9" ],
						opposite: getLanguage == "En" ? false : true,
						title : {
							text : getLanguage == "En" ? 'Number of '+element_name : customDictionary[element_name.replaceAll(" ","_")]+' عدد ',
						},
						lines : {
							show : true
						}
					},
					title : {
			//			text : 'Traffic Sources',
						text: getLanguage == "En" ? chart_title : chart_title_in_arabic,
						align : 'center',
					},
					grid : {
						position : 'front'
					},
					legend: {
						horizontalAlign: 'center',
					},
				}
			//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
			//			options);
				var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
					options);
				chart.render();		
			}
			else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
				alert_message_function();		
			}		
		}
		else{
			const getContainerId = id.split("_");
			var element = element_name;
			var attribute = attributesTextArea;
		    var categories_array_in_arabic = [];
		    for(var i = 0 ; i <= array.length-1; i++){
				var temp = array[i].toString().replace(/\s+/g, "_");
				categories_array_in_arabic.push(getTranslatedData[0][temp]);
			}
			let countsArray = [];
			let insertIntoArray = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				const counts = {};
				chartMultipleData.attributeValues[i].forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
				countsArray.push(counts);
				insertIntoArray += chartMultipleData.attributeValues[i]+",";
			}
			var getUniqueValue = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				getUniqueValue.push(...chartMultipleData.attributeValues[i]);
			}
			function onlyUnique(value, index, self) {
			  return self.indexOf(value) === index;
			}	
			getUniqueValue = getUniqueValue.filter(onlyUnique);
			var newStr = insertIntoArray.substring(0, insertIntoArray.length - 1);
			let splitComma = newStr.split(",");
		//	let legends = [...new Set(splitComma)];
			let legends = getUniqueValue;
			let getCount = [];
			for(var i = 0 ; i <= countsArray.length-1 ; i++){
				let getCurrentLoopCount = [];
				for(var j = 0 ; j <= countsArray.length-1 ; j++){
					getValues = legends[i];
					if(countsArray[j][getValues] == undefined){
						countsArray[j][getValues] = 0;
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
					else{
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
				}
				getCount.push(getCurrentLoopCount);
			}
			/*
			let clusteredChartData = "";
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
				}
			}
			let JSON_clusteredChartData = JSON.parse(clusteredChartData)
			*/
	//		let clusteredChartData = [];
	//		for(let i = 0; i <= legends.length-1; i++){
	//			if(getCount[i] !== undefined){
	//				let clusteredChartData1 = {};
	//					clusteredChartData1['name'] = legends[i];
	//					clusteredChartData1['data'] = getCount[i];
	//					clusteredChartData.push(clusteredChartData1);
	//			}
	//		}
			let clusteredChartData = [];
			for(var i = 0 ; i < legends.length ; i++){
				let tempLegend = legends[i];
				let tempArray = [];
				for(var j = 0 ; j < countsArray.length ; j++){
					var keys = Object.keys(countsArray[j]);
					let matched = keys.find(k => tempLegend == k)
					if(matched != undefined){
						tempArray.push(countsArray[j][matched])
					}else{
						tempArray.push(0)
					}
				}
				let tempData = {name:tempLegend, data:tempArray}
				clusteredChartData.push(tempData);
			}
			var merged = [].concat.apply([], getCount);
			const check = (list) => {
				const setItem = new Set(list);
				return setItem.size <= 1;
			}
			var checkArrayValue = check(merged);	
			if(checkArrayValue === false){
				let chartName = 'bar1';
				let chart_title = element+" Maturity";
				var chart_title1 = element.replace(/\s+/g, "_");
				chart_title1 = getTranslatedDataInArabic[0][chart_title1];
				var chart_title2 = "Maturity".replace(/\s+/g, "_");
				chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
				var chart_title_in_arabic = chart_title2+" "+chart_title1;
				x_axis_label_in_arabic = "مميزات "+ chart_title1;
				let x_axis_label = element+ " Characteristics";
				let y_axis_title = attribute;	
			//	var yAxisData = [];
			//	var yAxisLabel = [];
				var categoriesArray = [];
			//	let getcharNumfunction = getcharNum2(chartData);
			//	categoriesArray = chartData['nameRow'];
			//	yAxisData = getcharNumfunction[0];
			//	yAxisLabel = getcharNumfunction[1];
//				var getOperationValue = $("#operationDropdown"+id).val();
				var getOperationValue = operation_value;
				let graphDataJson = {
					'chartNameVal':$(".heading_"+id).html(),
					'element_name':element_name,
					'tab_id': getContainerId[0],
					'chartName': chartName,
					chart_title: chart_title,
					'chart_title_in_arabic':chart_title_in_arabic,
					'chartType': chartType,
					'chartOperation': getOperationValue,
					yAxisData: JSON.stringify(clusteredChartData.reverse()),
					xAxisLabel: x_axis_label,
					y_axis_title: y_axis_title,
			//		yAxisLabel: JSON.stringify(yAxisLabel),
					categoriesArray: JSON.stringify(attributeArray),
					'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
					'operation_value':operation_value,
					'attributesTextArea': JSON.stringify(attributeArray),
				};
				$("#"+saveButton).click(function() {
//					graphDataJson = JSON.stringify(graphDataJson);
					$.ajax({
						url: "saveChart",
						contentType: 'application/json; charset=utf-8',
						type: "POST",
						data: JSON.stringify(graphDataJson),
						dataType: 'json',
						success: function(data) {
				    		$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
				    		alert_message_function();				
						}
					});
				});
				getLegendsDataFromMessageFile(clusteredChartData);					
			//	$("#chartContainer" + id).empty();
				$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
				$("#delete_"+id).prop( "disabled", false );
				var dataPoints = [];
				var options = {
					chart : {
						type : 'bar'
					},
					plotOptions : {
						bar : {
							horizontal : false,
							columnWidth : '55%',
							endingShape : 'rounded'
						},
					},
					dataLabels : {
						enabled : false
					},
			//		series : [ {name : 'Very Low',data : [2,1]},{name : 'Low',data : [0,1]}, ],
					series: clusteredChartData,
					xaxis : {
						categories : getLanguage == "En" ? attributesTextArea : categories_array_in_arabic,
//						categories : attributesTextArea,
			//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
			//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
			//					"AppComp8", "AppComp9" ],
						title : {
			//				text : 'Application Component',
							text: getLanguage == "En" ? x_axis_label : x_axis_label_in_arabic,
//							text: x_axis_label,
						},
						lines : {
							show : true
						},
					},
					yaxis : {
						// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
						// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
						// 							"AppComp8", "AppComp9" ],
						opposite: getLanguage == "En" ? false : true,
						title : {
							text : getLanguage == "En" ? 'Number of '+element_name : customDictionary[element_name.replaceAll(" ","_")]+' عدد ',
//							text : 'Number of '+element_name,
						},
						lines : {
							show : true
						}
					},
					title : {
			//			text : 'Traffic Sources',
						text: getLanguage == "En" ? chart_title : chart_title_in_arabic,
//						text: chart_title,
						align : 'center',
					},
					grid : {
						position : 'front'
					},
					legend: {
						horizontalAlign: 'center',
					},
				}
			//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
			//			options);
				var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
					options);
//				chart.render();		
				chart.render().then(() => {
				    window.setTimeout(function() {
					    chart.dataURI().then(({ imgURI, blob }) => {
							getTotalImgURI.push(imgURI)
							getChartNameForPdf.push(getChartName);
					    })
				    }, 1000) 
				})
			}
			else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
				alert_message_function();		
			}		
		}	
	}
	else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${first_add_attribute}</div>`);
				alert_message_function();			
	}
}
function drawChartAverageColumnFromDB(chartType, chartMultipleData, id, countGraph, saveButton, element, attribute, operation_value, y_axis_arabic_title, x_axis_arabic_title, y_axis_data, categories_array, chart_title_in_arabic_from_database){
	let getChartName = $(".heading_"+id).html();
	element_name = element;
	operation_value = operation_value;
	const withoutFirstAndLast = attribute.slice(1, -1).replaceAll("\"", "");
	var array = withoutFirstAndLast.split(",");
	attributesTextArea = array;
	if(chartMultipleData != undefined){
		if(chartMultipleData.attributeValues[0].includes("Very High") || chartMultipleData.attributeValues[0].includes("High") || chartMultipleData.attributeValues[0].includes("Medium") || chartMultipleData.attributeValues[0].includes("Low") || chartMultipleData.attributeValues[0].includes("Very Low")){
			let checkArray = {"Very High": 5, "High":4, "Medium":3, "Low":2, "Very Low":1};
			const getContainerId = id.split("_");
			var element = element_name;
			var attribute = attributesTextArea;		
			let enumArray = [];
			let dataArray = chartMultipleData.attributeValues;
			let countsArray = [];
			let insertIntoArray = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				const counts = {};
				chartMultipleData.attributeValues[i].forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
				countsArray.push(counts);
				insertIntoArray += chartMultipleData.attributeValues[i]+",";
			}
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				let pushIterationData = [];
				for(let j = 0 ; j <= chartMultipleData.nameRow.length-1 ; j++){
					pushIterationData.push(checkArray[dataArray[i][j]]);
				}
				enumArray.push(pushIterationData)
			}
			let setArrayData = [];
			let getAverageArray = [];
			let sumOfIteration = [];
			for(var i = 0 ; i <= chartMultipleData.nameRow.length-1 ; i++){
				let pushIterationData = [];
				let sumNumber = 0;
				for(var j = 0 ; j <= enumArray.length-1 ; j++){
					pushIterationData.push(checkArray[dataArray[j][i]]);
					sumNumber += (checkArray[dataArray[j][i]])/enumArray.length;
				}
		//		sumOfIteration.push(Math.round(sumNumber.toFixed(2)));
				sumOfIteration.push(sumNumber.toFixed(2));
				sumNumber = "";
				setArrayData.push(pushIterationData)
				getAverageArray.push(sumOfIteration)
			}
		//	let legendArray = ["Optimized", "Managed", "Functional", "Challenged", "Initial", "None"];
			let OptimizedArray = []
			let ManagedArray = []
			let FunctionalArray = []
			let ChallengedArray = []
			let InitialArray = []
			let NoneArray = []
		//	for(var i = 0 ; i <= legendArray.length-1 ; i++){
				for(var  j = 0 ; j <= sumOfIteration.length-1 ; j++){
					if(sumOfIteration[j] >= 5 ){
						OptimizedArray.push(Number(sumOfIteration[j]))
					}
					else{
						OptimizedArray.push(0)
					}
					if(sumOfIteration[j] >= 4 && sumOfIteration[j] < 5){
						ManagedArray.push(Number(sumOfIteration[j]))
					}
					else{
						ManagedArray.push(0)
					}
					if(sumOfIteration[j] >= 3 && sumOfIteration[j] < 4){
						FunctionalArray.push(Number(sumOfIteration[j]))
					}
					else{
						FunctionalArray.push(0)
					}
					if(sumOfIteration[j] >= 2 && sumOfIteration[j] < 3){
						ChallengedArray.push(Number(sumOfIteration[j]))
					}
					else{
						ChallengedArray.push(0)
					}
					if(sumOfIteration[j] < 2){
						InitialArray.push(Number(sumOfIteration[j]))
					}
					else{
						InitialArray.push(0)
					}
					if(isNaN(sumOfIteration[j])){
						NoneArray.push(0)
					}
					else{
						NoneArray.push(0)
					}
				}
		//	}
			var newStr = insertIntoArray.substring(0, insertIntoArray.length - 1);
			let splitComma = newStr.split(",");
		//	let legends = [...new Set(splitComma)];
			let legends = ['Very Low', 'Low', 'Medium', 'High', 'Very High'];
			let getCount = [];
			for(var i = 0 ; i <= countsArray.length-1 ; i++){
				let getCurrentLoopCount = [];
				for(var j = 0 ; j <= countsArray.length-1 ; j++){
					getValues = legends[i];
					if(countsArray[j][getValues] == undefined){
						countsArray[j][getValues] = 0;
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
					else{
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
				}
				getCount.push(getCurrentLoopCount);
			}
			/*
			let clusteredChartData = "";
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
				}
			}
			let JSON_clusteredChartData = JSON.parse(clusteredChartData)
			*/
			let clusteredChartData = [];
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					let clusteredChartData1 = {};
						clusteredChartData1['name'] = legends[i];
						clusteredChartData1['data'] = getCount[i];
						clusteredChartData.push(clusteredChartData1);
				}
			}
		//	$("#chartContainer" + id).empty();
//			$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
			var yAxisData = [];
		//	var series = "{name : 'Optimized',data : ["+OptimizedArray+"]}, {name : 'Managed',data : ["+ManagedArray+"]}, {name : 'Functional',data : ["+FunctionalArray+"]}, {name : 'Challenged',data : ["+ChallengedArray+"]}, {name : 'Initial',data : ["+InitialArray+"]}, {name : 'None',data : ["+NoneArray+"]},";
			yAxisData.push({name : 'Optimized' ,data : OptimizedArray}, {name : 'Managed',data : ManagedArray}, {name : 'Functional',data : FunctionalArray}, {name : 'Challenged',data : ChallengedArray}, {name : 'Initial',data : InitialArray}, {name : 'None',data : NoneArray});
			var getValues = [];
			for(var i = 0 ; i <= yAxisData.length-1;i++){
				getValues.push(yAxisData[i].data);
			}
			var merged = [].concat.apply([], getValues);
			const check = (list) => {
				const setItem = new Set(list);
				return setItem.size <= 1;
			}
			var checkArrayValue = check(merged);
			if(checkArrayValue === false){
			//	var series = "aaaa";
				var categoriesArray = [];
				let chartName = 'bar1';
				let chart_title = element+" Criticality";
				var chart_title1 = element.replace(/\s+/g, "_");
				chart_title1 = getTranslatedDataInArabic[0][chart_title1];
				var chart_title2 = "Criticality";
				chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
				var chart_title_in_arabic = chart_title2+" "+chart_title1;	
				let x_axis_label = element;
				let y_axis_title = "Maturity Score";	
				var getOperationValue = $("#operationDropdown"+id).val();
				let graphDataJson = {
					'chartNameVal':$(".heading_"+id).html(),
					'element_name':element_name,
					'tab_id': getContainerId[0],
					chart_title: chart_title,
					'chart_title_in_arabic':chart_title_in_arabic,
					'chartName': chartName,
					'chartType': chartType,
					'chartOperation': 'Average',
					yAxisData: JSON.stringify(yAxisData),
					xAxisLabel: x_axis_label,
					y_axis_title: y_axis_title,		
			//		yAxisLabel: JSON.stringify(yAxisLabel),
					categoriesArray: JSON.stringify(chartMultipleData.nameRow),
					'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
					'operation_value':operation_value,
					'attributesTextArea':JSON.stringify(attributeArray)
				};
				$("#"+saveButton).click(function() {
//					graphDataJson = JSON.stringify(graphDataJson);
					$.ajax({
						url: "saveChart",
						contentType: 'application/json; charset=utf-8',
						type: "POST",
						data: JSON.stringify(graphDataJson),
						dataType: 'json',
						success: function(data) {
					    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
					    	alert_message_function();				
						}
					});
				});
				var dataPoints = [];
				var options = {
					chart : {
						type : 'bar'
					},
					plotOptions : {
						bar : {
							horizontal : false,
							columnWidth : '55%',
							endingShape : 'rounded'
						},
					},
					dataLabels : {
						enabled : false
					},
					series : [ 
						{
							name : getLanguage == "En" ? 'Optimized' : 'المحسن',
			//				data : [0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0]
							data : getLanguage == "En" ? OptimizedArray : OptimizedArray.reverse()
						}, 
						{
							name : getLanguage == "En" ? 'Managed' : 'تدار',
							data : getLanguage == "En" ? ManagedArray : ManagedArray.reverse() 
						}, 
						{
							name : getLanguage == "En" ? 'Functional' : 'وظيفي',
							data : getLanguage == "En" ? FunctionalArray : FunctionalArray.reverse()
						}, 
						{
							name : getLanguage == "En" ? 'Challenged' : 'تحدى',
							data : getLanguage == "En" ? ChallengedArray : ChallengedArray.reverse() 
						}, 
						{
							name : getLanguage == "En" ? 'Initial' : 'مبدئي',
							data : getLanguage == "En" ? InitialArray : InitialArray.reverse()
						}, 
						{
							name : getLanguage == "En" ? 'None' : 'لا أحد',
							data : getLanguage == "En" ? NoneArray : NoneArray.reverse()
						},
					],
			//		series: clusteredChartData.reverse(),
					xaxis : {
						categories : getLanguage == "En" ? chartMultipleData.nameRow : chartMultipleData.nameRow.reverse(),
			//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
			//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
			//					"AppComp8", "AppComp9" ],
						title : {
							text : getLanguage == "En" ? 'Application Component' : chart_title1,
						},
						lines : {
							show : true
						},
						labels: {
//							offsetY: getLanguage == "En" ? 0 : 100,
//							offsetX: getLanguage == "En" ? 0 : -10,
							rotate: -60,				
						},						
					},
					yaxis : {
						// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
						// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
						// 							"AppComp8", "AppComp9" ],
						opposite: getLanguage == "En" ? false : true,
						title : {
							text : getLanguage == "En" ? 'Maturity Score' : y_axis_arabic_title,
						},
						lines : {
							show : true
						}
					},
					title : {
						text : getLanguage == "En" ? 'Application Criticality' : chart_title_in_arabic,
						align : 'center',
					},
					grid : {
						position : 'front'
					},
					legend: {
						position: getLanguage == "En" ? 'right' : 'left',
						horizontalAlign: 'center',
					},
					colors: ['#00b0f0', '#00b050', '#c55a11', '#bf9000', '#ff0000', '#000000'],
				}
				$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
				$("#delete_"+id).prop( "disabled", false );
				var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
						options);
//					chart.render();		
				chart.render().then(() => {
				    window.setTimeout(function() {
					    chart.dataURI().then(({ imgURI, blob }) => {
							getTotalImgURI.push(imgURI)
							getChartNameForPdf.push(getChartName);
					    })
				    }, 1000) 
				})					
			}
			else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
				alert_message_function();		
			}	
		}
		else{
			var getUniqueValue = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				getUniqueValue.push(...chartMultipleData.attributeValues[i]);
			}
			function onlyUnique(value, index, self) {
			  return self.indexOf(value) === index;
			}	
			getUniqueValue = getUniqueValue.filter(onlyUnique);
			let checkArray1 = [];
			let checkArray2 = {};	
			for(var i = getUniqueValue.length-1 ; i >= 0 ; i--){
				let getIndexValue = getUniqueValue[i];
				checkArray2[getIndexValue] = i+1;
			}
			checkArray1.push(checkArray2);
			const getContainerId = id.split("_");
			var element = element_name;
			var attribute = attributesTextArea;
			let checkArray = checkArray1[0];
			let enumArray = [];
			let dataArray = chartMultipleData.attributeValues;
			let countsArray = [];
			let insertIntoArray = [];
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				const counts = {};
				chartMultipleData.attributeValues[i].forEach(function (x) { counts[x] = (counts[x] || 0) + 1; });
				countsArray.push(counts);
				insertIntoArray += chartMultipleData.attributeValues[i]+",";
			}
			for(var i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
				let pushIterationData = [];
				for(let j = 0 ; j <= chartMultipleData.nameRow.length-1 ; j++){
					pushIterationData.push(checkArray[dataArray[i][j]]);
				}
				enumArray.push(pushIterationData)
			}
			let setArrayData = [];
			let getAverageArray = [];
			let sumOfIteration = [];
			for(var i = 0 ; i <= chartMultipleData.nameRow.length-1 ; i++){
				let pushIterationData = [];
				let sumNumber = 0;
				for(var j = 0 ; j <= enumArray.length-1 ; j++){
					pushIterationData.push(checkArray[dataArray[j][i]]);
					sumNumber += (checkArray[dataArray[j][i]])/enumArray.length;
				}
		//		sumOfIteration.push(Math.round(sumNumber.toFixed(2)));
				sumOfIteration.push(sumNumber.toFixed(2));
				sumNumber = "";
				setArrayData.push(pushIterationData)
				getAverageArray.push(sumOfIteration)
			}
		//	let legendArray = ["Optimized", "Managed", "Functional", "Challenged", "Initial", "None"];
			let OptimizedArray = []
			let ManagedArray = []
			let FunctionalArray = []
			let ChallengedArray = []
			let InitialArray = []
			let NoneArray = []
		//	for(var i = 0 ; i <= legendArray.length-1 ; i++){
				for(var  j = 0 ; j <= sumOfIteration.length-1 ; j++){
					if(sumOfIteration[j] >= 5 ){
						OptimizedArray.push(Number(sumOfIteration[j]))
					}
					else{
						OptimizedArray.push(0)
					}
					if(sumOfIteration[j] >= 4 && sumOfIteration[j] < 5){
						ManagedArray.push(Number(sumOfIteration[j]))
					}
					else{
						ManagedArray.push(0)
					}
					if(sumOfIteration[j] >= 3 && sumOfIteration[j] < 4){
						FunctionalArray.push(Number(sumOfIteration[j]))
					}
					else{
						FunctionalArray.push(0)
					}
					if(sumOfIteration[j] >= 2 && sumOfIteration[j] < 3){
						ChallengedArray.push(Number(sumOfIteration[j]))
					}
					else{
						ChallengedArray.push(0)
					}
					if(sumOfIteration[j] < 2){
						InitialArray.push(Number(sumOfIteration[j]))
					}
					else{
						InitialArray.push(0)
					}
					if(isNaN(sumOfIteration[j])){
						NoneArray.push(0)
					}
					else{
						NoneArray.push(0)
					}
				}
		//	}
			var newStr = insertIntoArray.substring(0, insertIntoArray.length - 1);
			let splitComma = newStr.split(",");
		//	let legends = [...new Set(splitComma)];
			let legends = ['Very Low', 'Low', 'Medium', 'High', 'Very High'];
			let getCount = [];
			for(var i = 0 ; i <= countsArray.length-1 ; i++){
				let getCurrentLoopCount = [];
				for(var j = 0 ; j <= countsArray.length-1 ; j++){
					getValues = legends[i];
					if(countsArray[j][getValues] == undefined){
						countsArray[j][getValues] = 0;
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
					else{
						getCurrentLoopCount.push(countsArray[j][getValues]);
					}
				}
				getCount.push(getCurrentLoopCount);
			}
			/*
			let clusteredChartData = "";
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
				}
			}
			let JSON_clusteredChartData = JSON.parse(clusteredChartData)
			*/
			let clusteredChartData = [];
			for(let i = 0; i <= legends.length-1; i++){
				if(getCount[i] !== undefined){
					let clusteredChartData1 = {};
						clusteredChartData1['name'] = legends[i];
						clusteredChartData1['data'] = getCount[i];
						clusteredChartData.push(clusteredChartData1);
				}
			}
		//	$("#chartContainer" + id).empty();
//			$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
			var yAxisData = [];
		//	var series = "{name : 'Optimized',data : ["+OptimizedArray+"]}, {name : 'Managed',data : ["+ManagedArray+"]}, {name : 'Functional',data : ["+FunctionalArray+"]}, {name : 'Challenged',data : ["+ChallengedArray+"]}, {name : 'Initial',data : ["+InitialArray+"]}, {name : 'None',data : ["+NoneArray+"]},";
			yAxisData.push({name : 'Optimized' ,data : OptimizedArray}, {name : 'Managed',data : ManagedArray}, {name : 'Functional',data : FunctionalArray}, {name : 'Challenged',data : ChallengedArray}, {name : 'Initial',data : InitialArray}, {name : 'None',data : NoneArray});
			var getValues = [];
			for(var i = 0 ; i <= yAxisData.length-1;i++){
				getValues.push(yAxisData[i].data);
			}
			var merged = [].concat.apply([], getValues);
			const check = (list) => {
				const setItem = new Set(list);
				return setItem.size <= 1;
			}
			var checkArrayValue = check(merged);
			if(checkArrayValue === false){
			//	var series = "aaaa";
				var categoriesArray = [];
				let chartName = 'bar1';
				let chart_title = element+" Criticality";
				var chart_title1 = element.replace(/\s+/g, "_");
				chart_title1 = getTranslatedDataInArabic[0][chart_title1];
				var chart_title2 = "Criticality";
				chart_title2 = getTranslatedDataInArabic[0][chart_title2];		
				var chart_title_in_arabic = chart_title2+" "+chart_title1;	
				let x_axis_label = element;
				let y_axis_title = "Maturity Score";	
				var getOperationValue = $("#operationDropdown"+id).val();
				let graphDataJson = {
					'chartNameVal':$(".heading_"+id).html(),
					'element_name':element_name,
					'tab_id': getContainerId[0],
					chart_title: chart_title,
					'chart_title_in_arabic':chart_title_in_arabic,
					'chartName': chartName,
					'chartType': chartType,
					'chartOperation': 'Average',
					yAxisData: JSON.stringify(yAxisData),
					xAxisLabel: x_axis_label,
					y_axis_title: y_axis_title,		
			//		yAxisLabel: JSON.stringify(yAxisLabel),
					categoriesArray: JSON.stringify(chartMultipleData.nameRow),
					'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
					'operation_value':operation_value,
					'attributesTextArea':JSON.stringify(attributeArray)					
				};
				$("#"+saveButton).click(function() {
//					graphDataJson = JSON.stringify(graphDataJson);
					$.ajax({
						url: "saveChart",
						contentType: 'application/json; charset=utf-8',
						type: "POST",
						data: JSON.stringify(graphDataJson),
						dataType: 'json',
						success: function(data) {
					    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
					    	alert_message_function();				
						}
					});
				});
				var dataPoints = [];
				getLegendsDataFromMessageFile(y_axis_data);
				var options = {
					chart : {
						type : 'bar'
					},
					plotOptions : {
						bar : {
							horizontal : false,
							columnWidth : '55%',
							endingShape : 'rounded'
						},
					},
					dataLabels : {
						enabled : false
					},
//					series: y_axis_data,
					series : [ 
						{
							name : getLanguage == "En" ? 'Optimized' : 'المحسن',
			//				data : [0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0]
							data : getLanguage == "En" ? OptimizedArray : OptimizedArray.reverse()
						}, 
						{
							name : getLanguage == "En" ? 'Managed' : 'تدار',
							data : getLanguage == "En" ? ManagedArray : ManagedArray.reverse() 
						}, 
						{
							name : getLanguage == "En" ? 'Functional' : 'وظيفي',
							data : getLanguage == "En" ? FunctionalArray : FunctionalArray.reverse()
						}, 
						{
							name : getLanguage == "En" ? 'Challenged' : 'تحدى',
							data : getLanguage == "En" ? ChallengedArray : ChallengedArray.reverse() 
						}, 
						{
							name : getLanguage == "En" ? 'Initial' : 'مبدئي',
							data : getLanguage == "En" ? InitialArray : InitialArray.reverse()
						}, 
						{
							name : getLanguage == "En" ? 'None' : 'لا أحد',
							data : getLanguage == "En" ? NoneArray : NoneArray.reverse()
						},
					],
			//		series: clusteredChartData.reverse(),
					xaxis : {
						categories : getLanguage == "En" ? chartMultipleData.nameRow : chartMultipleData.nameRow.reverse(),
//						categories: getLanguage == "En" ? categories_array:categories_array.reverse(),
			//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
			//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
			//					"AppComp8", "AppComp9" ],
						title : {
//							text : 'Application Component',
							text : getLanguage == "En" ? x_axis_label:x_axis_arabic_title,
						},
						lines : {
							show : true
						},
						labels:{
//							offsetY: getLanguage == "En" ? 0 : 100,
//							offsetX: getLanguage == "En" ? 0 : -10,
							rotate: -60,
						},						
					},
					yaxis : {
						opposite: getLanguage == "En" ? false: true,
						// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
						// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
						// 							"AppComp8", "AppComp9" ],
						title : {
//							text : 'Maturity Score',
							text: getLanguage == "En" ? y_axis_title:y_axis_arabic_title,
						},
						lines : {
							show : true
						}
					},
					title : {
//						text : 'Application Criticality',
						text : getLanguage == "En" ? chart_title:chart_title_in_arabic_from_database,
						align : 'center',
					},
					grid : {
						position : 'front'
					},
					legend: {
						position: getLanguage == "En" ? 'right':'left',
						horizontalAlign: 'center',
					},
					colors: ['#00b0f0', '#00b050', '#c55a11', '#bf9000', '#ff0000', '#000000'],
				}
				$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
				$("#delete_"+id).prop( "disabled", false );
//				let tempOptions = {}
//				tempOptions = options
//				tempOptions.xaxis.labels.offsetY = 0;
//				tempOptions.xaxis.labels.offsetX = 0
				var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]), options);
//				chart.opts.xaxis.labels.offsetY = 0
//				chart.opts.xaxis.labels.offsetX = 0
//					chart.render();	
				chart.render().then((as) => {
				    window.setTimeout(function() {
					    chart.dataURI().then(({ imgURI, blob }) => {
							getTotalImgURI.push(imgURI)
							getChartNameForPdf.push(getChartName);
					    })
				    }, 1000) 
				})				
			}
			else{
				$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
				alert_message_function();		
			}	
		}		
	}
	else{
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">${first_add_attribute}</div>`);
		alert_message_function();			
	}
}
function drawclusteredBudgetChartFromDB(chartType, chartMultipleData, id, countGraph, saveButton, element, attribute, operation_value){
	let getChartName = $(".heading_"+id).html();
	const getContainerId = id.split("_");
	var element = element;
	const withoutFirstAndLast = attribute.slice(1, -1).replaceAll("\"", "");
	var array = withoutFirstAndLast.split(",");
	attributesTextArea = array;
	attributeArray = array;
	/*Convert Millions*/
	let convertedMillion = [];
	for(let i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
		let tempArray = []
		for(let j = 0 ; j <= chartMultipleData.attributeValues[i].length-1 ; j++){
			var convertMillionToPoint = (parseInt(chartMultipleData.attributeValues[i][j]) / 1000000).toFixed(3);
			tempArray.push(convertMillionToPoint)
		}
		convertedMillion.push(tempArray.reverse())
	}
	let clusteredChartData = [];
	for(let i = 0; i <= attributeArray.length-1; i++){
				let clusteredChartData1 = {};
					clusteredChartData1['name'] = attributeArray[i];
//					clusteredChartData1['data'] = chartMultipleData.attributeValues[i];
					clusteredChartData1['data'] = getLanguage == "En" ? convertedMillion[i] : convertedMillion[i].reverse();
					clusteredChartData.push(clusteredChartData1);
	}
//	$("#chartContainer" + id).empty();
	var merged = [].concat.apply([], convertedMillion);
	const check = (list) => {
		const setItem = new Set(list);
		return setItem.size <= 1;
	}
	var checkArrayValue = check(merged);	
	if(checkArrayValue === false){
		$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
		$("#delete_"+id).prop( "disabled", false );
		var dataPoints = [];
		var chartName = "bar1";
		let chart_title = "Budget Utilization";
		var chart_title1 = chart_title.replace(/\s+/g, "_");
		chart_title1 = getTranslatedData[0][chart_title1];		
		var chart_title_in_arabic = chart_title1;		
		let yAxisLabel = "Millions"; 
		var getOperationValue = operation_value;
		let graphDataJson = {
			'chartNameVal':$(".heading_"+id).html(),
			'element_name': element,
			'tab_id': getContainerId[0],
			'chartName': chartName,
			'chart_title':chart_title,
			'chart_title_in_arabic':chart_title_in_arabic,
			'chartType': chartType,
			'chartOperation': getOperationValue,
			yAxisData: JSON.stringify(clusteredChartData),
			y_axis_title: yAxisLabel,
			categoriesArray: JSON.stringify(chartMultipleData.nameRow),
			'divID': getContainerId[0]+"chartContainer" + getContainerId[1],
			'attributesTextArea':JSON.stringify(attributeArray)
		};
		$("#"+saveButton).click(function() {
//			graphDataJson = JSON.stringify(graphDataJson);
			$.ajax({
				url: "saveChart",
				contentType: 'application/json; charset=utf-8',
				type: "POST",
				data: JSON.stringify(graphDataJson),
				dataType: 'json',
				success: function(data) {
			    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
			    	alert_message_function();				
				}
			});
		});
		getLegendsDataFromMessageFile(clusteredChartData);
		var options = {
			chart : {
				type : 'bar'
			},
			plotOptions : {
				bar : {
					horizontal : false,
					columnWidth : '55%',
					endingShape : 'rounded'
				},
			},
			dataLabels : {
				enabled : false
			},
	//		series : [ {name : 'Very Low',data : ['2','1']},{name : 'Low',data : ['0','1']}, ],
			series: clusteredChartData,
			xaxis : {
				categories : getLanguage == "En" ? chartMultipleData.nameRow : chartMultipleData.nameRow.reverse(),
	//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
	//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
	//					"AppComp8", "AppComp9" ],
	//			title : {
	//				text : 'Application Component',
	//			},
				lines : {
					show : true
				},
				labels: {
					rotate: -60,
//					offsetY: getLanguage == "En" ? 0 : 100,
//					offsetX: getLanguage == "En" ? 0 : -15,					
				},
			},
			yaxis : {
	//			 					categories : [ "AppComp1", "AppComp2", "AppComp3",
	//			 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
	//			 							"AppComp8", "AppComp9" ],
				opposite: getLanguage == "En" ? false : true ,
				title : {
					text : getLanguage == "En" ? 'Millions' : 'ملايين',
				},
				lines : {
					show : true
				},
	      		tickAmount: 6,
			},
			title : {
	//			text : 'Traffic Sources',
				text : getLanguage == "En" ? "Budget Utilization" : "استخدام الميزانية",
				align : 'center',
			},
			grid : {
				position : 'front'
			},
			legend: {
				horizontalAlign: 'center',
			},
		}
	//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
	//			options);
		var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
			options);
//		chart.render();
		chart.render().then(() => {
		    window.setTimeout(function() {
			    chart.dataURI().then(({ imgURI, blob }) => {
					getTotalImgURI.push(imgURI)
					getChartNameForPdf.push(getChartName);
			    })
		    }, 1000) 
		})			
	}
	else{
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">${no_data_found}</div>`);
		alert_message_function();		
	}
}
function downloadPDF(){
	if(getTotalImgURI.length == 0){
		$(".alert_message").html('<div class="alert alert-danger" role="alert">'+charts_not_found_message+'</div>');
		alert_message_function();
		return;
	}
	let getActiveTabId = $("#tabs .ui-tabs-active").text();
	var dateObj = new Date();
	var month = dateObj.getMonth() + 1; //months from 1-12
	var day = dateObj.getDate();
	var year = dateObj.getFullYear();
	newdate = year + " - " + month + " - " + day
	var pdf = new jsPDF('a4');
	pdf.page=1;
	var imgX = 40;
	var imgY = 40;
	for(var  i = 0 ; i <= getTotalImgURI.length-1 ; i++){
		if(i % 2 == 0 ){
			pdf.setFontSize(25);
			pdf.text(`${getActiveTabId}`, 100, 20, 'center')
	//		pdf.setFontSize(10);
	//		pdf.setFont("times");
	//		pdf.setFontType("bold");
			pdf.setFontSize(15);
			pdf.text(40,38,`${getChartNameForPdf[i]}`)
		    pdf.addImage(getTotalImgURI[i], 'PNG', imgX, imgY);
	//	    pdf.text(40,140,'Chart2')
	//	    pdf.addImage(getTotalImgURI[1], 'PNG', 40, 152);
	//	    pdf.text(150,285, 'page ' + pdf.page); //print number bottom right
	//	    pdf.page ++;
		    pdf.setFontSize(10);
		    pdf.text(`Downloaded on ${newdate}	||	Page Number:	${pdf.page ++}`, 50, 282, 'center')
		    pdf.addImage(logoImg[0], 'PNG', 135, 270, 60, 15);    
	//	    pdf.addImage(getTotalImgURI[2], 'PNG', 40, 30);
	//	    pdf.setFontSize(10);
	//	    pdf.text('Downloaded on 2022-10-15	||	Page Number:	2', 50, 282, 'center')
	//	    pdf.addImage(logoImg[0], 'PNG', 130, 270, 60, 15);			
		}
		else{
			pdf.setFontSize(25);
			pdf.text(`${getActiveTabId}`, 100, 20, 'center')
	//		pdf.setFontSize(10);
	//		pdf.setFont("times");
	//		pdf.setFontType("bold");
			pdf.setFontSize(15);	
			pdf.text(40,152,`${getChartNameForPdf[i]}`)
		    pdf.addImage(getTotalImgURI[i], 'PNG', imgX, imgY+120);			
			pdf.addPage();
		}
	}
	var pageCount = pdf.internal.getNumberOfPages();
	if( (pageCount>3) || (getTotalImgURI.length==4 && pageCount>2) || (getTotalImgURI.length==2 && pageCount>1) ){
		pdf.deletePage(pageCount)
	}
	///////////   edited //////////////////
//	if(pageCount > 1){
//		pdf.deletePage(pageCount)		
//	}
	///////////   edited //////////////////
	pdf.save(getActiveTabId.trimEnd()+".pdf");
}
//setTimeout(function() { enableDownloadPdfButton(); }, 1000);
function enableDownloadPdfButton(){
	setTimeout(function() { document.getElementById('downloadPDFButtonId').disabled = false; }, 2000);	
}
function enableDownloadPdfButtonInstantly(){
	setTimeout(function() { document.getElementById('downloadPDFButtonId').disabled = false; }, 200);	
}
// A $( document ).ready() block.
$( document ).ready(function() {
	$('body').css("display","inline")
	var pdf = new jsPDF('a4');
	  function toDataURL(src, callback){
	     var image = new Image();
	     image.crossOrigin = 'Anonymous';
	     image.onload = function(){
	        var canvas = document.createElement('canvas');
	        var context = canvas.getContext('2d');
	        canvas.height = this.naturalHeight;
	        canvas.width = this.naturalWidth;
	        context.drawImage(this, 0, 0);
	        var dataURL = canvas.toDataURL('image/png');
	        callback(dataURL);
	     };
	     image.src = src;
	  }  
	  toDataURL('resources/images/logo-login.png', function(dataURL){
		logoImg.push(dataURL)
	  	pdf.addImage(dataURL, 'PNG', 40, 30);
	  })		 
});