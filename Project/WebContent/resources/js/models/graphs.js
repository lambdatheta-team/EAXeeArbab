function graphRelationshipsToggle() {
	// console.log('cc',graphEdges[graph_name.replaceAll(' ', '_')])
	graph1.toggleCells(!graph1.getModel().isVisible(graphEdges[graph_name.replaceAll(' ', '_')][0]), graphEdges[graph_name.replaceAll(' ', '_')], true);
	var encoder = new mxCodec();
	var node = encoder.encode(graph1.getModel());
	var new_xml_str = mxUtils.getXml(node);
	dictionaryXML[graph_name] = new_xml_str;//set key1
	$('#save_button').attr('disabled', false);
	$('.graph_button').attr('disabled', false);
}
function addAndShowOrHideNewEdges(e2){
	let tempEdges = graphEdges[graph_name.replaceAll(' ','_')];
	tempEdges.push(e2)
	graphEdges[graph_name.replaceAll(' ', '_')] = tempEdges;
	if($('#graphRelationshipsToggle').prop("checked")== false){
		graph1.toggleCells($('#graphRelationshipsToggle').prop("checked"), [e2], true);
	}
}
function updateGraph(objectName, x,y,imgSrc){
		
		var newObjectName = objectName;
		var newObjectElement = imgSrc.split('/');
		newObjectElement = newObjectElement[newObjectElement.length-1];
		newObjectElement = newObjectElement.split('.svg');
		newObjectElement = newObjectElement[0].replaceAll('-',' ');
		newObjectElement = capitalizeFirstLetter(newObjectElement);
		newObjectElement = newObjectElement.replaceAll(' ','_')
// 		imageSource = imageSource.replaceAll('.svg','1.svg');
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
				var v2 = graph1.getModel().getCell(cellId);
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
				var allVerticesDrawn = graph1.getChildVertices(parent);
				var style_cell = graph1.getModel().getStyle(allVerticesDrawn[0]);
				let vertex_width = 140;
				let vertex_height = 60;
				if (style_cell == null) {
					style_cell = style;
				}
				if (style_cell.includes('shape=image')) {
					style = style.replaceAll('shape=label', 'shape=image');
					style += ';verticalLabelPosition=bottom;verticalAlign=top';
					vertex_width = 50;
					vertex_height = 40;
				}
	  		var v1 = graph1.insertVertex(parent, null, objectName.split(" ").join("\n") , x, y, vertex_width, vertex_height, style);
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
				 			$.each(data, function(i, val){
									if(i=="newToExisting" && val.length>0){
										$.each(val, function(i, val1){
											var relType = val1;
											var relStyle = getRelationshipStyle(relType);
											var e2 = graph1.insertEdge(parent, null, relType , v1, v2,relStyle);
											addAndShowOrHideNewEdges(e2);
										});
									}
									else if(i=="existingToNew" && val.length>0){
										$.each(val, function(i, val1){
											var relType = val1;
											var relStyle = getRelationshipStyle(relType);
											var e2 = graph1.insertEdge(parent, null, relType , v2, v1,relStyle);
											addAndShowOrHideNewEdges(e2);
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
				var parent = graph1.getDefaultParent();
				var node = encoder.encode(graph1.getModel());
				var new_xml_str = mxUtils.getXml(node);
				dictionaryXML[graph_name.replaceAll(' ', '_')] = new_xml_str;//set key1
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

function save_graph() {
	$("#save_button").prop('disabled', true);
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
	$.ajax({
		url: "getGraphLastDate",
		data:{'graphID':openedGraphID},
		success: function(result){
			last_time_updated = result.slice(0, 19);
			
			if(last_time_updated === dictionaryGraphDates[openedGraphID]){
				
				let getcurrentDate = new Date();
				let gethour = getcurrentDate.getHours();
				let getMinute = getcurrentDate.getMinutes();
				if(getMinute < 10){
					getMinute = "0"+getMinute;
				}
				let getSecond = getcurrentDate.getSeconds();
				getcurrentDate.setUTCHours(gethour, getMinute, getSecond);
				last_time_updated = getcurrentDate.toISOString().slice(0, 19).replace('T', ' ');
				
				dictionaryGraphDates[openedGraphID] = last_time_updated;
				var encoder = new mxCodec();
				var parent = graph1.getDefaultParent();
				var node = encoder.encode(graph1.getModel());
				
				var xml_str = mxUtils.getXml(node);
				var forSplit = xml_str.split('mxCell id="')
				var last_element = forSplit.length-1
				
				$.ajax({
					url: "save_graph",
					data:{'graph_json':xml_str,'graphname':'ssf','graphID':openedGraphID,'last_time_updated':last_time_updated},
					type: "POST",
					success: function(result){
					$(".alert_message").html('<div class="alert alert-success" role="alert">Graph has been saved!</div>');
					alert_message_function();
					/* $("#save_button").prop('disabled', true); */
					$(".graph_button").prop('disabled', false);
					graphSaveButton[graph_name] = true;
					refreshTree();
					}
				});
			}else{
				//alert("Another User Updated This File Please Refresh the tree!!")
				$(".alert_message").html('<div class="alert alert-danger" role="alert">Another User Updated This File Please Refresh the tree!!</div>');
		    	alert_message_function();
			    	saveAsGraphAfterAnotherUserEdited();
			}
		},
        error: function(data){ 
        	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
	    	alert_message_function(); 
        }
	});
// 		refreshTree(); getGraphNames();
	}
	else{
    	$(".alert_message").html('<div class="alert alert-danger" role="alert">File Not Selected.</div>');
    	alert_message_function();
	}
}

function saveAsGraphAfterAnotherUserEdited(){
	
	$(function () {
	    var dialog, form,
	        dialog = $("#dialog-form-diagram-save-as").dialog({
	            autoOpen: false,
	            height: 400,
	            width: 350,
	            modal: true,
	            buttons: {
	                "Save As": function saveAsDiagramIfAnotherUserUpdateTheForm() {
						$.ajax({
							url: "getGraphCompanyNameModelName",
							data:{
								'graphID' :openedGraphID
							},
							success: function(res){
								
								var companyName = res[0];
								var diagramName = res[1];
								var id 			= res[2];
								var folderId 	= res[3];
								
								var encoder = new mxCodec();
								var parent = graph1.getDefaultParent();
								var node = encoder.encode(graph1.getModel());
								
								var xml_str = mxUtils.getXml(node);
								
								createNewModelFile(companyName, folderId, id, xml_str, "SaveAsFromDialog")
								dialog.dialog("close");
							},
							error: function(data){ 
								$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
								alert_message_function(); 
							}
						});
	                    $(".alert_message").html(`<div class="alert alert-success" role="alert">Saved</div>`);
	                    alert_message_function();

	                },
	                "Cancel": function () {
//	                    $(".alert_message").html(`<div class="alert alert-success" role="alert">dummy cancell</div>`);
//	                    alert_message_function();
	                    dialog.dialog("close");
	                }
	            },
	            close: function () {
	                form[0].reset();
	            }
	        });
	    form = dialog.find("form").on("submit", function (event) {
	        event.preventDefault();
	        saveAsDiagramIfAnotherUserUpdateTheForm();
	    });
	    dialog.dialog("open");
	});  
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

function getDBlist(graphName_1,id,isGraphUpdate, folderName){
	isDiagramFiltered = false;
	hideDiagramFilterItemsInTheStickyHeader()
	if(allExistElementInHistoryTab.includes(graphName_1.replaceAll(" ","---")) == false){
		allExistElementInHistoryTab.push(graphName_1.replaceAll(" ","---"))
	}	
	loader_image_body()
	$(".loader").show();
	$("#paleteDiv").show();
	$("#save_graph_as_button").show();
	$("#save-as-button-nav").hide();
	$("#chart").css("display", "none");
	if(isGraphUpdate==false){
    	  graph1.setEnabled(false);
    	  document.getElementById("palete").style.pointerEvents = "none";
    	  $("#save_button").remove();
    	  $("#save_graph_as_button").remove();
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
				$(".graph_button").prop('disabled', false);
				graphSaveButton[graph_name] = true;
				graph_name=graphName_1
				var graphExists = false;
				openedGraphID = id;
				$("#save_button").show();
				$("#save_graph_as_button").show();
				$(".graph_button").show();
				$(".nav_button").hide();
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
				 		previousDiagramDrawn = xml;
						// console.log("openDiagram:")
						// console.log(xml)
				 		xmlDoc = $.parseXML(xml),
						$xml = $(xmlDoc),
						$intRate = $xml.find("mxCell");
						$intRate.each(function(index, element) {
							if(element.attributes["value"]) {

								var cellElementName = element.attributes["style"].value;
								if(!cellElementName.startsWith('edgeStyle')){
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
										}
									},
									async: false
								});
							}
								
							}
							if(index==$intRate.length-1){
								if(nonExistingElements.length != 0){
									nonExistingElementsFunc(nonExistingElements);	
								}
							}
						});
							$.each(allDivIds, function(i, val){
								$( "#"+val+"11" ).css("background", "");
							});
							$.each( dictionaryXML, function( key, value ) {
						  		if(key==graphName_1.replaceAll(" ","_")){
						  			graphXML = value;
									graphExists = true;
						  		}
						  		else if(key==graphName_1.replaceAll(" ","---")){
						  			graphXML = value;
									graphExists = true;
						  		}
						  		else{
									$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
						  		}
							});
							if(graphExists!=true){
								$("#historyList").append('<div id="'+graphName_1.replaceAll(' ','_')+'11" class="column gh'+id+'"><div style="display:inline-block"><span class="close_image '+folderName+'" onclick="closeModelDiv(\''+graphName_1.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\',\''+id+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImage.svg"><br/>'+graphName_1+'</a></div></div>');
								//$("#historyList").append('<a class="dropdown-item" href="#" onclick="drawGraphFromHistory(\''+graphName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>">'+graphName_1+'</a>');
								$("#history_tab").css("display", "flex")
								dictionaryXML[graphName_1.replaceAll(' ','_')] = xml;
							}
							else{
							}
							let edgesHiddenOrVisible =  !result.includes("visible=\"0\"");
							result = result.replaceAll("visible=\"0\"","");
							$("#graphRelationshipsToggle").prop('checked', edgesHiddenOrVisible);
							
							numItems = $('.column').length;
							$(".history_page_no").html(numItems)
							$( "#"+graphName_1.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
							currentWindowID = graphName_1.replaceAll(' ','_')+"11";
							var diagram = mxUtils.parseXml(result);
						    var codec = new mxCodec(diagram);
						    codec.decode(diagram.documentElement, graph1.getModel());
						    
						    graph1.setEnabled(true);
						    document.getElementById("palete").style.pointerEvents = "all";
						    
						    //// hiding or showing relationship arrows
						    let parent = graph1.getDefaultParent();
							let edges = graph1.getChildEdges(parent);
							graphEdges[graphName_1.replaceAll(' ','_')] = edges;
							graph1.toggleCells(edgesHiddenOrVisible, edges, true);
						},
						complete: function(result){
							$(".loader").hide()
							$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
							$("body").css("pointer-events", "initial");							
						},
				        error: function(data){
// 				        	$(".alert_message").html('<div class="alert alert-danger" role="alert">Someone Changed The File Name. Please Refresh the tree!!</div>');
				        	$(".alert_message").html('<div class="alert alert-danger" role="alert">An error occured</div>');
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
	hideDiagramFilterItemsInTheStickyHeader()
	resetCompleteDiagramFilterModalElements()
	$('#chart').hide();
	var button_prop = graphSaveButton[graphName];
	
	$("#save_button").prop('disabled', button_prop);
	$(".graph_button").prop('disabled', button_prop);
	graph_name = graphName;
	openedGraphID = id;
	$("#save_button").show();
	$("#save_graph_as_button").show();
	$(".graph_button").show();
	$(".nav_button").hide();
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
  		if(key==graphName.replaceAll(" ","_")){
  			graphXML = value;
  			previousDiagramDrawn = graphXML;
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
			currentWindowID = key.replaceAll(' ','_')+"11";
  		}
  		else{
			$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
  		}
	});
	let edgesHiddenOrVisible =  !graphXML.includes("visible=\"0\"");
	graphXML = graphXML.replaceAll("visible=\"0\"","");
	$("#graphRelationshipsToggle").prop('checked', edgesHiddenOrVisible);
	
	
	var diagram = mxUtils.parseXml(graphXML);
    var codec = new mxCodec(diagram);
    codec.decode(diagram.documentElement, graph1.getModel());
    //// hiding or showing relationship arrows
	let parent = graph1.getDefaultParent();
	let edges = graph1.getChildEdges(parent);
	graphEdges[graph_name.replaceAll(' ', '_')] = edges;
	graph1.toggleCells(edgesHiddenOrVisible, edges, true);
	modelsView();
	$("#element_title").show().text(graphName);
	$('#element_title').prop('title', graphName);
	
	$("#filterDiagram").prop('disabled', false);
	
	
	
	////// show elements/attriubtes name in the header start //////////////////
	let filteredDiagramInJSON = openFilteredDiagramFromHistoryDictionary[id];
	
	if( filteredDiagramInJSON != undefined){

		let filteredObjs = Object.keys(filteredDiagramInJSON)
		
		var diagramFilterStickyHeader = document.getElementById("diagramFilterStickyHeader");
		var stickyHeaderChild = ""
		
		document.getElementById("diagramFilterStickyHeaderParentDiv").style.display = "flex"
		diagramFilterStickyHeader.innerHTML = "";
		
		filteredObjs.map((item, index)=>{
			stickyHeaderChild += `
			<div class="diagramFilterCircleParentDiv">
				<span class="circle" style=background-color:${filteredDiagramInJSON[item].color}></span>
				<span class="circleText">${item}</span>
			</div>`
		})
		
		diagramFilterStickyHeader.innerHTML = stickyHeaderChild
		
		
		$("#save_button").css("display", "none");
		$("#save_graph_as_button").css("display", "none");
		$("#filterDiagram").css("display", "none");
		$("#change-shape").css("display", "none");
		$("#showHideRelationships").css("display", "none");
		
		graph1.setEnabled(false);
		document.getElementById("palete").style.pointerEvents = "none";
		
		
		$("#fit-screen").prop('disabled', false);
		$("#zoom-out").prop('disabled', false);
		$("#zoom-in").prop('disabled', false);
		
	}else{
		graph1.setEnabled(true);
		document.getElementById("palete").style.pointerEvents = "all";
	}
	
	////// show elements/attriubtes name in the header end //////////////////
	$("#palete").css("display", "block");
	$("#paleteDiv").css("display", "block");
	
	
	
}

function createNewGraph(){
	$("#save_button").show();
	$(".graph_button").show();
	$(".nav_button").hide();
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

function returnRelVal(fwd_OR_bwd,relVal,sourceObjectName,targetObjectName,relIndex){
	var sourceValue = targetGlobal.value.replaceAll('\n',' ');
	var targetValue = sourceGlobal.value.replaceAll('\n',' ');
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
			console.log(data)
			relationPossible = data;
       },
			async: false
	});
	if(relationPossible==false){
		$(".alert_message").html('<div class="alert alert-danger" role="alert">Relation limit exceded</div>');
		alert_message_function();
	}else{
	/////
		var parent = graph1.getDefaultParent();
		var style = '';
		var sourceValue = "";
		var targetValue = "";
		var orthogonalEdge ="edgeStyle=orthogonalEdgeStyle";
		var forwardOrBackward = '';
	// 	var orthogonalEdge =""; 
		style = getRelationshipStyle(relVal);
		
		var edgeSource = '';
		var edgeTarget = '';
		
		//////////////////
		if(fwd_OR_bwd=='forward'){
			sourceValue = sourceGlobal.value.replaceAll('\n',' ');
			targetValue = targetGlobal.value.replaceAll('\n',' ');
			forwardOrBackward = 'forward';
			edgeSource = sourceGlobal;
			edgeTarget = targetGlobal;
		}else{
			var temp = '';
			temp = sourceObjectName;
			sourceObjectName = targetObjectName;
			targetObjectName = temp;
			sourceValue = targetGlobal.value.replaceAll('\n',' ');
			targetValue = sourceGlobal.value.replaceAll('\n',' ');
			forwardOrBackward = 'backward';
			edgeSource = targetGlobal;
			edgeTarget = sourceGlobal;
		}
		let relationNotAlreadyCreated = false;
		let alreadyCreatedNotExistInGraph = true;
		$.ajax({
  			url: "insertRelationFromGraph",
  			data:{	'sourceValue':sourceValue,
					'targetValue':targetValue,
					'sourceElementName':sourceObjectName,
					'targetElementName':targetObjectName,
					'relVal':relVal,
					'forwardOrBackward':forwardOrBackward,
					'relIndex' :relIndex
				 },
  			type: "POST",
  			success: function(result){
  				if(result == 0){
  					//alert("Relation was already created");
  					$(".alert_message").html('<div class="alert alert-secondary" role="alert">Relation was already created</div>');
  					
 				 	$.each(edgeSource.edges, function (ii, val){
 				 		let temp_target = val.target.value.replaceAll('\n',' ');
 	  					if(temp_target==edgeTarget.value.replaceAll('\n',' ')){
 	  						alreadyCreatedNotExistInGraph = false;
 	  					}
 	 				});
  					
  					alert_message_function();
  				}else{
  					relationNotAlreadyCreated = true;
  				}
  			},
	        async: false
		});
		var e2;
		if(alreadyCreatedNotExistInGraph && !relationNotAlreadyCreated){
			e2 = graph1.insertEdge(parent, null, relVal , edgeSource, edgeTarget,style);
		}
		var parent = graph1.getDefaultParent();
		if(relationNotAlreadyCreated){
			e2 = graph1.insertEdge(parent, null, relVal , edgeSource, edgeTarget,style);
			
			var encoder = new mxCodec();
			var node = encoder.encode(graph1.getModel());
			var new_xml_str = mxUtils.getXml(node);
			var get_old_xml = dictionaryXML;							
			dictionaryXML[graph_name] = new_xml_str;//set key1
			var updated_value = dictionaryXML[graph_name];//get key1
			 $('#save_button').attr('disabled', false);
			 $('.graph_button').attr('disabled', false);
			 graphSaveButton[graph_name] = false;
		}
		addAndShowOrHideNewEdges(e2);
//		let tempEdges = graphEdges[graph_name.replaceAll(' ','_')];
//		tempEdges.push(e2)
//		graphEdges[graph_name.replaceAll(' ','_')] = tempEdges;
	}
	/////
}
function changeVertexShape() {
	graph1.getView().updateStyle = true;
	var previous = graph1.model.getStyle;
	var parent = graph1.getDefaultParent();
	var allVerticesDrawn = graph1.getChildVertices(parent);

	$.each(allVerticesDrawn, function(key, value) {

		let cell = value;

		var style_cell = graph1.getModel().getStyle(cell);
		if (style_cell.includes('shape=label')) {
			style_cell = style_cell.replaceAll('shape=label', 'shape=image');
			style_cell += ';verticalLabelPosition=bottom;verticalAlign=top';
			var geo = graph1.getCellGeometry(cell);

			if (geo != null) {
				geo = geo.clone();
				geo.width = 50;
				geo.height = 40;

				graph1.getModel().setGeometry(cell, geo);
			}

		}
		else {
			style_cell = style_cell.replaceAll('shape=image', 'shape=label');
			style_cell = style_cell.replaceAll('verticalLabelPosition=bottom', '');
			style_cell = style_cell.replaceAll('verticalAlign=top', '');
			var geo = graph1.getCellGeometry(cell);

			if (geo != null) {
				geo = geo.clone();
				geo.width = 140;
				geo.height = 60;

				graph1.getModel().setGeometry(cell, geo);
			}
		}
		graph1.setCellStyle(style_cell, [cell]);
	});
			$("#save_button").prop('disabled', false);
}
