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
 
$(function() {
	var tabTitle = $("#tab_title"),
		tabContent = $("#tab_content"),
		tabTemplate = "<li><a href='#{href}'>#{label}</a> <span class='ui-icon ui-icon-close' role='presentation'></span></li>",
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
					dialog.dialog( "open" );	
					tabCounter = 2;		
				}
				else{
					tabCounter = data.length+1;
					tabCounter++;
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
			يلغي: function() {
				$(this).dialog("close");
			},
			يضيف: function() {
				addTab();
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

			},
		});

		tabs.find(".ui-tabs-nav").append(li);
		tabs.append("<div id='" + id + "'><p>" + generateChartDiv(id) +"</p></div>");
//		tabs.append("<div id='" + id + "'><p>" + $("#chartContainer").html() + "</p></div>");
		tabs.tabs("refresh");
		$( "#tabs" ).tabs({
		  active: tabCounter-1
		});			
		tabCounter++;

	
	}

		function generateChartDiv(tab_id){
			var addTabDivData = '<div id="chartContainer">';
			// FIRST DIV
			addTabDivData += `<div class="row chartRow">`;
			for(var i = 1 ; i <= 3 ; i++){
			addTabDivData +=`	<div id="div`+i+`" class="col-sm" ondrop="drop(event)"
					ondragover="allowDrop(event)">
					<div style="display: flex; justify-content: space-around" class="change_direction">
						<div>
							<h2>${Container} `+i+`</h2>
						</div>
						<div>
							<span>
								<button class="btn btn-info" onclick="textView('`+tab_id+`_`+i+`')">${Text_View}</button>
								<button class="btn btn-info" onclick="graphView('`+tab_id+`_`+i+`')">${Graph_View}</button>
								<button class="btn btn-info" onclick="deleteChart('`+tab_id+`_`+i+`')">${Delete}</button>
								<button class="btn btn-info" id="Save`+tab_id+`_`+i+`">${Save}</button>
							</span>
						</div>
					</div>
					<hr>
						<div>
							<div draggable="false" ondragstart="drag(event)" id="drag`+i+`">
								<div id="`+tab_id+`chartContainer`+i+`" style="width: 505px; height: 320.938px;">
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
											<textarea class="attributesTextArea`+tab_id+`_`+i+` multipleChartAndOperation`+tab_id+`_`+i+` form-control" rows="" cols="" style="display:none;	border: 2px solid rgb(24, 162, 184);background: rgb(145, 228, 241) !important" readonly></textarea>
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
												<div class ="col">
												<button class ="btn btn-info" id="generateTextButton`+tab_id+`_`+i+`" style="display:none;" onclick="generateTable('`+tab_id+`_`+i+`')">${Generate}</button>
												<button class ="btn btn-info"  id="generateGraphButton`+tab_id+`_`+i+`" style="display:none;" onclick="generateGraph('`+tab_id+`_`+i+`','Save`+tab_id+`_`+i+`')">${Generate_Chart}</button>
												</div>
												</div>
											</div>
										</div>
									</div>
								</div>`;
			}
								
			addTabDivData += `</div>
							<hr>`;
							
			//SECOND DIV
			addTabDivData += `<div class="row chartRow">`;
			for(var i = 4 ; i <= 6 ; i++){
			addTabDivData +=`	<div id="div`+i+`" class="col-sm" ondrop="drop(event)"
					ondragover="allowDrop(event)">
					<div style="display: flex; justify-content: space-around" class="change_direction">
						<div>
							<h2>${Container} `+i+`</h2>
						</div>
						<div>
							<span>
								<button class="btn btn-info" onclick="textView('`+tab_id+`_`+i+`')">${Text_View}</button>
								<button class="btn btn-info" onclick="graphView('`+tab_id+`_`+i+`')">${Graph_View}</button>
								<button class="btn btn-info" onclick="deleteChart('`+tab_id+`_`+i+`')">${Delete}</button>
								<button class="btn btn-info" id="Save`+tab_id+`_`+i+`">${Save}</button>
							</span>
						</div>
					</div>
					<hr>
						<div>
							<div draggable="false" ondragstart="drag(event)" id="drag`+i+`">
								<div id="`+tab_id+`chartContainer`+i+`" style="width: 505px; height: 320.938px;">
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
											<textarea class="attributesTextArea`+tab_id+`_`+i+` multipleChartAndOperation`+tab_id+`_`+i+` form-control" rows="" cols="" style="display:none;	border: 2px solid rgb(24, 162, 184);background: rgb(145, 228, 241) !important" readonly></textarea>
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
												<div class ="col">
												<button class ="btn btn-info" id="generateTextButton`+tab_id+`_`+i+`" style="display:none;" onclick="generateTable('`+tab_id+`_`+i+`')">${Generate}</button>
												<button class ="btn btn-info"  id="generateGraphButton`+tab_id+`_`+i+`" style="display:none;" onclick="generateGraph('`+tab_id+`_`+i+`','Save`+tab_id+`_`+i+`')">${Generate_Chart}</button>
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

	// Close icon: removing the tab on click
	tabs.on("click", "span.ui-icon-close", function() {
		var panelId = $(this).closest("li").remove().attr("aria-controls");
		$("#" + panelId).remove();
		tabs.tabs("refresh");
		$.ajax({
			url: "deleteTabsAndRecordsFromDatabase",
			data: {'panelId':panelId},
			success: function(data) {
				
			}
		});		
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
	    	var currentTabId = ui.newPanel[0].id;
//	    	generatePreviouslyCreatedCharts();
	    	window.setTimeout(generatePreviouslyCreatedCharts,50);
//	    	generatePreviouslyCreatedCharts();
	    	
	    }
	});	
});

function textView(id) {
	const getContainerId = id.split("_");
	let chart_id = getContainerId[0]+"chartContainer" + getContainerId[1];	
	var t1 = document.getElementById(chart_id);
	
	// Used in a simple conditional statement
	if (t1.getElementsByTagName('svg').length) {
		$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Delete_The_Chart_First}</div>`);
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
	
			
		$.ajax({
			url: "getElementsFromXML",
			data: {},
			success: function(data) {
				$.each(data, function(i, item) {
					var getDivID = "#elementDropdown" + id;
					fill_elements_in_dropdown(getDivID, item)
//					$("#elementDropdown" + id).append($('<option>', {
//						value: item,
//						text: item
//					}));
				});
			}
		});
		//	$("#elementDropdown").append(new Option("option A", "value"));
		// $("#attributeDropdown").append(new Option("option B", "value"));
		
		$("#elementDropdown" + id).change(function() {
			$(".multipleChartAndOperationButton"+id).prop("disabled",false)
			$(".attributesTextArea"+id).empty();
			fillAttributeValuesInDropdown(id);
		});
	}
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
				var getDivid = "#attributeDropdown" + id;
				fill_elements_in_dropdown(getDivid, item);
//				$("#attributeDropdown" + id).append($('<option>', {
//					value: item,
//					text: item
//				}));
			});
			$("#generateTextButton" + id).prop('disabled', false);
			$("#generateGraphButton" + id).prop('disabled', false);
		}
	});
}

function graphView(id) {
	const getContainerId = id.split("_");
	let chart_id = getContainerId[0]+"chartContainer" + getContainerId[1];	
	var t1 = document.getElementById(chart_id);
	
	// Used in a simple conditional statement
	if (t1.getElementsByTagName('svg').length) {
		$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Delete_The_Chart_First}</div>`);
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
		$("#generateTextButton" + id).css("display", "none");
		$("#generateGraphButton" + id).css("display", "inline");
		$("#generateGraphButton" + id).prop('disabled', true);
		$.ajax({
			url: "getElementsFromXML",
			data: {},
			success: function(data) {
				$.each(data, function(i, item) {
					var getDivID = "#elementDropdown" + id;
					fill_elements_in_dropdown(getDivID, item)
//					$("#elementDropdown" + id).append($('<option>', {
//						value: item,
//						text: item
//					}));
				});
			}
		});
		$("#elementDropdown" + id).change(function() {
			$(".multipleChartAndOperationButton"+id).prop("disabled",false)
			$(".attributesTextArea"+id).empty();
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

function generateGraph(id, saveButton) {
	//alert("generateGraph")
	
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
	}
	else if(get_operation_value == ""){
		if(chartType == 'clusteredBar'){
			drawclusteredBudgetChart(chartType, chartMultipleData, id, false, saveButton);
		}
		else{
//			alert("Try Valid Chart!");
	    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();
		}
	}
	else if(operationDropdown == 'Count'){
		if(chartType == 'bar' && get_operation_value == 'Element'){
			drawChartCountElement(chartType, chartData, id, false, saveButton);
		}
		else if(chartType == 'clusteredBar' && get_operation_value == 'Element'){
			drawclusteredChartCountElement(chartType, chartMultipleData, id, false, saveButton);
		}
		else{
//			alert("Try Valid Chart!");
	    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();
		}	
	}
	else if(operationDropdown == 'Average'){
		if(chartType == 'bar' && get_operation_value == 'Attribute'){
			drawChartAverageColumn(chartType, chartAverageMultipleData, id, false, saveButton);
		}
		else{
	    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();			
		}
	}
	else if(operationDropdown == 'Distribution'){
		if(chartType == 'pie' && get_operation_value == 'Attribute'){
			drawChartDistributionElement(chartType, chartData, id, false, saveButton);
		}
		else{
//			alert("Try Valid Chart!");
	    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Try_Valid_Chart}</div>`);
	    	alert_message_function();
		}
	}
	else{
//		alert("Try Valid Chart!")
    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Try_Valid_Chart}</div>`);
    	alert_message_function();
	}
}

function getDataForChart(id) {
	
	const elementValue = $("#elementDropdown" + id).val();
	const attributeValue = $("#attributeDropdown" + id).val();
	var dataForChart = $.ajax({
		url: "generateChartTable",
		data: {
			'elementName': elementValue,
			'attributeValue': attributeValue,
		},
		success: function(data) {
//			console.log('data', data)
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
//			console.log('dataMultiple', data)
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
	        				var modal = document.getElementById("chartModal");
	        				$(".modal-content").draggable();
	        				var span = document.getElementById("closeChartModal");
	        				$('#chartTable').empty();
	        				var loopLength = data['nameRow'].length;
	        				for (var i = 0; i < loopLength; i++) {
	        					var getAttributeValue = data["attributeRow"][i];
	        					//document.getElementById("modal_info_text").innerHTML = attribute_tip;
	        					$('#chartTable').append('<tr><td>' + data["nameRow"][i] + '</td><td>' + langDict[getAttributeValue.replaceAll(" ", "_")] + '</td></tr>');
	        					// $('#chartTable').append('<tr><td>my data</td><td>more data</td></tr>');	
	        				}
	        				modal.style.display = "block";
	        				span.onclick = function() {
	        					modal.style.display = "none";
	        				}
	        				$.each(data, function(i, item) {
	        				});
	        			}
	        		});        	 
	           }
	       });	
		}
	
	
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
	//			//}
	//			modal.style.display = "block";
	//			span.onclick = function() {
	//				modal.style.display = "none";
	//			}
	//			$.each(data, function(i, item) {
	//			});
	//		}
	//	});
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
		console.log("getCount[i]",getCount[i])
		if(getCount[i] !== undefined){
			clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
		}
		console.log("{ name : '"+legends[i]+"', data : ["+getCount[i]+"]},");
	}
	console.log("clusteredChartData", clusteredChartData);
	let JSON_clusteredChartData = JSON.parse(clusteredChartData)
	console.log("typeof JSON_clusteredChartData",typeof JSON_clusteredChartData)
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
		let chartName = element;
		let chart_title = element+" Maturity";
		
		var chart_title1 = element.replace(/\s+/g, "_");
		chart_title1 = getTranslatedData[0][chart_title1];
		var chart_title2 = "Maturity".replace(/\s+/g, "_");
		chart_title2 = getTranslatedData[0][chart_title2];		
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
	//	console.log("yAxisData",yAxisData)
	//	console.log("yAxisLabel",yAxisLabel)
		
		var getOperationValue = $("#operationDropdown"+id).val();
		
		let graphDataJson = {
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
			'divID': getContainerId[0]+"chartContainer" + getContainerId[1]
		};
	
	
		$("#"+saveButton).click(function() {
			graphDataJson = JSON.stringify(graphDataJson);
	//		console.log('graphDataJson 2', graphDataJson)
			$.ajax({
				url: "saveChart",
				contentType: 'application/json; charset=utf-8',
				type: "POST",
				data: graphDataJson,
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
				categories : categories_array_in_arabic.reverse(),
	//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
	//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
	//					"AppComp8", "AppComp9" ],
				title : {
	//				text : 'Application Component',
//					text: x_axis_label,
					text: x_axis_label_in_arabic
				},
				lines : {
					show : true
				},
			},
			yaxis : {
				// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
				// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
				// 							"AppComp8", "AppComp9" ],
				opposite: true,
				title : {
//					text : 'Number of Applications',
					text : 'عدد التطبيقات',
				},
				lines : {
					show : true
				}
			},
			title : {
	//			text : 'Traffic Sources',
//				text: chart_title,
				text: chart_title_in_arabic,
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
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">No Data Found!</div>`);
		alert_message_function();		
	}
}

function drawclusteredBudgetChart(chartType, chartMultipleData, id, countGraph, saveButton){
	
	const getContainerId = id.split("_");
	var element = $("#elementDropdown" + id).val();
	var attribute = $("#attributeDropdown" + id).val();
		
	/*Convert Millions*/
	let convertedMillion = [];
	for(let i = 0 ; i <= chartMultipleData.attributeValues.length-1 ; i++){
		let tempArray = []
		for(let j = 0 ; j <= chartMultipleData.attributeValues[i].length-1 ; j++){
			var convertMillionToPoint = (parseInt(chartMultipleData.attributeValues[i][j]) / 1000000).toFixed(1);
			tempArray.push(convertMillionToPoint)
		}
		convertedMillion.push(tempArray)
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
		var dataPoints = [];
	
		var chartName = "bar1";
		let chart_title = "Budget Utilization";
		var chart_title1 = chart_title.replace(/\s+/g, "_");
		chart_title1 = getTranslatedData[0][chart_title1];		
		var chart_title_in_arabic = chart_title1;		
		let yAxisLabel = "Millions"; 
		
		var getOperationValue = $("#operationDropdown"+id).val();
		
		let graphDataJson = {
			'tab_id': getContainerId[0],
			'chartName': chartName,
			'chart_title':chart_title,
			'chart_title_in_arabic':chart_title_in_arabic,
			'chartType': chartType,
			'chartOperation': getOperationValue,
			yAxisData: JSON.stringify(clusteredChartData),
			y_axis_title: yAxisLabel,
			categoriesArray: JSON.stringify(chartMultipleData.nameRow),
			'divID': getContainerId[0]+"chartContainer" + getContainerId[1]
		};
	
	
		$("#"+saveButton).click(function() {
			graphDataJson = JSON.stringify(graphDataJson);
	//		console.log('graphDataJson 2', graphDataJson)
			$.ajax({
				url: "saveChart",
				contentType: 'application/json; charset=utf-8',
				type: "POST",
				data: graphDataJson,
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
				categories : chartMultipleData.nameRow.reverse(),
	//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
	//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
	//					"AppComp8", "AppComp9" ],
	//			title : {
	//				text : 'Application Component',
	//			},
				lines : {
					show : true
				},
			},
			yaxis : {
	//			 					categories : [ "AppComp1", "AppComp2", "AppComp3",
	//			 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
	//			 							"AppComp8", "AppComp9" ],
				opposite: true,
				title : {
//					text : 'Millions',
					text : 'ملايين',
				},
				lines : {
					show : true
				},
	      		tickAmount: 6,
			},
			title : {
	//			text : 'Traffic Sources',
//				text : "Budget Utilization",
				text : "استخدام الميزانية",
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
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">No Data Found!</div>`);
		alert_message_function();		
	}
}

function drawChartAverageColumn(chartType, chartMultipleData, id, countGraph, saveButton){
	const getContainerId = id.split("_");
	var element = $("#elementDropdown" + id).val();
	var attribute = $("#attributeDropdown" + id).val();
		
	let checkArray = {"Very High": 5, "High":4, "Medium":3, "Low":2, "Very Low":1};
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
		console.log("getCount[i]",getCount[i])
		if(getCount[i] !== undefined){
			clusteredChartData += "{name : '"+legends[i]+"',data : ["+getCount[i]+"]},";
		}
		console.log("{ name : '"+legends[i]+"', data : ["+getCount[i]+"]},");
	}
	console.log("clusteredChartData", clusteredChartData);
	let JSON_clusteredChartData = JSON.parse(clusteredChartData)
	console.log("typeof JSON_clusteredChartData",typeof JSON_clusteredChartData)
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
	$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
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
		chart_title1 = getTranslatedData[0][chart_title1];
		var chart_title2 = "Criticality";
		chart_title2 = getTranslatedData[0][chart_title2];		
		var chart_title_in_arabic = chart_title2+" "+chart_title1;		
		let x_axis_label = element;
		let y_axis_title = "Maturity Score";	
		var y_axis_arabic_title = y_axis_title.replace(/\s+/g, "_");
		y_axis_arabic_title = getTranslatedData[0][y_axis_arabic_title];
				
		var getOperationValue = $("#operationDropdown"+id).val();
		
		let graphDataJson = {
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
			'divID': getContainerId[0]+"chartContainer" + getContainerId[1]
		};
		
		$("#"+saveButton).click(function() {
			graphDataJson = JSON.stringify(graphDataJson);
	//		console.log('graphDataJson 2', graphDataJson)
			$.ajax({
				url: "saveChart",
				contentType: 'application/json; charset=utf-8',
				type: "POST",
				data: graphDataJson,
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
//					name : 'Optimized',
					name : 'المحسن',
	//				data : [0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0]
					data : OptimizedArray.reverse()
				}, 
				{
//					name : 'Managed',
					name : 'تدار',
					data : ManagedArray.reverse()
				}, 
				{
//					name : 'Functional',
					name : 'وظيفي',
					data : FunctionalArray.reverse()
				}, 
				{
//					name : 'Challenged',
					name : 'تحدى',
					data : ChallengedArray.reverse()
				}, 
				{
//					name : 'Initial',
					name : 'مبدئي',
					data : InitialArray.reverse()
				}, 
				{
//					name : 'None',
					name : 'لا أحد',
					data : NoneArray.reverse()
				},
			],
	//		series: clusteredChartData.reverse(),
			xaxis : {
				categories : chartMultipleData.nameRow.reverse(),
	//			categories : [ 'AppComp1', 'AppComp2', "AppComp3",
	//					"AppComp4", "AppComp5", "AppComp6", "AppComp7",
	//					"AppComp8", "AppComp9" ],
				title : {
//					text : 'Application Component',
					text : chart_title1,
				},
				lines : {
					show : true
				},
			},
			yaxis : {
				opposite: true,
				// 					categories : [ "AppComp1", "AppComp2", "AppComp3",
				// 							"AppComp4", "AppComp5", "AppComp6", "AppComp7",
				// 							"AppComp8", "AppComp9" ],
				title : {
//					text : 'Maturity Score',
					text: y_axis_arabic_title
				},
				lines : {
					show : true
				}
			},
			title : {
//				text : 'Application Criticality',
				text: chart_title_in_arabic,
				align : 'center',
			},
			grid : {
				position : 'front'
			},
			legend: {
				position: 'left',
				horizontalAlign: 'center',
			},
			colors: ['#00b0f0', '#00b050', '#c55a11', '#bf9000', '#ff0000', '#000000'],
		}
	
		var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
				options);
				
			chart.render();		
	}
	else{
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">No Data Found!</div>`);
		alert_message_function();		
	}
}

function onlyUnique(value, index, self) {
	return self.indexOf(value) === index;
}

function drawChart(chartType, chartData, id, countGraph, saveButton) {

	const getContainerId = id.split("_");
	
	var element = $("#elementDropdown" + id).val();
	var attribute = $("#attributeDropdown" + id).val();
	var yAxisData = [];
	var yAxisLabel = [];
	var categoriesArray = [];
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
		chart_title1 = getTranslatedData[0][chart_title1];
		var chart_title2 = attribute.replace(/\s+/g, "_");
		chart_title2 = getTranslatedData[0][chart_title2];		
		var chart_title_in_arabic = chart_title2+" "+chart_title1;
		
		let x_axis_label = element;
		let y_axis_title = attribute;
		var getOperationValue = $("#operationDropdown"+id).val();
		
		var y_axis_label_in_arabic = y_axis_title.replace(/\s+/g, "_");
		y_axis_label_in_arabic = getTranslatedData[0][y_axis_label_in_arabic];
				
		var x_axis_label_in_arabic = x_axis_label.replace(/\s+/g, "_");
		x_axis_label_in_arabic = getTranslatedData[0][x_axis_label_in_arabic];
						
		let graphDataJson = {
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
			'divID': getContainerId[0]+"chartContainer" + getContainerId[1]
		};
	
	
		$("#"+saveButton).click(function() {
			graphDataJson = JSON.stringify(graphDataJson);
	//		console.log('graphDataJson 2', graphDataJson)
			$.ajax({
				url: "saveChart",
				contentType: 'application/json; charset=utf-8',
				type: "POST",
				data: graphDataJson,
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
				name: 'Quantity',
				data: yAxisData.reverse()
			}],
			annotations:
			{
				yaxis: yAxisLabel,
	
			},
			yaxis:{
				opposite: true,
				show: true,
				labels: {
					show: false
				},
				title: {
					//text: 'yaxis'
//					text: attribute
					text: y_axis_label_in_arabic
				},
			},
			xaxis: {
				categories: categoriesArray.reverse(),
				title: {
					//text: 'xaxis'
//					text: element
					text: x_axis_label_in_arabic
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
//				text : element+" "+attribute,
				text: chart_title_in_arabic,
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
			
		chart.render();		
	}
	else{
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">No Data Found!</div>`);
		alert_message_function();			
	}
}

function getcharNum(chartData){
	//console.log("chartData",chartData);
	
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
	//console.log("chartData",chartData);
	
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
//				console.log("tempArray[x-1]", tempArray[x-1])
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
		return [yAxisData,yAxisLabel];
}

function drawChartCountElement(chartType, chartData, id, countGraph, saveButton) {
	const getContainerId = id.split("_");
	
	var element = $("#elementDropdown" + id).val();
	var attribute = $("#attributeDropdown" + id).val();
	

	var yAxisData = [];
	var yAxisLabel = [];
	var categoriesArray = [];
//	if (countGraph == false) {
		let unique = chartData['attributeRow'].filter(onlyUnique);
		categoriesArray = unique;
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
		console.log("categoriesArray",categoriesArray);*/

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
		yAxisTitle = 'yaxis:{show: true,labels: {show: true},title: {text: "Number of Applications"},},';
		let chart_title = ""+element+ " "+attribute+"";
		let x_axis_label = attribute;
		let y_axis_title = element;
		var y_axis_arabic_title = y_axis_title.replace(/\s+/g, "_");
		y_axis_arabic_title = getTranslatedData[0][y_axis_arabic_title];		
		let chartName = 'bar1';
		var getOperationValue = $("#operationDropdown"+id).val();
		
		var chart_title1 = element.replace(/\s+/g, "_");
		chart_title1 = getTranslatedData[0][chart_title1];
		var chart_title2 = attribute.replace(/\s+/g, "_");
		chart_title2 = getTranslatedData[0][chart_title2];		
		var chart_title_in_arabic = chart_title2+" "+chart_title1;
	    var categories_array_in_arabic = [];
	    for(var i = 0 ; i <= categoriesArray.length-1; i++){
			var temp = categoriesArray[i].toString().replace(/\s+/g, "_");
			categories_array_in_arabic.push(getTranslatedData[0][temp]);
		}				
		let graphDataJson = {
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
			graphDataJson = JSON.stringify(graphDataJson);
	//		console.log('graphDataJson 2', graphDataJson)
			$.ajax({
				url: "saveChart",
				contentType: 'application/json; charset=utf-8',
				type: "POST",
				data: graphDataJson,
				dataType: 'json',
				success: function(data) {
			    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
			    	alert_message_function();				
				}
			});
		});
		
		
	//	$("#chartContainer" + id).empty();
		$("#"+getContainerId[0]+"chartContainer"+getContainerId[1]).empty();
		var options = {
			chart: {
				type: chartType
			},
			dataLabels : {
				enabled : false
			},
			series: [{
				name: 'Quantity',
				data: yAxisData.reverse()
			}],
			annotations:
			{
				yaxis: yAxisLabel.reverse(),
	
			},
			yaxis:{
				show: true,
				opposite: true,
				labels: {
					show: true
				},
				title: {
					//text: 'yaxis'
//					text: 'Number of Applications'
					text: 'عدد التطبيقات'
				},
			},
			xaxis: {
				categories: categories_array_in_arabic.reverse(),
				title: {
					//text: 'xaxis'
//					text: attribute,
					text: y_axis_arabic_title,
				},
			},
			title : {
				//text : 'Traffic Sources',
//				text : element+" "+attribute,
				text : chart_title_in_arabic,
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
	
		chart.render();		
	}
	else{
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">No Data Found!</div>`);
		alert_message_function();			
	}
}

function drawChartDistributionElement(chartType, chartData, id, countGraph, saveButton){
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
//				text: "Budget Distribution",
				text: "توزيع الميزانية",
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
	//	console.log("getOperationValue",getOperationValue)
		let graphDataJson = {
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
			'divID': getContainerId[0]+"chartContainer" + getContainerId[1]
		};
	
		$("#"+saveButton).click(function() {
			graphDataJson = JSON.stringify(graphDataJson);
			$.ajax({
				url: "saveChart",
				contentType: 'application/json; charset=utf-8',
				type: "POST",
				data: graphDataJson,
				dataType: 'json',
				success: function(data) {
			    	$(".alert_message").html(`<div class="alert alert-secondary" role="alert">${Graph_Saved_Successfully}</div>`);
			    	alert_message_function();				
				}
			});
		});
		
		var chart = new ApexCharts(document.querySelector("#"+getContainerId[0]+"chartContainer"+getContainerId[1]),
			options);
	//	var chart = new ApexCharts(document.querySelector("#chartContainer" + id),
	//			options);
		chart.render();		
	}else{
		$(".alert_message").html(`<div class="alert alert-danger" role="alert">No Data Found!</div>`);
		alert_message_function();		
	}
}

function drawChartFromDB(data,containerID){
	
	let chart_name = data['chart_name'];
	let chart_title = data['chart_title'];
	let chart_title_in_arabic_from_database = data['chart_title_in_arabic'];
	let x_axis_label = data['x_axis_label'];
	let y_axis_title = data['y_axis_title'];
	let y_axis_data = JSON.parse(data['y_axis_data']);
	let y_axis_lable = JSON.parse(data['y_axis_label']);
	let categories_array = JSON.parse(data['categories_array']);
	
	
     
	if(data.chart_type == "bar" && data.chart_Operation == "null"){
		var y_axis_label_in_arabic = y_axis_title.replace(/\s+/g, "_");
		y_axis_label_in_arabic = getTranslatedData[0][y_axis_label_in_arabic];
				
		var x_axis_label_in_arabic = x_axis_label.replace(/\s+/g, "_");
		x_axis_label_in_arabic = getTranslatedData[0][x_axis_label_in_arabic];
		
		for(var i = 0 ; i <= y_axis_lable.length-1 ; i++){
			var getDataFromMessageFile = y_axis_lable[i]['label'].text
			var temp = getDataFromMessageFile.replace(/\s+/g, "_");
			let temp1 = getTranslatedData[0][temp];
			y_axis_lable[i]['label'].text = temp1;				
		}
		
		var options = {
			chart: {
				type: data['chart_type']
			},
			dataLabels : {
				enabled : false
			},
			series: [{
				name: 'Quantity',
				data: y_axis_data.reverse()
			}],
			annotations:
			{
				yaxis: y_axis_lable.reverse(),
	
			},
			yaxis:{
				opposite: true,
				show: true,
				labels: {
					show: false
				},
				title: {
//					text: y_axis_title,
					text: y_axis_label_in_arabic,
//					text: 'Number of Applications'
				},
			},
			xaxis: {
				categories: categories_array.reverse(),
				title: {
//					text: x_axis_label,
					text: x_axis_label_in_arabic,
//					text: "X-Axis"
				},
			},
			title : {
//				text : 'Heading',
//				text : chart_title,
				text: chart_title_in_arabic_from_database,
				align : 'center',
			},
			grid: {
			  padding: {
			    left: 50
			  }
			}
		}
//        setTimeout(createChart, 0);
//        function createChart() {
			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
			chart.render();
//		}
	}
	if(data.chart_type == "bar" && ( data.chart_Operation == "Count" || data.chart_Operation == "count")){
		var y_axis_arabic_title = y_axis_title.replace(/\s+/g, "_");
		y_axis_arabic_title = getTranslatedData[0][y_axis_arabic_title];
		
	    var categories_array_in_arabic = [];
	    for(var i = 0 ; i <= categories_array.length-1; i++){
			var temp = categories_array[i].toString().replace(/\s+/g, "_");
			categories_array_in_arabic.push(getTranslatedData[0][temp]);
		}
		var options = {
			chart: {
				type: data['chart_type']
			},
			dataLabels : {
				enabled : false
			},
			series: [{
				name: 'Quantity',
				data: y_axis_data.reverse()
			}],
			annotations:
			{
				yaxis: y_axis_lable.reverse(),
	
			},
			yaxis:{
				show: true,
				opposite: true,
				labels: {
					show: true
				},
				title: {
					//text: 'yaxis'
//					text: 'Number of Applications'
					text: 'عدد التطبيقات'
				},
			},
			xaxis: {
				categories: categories_array_in_arabic.reverse(),
				title: {
					text: y_axis_arabic_title,
//					text: "X-Axis"
				},
			},
			title : {
//				text : 'Heading',
//				text : chart_title,
				text : chart_title_in_arabic_from_database,
				align : 'center',
			},
			grid: {
			  padding: {
			    left: 50
			  }
			}
		}
//        setTimeout(createChart, 0);
//        function createChart() {
			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
			chart.render();
//		}
	}
	
	if(data.chart_type == "clusteredBar" && ( data.chart_Operation == "Count" || data.chart_Operation == "count")){
		var chart_title1 = chart_name.replace(/\s+/g, "_");
		chart_title1 = getTranslatedData[0][chart_title1];		
	    var categories_array_in_arabic = [];
	    for(var i = 0 ; i <= categories_array.length-1; i++){
			var temp = categories_array[i].toString().replace(/\s+/g, "_");
			categories_array_in_arabic.push(getTranslatedData[0][temp]);
		}
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
			series: y_axis_data,
			xaxis : {
				categories : categories_array_in_arabic.reverse(),
				title : {
//					text : 'Application Component',
					text: "مميزات"+chart_title1,
				},
				lines : {
					show : true
				},
			},
			yaxis : {
				opposite:true,
				title : {
//					text : 'Number of Applications',
					text : 'عدد التطبيقات'
				},
				lines : {
					show : true
				}
			},
			title : {
//				text : 'Traffic Sources',
//				text : chart_title,
				text : chart_title_in_arabic_from_database,
				align : 'center',
			},
			grid : {
				position : 'front'
			},
			legend: {
				horizontalAlign: 'center',
			},
		}

//        setTimeout(createChart, 0);
//        function createChart() {
			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
			chart.render();
//		}
	}
	if(data.chart_Operation == "Average" && data.chart_type == "bar"){
		var y_axis_arabic_title = y_axis_title.replace(/\s+/g, "_");
		y_axis_arabic_title = getTranslatedData[0][y_axis_arabic_title];
		
		var x_axis_arabic_title = x_axis_label.replace(/\s+/g, "_");
		x_axis_arabic_title = getTranslatedData[0][x_axis_arabic_title];
						
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
			series: y_axis_data,
			xaxis : {
//				categories : [ 'AppComp1', 'AppComp2', "AppComp3",
//						"AppComp4", "AppComp5", "AppComp6", "AppComp7",
//						"AppComp8", "AppComp9" , "AppComp10" , "AppComp11" , "AppComp12" ],
				categories: categories_array.reverse(),
				title : {
//					text : 'Application Component',
//					text : x_axis_label,
					text : x_axis_arabic_title,
				},
				lines : {
					show : true
				},
			},
			yaxis : {
				opposite: true,
				title : {
//					text : 'Maturity Score',
//					text: y_axis_title,
					text: y_axis_arabic_title,
				},
				lines : {
					show : true
				}
			},
			title : {
//				text : 'Application Criticality',
//				text : chart_title,
				text : chart_title_in_arabic_from_database,
				align : 'center',
			},
			grid : {
				position : 'front'
			},
			legend: {
				position: 'left',
				horizontalAlign: 'center',
			},
			colors: ['#00b0f0', '#00b050', '#c55a11', '#bf9000', '#ff0000', '#000000'],
		}	
//        setTimeout(createChart, 0);
//        function createChart() {
			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
			chart.render();
//		}
	}
	if(data.chart_Operation == "Distribution" && data.chart_type == "pie"){
		x_axis_label_in_arabic = getTranslatedData[0][x_axis_label_in_arabic];		
		var options = {
//			series : [500000,254762,1609235,34562,981727,135467],
			series: y_axis_data,
			chart : {
//				width : 500,
//				height: 500,
				type : 'pie',
			    toolbar: {
			      show: true
			    },
			},
			title : {
//				text : 'Traffic Sources',
//				text: data.x_axis_label,
				text: 'توزيع الميزانية',
				align : 'center',
			},
//			labels: ["Business_Process_0HPiRx0","Business_Process_6pfIj81","Business_Process_Spaos12","Business_Process_JAcHZ93","Business_Process_1Dq7Yp4","Business_Process_CDFq0n5"],
			labels : y_axis_lable,
			responsive : [ {
//				breakpoint : 480,
				options : {
					chart : {
//						width : 200
					},
				}
			} ],
			legend : {
				position : 'bottom',
	//			horizontalAlign: 'center', 
			}
		};
//        setTimeout(createChart, 100);
//        function createChart() {
			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
			chart.render();
//		}
	}
	if(data.chart_type == "clusteredBar" && data.chart_Operation == "null"){
		var chart_title_in_arabic = chart_title.replace(/\s+/g, "_");
		chart_title_in_arabic = getTranslatedData[0][chart_title_in_arabic];
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
			series: y_axis_data,
			xaxis : {
				categories : categories_array.reverse(),
				lines : {
					show : true
				},
			},
			yaxis : {
				opposite: true,
				title : {
//					text : 'Millions',
					text: 'ملايين',
				},
				lines : {
					show : true
				},
	      		tickAmount: 6,
			},
			title : {
//				text : 'Traffic Sources',
//				text: chart_title,
//				text: chart_title_in_arabic,
				text : chart_title_in_arabic_from_database, 
				align : 'center',
			},
			grid : {
				position : 'front'
			},
			legend: {
				horizontalAlign: 'center',
			},
		}
//        setTimeout(createChart, 0);
//        function createChart() {
			var chart = new ApexCharts(document.querySelector("#"+containerID),options);
			chart.render();
//		}
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
//			data: {
//				'chart_div_id':chart_id
//			},
			success: function(data) {
				for(var i = 0 ; i <= data.length-1 ; i++){
//					let chart_id = 'chartContainer'+i;
					if(data!='' && data!=null){
						chart_id = data[i].div_id; 
						drawChartFromDB(data[i],chart_id)
					}
//					console.log("data[i].div_id",data[i].div_id)
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
	const getContainerId = id.split("_");
	let chart_id = getContainerId[0]+"chartContainer" + getContainerId[1];
//	$("#chartContainer" + id).empty();
	$.ajax({
			url: "deleteChartDataFromDivID",
			data: {
				'chart_div_id':chart_id
			},
			success: function(data) {
				location.reload();
				if(data!='' && data!=null){
					$("#"+chart_id).empty();
//					drawChartFromDB(data,chart_id)
//					drawClusteredChartFromDB(data,chart_id)
				}
				else{
//					drawChartFromDB(data,chart_id)
					$("#"+chart_id).empty();
				}
			},
			async: false
		});
}
	/* Charts ends here */

	//Call alert_message_function
	function alert_message_function(){
		setTimeout(function() { $(".alert_message").html(""); }, 2500);
		setTimeout(function() { $(".alertMessageForHistoryTab").html(""); }, 2500);
	}
	

	
	
// A $( document ).ready() block.
$( document ).ready(function() {
	$('body').css("display","inline")
//	window.setTimeout(generatePreviouslyCreatedCharts,500);
//	window.setTimeout(function(){generatePreviouslyCreatedCharts()},50);
//	$("#ui-id-1").remove();
//	$("#tabs-1").remove();
	
    console.log( "ready!" );
//    generatePreviouslyCreatedCharts();
});