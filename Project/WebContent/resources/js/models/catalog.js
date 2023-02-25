var catalogScriptNamesAndColumnsDict = {};

//////// Ag grid config start ////////
	let sortable= true
	let filter= true
	let filterType= "agTextColumnFilter"
	let floatingFilter= true
	let width= 150
	let autoHeight= true
//////// Ag grid config end ////////

function closeCatalogDiv(current_ID, catalog_element) {//showDivID, data

	var index_no_of_deleted_item = historyTabItems.indexOf(catalog_element);
	historyTabItems.splice(index_no_of_deleted_item, 1);


	//var next_id = $("#"+showDivID+"").next().attr('id');
	$("#" + current_ID + "").remove();
	$("#" + current_ID + "11").remove();
	setTimeout(function() { displaydiv(); }, 0.5);
	//$("#historyList").css("display", "block");

	numItems = $('.column').length;

	$(".history_page_no").html(numItems);
	$("#element_title").hide();
	$(".catalog_save_button").hide();
	$(".matrix_save_button").css("display", "none");
	if (numItems = $('.column').length == 0) {
		$("#downloadCatalogButton").hide();
	}
	
	////////////////////////////////////////
	let loadingGrid = false
	emptyTheGridTable(loadingGrid)
	////////////////////////////////////////
}

// catalog work start's here
function downloadCatalog(catalog_name, catalog_element, current_ID) {
	let selectedScriptName = $(".catalog_save_button select").val();
	let scriptIndexes = [];
	let scriptColumnsArray = [];
	$.ajax({
		url: "getCatalogScriptColumns",
		data: {'scriptName': selectedScriptName},
		success: function(scriptColumns) {
			scriptColumnsArray =  scriptColumns.split(';')
			scriptColumnsArray = scriptColumnsArray.map(el => el.trim());
			console.log("scriptColumnsArray:", scriptColumnsArray)
			
		},
		async: false
	});
//	var catalog_table_var = document.getElementById(current_ID);
//	var theadVar = catalog_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
//	var theadList = [];
//	$.each(theadVar, function(i, item) {
//		if(scriptColumnsArray.includes(item.innerHTML) && selectedScriptName!='All'){
//			theadList.push(item.innerHTML)
//			scriptIndexes.push(i);		
//		}else if(selectedScriptName == 'All' || selectedScriptName == null){
//		theadList.push(item.innerHTML)
//		}
//	});
//	var tbodyVar = catalog_table_var.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
//	var tbodyList = [{}];
//	let tdList = [];
//	$.each(tbodyVar, function(i, item) {
//		let loop_td = item.getElementsByTagName("td");
//		let current_td_list = [];
//		$.each(loop_td, function(i, item) {
//			if(scriptIndexes.includes(i)  && selectedScriptName!='All'){
//				current_td_list.push(item.innerHTML);
//			}else if(selectedScriptName == 'All' || selectedScriptName == null){
//			current_td_list.push(item.innerHTML);
//			}
//		});
//		let tdDict = {};
//		tdDict["td"] = current_td_list;
//		//             tdDict.push({
//		//                 key:   "td",
//		//                 value: current_td_list
//		//             });
//		tbodyList.push(tdDict);
//	});
	
	
	
	let rowData = [];
	let theadList = [];
	let theadListSorted = [];
	var tbodyList = [];
	gridOptions.api.forEachNode((node) => rowData.push(node.data));
	theadList = Object.keys(rowData[0]);
	
	console.log("theadList:", theadList)
	console.log("rowData:", rowData)



	///////////////  sorting header based on scripts starts /////////////////////////
	theadList.map((thItem, thItemIndex) => {
		
			console.log(thItem, scriptColumnsArray[thItemIndex])
		if(scriptColumnsArray.includes(thItem.trim()) && selectedScriptName!='All'){
			theadListSorted.push(thItem.trim())
			scriptIndexes.push(thItemIndex);		
		}else if(selectedScriptName == 'All' || selectedScriptName == null){
			theadListSorted.push(thItem.trim())
			scriptIndexes.push(thItemIndex);
		}
	});
	
	console.log("theadListSorted:",theadListSorted)
	console.log("scriptIndexes:",scriptIndexes)
	///////////////  sorting header based on scripts starts /////////////////////////



	rowData.map((item, index) => {

		let current_td_list = [];

		theadListSorted.map((thItem) => {
			if(item[thItem] == undefined){
				current_td_list.push('');
			}else{
				current_td_list.push(item[thItem]);
			}
		});
		
		let tdDict = {}
		tdDict["td"] = current_td_list;
		tbodyList.push(tdDict);
	});
	
	
	let check = tbodyList[0];
	if (Object.keys(check).length === 0) {
		tbodyList = tbodyList.splice(1, tbodyList.length)
	}
	if(tbodyList.length<1){
		$(".alert_message").html('<div class="alert alert-danger" role="alert">'+catalog_is_empty+'</div>');
		alert_message_function();
	}else{
	var catalogJson = {
		"catalogName": catalog_name,
		"elementName": catalog_element,
		"theads": [{
				"th": theadListSorted
			}],
		"tbodies": [{
			"tr": tbodyList
			}]
		}
		
		// console.log("catalogJson:",catalogJson)
	
	$.ajax({
		url: "downloadCatalogAsExcel", // url: "/findTables?dbName="+db_name,
		contentType: 'application/json; charset=utf-8',
		type: "POST",
		data: JSON.stringify(catalogJson),
		//dataType: "text/String"
		success: function(data) {
			window.open('downloadCatalogExcelFile?EXCEL_FILE=' + data);
		}
	});
	}
}
function downloadCatalogAsPDF(catalog_name, catalog_element, current_ID) {
	let selectedScriptName = $(".catalog_save_button select").val();
	let scriptIndexes = [];
	let scriptColumnsArray = [];
	$.ajax({
		url: "getCatalogScriptColumns",
		data: { 'scriptName': selectedScriptName },
		success: function(scriptColumns) {
			scriptColumnsArray = scriptColumns.split(';')
			scriptColumnsArray = scriptColumnsArray.map(el => el.trim());
		},
		async: false
	});

//	var catalog_table_var = document.getElementById(current_ID);
//	var theadVar = catalog_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
//	var theadList = [];
//	$.each(theadVar, function(i, item) {
//		if (scriptColumnsArray.includes(item.innerHTML) && selectedScriptName != 'All') {
//			theadList.push(item.innerHTML)
//			scriptIndexes.push(i);
//		} else if (selectedScriptName == 'All' || selectedScriptName == null) {
//			theadList.push(item.innerHTML)
//		}
//	});
//	var tbodyVar = catalog_table_var.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
//	var tbodyList = [{}];
//	let tdList = [];
//	$.each(tbodyVar, function(i, item) {
//		let loop_td = item.getElementsByTagName("td");
//		let current_td_list = [];
//		$.each(loop_td, function(i, item) {
//			if (scriptIndexes.includes(i) && selectedScriptName != 'All') {
//				current_td_list.push(item.innerHTML);
//			} else if (selectedScriptName == 'All' || selectedScriptName == null) {
//				current_td_list.push(item.innerHTML);
//			}
//		});
//		let tdDict = {};
//		tdDict["td"] = current_td_list;
//		//             tdDict.push({
//		//                 key:   "td",
//		//                 value: current_td_list
//		//             });
//		tbodyList.push(tdDict);
//	});



	let rowData = [];
	let theadList = [];
	let theadListSorted = [];
	var tbodyList = [];
	gridOptions.api.forEachNode((node) => rowData.push(node.data));
	theadList = Object.keys(rowData[0]);

	console.log("theadList:",theadList)

	///////////////  sorting header based on scripts starts /////////////////////////
	theadList.map((thItem, thItemIndex) => {
		if(scriptColumnsArray.includes(thItem) && selectedScriptName!='All'){
			theadListSorted.push(thItem)
			scriptIndexes.push(thItemIndex);		
		}else if(selectedScriptName == 'All' || selectedScriptName == null){
			theadListSorted.push(thItem)
			scriptIndexes.push(thItemIndex);
		}
	});
	
	console.log("1theadListSorted:",theadListSorted)
	console.log("1scriptIndexes:",scriptIndexes)
	///////////////  sorting header based on scripts starts /////////////////////////



	rowData.map((item, index) => {
		let current_td_list = [];
		theadListSorted.map((thItem) => {
			console.log("item:", item)
			console.log("thitem:", item[thItem])
			current_td_list.push(item[thItem]);
		});
		let tdDict = {}
		tdDict["td"] = current_td_list;
		tbodyList.push(tdDict);
	});
	
	console.log("tbodyList:", tbodyList)







//	rowData.map((item, index) => {
//		let current_td_list = [];
//		theadList.map((thItem, thIndex) => {
//			current_td_list.push(item[thItem]);
//		});
//		let tdDict = {}
//		tdDict["td"] = current_td_list;
//		tbodyList.push(tdDict);
//	});

	let check = tbodyList[0];
	if (Object.keys(check).length === 0) {
		tbodyList = tbodyList.splice(1, tbodyList.length)
	}
	if (tbodyList.length < 1) {
		$(".alert_message").html('<div class="alert alert-danger" role="alert">' + catalog_is_empty + '</div>');
		alert_message_function();
	} else {
		var catalogJson = {
			"catalogName": catalog_name,
			"elementName": catalog_element,
			"theads": [{
				"th": theadListSorted
			}],
			"tbodies": [{
				"tr": tbodyList
			}]
			}
		
		console.log("pdfDownload:",catalogJson)
		
//		window.open('downloadCatalogExcelFile?catalog=' + catalogJson.toString());
		$.ajax({
			url: "downloadCatalogAsPDF", // url: "/findTables?dbName="+db_name,
			contentType: 'application/json; charset=utf-8',
			type: "POST",
			data: JSON.stringify(catalogJson),
			//dataType: "text/String"
			success: function(data, textStatus, xhr) {
				window.open('downloadCatalogAsPDF1');
			}
		});
	}
}
function saveCatalog(catalog_name, catalog_element, companyName, folderID, parentID, current_ID) {

	$("#catalog_save_button_" + catalog_name.replaceAll(' ', '_')).prop("disabled", true)
	catalogSaveButton["catalog_save_button_" + catalog_name.replaceAll(' ', '_')] = true;
	//	// 		$(".catalog_save_button").prop("disabled","true")
	//	var catalog_table_var = document.getElementById(current_ID);
	//	var theadVar = catalog_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
	//	var theadList = [];
	//	$.each(theadVar, function(i, item) {
	//		theadList.push(item.innerHTML)
	//	});
	//	var tbodyVar = catalog_table_var.getElementsByTagName("tbody")[0].getElementsByTagName("tr");
	//	var tbodyList = [{}];
	//	let tdList = [];
	//	$.each(tbodyVar, function(i, item) {
	//		let loop_td = item.getElementsByTagName("td");
	//		let current_td_list = [];
	//		$.each(loop_td, function(i, item) {
	//			current_td_list.push(item.innerHTML);
	//		});
	//		let tdDict = {};
	//		tdDict["td"] = current_td_list;
	//		//             tdDict.push({
	//		//                 key:   "td",
	//		//                 value: current_td_list
	//		//             });
	//		tbodyList.push(tdDict);
	//	});



	let rowData = [];
	let theadList = [];
	var tbodyList = [];
	gridOptions.api.forEachNode((node) => rowData.push(node.data));
	theadList = Object.keys(rowData[0]);

	rowData.map((item, index) => {
		let current_td_list = [];
		theadList.map((thItem, thIndex) => {
			current_td_list.push(item[thItem]);
		});
		let tdDict = {}
		tdDict["td"] = current_td_list;
		tbodyList.push(tdDict);
	});

	let check = tbodyList[0];
	if (Object.keys(check).length === 0) {
		tbodyList = tbodyList.splice(1, tbodyList.length)
	}
	if(tbodyList.length<1){
		$(".alert_message").html('<div class="alert alert-danger" role="alert">'+catalog_is_empty+'</div>');
		alert_message_function();
	}else{
	var catalogJson = {
		"catalogName": catalog_name,
		"elementName": catalog_element,
		"parentID": parentID,
		"theads": [{
			"th": theadList
		}],
		"tbodies": [{
			"tr": tbodyList
		}]
	}

	$.ajax({
		url: "saveCatalogToXML", // url: "/findTables?dbName="+db_name,
		contentType: 'application/json; charset=utf-8',
		type: "POST",
		data: JSON.stringify(catalogJson),
		//dataType: "text/String"
		success: function(data) {
		
			if (data == "Already Exists!") {
					$(".alert_message").html('<div class="alert alert-danger" role="alert">'+catalog_exist_message+'</div>');
				alert_message_function();
			} else {
					$(".alert_message").html('<div class="alert alert-success" role="alert">'+catalog_saved+'</div>');
					alert_message_function();
				refreshTree();
			}
		}
	});
	}
}

function titleForCatalog(catalogName) {
	$(element_title).empty();
	$("#element_title").show().text(catalogName);
	$('#element_title').prop('title', catalogName);
}


//function drawCatalogFromXML(catalogName, id, elementName, folderName) {
//	$(".loader").css("display", "block");
//	if (allExistElementInHistoryTab.includes(catalogName.replaceAll(" ", "---")) == false) {
//		allExistElementInHistoryTab.push(catalogName.replaceAll(" ", "---"))
//	}
//	/* catalog In history start's here */
//	$("#chart").hide();
//	$("#chart").css("display", "block");
//	$("#element_title").show().text(catalogName);
//	$('#element_title').prop('title', catalogName);
//	catalogView();
//	var current_ID = divId + divIdCount++;
//	var clsName = catalogName.replaceAll(" ", "---");
//	var catalog_data = "";
//
//	console.log("catalogName", catalogName)
//	if (historyTabItems.includes(catalogName) == false) {
//		$("#element_title").show().text(catalogName);
//		$('#element_title').prop('title', catalogName);
//		$("#historyList").append('<div id="' + current_ID + '11" class="column ' + clsName + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalogName + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#"  onclick="showCatalog(\'' + catalogName + '\',\'' + elementName + '\',' + null + ',' + null + ',' + null + ',\'' + current_ID + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalogName + '</a></div></div>');
//		$("#history_tab").css("display", "flex");
//		historyTabItems.push(catalogName);
//		console.log('aa', historyTabItems)
//		numItems = $('.column').length;
//		$(".history_page_no").html(numItems)
//	} else {
//		$("#element_title").show().text(catalogName);
//		$('#element_title').prop('title', catalogName);
//		$("." + clsName).remove();
//		$("#historyList").append('<div id="' + current_ID + '11" class="column ' + clsName + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalogName + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#"  onclick="showCatalog(\'' + catalogName + '\',\'' + elementName + '\',' + null + ',' + null + ',' + null + ',\'' + current_ID + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalogName + '</a></div></div>');
//		$("#history_tab").css("display", "flex");
//		// 			numItems = $('.column').length;
//		// 			$(".history_page_no").html(numItems)
//	}
//	/* catalog In history End's here */
//	$.ajax({
//		url: "getCatalogTableFromXML",
//		data: { 'catalog_id': id },
//		success: function(data) {
//			console.log("data", data)
//
//			let scriptNamesArray = data["scriptNames"].split(';')
//			catalogScriptNamesAndColumnsDict[catalogName] = scriptNamesArray;
//			$("#catalog").show();
//			var tableData = '';
//			tableData += '<table id="' + current_ID + '" class="' + clsName + ' table table-striped table-bordered" style="width:100%">';
//			var thead = data["thead"];
//			var tbody = data["tbody"];
//			tableData += '<thead class="">' + thead + '</thead>';
//			tableData += '<tbody class="">' + tbody + '</tbody>';
//			tableData += '</table>';
//			$("#catalog").append(tableData);
//			// 					var a = document.getElementById("catalog_table");
//			// 					var theadVar = a.getElementsByTagName("thead");
//			// 					thead = "<tr>"+thead+"</tr>";
//			// 					$(theadVar).empty();									
//			// 					$(theadVar).append(thead);
//			// 					var tbodyVar = a.getElementsByTagName("tbody");
//			// 					$(tbodyVar).empty();
//			// 					$(tbodyVar).append(tbody);
//			// 					$(".catalog_save_button").empty().append("<button id='catalog_save_button_"+catalogName+"' style='font-size: 20px;' title='Save' class='btn' onclick='saveCatalog(\""+catalogName+"\",\""+elementName+"\");'><span class='fa fa-floppy-o save-btn' aria-hidden='true'></span></button>")
//			// 					$(".catalog_save_button").append("<button style='font-size: 20px;' title='Save' class='btn' onclick='downloadCatalog(\""+catalogName+"\",\""+elementName+"\",\""+current_ID+"\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
//			// 					var object_to_string = JSON.stringify(a);
//			// 					catalog_data = '<div id="'+current_ID+'">"'+a+'"</div>';
//			allDivIds.push(current_ID);
//			// 					$("#catalog").append(catalog_data);
//			var dataTable_catalog;
//			if (dataTable_catalog_created == false) {
//				dataTable_catalog = $('#catalog_table').DataTable({ paging: false });
//				dataTable_catalog_created = true;
//			}
//			// 					\''+catalog_name+'\',\''+catalog_element+'\',\''+companyName+'\',\''+folderID+'\',\''+parentID+'\',\''+current_ID+'\'
//			catalogSaveButton["catalog_save_button_" + catalogName.replaceAll(' ', '_')] = true;
//			$(".loader").css("display", "none");
//			showCatalog(catalogName, elementName, null, null, null, current_ID);
//		}
//	});
//}



function drawCatalogFromXML(catalogName, id, elementName, folderName) {
	$(".loader").css("display", "block");
	if (allExistElementInHistoryTab.includes(catalogName.replaceAll(" ", "---")) == false) {
		allExistElementInHistoryTab.push(catalogName.replaceAll(" ", "---"))
	}
	/* catalog In history start's here */
	$("#chart").hide();
	$("#chart").css("display", "block");
	$("#element_title").show().text(catalogName);
	$('#element_title').prop('title', catalogName);
	catalogView();
	var current_ID = divId + divIdCount++;
	var clsName = catalogName.replaceAll(" ", "---");
	var catalog_data = "";

	if (historyTabItems.includes(catalogName) == false) {
		$("#element_title").show().text(catalogName);
		$('#element_title').prop('title', catalogName);
		$("#historyList").append('<div id="' + current_ID + '11" class="column ' + clsName + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalogName + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#"  onclick="showCatalog(\'' + catalogName + '\',\'' + elementName + '\',' + null + ',' + null + ',' + null + ',\'' + current_ID + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalogName + '</a></div></div>');
		$("#history_tab").css("display", "flex");
		historyTabItems.push(catalogName);
		console.log('aa', historyTabItems)
		numItems = $('.column').length;
		$(".history_page_no").html(numItems)
	} else {
		$("#element_title").show().text(catalogName);
		$('#element_title').prop('title', catalogName);
		$("." + clsName).remove();
		$("#historyList").append('<div id="' + current_ID + '11" class="column ' + clsName + '"><div style="display:inline-block"><span class="close_image ' + folderName + '" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalogName + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#"  onclick="showCatalog(\'' + catalogName + '\',\'' + elementName + '\',' + null + ',' + null + ',' + null + ',\'' + current_ID + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalogName + '</a></div></div>');
		$("#history_tab").css("display", "flex");
		// 			numItems = $('.column').length;
		// 			$(".history_page_no").html(numItems)
	}
	/* catalog In history End's here */
	$.ajax({
		url: "getCatalogTableFromXML",
		data: { 'catalog_id': id },
		success: function(data) {

			$("#catalog").show();
			let rowData = data['rowData']
			let header = data['header'][0]
			
			try {
				let scriptNamesArray = data["scriptNames"][0][0].split(';')
				catalogScriptNamesAndColumnsDict[catalogName] = scriptNamesArray;
			}
			catch(err) {
				console.log("catalog scripts are not found!")
			}
	
			let arrayOfObject = []
			
			rowData.map((item, index)=>{
				let currentRow = item;
				let tempHashMap = {}
				
				currentRow.map((item1, index1)=>{
					let headerItem = header[index1]
					let bodyItem = item1;
					tempHashMap[headerItem] = bodyItem;
				})
				arrayOfObject.push(tempHashMap) 
			})

			let columnDefs = []
			
			header.map((headerItem)=>{
				if(headerItem === Name){
					columnDefs.push({
						sortable: sortable,
						filter: filter,
						filter: filterType,
						floatingFilter: floatingFilter,
						width: width,
						autoHeight: autoHeight,
				        field: headerItem,
						cellRenderer: 'openObjectFormWhenClickOnObjectNameFromCatalog', 
						cellRendererParams: {
							clicked: function(field) {
								updateFormModal(field, elementName, "null","catalog")
							}
						},
						cellStyle: function(params) {
							return {color: '#014FB1'};
						}
					})
				}else{
					columnDefs.push({
						sortable: sortable,
						filter: filter,
						filter: filterType,
						floatingFilter: floatingFilter,
						width: width,
						autoHeight: autoHeight,
				        field: headerItem,
						cellRenderer: function(param){
							return param.value
					    }
					})
			}
			})
		
			
			
			// let the grid know which columns and what data to use
			gridOptions.api.setColumnDefs(columnDefs);
			gridOptions.api.setRowData(arrayOfObject);
			gridOptions.getRowStyle = function(params) {
			    if (params.node.rowIndex % 2 === 0) {
					return { background: '#F5F5F5' }
			    }else{
			        return { background: '#D7F0F2' }
				}
			}
			$("#catalog").show();
			$("#catalogGridParent").css("display", "block");
			$(".loader").css("display", "none");
			
			allDivIds.push(current_ID);
			
			showCatalog(catalogName, elementName, null, null, null, current_ID);
		}
	});
}

function openObjectFormWhenClickOnObjectNameFromCatalog() {}

openObjectFormWhenClickOnObjectNameFromCatalog.prototype.init = function(params) {
	this.params = params;
	this.eGui = document.createElement('span');
	this.eGui.innerHTML = this.params.value;
	this.eGui.style.cursor = "pointer"

	this.btnClickedHandler = this.btnClickedHandler.bind(this);
	this.eGui.addEventListener('click', this.btnClickedHandler);
}

openObjectFormWhenClickOnObjectNameFromCatalog.prototype.getGui = function() {
	return this.eGui;
}

openObjectFormWhenClickOnObjectNameFromCatalog.prototype.destroy = function() {
	this.eGui.removeEventListener('click', this.btnClickedHandler);
}

openObjectFormWhenClickOnObjectNameFromCatalog.prototype.btnClickedHandler = function(event) {
	this.params.clicked(this.params.value);
}



var dataTable_catalog_created = false;
//function catalogname(companyName, folderID, parentID) {
//	$('#catalogElements').html("<option value='select' selected disabled>"+select_dropdown+"</option>");
//	$(".loader").show();
//	$.ajax({
//		url: "getElementsFromXML", // url: "/findTables?dbName="+db_name,
//		//type: "GET",
//		data: {},
//		//dataType: "text/String"
//		success: function(data) {
//			
//			
//			$.each(data, function(i, item) {
////				var getDivid = "#catalogElements";
////				fill_elements_in_dropdown(getDivid, item);
//				$('#catalogElements').append($('<option>', {
//					value: item,
//					text: customDictionary[item.replaceAll(" ","_")]
//				}));
//			});
//		},complete: function(data){
//			$(".loader").hide();
//		}
//		
//	});
//	$(function() {
//		var dialog, form,
//			dialog = $("#catalogName").dialog({
//				autoOpen: false,
//				height: 400,
//				width: 370,
//				modal: true,
//				buttons: {
//					[Create]: function addCatalog() {
//						console.log("createing new catalog")
//						$(".loader").show();
//						catalogView();
//						$(element_title).empty();
//						$('#chart').hide();
//
//						$('#catalogfilter').show();
//						var catalog_name = $("#catalog_name").val();
//						// catalog_name = catalog_name.replaceAll(/[&\/\\#+(â€“)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
//						// catalog_name = catalog_name.replace(/[^\w]/gi, '_');
//						catalog_name = catalog_name.replace(/[^\w\u0600-\u06FF\s]/gi, '_');
//
//
//
//						var catalog_element = $("#catalogElements").val();
//						/* catalog In history start's here */
//						var current_ID = divId + divIdCount++;
//						allDivIds.push(current_ID);
//						var clsName = catalog_name;
//						let checkSpaceInCatalogName = clsName.replaceAll(" ", "---");
//						/* catalog In history End's here */
//						$.ajax({
//							url: "validateCatalogName", // url: "/findTables?dbName="+db_name,
//							//type: "GET",
//							data: { 'catalog_name': catalog_name },
//							//dataType: "text/String"
//							success: function(data) {
//								if (data == '') {
//									if (catalog_name && catalog_element) {
//										$.ajax({
//											url: "getCatalogTable", //getCatalogTableFromXML
//											data: { 'tableName': catalog_element, 'catalog_name': catalog_name },
//											success: function(data) {
//												$('#chart').hide();
//												$('#catalogfilter').show();
//												$("#catalog").show();
//												
//												
//												
//												
////												$(".loader").css("display", "none")
//												$("#element_title").show().text(catalog_name);
//												$('#element_title').prop('title', catalog_name);
//												//$("#element_title").show().text(document.getElementById("catalog_name").value);
//												var tableData = '';
//												tableData += '<table id="' + current_ID + '" class="' + checkSpaceInCatalogName + ' table table-striped table-bordered" style="width:100%">';
//												var thead = data["thead"];
//												var tbody = data["tbody"];
//												tableData += '<thead class="">' + thead + '</thead>';
//												tableData += '<tbody class="">' + tbody + '</tbody>';
//												tableData += '</table>';
//												$("#catalog").append(tableData);
//												// 								var a = document.getElementById("catalog_table");
//												// 								var theadVar = a.getElementsByTagName("thead");
//												// 								console.log(' theadVar', theadVar)
//												// 								thead = "<tr>"+thead+"</tr>";
//												// 								$(theadVar).empty();									
//												// 								$(theadVar).append(thead);
//												// 								var tbodyVar = a.getElementsByTagName("tbody");
//												// 								$(tbodyVar).empty();
//												// 								$(tbodyVar).append(tbody);
//												
//												
//												
//												
//												$(".catalog_save_button").empty();
//												$(".catalog_save_button").append('<select class="form-control" id="catalogScriptActionSelect" style="width: max-content;display: inline;vertical-align: middle;margin-right: 5px;" aria-label="Default select example"><option selected value="All" disabled>'+select_script+'</option><option value="All">'+select_all+'</option></select>');
//												$(".catalog_save_button").append('<div class="btn-group"><button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color:#e3fdff;">Action</button><div style="background-color:#e3fdff;" class="dropdown-menu"><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\''+catalog_name+'\',\'create\',\''+current_ID+'\');">Create</a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\''+catalog_name+'\',\'edit\',\''+current_ID+'\');">'+edit+'</a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\''+catalog_name+'\',\'delete\',\''+current_ID+'\');">'+Delete+'</a></div>');												
//												$(".catalog_save_button").append("<button id='catalog_save_button_" + catalog_name.replaceAll(' ', '_') + "' style='font-size: 20px;' title="+save+" class='btn' onclick='saveCatalog(\"" + catalog_name + "\",\"" + catalog_element + "\",\"" + companyName + "\",\"" + folderID + "\",\"" + parentID + "\",\"" + current_ID + "\");'><span class='fa fa-floppy-o save-btn' aria-hidden='true'></span></button>")
////												$(".catalog_save_button").append("<button id=\"downloadCatalogButton\" style='font-size: 20px;' title="+download+" class='btn' onclick='downloadCatalog(\"" + catalog_name + "\",\"" + catalog_element + "\",\"" + current_ID + "\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
////												$(".catalog_save_button").append("<button id=\"downloadCatalogAsPDF\" style='font-size: 20px;' title="+export_as_PDF+" class='btn' onclick='downloadCatalogAsPDF(\"" + catalogName + "\",\"" + catalog_element + "\",\"" + current_ID + "\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
//												
//												
////												if(globalLanguage == "Ar"){
////												$(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">'+export_as_excel+'</a></div>');
//													
////												}else{
//													
//													$(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">'+export_as_excel+'</a><a class="dropdown-item hover-color" href="javascript:downloadCatalogAsPDF(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">'+export_as_PDF+'</a></div>');
//													
////												}
//												
//												//$(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">'+export_as_excel+'</a><a class="dropdown-item hover-color" href="javascript:downloadCatalogAsPDF(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">'+export_as_PDF+'</a></div>');
//												catalogSaveButton["catalog_save_button_" + catalog_name.replaceAll(' ', '_')] = false;
//												// 								$("#catalog_table").append('<input type="button" class="btn btn-success" value="Save Catalog" onclick="saveCatalog(\''+catalog_name+'\',\''+catalog_element+'\',\''+companyName+'\',\''+folderID+'\',\''+parentID+'\' );"></input>');
//												// 								$("#catalog_table").append('<input type="button" class="btn btn-success" value="Download Catalog" onclick="downloadCatalog(\''+catalog_name+'\',\''+catalog_element+'\');"></input>');
//												// 								saveCatalog(catalog_name,catalog_element,companyName,folderID,parentID);
//												var dataTable_catalog;
//												if (dataTable_catalog_created == false) {
//													dataTable_catalog = $('#catalog_table').DataTable({ paging: false });
//													dataTable_catalog_created = true;
//												}
//												//HISTORY WORK FOR CATALOG CREATE
//												if (historyTabItems.includes(catalog_name) == false) {
//													$("#historyList").append('<div id="' + current_ID + '11" class="column ' + checkSpaceInCatalogName + '"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalog_element + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + companyName + '\',\'' + folderID + '\',\'' + parentID + '\',\'' + current_ID + '\');"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalog_name + '</a></div></div>');
//													//$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
//													$("#history_tab").css("display", "flex")
//													historyTabItems.push(catalog_name);
//													numItems = $('.column').length;
//													$(".history_page_no").html(numItems)
//												} else {
//													$("." + clsName).remove();
//													$("#historyList").append('<div id="' + current_ID + '11" class="column ' + checkSpaceInCatalogName + '"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalog_element + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + companyName + '\',\'' + folderID + '\',\'' + parentID + '\',\'' + current_ID + '\');"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalog_name + '</a></div></div>');
//													$("#history_tab").css("display", "flex");
//													numItems = $('.column').length;
//													$(".history_page_no").html(numItems)
//												}
//												$.each(allDivIds, function(i, val) {
//													if (val != current_ID) {
//														$("#" + val).css("display", "none");
//														$("#" + val + "11").css("background", "");
//													} else {
//														$("#" + val).css("display", "block");
//														$("#" + val + "11").css("background", "#e9e9e9");
//														numItems = $('.column').length;
//
//														$(".history_page_no").html(numItems);
//													}
//												});
//												$(".loader").hide();
//											}
//
//										});
//										dialog.dialog("close");
//									}
//									else {
//										$(".loader").hide();
//										dialog.dialog("open");
//										$(".alert_message").html('<div class="alert alert-warning" role="alert"> '+select_element_enter_name+' </div>');
//										alert_message_function();
////										$(".loader").css("display", "none");
//									}
//								}
//								else {
//									$(".alert_message").html('<div class="alert alert-danger" role="alert">'+catalog_exist_message+'</div>');
//									alert_message_function();
//									$(".loader").hide();
////									$(".loader").css("display", "none");
//								}
//							}
//						});
//						// 		        	}
//					},
////					"<spring:message code='Cancel'/>": function() {
//					[Cancel]: function() {
//						dialog.dialog("close");
//					}
//				},
//				close: function() {
//					form[0].reset();
//				}
//			});
//		form = dialog.find("form").on("submit", function(event) {
//			event.preventDefault();
//			addCatalog();
//		});
//		//$( "#create-user" ).button().on( "click", function() {
//		dialog.dialog("open");
//		//});
//	});
////	$(".loader").hide();
//}



function catalogname(companyName, folderID, parentID) {
	$('#catalogElements').html("<option value='select' selected disabled>"+select_dropdown+"</option>");
	$(".loader").show();
	$.ajax({
		url: "getElementsFromXML", // url: "/findTables?dbName="+db_name,
		data: {},
		success: function(data) {
			
			$.each(data, function(i, item) {
				$('#catalogElements').append($('<option>', {
					value: item,
					text: customDictionary[item.replaceAll(" ","_")]
				}));
			});
		},complete: function(data){
			$(".loader").hide();
		}
		
	});
	$(function() {
		var dialog, form,
			dialog = $("#catalogName").dialog({
				autoOpen: false,
				height: 400,
				width: 370,
				modal: true,
				buttons: {
					[Create]: function addCatalog() {
						// console.log("createing new catalog")
						$(".loader").show();
						catalogView();
						$(element_title).empty();
						$('#chart').hide();

						$('#catalogfilter').show();
						var catalog_name = $("#catalog_name").val();
						// catalog_name = catalog_name.replaceAll(/[&\/\\#+(â€“)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
						// catalog_name = catalog_name.replace(/[^\w]/gi, '_');
						catalog_name = catalog_name.replace(/[^\w\u0600-\u06FF\s]/gi, '_');


						var catalog_element = $("#catalogElements").val();
						/* catalog In history start's here */
						var current_ID = divId + divIdCount++;
						allDivIds.push(current_ID);
						var clsName = catalog_name;
						let checkSpaceInCatalogName = clsName.replaceAll(" ", "---");
						/* catalog In history End's here */
						$.ajax({
							url: "validateCatalogName", // url: "/findTables?dbName="+db_name,
							data: { 'catalog_name': catalog_name },
							success: function(data) {
								if (data == '') {
									if (catalog_name && catalog_element) {
										$.ajax({
											url: "getCatalogTable", //getCatalogTableFromXML
											data: { 'tableName': catalog_element, 'catalog_name': catalog_name },
											success: function(data) {
												$('#chart').hide();
												$('#catalogfilter').show();
												$("#catalog").show();
												
												///////////////////////////////////////////////////////////////////////
												let rowData = data['rowData']
												let header = data['header'][0]
										
												let arrayOfObject = []
												rowData.map((item, index)=>{
													let currentRow = item;
													let tempHashMap = {}
													
													currentRow.map((item1, index1)=>{
														let headerItem = header[index1]
														let bodyItem = item1;
														tempHashMap[headerItem] = bodyItem;
													})
													arrayOfObject.push(tempHashMap) 
												})
									
												let columnDefs = []
												
												header.map((headerItem)=>{
													if(headerItem === Name){
														columnDefs.push({
															sortable: sortable,
															filter: filter,
															filter: filterType,
															floatingFilter: floatingFilter,
															width: width,
															autoHeight: autoHeight,
													        field: headerItem,
															cellRenderer: 'openObjectFormWhenClickOnObjectNameFromCatalog', 
															cellRendererParams: {
																clicked: function(field) {
																	updateFormModal(field, catalog_element, "null","catalog")
																}
															},
															cellStyle: function(params) {
																return {color: '#014FB1'};
															}
														})
													}else{
														columnDefs.push({
															sortable: sortable,
															filter: filter,
															filter: filterType,
															floatingFilter: floatingFilter,
															width: width,
															autoHeight: autoHeight,
													        field: headerItem,
															cellRenderer: function(param){
																return param.value
														    }
														})
													}
												})

												// let the grid know which columns and what data to use
												gridOptions.api.setColumnDefs(columnDefs);
												gridOptions.api.setRowData(arrayOfObject);
												gridOptions.getRowStyle = function(params) {
												    if (params.node.rowIndex % 2 === 0) {
														return { background: '#F5F5F5' }
												    }else{
												        return { background: '#D7F0F2' }
													}
												}
												$("#catalogGridParent").css("display", "block");
												$(".loader").css("display", "none");
												// $(".loader").hide();
												///////////////////////////////////////////////////////////////////////
												
												$("#element_title").show().text(catalog_name);
												$('#element_title').prop('title', catalog_name);
												
												$(".catalog_save_button").empty();
												$(".catalog_save_button").append('<select class="form-control" id="catalogScriptActionSelect" style="width: max-content;display: inline;vertical-align: middle;margin-right: 5px;" aria-label="Default select example"><option selected value="All" disabled>'+select_script+'</option><option value="All">'+select_all+'</option></select>');
												$(".catalog_save_button").append('<div class="btn-group"><button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color:#e3fdff;">Action</button><div style="background-color:#e3fdff;" class="dropdown-menu"><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\''+catalog_name+'\',\'create\',\''+current_ID+'\');">Create</a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\''+catalog_name+'\',\'edit\',\''+current_ID+'\');">'+edit+'</a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\''+catalog_name+'\',\'delete\',\''+current_ID+'\');">'+Delete+'</a></div>');												
												$(".catalog_save_button").append("<button id='catalog_save_button_" + catalog_name.replaceAll(' ', '_') + "' style='font-size: 20px;' title="+save+" class='btn' onclick='saveCatalog(\"" + catalog_name + "\",\"" + catalog_element + "\",\"" + companyName + "\",\"" + folderID + "\",\"" + parentID + "\",\"" + current_ID + "\");'><span class='fa fa-floppy-o save-btn' aria-hidden='true'></span></button>")
												
												// if(globalLanguage == "Ar"){
												// $(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">'+export_as_excel+'</a></div>');
													
												// }else{
													
													$(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">'+export_as_excel+'</a><a class="dropdown-item hover-color" href="javascript:downloadCatalogAsPDF(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + current_ID + '\');">'+export_as_PDF+'</a></div>');
													
												// }
												
												catalogSaveButton["catalog_save_button_" + catalog_name.replaceAll(' ', '_')] = false;
												var dataTable_catalog;
												if (dataTable_catalog_created == false) {
													dataTable_catalog = $('#catalog_table').DataTable({ paging: false });
													dataTable_catalog_created = true;
												}
												//HISTORY WORK FOR CATALOG CREATE
												if (historyTabItems.includes(catalog_name) == false) {
													$("#historyList").append('<div id="' + current_ID + '11" class="column ' + checkSpaceInCatalogName + '"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalog_element + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + companyName + '\',\'' + folderID + '\',\'' + parentID + '\',\'' + current_ID + '\');"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalog_name + '</a></div></div>');
													//$("#historyList").append('<a class="dropdown-item" href="#" onclick="showDiv(\''+current_ID+'\')"><img draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/js/examples/editors/images/images1/'+imageName+'"/>"> '+row_name+'</a>');
													$("#history_tab").css("display", "flex")
													historyTabItems.push(catalog_name);
													numItems = $('.column').length;
													$(".history_page_no").html(numItems)
												} else {
													$("." + clsName).remove();
													$("#historyList").append('<div id="' + current_ID + '11" class="column ' + checkSpaceInCatalogName + '"><div style="display:inline-block"><span class="close_image" onclick="closeCatalogDiv(\'' + current_ID + '\', \'' + catalog_element + '\')"><img draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="showCatalog(\'' + catalog_name + '\',\'' + catalog_element + '\',\'' + companyName + '\',\'' + folderID + '\',\'' + parentID + '\',\'' + current_ID + '\');"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/catalog.svg"><br/>' + catalog_name + '</a></div></div>');
													$("#history_tab").css("display", "flex");
													numItems = $('.column').length;
													$(".history_page_no").html(numItems)
												}
												$.each(allDivIds, function(i, val) {
													if (val != current_ID) {
														$("#" + val).css("display", "none");
														$("#" + val + "11").css("background", "");
													} else {
														$("#" + val).css("display", "block");
														$("#" + val + "11").css("background", "#e9e9e9");
														numItems = $('.column').length;

														$(".history_page_no").html(numItems);
													}
												});
												$(".loader").hide();
											}

										});
										dialog.dialog("close");
									}
									else {
										$(".loader").hide();
										dialog.dialog("open");
										$(".alert_message").html('<div class="alert alert-warning" role="alert"> '+select_element_enter_name+' </div>');
										alert_message_function();
										// $(".loader").css("display", "none");
									}
								}
								else {
									$(".alert_message").html('<div class="alert alert-danger" role="alert">'+catalog_exist_message+'</div>');
									alert_message_function();
									$(".loader").hide();
									// $(".loader").css("display", "none");
								}
							}
						});
					},
					[Cancel]: function() {
						dialog.dialog("close");
					}
				},
				close: function() {
					form[0].reset();
				}
			});
		form = dialog.find("form").on("submit", function(event) {
			event.preventDefault();
			addCatalog();
		});
		//$( "#create-user" ).button().on( "click", function() {
		dialog.dialog("open");
		//});
	});
}

function emptyTheGridTable(loading){
	if(loading){
		gridOptions.api.setColumnDefs([]);
		gridOptions.api.setRowData([]);
		gridOptions.api.showLoadingOverlay();
	}else{
		gridOptions.api.setColumnDefs([]);
		gridOptions.api.setRowData([]);
		$("#catalogGridParent").css("display", "none");
	}
}


// 	function showCatalog(showDivID, catalogName){
// console.log(showDivID, catalogName)
function showCatalog(catalogName, catalog_element, companyName, folderID, parentID, showDivID) {
	$(".loader").css("display", "block");
	////////////////////////////////////////
	let loadingGrid = true
	emptyTheGridTable(loadingGrid)
	////////////////////////////////////////
	
	let scriptColumns = catalogScriptNamesAndColumnsDict[catalogName];
	$("#historyList").css("display", "none");
	$("#element_title").show().text(catalogName);
	$('#element_title').prop('title', catalogName);
	//     	$("#downloadCatalogButton").remove();
	$(".catalog_save_button").empty();
	$(".catalog_save_button").append('<select class="form-control" id="catalogScriptActionSelect" style="width: max-content;display: inline;vertical-align: middle;margin-right: 5px;" aria-label="Default select example"><option selected value="All" disabled>'+select_script+'</option><option value="All">'+select_all+'</option></select>');
	$.each(scriptColumns, function(i, val) {
		if(val!=''){
		$(".catalog_save_button select").append('<option value'+val+'>'+val+'</option');
		}
	});
	$(".catalog_save_button").append('<div class="btn-group"><button type="button" class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color:#e3fdff;">'+action+'</button><div id="catalogDropDownItemsDiv" style="background-color:#e3fdff;" class="dropdown-menu"><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\''+catalogName+'\',\'create\',\''+showDivID+'\');">'+Create+'</a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\''+catalogName+'\',\'edit\',\''+showDivID+'\');">'+edit+'</a><a class="dropdown-item hover-color" href="javascript:create_edit_delete_scripts(\''+catalogName+'\',\'delete\',\''+showDivID+'\');">'+Delete+'</a></div>');		
	$(".catalog_save_button").append("<button id='catalog_save_button_" + catalogName.replaceAll(' ', '_') + "' style='font-size: 20px;' title="+save+" class='btn' onclick='saveCatalog(\"" + catalogName + "\",\"" + catalog_element + "\",\"" + companyName + "\",\"" + folderID + "\",\"" + parentID + "\",\"" + showDivID + "\");'><span class='fa fa-floppy-o save-btn' aria-hidden='true'></span></button>")
//	$(".catalog_save_button").append("<button id=\"downloadCatalogButton\" style='font-size: 20px;' title='Download' class='btn' onclick='downloadCatalog(\"" + catalogName + "\",\"" + catalog_element + "\",\"" + showDivID + "\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
//	$(".catalog_save_button").append("<button id=\"downloadCatalogAsPDF\" style='font-size: 20px;' title='Download As PDF' class='btn' onclick='downloadCatalogAsPDF(\"" + catalogName + "\",\"" + catalog_element + "\",\"" + showDivID + "\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
	
	
//	if(globalLanguage == "Ar"){
//		$(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalogName + '\',\'' + catalog_element + '\',\'' + showDivID + '\');">'+export_as_excel+'</a></div>');
//	}else{
		
	$(".catalog_save_button").append('<div class="btn-group"><button id=\"downloadCatalogAsPDF\" style="font-size: 20px;" title="Export Catalog" class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-download download-btn" aria-hidden="true"></span></button><div style="background-color:#e3fdff;" class="dropdown-menu exportCatalogDropdown"><a class="dropdown-item hover-color" href="javascript:downloadCatalog(\'' + catalogName + '\',\'' + catalog_element + '\',\'' + showDivID + '\');">'+export_as_excel+'</a><a class="dropdown-item hover-color" href="javascript:downloadCatalogAsPDF(\'' + catalogName + '\',\'' + catalog_element + '\',\'' + showDivID + '\');">'+export_as_PDF+'</a></div>');
//	}
	
	
	$("#catalog_save_button_" + catalogName.replaceAll(' ', '_')).prop("disabled", catalogSaveButton["catalog_save_button_" + catalogName.replaceAll(' ', '_')]);
	//     	$(".catalog_save_button").append("<button id=\"downloadCatalogButton\" style='font-size: 20px;' title='Save' class='btn' onclick='downloadCatalog(\""+catalogName+"\",\""+null+"\",\""+showDivID+"\");'><span class='fa fa-download download-btn' aria-hidden='true'></span></button>")
	$.each(dictionaryXML, function(key, value) {
		$("#" + key.replaceAll(' ', '_') + "11").css("background", "");
	});

	$.each(allDivIds, function(i, val) {
		if (val != showDivID) {
			$("#" + val).css("display", "none");
			$("#" + val + "11").css("background", "");
		} else {
			$("#" + val).css("display", "block");
			$("#" + val + "11").css("background", "#e9e9e9");
			numItems = $('.column').length;

			$(".history_page_no").html(numItems);
		}
		$("#palete").css("display", "none");
		$("#graphId").css("display", "none");
		$("#form_id").css("display", "block");
		$("#historyList").css("display", "none");
	});
	 		$.ajax({
	 		      url: "getCatalogTable", 
	 		      data:{'tableName':catalog_element},
	 		      success:function(data) {
//	 		    		$("#element_title").show().text(catalogName);
//	 		    		$('#element_title').prop('title', catalogName);
//	 					var thead = data["thead"];
//	 					var tbody = data["tbody"];
//	 					var a = document.getElementById("catalog_table");
//	 					var theadVar = a.getElementsByTagName("thead");
//	 					console.log(' theadVar', theadVar)
//	 					thead = "<tr>"+thead+"</tr>";
//	 					$(theadVar).empty();									
//	 					$(theadVar).append(thead);
//	 					var tbodyVar = a.getElementsByTagName("tbody");
//	 					$(tbodyVar).empty();
//	 					$(tbodyVar).append(tbody);

						///////////////////////////////////////////////////////////////////////
						let rowData = data['rowData']
						let header = data['header'][0]
				
						let arrayOfObject = []
						rowData.map((item, index)=>{
							let currentRow = item;
							let tempHashMap = {}
							
							currentRow.map((item1, index1)=>{
								let headerItem = header[index1]
								let bodyItem = item1;
								tempHashMap[headerItem] = bodyItem;
							})
							arrayOfObject.push(tempHashMap) 
						})
			
						let columnDefs = []
						
						header.map((headerItem)=>{
							if(headerItem === Name){
								columnDefs.push({
									sortable: sortable,
									filter: filter,
									filter: filterType,
									floatingFilter: floatingFilter,
									width: width,
									autoHeight: autoHeight,
								    field: headerItem,
									cellRenderer: 'openObjectFormWhenClickOnObjectNameFromCatalog', 
									cellRendererParams: {
										clicked: function(field) {
											updateFormModal(field, catalog_element, "null","catalog")
										}
									},
									cellStyle: function(params) {
										return {color: '#014FB1'};
									}
								})
							}else{
								columnDefs.push({
									sortable: sortable,
									filter: filter,
									filter: filterType,
									floatingFilter: floatingFilter,
									width: width,
									autoHeight: autoHeight,
							        field: headerItem,
									cellRenderer: function(param){
										return param.value
								    }
								})
							}
					})
						
					// let the grid know which columns and what data to use
					gridOptions.api.setColumnDefs(columnDefs);
					gridOptions.api.setRowData(arrayOfObject);
					gridOptions.getRowStyle = function(params) {
					    if (params.node.rowIndex % 2 === 0) {
							return { background: '#F5F5F5' }
					    }else{
					        return { background: '#D7F0F2' }
						}
					}
					$("#catalogGridParent").css("display", "block");
					$(".loader").css("display", "none");
					// $(".loader").hide();
					///////////////////////////////////////////////////////////////////////
	 		  }
	 		}); 	
	catalogView();
}

function create_edit_delete_scripts(catalog_name,action,catalog_id){
	let selectedScriptName = $(".catalog_save_button select").val();
	let openModal = false;
	if( (selectedScriptName == 'All' || selectedScriptName == null) && (action=='delete' || action == 'edit')){
		$(".alert_message").html('<div class="alert alert-danger" role="alert">'+select_a_saved_script+'</div>');
		alert_message_function();
	} else if( action=='create' || action == 'edit'){
		openCatalogScriptModal(catalog_name,action,catalog_id)
	}else if(action=='delete'){
		$.ajax({
			url: "deleteCatalogScripts",
			data: { 'scriptName': selectedScriptName },
			success: function(data) {
				if (data == 1) {
					$(".alert_message").html('<div class="alert alert-success" role="alert">'+script_has_been_deleted+'</div>');
					alert_message_function();
					 $('#catalogScriptActionSelect option:selected').remove();
				}
			},
			async: false
		});
	}
}

function openCatalogScriptModal(catalog_name,action,catalog_id){
	let actionButton = capitalizeFirstLetter(action);
	
	var catalog_table_var = document.getElementById(catalog_id);
//	var theadVar = catalog_table_var.getElementsByTagName("thead")[0].getElementsByTagName("th");
	var availableScriptColumns = [];
//	$.each(theadVar, function(i, item) {
//		availableScriptColumns.push(item.innerHTML)
//	});


	////////////////////////////////////////////////////////////////////
		let rowData = [];
		gridOptions.api.forEachNode((node) => rowData.push(node.data));
		availableScriptColumns = Object.keys(rowData[0]);
	
	////////////////////////////////////////////////////////////////////


	let selectedScriptName = $(".catalog_save_button select").val();
	
	//// will be changed after saving and fetching - start
	
	let scriptColumnsArray = [];
	let leftColumnRemainingColumns = availableScriptColumns;
	$('#addedColumnsForCatalogScripts').empty();
	$('#availableColumnsForCatalogScripts').empty();
	if(action=='edit'){
		$('#catalogScriptName').prop("disabled", true);
		$('#catalogScriptName').val(selectedScriptName);
		$.ajax({
			url: "getCatalogScriptColumns",
			data: { 'scriptName': selectedScriptName },
			success: function(scriptColumns) {
				scriptColumnsArray = scriptColumns.split(';')
				leftColumnRemainingColumns = leftColumnRemainingColumns.filter(function(el) {
					return !scriptColumnsArray.includes(el);
				});
				$.each(scriptColumnsArray, function(i, item) {
					$('#addedColumnsForCatalogScripts').append('<span>' + item + '</span>');
				});
				addToggleClass('addedColumnsForCatalogScripts', 'selectedCatalogAddedScriptColumn');
			},
			async: false
		});
	}else{
		$('#catalogScriptName').prop("disabled", false);
		$('#catalogScriptName').val('');
	}
	
	
//	let alreadyAddedColumns = [];
//	
//	$.each($("#addedColumnsForCatalogScripts span"), function(i, item) {
//		let temp1 = item.innerHTML;
//		alreadyAddedColumns.push(temp1)
//	});
//	let leftColumnRemainingColumns = availableScriptColumns;
//	leftColumnRemainingColumns = leftColumnRemainingColumns.filter( function( el ) {
//	  return !alreadyAddedColumns.includes( el );
//	} );
	
	
	//// will be changed after saving and fetching - end
	
	$('#availableColumnsForCatalogScripts').empty();
	$.each(leftColumnRemainingColumns, function(i, item) {
		$('#availableColumnsForCatalogScripts').append('<span>'+item+'</span>');
	});
	
//	$('#availableColumnsForCatalogScripts span').click(function() {
//		$(this).toggleClass('selectedCatalogAvailableScriptColumn');
//	});
	addToggleClass('availableColumnsForCatalogScripts', 'selectedCatalogAvailableScriptColumn');
	
	
	$('#catalogScriptRight').click(function() {
		let valuesToRightShiftArray = [];
		let valuesToShiftRight = $(".selectedCatalogAvailableScriptColumn");
		$.each(valuesToShiftRight, function(i, item) {
			valuesToRightShiftArray.push(item.innerHTML)
			$(item).remove();
		});
		fillDataInRightCatalogScriptColumn(valuesToRightShiftArray);
	});
	
	function fillDataInRightCatalogScriptColumn(valuesToShiftRight){
		let alreadyAddedColumns = $("#addedColumnsForCatalogScripts span")
		$.each(alreadyAddedColumns, function(i, item) {
			let temp1 = item.innerHTML;
			valuesToShiftRight.push(temp1)
		});
		$('#addedColumnsForCatalogScripts').empty();
		
		valuesToShiftRight.sort(function(a, b){
		  return availableScriptColumns.indexOf(a) - availableScriptColumns.indexOf(b);
		});
		valuesToShiftRight.sort((a, b) => availableScriptColumns.indexOf(a) - availableScriptColumns.indexOf(b));
		
		$.each(valuesToShiftRight, function(i, item) {
			$('#addedColumnsForCatalogScripts').append('<span>' + item + '</span>');
		});
		
//		$('#addedColumnsForCatalogScripts span').click(function() {
//			$(this).toggleClass('selectedCatalogAddedScriptColumn');
//		});
		addToggleClass('addedColumnsForCatalogScripts', 'selectedCatalogAddedScriptColumn');
	}
	
	$('#catalogScriptLeft').click(function() {
		let valuesToLeftShiftArray = [];
		let valuesToLeft = $(".selectedCatalogAddedScriptColumn");
		$.each(valuesToLeft, function(i, item) {
			valuesToLeftShiftArray.push(item.innerHTML)
			$(item).remove();
		});
		fillDataInLeftCatalogScriptColumn(valuesToLeftShiftArray);
		console.log('valuesToLeftShiftArray',valuesToLeftShiftArray)
	});
	
	function fillDataInLeftCatalogScriptColumn(valuesToShiftLeft){
		let alreadyAvailableColumns = $("#availableColumnsForCatalogScripts span")
		$.each(alreadyAvailableColumns, function(i, item) {
			let temp1 = item.innerHTML;
			valuesToShiftLeft.push(temp1)
		});
		$('#availableColumnsForCatalogScripts').empty();
		
		valuesToShiftLeft.sort(function(a, b){
		  return availableScriptColumns.indexOf(a) - availableScriptColumns.indexOf(b);
		});
		valuesToShiftLeft.sort((a, b) => availableScriptColumns.indexOf(a) - availableScriptColumns.indexOf(b));
		
		$.each(valuesToShiftLeft, function(i, item) {
			$('#availableColumnsForCatalogScripts').append('<span>' + item + '</span>');
		});
		
//		$('#addedColumnsForCatalogScripts span').click(function() {
//			$(this).toggleClass('selectedCatalogAddedScriptColumn');
//		});
		addToggleClass('availableColumnsForCatalogScripts', 'selectedCatalogAvailableScriptColumn');
	}
	
	/*
	$('#catalogScriptRight').click(function() {
//		var valuesToShiftRight = document.getElementsByClassName("selectedCatalogAvailableScriptColumn");
		var valuesToShiftRight = $(".selectedCatalogAvailableScriptColumn");
		$.each(valuesToShiftRight, function(i, item) {
			$('#addedColumnsForCatalogScripts').append('<span>' + item.innerHTML + '</span>');
			$(item).remove();
		});
		$('#addedColumnsForCatalogScripts span').click(function() {
			$(this).toggleClass('selectedCatalogAddedScriptColumn');
		});
	});
	*/
	
	$(function() {
		var dialog, form,
			dialog = $("#catalogScriptsModal").dialog({
				autoOpen: false,
				height: 400,
				width: 500,
				modal: true,
				buttons: {
					[actionButton]: function addCatalogScript() {
						let alreadyAddedColumns = $("#addedColumnsForCatalogScripts span")
						let alreadyAddedColumnsArray = [];
						let scriptName = $('#catalogScriptName').val();
						if(scriptName !='' && alreadyAddedColumns.length>0){
							$.each(alreadyAddedColumns, function(i, item) {
								let temp1 = item.innerHTML;
								alreadyAddedColumnsArray.push(temp1)
							});
							let nameCheckForCreate = false;
							if(action=='create'){
								$.ajax({
									url: "validateCatalogScriptName",
									data: { 'catalog_script_name': scriptName},
									success: function(data) {
										console.log('data',data)
										if (data == '') {
											nameCheckForCreate = true;
										}else{
											$(".alert_message").html('<div class="alert alert-danger" role="alert">'+script_name_already_exists+'</div>');
											alert_message_function();
										}
									},
									async:false
								});
							} else if (action == 'edit') {
								nameCheckForCreate = true;
							}
							if (nameCheckForCreate == true) {
								$.ajax({
									url: "createOrEditCatalogScripts",
									data: { 'action': action, 'catalog_name': catalog_name, 'scriptName': scriptName, 'scriptColumns': alreadyAddedColumnsArray },
									success: function(data) {
										if (action == 'create') {
											addScriptInDropdown(scriptName, catalog_name);
											$(".alert_message").html('<div class="alert alert-success" role="alert">'+script_created+'</div>');
											alert_message_function();
										}else{
											$(".alert_message").html('<div class="alert alert-success" role="alert">'+script_edited+'</div>');
											alert_message_function();
										}
										
									}
								});
								dialog.dialog("close");
							}
						} else {
							$(".alert_message").html('<div class="alert alert-danger" role="alert"> '+enter_script_name_select_scripts+'</div>');
							alert_message_function();
						}
						
					},
					[Cancel]: function() {
						dialog.dialog("close");
					}
				}
			});

		form = dialog.find("form").on("submit", function(event) {
			event.preventDefault();
			addMatrix();
		});

		//$( "#create-user" ).button().on( "click", function() {
		dialog.dialog("open");
		// 		  } );  
	});  
}

function addScriptInDropdown(scriptName,catalog_name){
	let scriptColumns = [];
	if(catalogScriptNamesAndColumnsDict[catalog_name] != null){
		scriptColumns = catalogScriptNamesAndColumnsDict[catalog_name];
	}
	scriptColumns.push(scriptName)
	catalogScriptNamesAndColumnsDict[catalog_name] = scriptColumns;
	$(".catalog_save_button select").append('<option value'+scriptName+'>'+scriptName+'</option');
}

function addToggleClass(columnId, toggleClass) {
	$('#'+columnId+' span').click(function() {
		$(this).toggleClass(toggleClass);
	});
}
	// catalog work End's here