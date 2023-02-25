//var navigationGraph;
var imageSourcePrefix='';
var openedCellsArray = [];

var openedNavigationID  = '';
var dictionaryNavigationDates = {};
var navigationSaveButton = {};
var navigation_name = '';
var createNewNavigation = false;
//function createNavigation() {
////	$(".alert_message").html(`<div class="alert alert-success" role="alert">${Navigation_Created_Successfully}</div>`);
////	alert_message_function();
////	refreshTree();
////	getGraphNames();
////	callNavigationGraph();
////	navigationViewjs();
//}
function navigationCellDraw(objectName, x, y, imgSrc) {
	var parent = navigationGraph.getDefaultParent();
	var vertices = navigationGraph.getChildVertices(parent);
	if(vertices.length==0){
		console.log('vertices',vertices.length)
		$("#save-button-nav").prop('disabled', false);
		var newObjectName = objectName;
		var newObjectElement = imgSrc.split('/');
		let temp = imgSrc.split('/');
		temp.pop();
		imageSourcePrefix = temp.join('/');
		newObjectElement = newObjectElement[newObjectElement.length - 1];
		newObjectElement = newObjectElement.split('.svg');
		newObjectElement = newObjectElement[0].replaceAll('-', ' ');
		newObjectElement = capitalizeFirstLetter(newObjectElement);
		newObjectElement = newObjectElement.replaceAll(' ', '_')
		var parent = navigationGraph.getDefaultParent();
		objectName = objectName.split(' ').join('\n');
		var objectExists = false;
		var style = 'shape=image;strokeColor=' + stColor + ';fillColor=' + color + ';rounded=1;shadow=0;strokeWidth=0;image=' + imageSource + ';imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;';
		//var style = 'shape=label;image='+imageSource+';imageHeight=14;imageWidth=22;strokeColor='+stColor+';fillColor='+color+';rounded=1;shadow=1;strokeWidth=2;imageAlign=right;imageVerticalAlign=top;';
		
	// Moves the given cell to the center
		var cx = navigationGraph.container.clientWidth / 2-100;
		var cy = navigationGraph.container.clientHeight / 2;
		//var geo = navigationGraph.getModel().getGeometry(v1);
		var v1 = navigationGraph.insertVertex(parent, null, objectName, cx, cy, 50, 40, style);
		openedCellsArray.push(v1.id);
	//	if (geo != null)
	//	{
	//		geo = geo.clone();
	//		geo.x = cx + geo.width / 2;
	//		geo.y = cy + geo.height / 2;
	
	//		navigationGraph.getModel().setGeometry(v1, geo);
	//	}	
	
		var vertices = drawRelationsObject(newObjectElement,objectName,parent,v1,cx,cy,[]);
	
	
	// Arranges the response in a circle
		var cellCount = vertices.length;
		var phi = 2 * Math.PI / cellCount;
		var r = Math.min(navigationGraph.container.clientWidth / 5,
				navigationGraph.container.clientHeight / 5);
		
		for (var i = 0; i < cellCount; i++)
		{
			var geo = navigationGraph.getModel().getGeometry(vertices[i]);
			
			if (geo != null)
			{
				geo = geo.clone();
				if(cellCount > 8 ){
					
					if(i%2 == 0){
						geo.x += r * Math.cos(i * phi);
						geo.y += r * Math.sin(i * phi);
					}
					else{
						
						geo.x += 2*r * Math.cos(i * phi);
						geo.y += 2*r * Math.sin(i * phi);
					}
	//				navigationGraph.getModel().setGeometry(vertices[i], geo);
				}
				else{
					
				geo.x += r * Math.cos(i * phi);
				geo.y += r * Math.sin(i * phi);
				
				}
			navigationGraph.getModel().setGeometry(vertices[i], geo);
			}
		}
		console.log("cellLength",cellCount);
	
		var keyHandler = new mxKeyHandler(navigationGraph);
		keyHandler.bindKey(46, function(evt) {
			if (navigationGraph.isEnabled()) {
				navigationGraph.removeCells();
			}
		});
		navigationGraph.getModel().addListener(mxEvent.UNDO, listener);
		navigationGraph.getView().addListener(mxEvent.UNDO, listener);
		function KeyPress(e) {
			var evtobj = window.event ? event : e
			if (evtobj.keyCode == 90 && evtobj.ctrlKey)
				undoManager.undo();
			document.onkeydown = KeyPress;
		}
	}else{
		$(".alert_message").html('<div class="alert alert-warning" role="alert">'+drag_allowed_only_on_empty_canvas+'</div>');
  		alert_message_function();
	}

}
function drawRelationsObject(elementName,objectName,parent,v1,cx,cy,allConnectedEdgesObjects){
	parent = navigationGraph.getDefaultParent();
	let vertices = [];
	var parent = navigationGraph.getDefaultParent();
	var allVerticesDrawn = navigationGraph.getChildVertices(parent);
	let allVerticesDrawn_Names = [];
	console.log('allVerticesDrawn',allVerticesDrawn)
	$.each(allVerticesDrawn, function(i, val){
		allVerticesDrawn_Names.push(val.value);
	});
	console.log('allVerticesDrawn_Names',allVerticesDrawn_Names)
	$.ajax({
		url: "getRelationsObjects", // url: "/findTables?dbName="+db_name,
		//type: "GET",
		data: {
			'elementName': elementName,
			'objectName': objectName.replaceAll('\n', ' '),
		},
		success: function(data) {
			console.log('data',data)
			let forwardRelations = data['forward'];
			let backwardRelations = data['backward'];
			let forwardMapLength = Object.keys(forwardRelations).length;
			let backwardMapLength = Object.keys(backwardRelations).length;
//			var cx = navigationGraph.container.clientWidth / 2-100;
//			var cy = navigationGraph.container.clientHeight / 2;
			for(let i=0;i<forwardMapLength;i++){
				if(forwardRelations[i]['sourceAttValue'] == objectName.replaceAll('\n', ' ') || allConnectedEdgesObjects.includes(forwardRelations[i]['sourceAttValue']) ){
					continue;
				}
				let imageSourceInsideLoop = imageSourcePrefix+'/'+forwardRelations[i]['targetRelElement'].toLowerCase().replaceAll('_','-')+'.svg';
				let style1 = 'shape=image;strokeColor=' + stColor + ';fillColor=' + getVertexColor(forwardRelations[i]['targetRelElement']) + ';rounded=1;shadow=0;strokeWidth=0;image=' + imageSourceInsideLoop + ';imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;';
//				var v_temp = navigationGraph.insertVertex(parent, null, forwardRelations[i]['sourceAttValue'], cx, cy, 100, 40, style1);
//				var relType = forwardRelations[i]['relationshipType'];
//				var relStyle = getRelationshipStyleNavigation(forwardRelations[i]['relationshipType']);
//				if(allVerticesDrawn_Names.includes(forwardRelations[i]['sourceAttValue'])){
//					$.each(allVerticesDrawn, function(j, val){
////						allVerticesDrawn_Names.push(val.value);
//						if(val.value==forwardRelations[i]['sourceAttValue']){
//							console.log('val.value',val.value)
//							var e2 = navigationGraph.insertEdge(parent, null, relType , val, v_temp,relStyle);
//						}
//					});
//				}else{
//					var e2 = navigationGraph.insertEdge(parent, null, relType , v1, v_temp,relStyle);
//				}
				
				///////////////////////
				
				
//				var v_temp = navigationGraph.insertVertex(parent, null, forwardRelations[i]['sourceAttValue'], cx, cy, 100, 40, style1);
				var relType = forwardRelations[i]['relationshipType'];
				var relStyle = getRelationshipStyleNavigation(forwardRelations[i]['relationshipType']);
				var v_temp;
				if(allVerticesDrawn_Names.includes(forwardRelations[i]['sourceAttValue'])){
					$.each(allVerticesDrawn, function(j, val){
//						allVerticesDrawn_Names.push(val.value);
						if(val.value==forwardRelations[i]['sourceAttValue']){
							console.log('val.value',val.value)
							v_temp = val;
						}
					});
				}else{
					v_temp = navigationGraph.insertVertex(parent, null, forwardRelations[i]['sourceAttValue'], cx, cy, 50, 40, style1);
				}
				
				var e2 = navigationGraph.insertEdge(parent, null, relType , v1, v_temp,relStyle);
				/////////////////////////
				
				
//				var e2 = navigationGraph.insertEdge(parent, null, relType , v1, v_temp,relStyle);
				vertices.push(v_temp);
			}
			for(let i=0;i<backwardMapLength;i++){
				if(backwardRelations[i]['targetAttValue'] == objectName.replaceAll('\n', ' ') || allConnectedEdgesObjects.includes(backwardRelations[i]['targetAttValue']) ){
					continue;
				}
				let imageSourceInsideLoop = imageSourcePrefix+'/'+backwardRelations[i]['sourceRelElement'].toLowerCase().replaceAll('_','-')+'.svg';
				let style1 = 'shape=image;strokeColor=' + stColor + ';fillColor=' + getVertexColor(backwardRelations[i]['sourceRelElement']) + ';rounded=1;shadow=0;strokeWidth=0;image=' + imageSourceInsideLoop + ';imageHeight=22;imageWidth=22;imageAlign=right;imageVerticalAlign=top;whiteSpace=wrap;overflow=hidden;verticalLabelPosition=bottom;verticalAlign=top;';
				var relType = backwardRelations[i]['relationshipType'];
				var relStyle = getRelationshipStyleNavigation(backwardRelations[i]['relationshipType']);
				
				var v_temp;
				if(allVerticesDrawn_Names.includes(backwardRelations[i]['targetAttValue'])){
					$.each(allVerticesDrawn, function(j, val){
//						allVerticesDrawn_Names.push(val.value);
						if(val.value==backwardRelations[i]['targetAttValue']){
							console.log('val.value',val.value)
							v_temp = val;
						}
					});
				}else{
					v_temp = navigationGraph.insertVertex(parent, null, backwardRelations[i]['targetAttValue'], cx, cy, 50, 40, style1);
				}
				
//				var v_temp = navigationGraph.insertVertex(parent, null, backwardRelations[i]['targetAttValue'], cx, cy, 100, 40, style1);
				var e2 = navigationGraph.insertEdge(parent, null, relType , v1, v_temp,relStyle);
				vertices.push(v_temp);
			}
					
		},
		async: false
	});
	return vertices;
}

function getRelationshipStyleNavigation(relVal){
	var orthogonalEdge ="";
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

function getAllConnectedCells(cellEdges){
	let index = cellEdges.length;
	let allConnectedCells = [];
	for(var i=0;i<index;i++){
		allConnectedCells.push(cellEdges[i].source.value.replaceAll('\n', ' '));
		allConnectedCells.push(cellEdges[i].target.value.replaceAll('\n', ' '));
	}
	return allConnectedCells;
}
function getParentDistance(cellEdges,cx,cy){
	let index = cellEdges.length;
	let parentCellX = 0;
	let parentCellY = 0;
	let diffrences = {};
//	for(var i=0;i<index;i++){
		let parentCell = cellEdges[0].source;
		parentCellX = parentCell.geometry.x;
		parentCellY = parentCell.geometry.y;
//	}
	diffrences['parentCellX'] = parentCellX-cx;
	diffrences['parentCellY'] = parentCellY-cy;
	return diffrences;
}

function rearrangeConnectedCells(cellEdges){
	let index = cellEdges.length;
//	let parentCellEdges = cellEdges.source.edges;
//	console.log('cellEdges',parentCellEdges);
	for(var i=0;i<index;i++){
//		allConnectedCells.push(cellEdges[i].source.value.replaceAll('\n', ' '));
//		allConnectedCells.push(cellEdges[i].target.value.replaceAll('\n', ' '));
		let parentCell = cellEdges[i].source;
		let parentCellX = parentCell.geometry.x;
		let parentCellY = parentCell.geometry.y;
		console.log('parentCellX',parentCellX)
		console.log('parentCellY',parentCellY)
		let parentCellEdges = parentCell.edges;
		let index_2 = parentCellEdges.length;
		var phi = 2 * Math.PI / index_2;
		var r = Math.min(navigationGraph.container.clientWidth / 3,navigationGraph.container.clientHeight / 3);
		for(let j = 0; j<index_2; j++){
			let childCell = parentCellEdges[j].target;
			let geo = navigationGraph.getModel().getGeometry(childCell);
				if (geo != null)
				{
					geo = geo.clone();
					geo.x = (parentCellX+geo.x)/2;
					geo.y = (parentCellY+geo.y)/2;
//					geo.x += r * Math.sin(i * phi);
//					geo.y += r * Math.cos(i * phi);
					navigationGraph.getModel().setGeometry(childCell, geo);
				}
		}
	}
}

//function cellMoved(initial_x,initial_y,cell){
//	let CellX = cell.geometry.x;
//	let CellY = cell.geometry.y;
//	$("#save-button-nav").prop('disabled', false);
//	let cellEdges = cell.edges;
//	let difference_x = initial_x-CellX;
//	let difference_y = initial_y-CellY;
//	console.log('cell: ',cell)
////	console.log('initial_x: ',initial_x)
////	console.log('initial_y: ',initial_y)
////	console.log('CellX: ',CellX)
////	console.log('CellY: ',CellY)
//	let index = cellEdges.length;
//	let allConnectedCells = [];
//	for(var i=0;i<index;i++){
////		allConnectedCells.push(cellEdges[i].source.value.replaceAll('\n', ' '));
////		allConnectedCells.push(cellEdges[i].target.value.replaceAll('\n', ' '));
//		let currentIndexCell = cellEdges[i].target;
//		
//		let currentIndexCell_X = currentIndexCell.geometry.x;
//		let currentIndexCell_Y = currentIndexCell.geometry.y;
//		
//		var geo = navigationGraph.getModel().getGeometry(currentIndexCell);
//		if (geo != null) {
//			geo = geo.clone();
//			geo.x = currentIndexCell_X - difference_x;
//			geo.y = currentIndexCell_Y - difference_y;
//
//			navigationGraph.getModel().setGeometry(currentIndexCell, geo);
//		}
//	}
////	console.log('allConnectedCells',allConnectedCells)
//}

function callNavigationGraph() {
	if (!mxClient.isBrowserSupported()) {
		mxUtils.error('Browser is not supported!', 200, false);
	}
	else {
//		navigationView = true;
		$("#navigationId").append('<div id="navigationGraphContainer" style="overflow:overlay; cursor:grab;"></div>');
//		$(".nav_button").show();
		$(".graph_button").hide();
		var container = document.getElementById('navigationGraphContainer');
		navigationGraph = new mxGraph(container);
		var parent = navigationGraph.getDefaultParent();
		// Changes some default colors
		mxConstants.HANDLE_FILLCOLOR = '#99ccff';
		mxConstants.HANDLE_STROKECOLOR = '#0088cf';
		mxConstants.VERTEX_SELECTION_COLOR = '#00a8ff';

		navigationGraph.setTooltips(true);
		// Enables rubberband selection
		new mxRubberband(navigationGraph);
		style = navigationGraph.getStylesheet().getDefaultEdgeStyle();
		style['strokeColor'] = '#000000';
		style['fontColor'] = '#000000';
		style['fontStyle'] = '0';
		style['fontStyle'] = '0';
		style['startSize'] = '8';
		style['endSize'] = '8';

		// Enables guides
		mxGraphHandler.prototype.guidesEnabled = true;
		mxEdgeHandler.prototype.snapToTerminals = true;

		var layout = new mxHierarchicalLayout(navigationGraph);
		layout.execute(navigationGraph.getDefaultParent());


		navigationGraph.popupMenuHandler.autoExpand = true;
		navigationGraph.setAllowDanglingEdges(false);
		navigationGraph.setDisconnectOnMove(false);

		// Workaround for Internet Explorer ignoring certain styles

		if (mxClient.IS_QUIRKS) {
			document.body.style.overflow = 'hidden';
			new mxDivResizer(tbContainer);
			new mxDivResizer(container);
		}
		navigationGraph.dropEnabled = true;
//		mxDragSource.prototype.dragEnter = function(navigationGraph, evt) {
//			mxDragSource.prototype.drop = function(navigationGraph, evt, dropTarget, x, y) {
//				var parent = navigationGraph.getDefaultParent();
//				//				function createNewVertex(UniqueObjectName) {
//				//					var vertex = navigationGraph.insertVertex(parent, null, UniqueObjectName.split(" ").join("\n"), x, y, 140, 60, style);
//				//				}
//			}
//		}

		// Installs a handler for double click events in the navigationGraph
		// that shows an alert box

	
//		navigationGraph.addListener(mxEvent.CLICK, function(sender, evt) {
//			var cell = evt.getProperty("cell"); // cell may be null
//			if (cell != null) {
//				let initial_x = cell.geometry.x;
//				let initial_y = cell.geometry.y;
//				console.log("initLocCx", initial_x);
//				console.log("initLocCy", initial_y);
//				navigationGraph.addListener(mxEvent.CELLS_MOVED, function(sender, evt) {
//					var cell = navigationGraph.getSelectionCell();
//					cellMoved(initial_x,initial_y,cell);
//				});
//			}
//		});

		/// cell with edges moved start
		/*
		mxPanningHandler.prototype.mouseDown = function(	sender,me	){
			var cell = navigationGraph.getSelectionCell();
			if (cell != null)
			{
				let initial_x = cell.geometry.x;
				let initial_y = cell.geometry.y;
				navigationGraph.addListener(mxEvent.CELLS_MOVED, function(sender, evt) {
					cellMoved(initial_x,initial_y,cell);
				});
			}
		}
		*/
		/// cell with edges moved end

		navigationGraph.addListener(mxEvent.CELLS_MOVED, function(sender, evt) {
			$("#save-button-nav").prop('disabled', false);
			let cell = navigationGraph.getSelectionCell();
			console.log('cell',cell);
			let initial_x = cell.geometry.x;
			let initial_y = cell.geometry.y;
			cellMoved(initial_x,initial_y,cell);
		});
		
		function cellMoved(initial_x,initial_y,cell){
			console.log(initial_x,initial_y,cell)
			let cellEdges = cell.edges;
			if(cellEdges){
				let index = cellEdges.length;
				var phi = 2 * Math.PI / index;
				var r = Math.min(navigationGraph.container.clientWidth / 5,
						navigationGraph.container.clientHeight / 5);
				for (var i = 0; i < index; i++) {
					let currentIndexCell = cellEdges[i].target;
	
					var geo = navigationGraph.getModel().getGeometry(currentIndexCell);
					if (geo != null) {
						geo = geo.clone();
						geo.x = initial_x;
						geo.y = initial_y;
						navigationGraph.getModel().setGeometry(currentIndexCell, geo);
					}
					var geo1 = navigationGraph.getModel().getGeometry(currentIndexCell);
					if (index > 8) {
						if (i % 2 == 0) {
							geo1.x += r * Math.cos(i * phi);
							geo1.y += r * Math.sin(i * phi);
						}
						else {
	
							geo1.x += 2 * r * Math.cos(i * phi);
							geo1.y += 2 * r * Math.sin(i * phi);
						}
						//				navigationGraph.getModel().setGeometry(vertices[i], geo);
					}
					else {
	
						geo.x += r * Math.cos(i * phi);
						geo.y += r * Math.sin(i * phi);
	
					}
					navigationGraph.getModel().setGeometry(currentIndexCell, geo1);
				}
			}
		}
		
//		var selectionCell = navigationGraph.getSelectionCell();
		navigationGraph.addListener(mxEvent.DOUBLE_CLICK, function(sender, evt) {
			var cell = evt.getProperty('cell');
			console.log('cell',cell.edges)
			let allConnectedEdgesObjects = getAllConnectedCells(cell.edges);
			if (cell != null && openedCellsArray.includes(cell.id) == false)
			{
				let cx = cell.geometry.x;
				let cy = cell.geometry.y;
				let diffrences = getParentDistance(cell.edges,cx,cy);
				let xDifference = diffrences['parentCellX'];
				let yDifference = diffrences['parentCellY'];
				var geo = navigationGraph.getModel().getGeometry(cell);
				openedCellsArray.push(cell.id);				
				var elementName = cell.style.split('/');
				elementName = elementName[elementName.length - 1];
				elementName = elementName.split('.svg');
				elementName = elementName[0].split('-').join(' ');
				elementName = capitalizeFirstLetter(elementName);
				let objectName = cell.value;
				let vertices = drawRelationsObject(elementName.replaceAll(' ','_'),objectName,parent,cell,cx-xDifference*1.5,cy-yDifference*1.5,allConnectedEdgesObjects);
				var cellCount = vertices.length;
				var phi = 2 * Math.PI / cellCount;
				var r = Math.min(navigationGraph.container.clientWidth / 5,
						navigationGraph.container.clientHeight / 5);
				if (geo != null && cellCount !=0)
				{
					$("#save-button-nav").prop('disabled', false);
					geo = geo.clone();
					geo.x = cx-xDifference*1.5;
					geo.y = cy-yDifference*1.5;
			
					navigationGraph.getModel().setGeometry(cell, geo);
				}		
				for (var i = 0; i < cellCount; i++)
				{
					let geo = navigationGraph.getModel().getGeometry(vertices[i]);
					if (geo != null)
					{
						geo = geo.clone();
						
						if(cellCount > 8 ){
							
							if(i%2 == 0){
								
								geo.x += r * Math.cos(i * phi);
								geo.y += r * Math.sin(i * phi);
								
							}
							else{
								
								geo.x += 2*r * Math.cos(i * phi);
								geo.y += 2*r * Math.sin(i * phi);
							}
							navigationGraph.getModel().setGeometry(vertices[i], geo);
						}
						else{
						
						geo.x += r * Math.cos(i * phi);
						geo.y += r * Math.sin(i * phi);
						navigationGraph.getModel().setGeometry(vertices[i], geo);
							
						}
						
					}
				}
			}
		});

		// Enables new connections in the gr m  

		navigationGraph.setConnectable(true);
		navigationGraph.setDisconnectOnMove(false);
		navigationGraph.htmlLabels = true;
		navigationGraph.centerZoom = true;
		navigationGraph.setResizeContainer(false);
		navigationGraph.setAllowNegativeCoordinates(true);
		navigationGraph.setCellsCloneable(false);
		navigationGraph.setPanning(true);
		navigationGraph.panningHandler.useLeftButtonForPanning = true;
		// Stops editing on enter or escape keypress
		var addVertex = function(mylabel, icon, w, h, style) {
			var vertex = new mxCell(mylabel, new mxGeometry(0, 0, w, h), style);
			vertex.setVertex(true);
			addToolbarItem(navigationGraph, toolbar, vertex, icon);
		};

		var addEdge = function(mylabel, icon, w, h, style) {
			var edge = new mxCell(mylabel, new mxGeometry(0, 0, w, h), style);
			edge.geometry.setTerminalPoint(new mxPoint(50, 150), true);
			edge.geometry.setTerminalPoint(new mxPoint(150, 50), false);
			edge.setEdge(true);
			var funct = function(navigationGraph, evt, cell) {
				navigationGraph.stopEditing(false);
				var pt = navigationGraph.getPointForEvent(evt);
				var edge = navigationGraph.getModel().cloneCell(prototype);
				edge.geometry.x = pt.x;
				edge.geometry.y = pt.y;
				navigationGraph.setSelectionCells(navigationGraph.importCells([edge], 0, 0, cell));
			}
			edge.geometry.relative = true;
			edge.edge = true;
			addToolbarItem(navigationGraph, toolbar, edge, icon);
		}
	// Handles clicks on cells
//		navigationGraph.addListener(mxEvent.CLICK, function(sender, evt)
//		{
//			
//		});
		//// Graph DELETE and UNDO //////// START /////////////
		$('html').keyup(function(e){
	  	    if(e.keyCode == 46) {
	  	    	if (navigationGraph.isEnabled()) {
					navigationGraph.removeCells();
					$("#save-button-nav").prop('disabled', false);
				}
	  	    }
	  	});
		navigationGraph.getModel().addListener(mxEvent.UNDO, listener);
		navigationGraph.getView().addListener(mxEvent.UNDO, listener);

		function KeyPress(e) {
			var evtobj = window.event ? event : e
			if (evtobj.keyCode == 90 && evtobj.ctrlKey)
				undoManager.undo();
			document.onkeydown = KeyPress;
		}
		navigationGraph = navigationGraph;
		return false;
	}
}


	
	function createNewNavigationFile(company_name, folderID, id, graphXML){

		if(graphXML != undefined){
			newGraphXML = graphXML
		}else{
			newGraphXML = '<mxGraphModel> <root><mxCell id="0" /><mxCell id="1" parent="0" /></root></mxGraphModel>';
		}
		
   		$( function() {
		    var dialog, form,
 		    dialog = $( "#dialog-form-navigation" ).dialog({	
		      autoOpen: false,
		      height: 400,
		      width: 350,
		      modal: true,
		      buttons: {
		        [Create]: function addUser(){
		        	var navigationName = $("#navigation_name").val();
//		        	navigationName = navigationName.replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
//					navigationName = navigationName.replace(/[^\w]/gi, '_');
					navigationName = navigationName.replace(/[^\w\u0600-\u06FF\s]/gi,'_')
		        	
		        	if(navigationName){
		        		$.ajax({
		      		      url: "validateNavigationName", // url: "/findTables?dbName="+db_name,
		      		      //type: "GET",
		      		      data: {'navigationName': navigationName},
		      		      //dataType: "text/String"
			      			success: function(data) {
//								console.log("data",data)
			      				if(data==''){
							 		$.ajax({
									      url: "createNewNavigationFile", // url: "/findAttributes?dbName="+db_name,
									      type: "POST",
									      data:{'id':id, 'company_name': company_name,'navigationName':navigationName,'graph_json':newGraphXML},
									      success:function(id) {
									    	  
//									    	 $(".alert_message").html('<div class="alert alert-success" role="alert"><spring:message code="create_model_message"/></div>');
//					      				   	 alert_message_function();
//			 			 			    	 refreshTree();
//			 			 			    	 getGraphNames();
//			 			 			    	 $('#'+folderID).append('<li id="'+modelName+id+'" class="model_list" onclick="getDBlist(\''+modelName+'\',\''+id+'\')\" oncontextmenu="on_context_menu_remove_graph(\''+id+'\',\''+modelName+data+'\',\''+modelName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+modelName+'</li>');
//			 			 			    	 //$('#'+folderID).append('<li id="'+modelName+data+'" class="model_list" onclick="getDBlist(\''+modelName+'\',\''+data+'\')\" oncontextmenu="on_context_menu_remove_graph(\''+data+'\',\''+modelName+data+'\',\''+modelName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+modelName+'</li>');
//									    	 getDBlist(modelName, id);
											 drawNavigationFromDB(navigationName, id);
											$("#element_title").empty();
		        							$("#element_title").show().text(navigationName);
		        							$('#element_title').prop('title', navigationName);
									      }	  	
									}); 
				 			 		dialog.dialog( "close" );
				 			 		$(".alert_message").html(`<div class="alert alert-success" role="alert">${navigation_created_successfully}</div>`);
									alert_message_function();
									refreshTree();
									getGraphNames();
									navigationViewjs();
			      				}
		      					else{
		      				    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+navigation_name_already_exist+' </div>');
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
  				    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+enter_navigation_name+' </div>');
  				    	alert_message_function();
		        	}
		        },
		        [Cancel]: function() {
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
	
function save_navigation() {
	let navigationNameForSaveButton = $("#element_title").html();
	if(navigationNameForSaveButton){
		$.ajax({
			url: "getNavigationLastDate",
			data:{"navigationID":openedNavigationID},
			success: function(result){
				last_time_updated = result.slice(0, 19);
				
				if(last_time_updated === dictionaryNavigationDates[openedNavigationID]){
					
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
					
					dictionaryNavigationDates[openedNavigationID] = last_time_updated;
					var encoder = new mxCodec();
					var parent = navigationGraph.getDefaultParent();
					var node = encoder.encode(navigationGraph.getModel());
					
					var xml_str = mxUtils.getXml(node);
					var forSplit = xml_str.split('mxCell id="')
					var last_element = forSplit.length-1
					dictionaryXML[navigationNameForSaveButton] = xml_str;
					
					$.ajax({
						url: "save_navigation",
						data:{'graph_json':xml_str,'navigationname':'ssf','navigationID':openedNavigationID,'last_time_updated':last_time_updated},
						type: "POST",
						success: function(result){
						$(".alert_message").html('<div class="alert alert-success" role="alert">'+navigation_saved+'</div>');
						alert_message_function();
						$("#save_button").prop('disabled', true);
						$(".graph_button").prop('disabled', false);
						navigationSaveButton[navigation_name] = true;
					}});
				}else{
					//alert("Another User Updated This File Please Refresh the tree!!")
					$(".alert_message").html('<div class="alert alert-danger" role="alert">'+another_user_updated_this_file_please_refresh_the_tree+'</div>');
			    	alert_message_function();
				}
			},
	        error: function(data){ 
	        	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+someone_changed_the_file_name_please_refresh_the_tree+'</div>');
		    	alert_message_function(); 
	        }
		});
		refreshTree(); getGraphNames();
	}
	else{
    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+file_not_selected+'</div>');
    	alert_message_function();
	}
}

function save_as_navigation(){
	$.ajax({
		url: "getNavigationCompanyNameModelName",
		data:{
			'navigationID' :openedNavigationID
		},
		success: function(res){
			if(res[0] == "please save the navigation first"){
				$(".alert_message").html('<div class="alert alert-danger" role="alert">File should be saved before save as</div>');
				alert_message_function(); 
				return
			}else{
				var companyName = res[0];
				var id 			= res[2];
				var folderId 	= res[3];
				
				var encoder = new mxCodec();
				var parent = navigationGraph.getDefaultParent();
				var node = encoder.encode(navigationGraph.getModel());
				
				var xml_str = mxUtils.getXml(node);
				
				createNewNavigationFile(companyName, folderId, id, xml_str)
			}


		},
		error: function(data){ 
			$(".alert_message").html('<div class="alert alert-danger" role="alert">'+someone_changed_the_file_name_please_refresh_the_tree+'</div>');
			alert_message_function(); 
		}
	});
}

function drawNavigationFromHistory(navName,id){
	$('#chart').hide();
	var button_prop = navigationSaveButton[navName];
	$("#save-button-nav").prop('disabled', button_prop);
//	$(".graph_button").prop('disabled', button_prop);
	navigation_name = navName;
	openedGraphID = id;
//	$("#save-button-nav").show();
	$("#navigationId").css("display", "block");
	$(".nav_button").show();
	$(".graph_button").hide();
	$("#history_page_no").html(numItems)
	numItems = $('.column').length;
	$(".history_page_no").html(numItems)
	$("#historyList").css("display", "none");
	
	$.each(allDivIds, function(i, val){
		$( "#"+val+"11" ).css("background", "");
	});
	if(createNew == true){
		addNewNavigationInHistory();
		createNew = false;
	}
	if(createNewNavigation == true){
		addNewNavigationInHistory();
		createNewNavigation = false;
	}
	var graphXML = "";
	
	$.each( dictionaryXML, function( key, value ) {
  		if(key==navName){
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
    codec.decode(diagram.documentElement, navigationGraph.getModel());
	navigationViewjs();
	$("#element_title").show().text(navName);
	$('#element_title').prop('title', navName);
}

function drawNavigationFromDB(navigationName_1,id,roleDetails,folderName){
	if(allExistElementInHistoryTab.includes(navigationName_1.replaceAll(" ","---")) == false){
		allExistElementInHistoryTab.push(navigationName_1.replaceAll(" ","---"))
	}
	$("#save-as-button-nav").show();
	loader_image_body()
	$(".loader").show();
// 	console.log("historyTabItems: DBList ",historyTabItems)
	var nonExistingElements = [];
				$(".nav_button").prop('disabled', false);
				$("#save-button-nav").prop('disabled', true);
//				graphSaveButton[navigationName_1] = true;
				graph_name=navigationName_1;
				openedNavigationID = id;
				var navigationExists = false;
				openedGraphID = id;
				$("#save_button").hide();
				$("#save_button").hide();
				$(".graph_button").hide();
				$(".nav_button").show();
				$("#navigationId").css("display", "block");
				if(createNew == true){
					addNewNavigationInHistory();
					createNew = false;
				}
				$.ajax({
					url: "getNavigationLastDate",
					data:{'navigationID':id},
					success: function(result){
						last_time_updated = result.slice(0, 19);
						dictionaryNavigationDates[id] = last_time_updated;
						
					}
				});
					
				$.ajax({
					url: "getNavigationGraph",
					data:{dbname:"graphs", graphName:navigationName_1},
					success: function(result){
				 		var xml = result;
				 		
				 		
				 			/////////// HISTORY WORK START
							$.each(allDivIds, function(i, val){
								$( "#"+val+"11" ).css("background", "");
							});
							$.each( dictionaryXML, function( key, value ) {
						  		if(key==navigationName_1){
						  			graphXML = value;
									navigationExists = true;
						  		}
						  		else{
									$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
						  		}
							});
							if(navigationExists!=true){
								$("#historyList").append('<div id="'+navigationName_1.replaceAll(' ','_')+'11" class="column gh'+id+'"><div style="display:inline-block"><span class="close_image '+folderName+'" onclick="closeNavigationDiv(\''+navigationName_1.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawNavigationFromHistory(\''+navigationName_1+'\',\''+id+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/navigation.svg"><br/>'+navigationName_1+'</a></div></div>');
								$("#history_tab").css("display", "flex")
								dictionaryXML[navigationName_1] = xml;
							}
							else{
								console.log("true")
							}
							numItems = $('.column').length;
							$(".history_page_no").html(numItems)
							$( "#"+navigationName_1.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
							currentWindowID = navigationName_1.replaceAll(' ','_')+"11";
							
							/// HISTORY WORK END
							
							let diagram = mxUtils.parseXml(result);
						    let codec = new mxCodec(diagram);
						    codec.decode(diagram.documentElement, navigationGraph.getModel());
						},
						complete: function(result){
							$(".loader").hide()
							$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
							$("body").css("pointer-events", "initial");							
						},
				        error: function(data){
				        	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+someone_changed_the_file_name_please_refresh_the_tree+'</div>');
					    	alert_message_function(); 
				        }
					});	
				
					navigationViewjs();
					$("#element_title").show().text(navigationName_1);
					$('#element_title').prop('title', navigationName_1);
			//last_time_updated = result.slice(0, 19);
			//dictionaryGraphDates[id] = last_time_updated;
}


	function on_context_menu_remove_navigation(graphID,liID, folderName,modelName, parentFolder){
		  event.preventDefault();
		  var contextElement = document.getElementById("context-menu");
		  var content_ = '';
		  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
//		  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
		  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
		  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Navigation(\''+modelName+'\',\'SVG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i> '+export_as_svg+'</div></a>';
		  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Navigation(\''+modelName+'\',\'PNG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i> '+export_as_png+'</div></a>';
		  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="renameNavigation(\''+graphID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-edit" aria-hidden="true"></i> '+rename+'</div></a>';		  
		  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeNavigation(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i> '+remove+'</div></a>';
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
	function removeNavigation(graphID,liID, folderName,modelName1, parentFolder){
  		$.ajax({
		      url: "delNavigationRowData", // url: "/findAttributes?dbName="+db_name,
		      data:{'graphID':graphID},
		      success:function(data) {
			
				$(".nav_button").hide();
				$("#save-as-button-nav").hide();
				$("#navigationId").css("display", "none");
				$("#element_title").hide();
			
 		    	  for(var i = 0; i < data.length ; i++){
		    				data[i].modelName.replaceAll(' ', '---');
		    			  if(data[i].modelName.replaceAll(' ', '---') == modelName1){
			    			   $("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_navigation(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
		    			  }  
		    			  else if(data[i].modelName == modelName1){
				    			$("#recycle_bin_list").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_navigation(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
		    			  }
		    	  }
		    	  $.each( data, function( key, value ) {
				  });
		    	  delete dictionaryXML[modelName1.replaceAll("---"," ")]
		    	  $(".gh"+graphID+"").remove();
				  if(allExistElementInHistoryTab.includes(modelName1.replaceAll(" ","---")) == true){
					allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== modelName1.replaceAll(" ","---"));
		    	  numItemCounter();
				  }		    	  
//		    	  numItemCounter();
		    	  modelName1 = modelName1+"11";
//		    	  console.log("currentWindowID",currecntWindowID)
//		    	  console.log("modelName1",modelName1)
		    	  
		    		if(currentWindowID==modelName1.replaceAll("---","_")){
		    			var diagram = mxUtils.parseXml(newGraphXML);
		    		    var codec = new mxCodec(diagram);
		    		    codec.decode(diagram.documentElement, navigationGraph.getModel());
		    		    $("#element_title").hide()  
		    		}
		    	  $("#"+liID+"").remove();
		      }	  	
		});   
	}	
	
	
//	
	function on_context_menu_restore_navigation(graphID, name, folderName, liID,type,company_name,parentID){
 			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_= '<a style="text-decoration:none; cursor:pointer;" href="javascript:restore_navigation(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i> '+Restore+' </div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:deleteNavigationPermanently(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true" ></i> '+Delete+'</div></a>';
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
	
	function restore_navigation(graphID, name, folderName, liID,type,company_name,parentID){
		if(type == 'folder'){
			var tree = '';
	  		$.ajax({
			      url: "restoreFolder",
			      data:{'folderName':folderName,'graphID':graphID},
			      success:function(data) {
			    	  tree+='<li id="'+folderName+'123">';
					  tree+='<span onclick = "toggleList(this)" id='+folderName+' class="caret '+folderName+' caret-down" oncontextmenu="on_context_menu_graph(\''+company_name+'\',\''+name+'\', \''+graphID+'\',\''+folderName+'\',\''+parentID+'\',\''+company_name+parentID+'\',\'folder\');">'+folderName.replaceAll('---', ' ')+'</span>';
			    	  tree+=data;
			    	  tree+='</li>';
			    	  $("#"+name+"2").remove();
			    	  $("#"+name.replaceAll(" ", "---")+"2").remove();
			    	  $("."+folderName).hide();
			    	  $("#"+liID).append(tree);
			      }
			});	
		}
		else{
			let parentFolderName = folderName.substring(0, folderName.length - (graphID.length));
			
			folderName = folderName.replaceAll(' ','---')
			
			if($("#" + folderName).length == 0) {
			  //it doesn't exist
			  //alert("It's Parent Folder "+parentFolderName+" is deleted!");
			  $(".alert_message").html('<div class="alert alert-danger" role="alert">its_parent_folder '+parentFolderName+' is_deleted</div>');
			  alert_message_function();
			}
			else{
		  		$.ajax({
				      url: "restoreNavigation",
				      data:{'graphID':graphID},
				      success:function() {
			    	  	  $("#"+name+"2").remove();		    	 
				    	  $("#"+liID+"2").remove();
				    	  $("#"+liID.replaceAll(" ", "---")+"2").remove();
				    	  $("#"+folderName+"").append('<li id="'+liID+'" class="model_list '+folderName+' '+type+'" onclick="drawNavigationFromDB(\''+name+'\',\''+graphID+'\',\''+folderName+'\', \''+type+'\')" oncontextmenu="on_context_menu_remove_navigation(\''+graphID+'\', \''+liID+'\',\''+folderName+'\',\''+name.replaceAll(" ","---")+'\');">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/navigation.svg\">&nbsp;'+name+'</li>');
				      }	  	
				});
			}
		}
	}	
	
	function deleteNavigationPermanently(graphID, name, folderName, liID, type){
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
							    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+folderName+' '+has_been_deleted+'</div>');
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
					      url: "deleteNavigationPermanently",
					      data:{'graphID':graphID},
					      success:function(data) {
					    	  //alert(""+name+" is deleted!")
								if(data == "done"){
							    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+name+' '+is_deleted+'</div>');
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
	        [Cancel]: function() {
	          $( this ).dialog( "close" );
	        }
	      }
	    });
	    
	}

function closeNavigationDiv(navigationName_1){
		$("#graphId").hide();
		$("#navigationId").css("display", "none");
	 	if(graphSaveButton[navigationName_1]==false){
	 		
//	 		$( function() {
//	 		    $( "#dialog-confirm-for-delete-model" ).dialog({
//	 		      resizable: false,
//	 		      height: "auto",
//	 		      width: 400,
//	 		      modal: true,
//	 		      buttons: {
//	 		        "Delete": function() {
//	 					delete dictionaryXML[navigationName_1];
//	 					$( "#"+navigationName_1+"11" ).remove();
//	 					setTimeout(function(){ displaydiv(); }, 0.5);
//	 					
//	 					//$("#historyList").css("display", "block");
//	 					
//	 					numItems = $('.column').length;
//	 					$(".history_page_no").html(numItems)
//	 					
//	 					if(currentWindowID==navigationName_1+"11"){
//	 						var diagram = mxUtils.parseXml(newGraphXML);
//	 					    var codec = new mxCodec(diagram);
//	 					    codec.decode(diagram.documentElement, navigationGraph.getModel());
//	 					    $("#element_title").hide()
//	 					}
//	 		          $( this ).dialog( "close" );
//	 		        },
//	 		        [Cancel]: function() {
//	 		          $( this ).dialog( "close" );
//	 		        }
//	 		      }
//	 		    });
//	 		  } );
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
			delete dictionaryXML[navigationName_1];
			$( "#"+navigationName_1+"11" ).remove();
			setTimeout(function(){ displaydiv(); }, 0.5);
			numItems = $('.column').length;
			$(".history_page_no").html(numItems)
			if(currentWindowID==navigationName_1+"11"){
				var diagram = mxUtils.parseXml(newGraphXML);
			    var codec = new mxCodec(diagram);
			    codec.decode(diagram.documentElement, navigationGraph.getModel());
			    $("#element_title").hide()
			}
		} 
		$(".nav_button").hide();
		if($('.column').length== 0){
			close_all_history_div();
		}
	}
	
	function addNewNavigationInHistory(){
		var encoder = new mxCodec();
		var parent = graph1.getDefaultParent();
		var node = encoder.encode(graph1.getModel());
		
		var xml_graph = mxUtils.getXml(node);
		
		var navigationName_1 = 'New graph1';
		$("#historyList").append('<div id="'+navigationName_1.replaceAll(' ','_')+'11" class="column"><div style="display:inline-block"><span class="close_image" onclick="closeModelDiv(\''+navigationName_1.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="<c:url value="/resources/images/x.svg"/>"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+navigationName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>"><br/>'+navigationName_1+'</a></div></div>');
		currentWindowID = navigationName_1+'11';
	    //$("#historyList").append('<a class="dropdown-item" href="#" onclick="drawGraphFromHistory(\''+navigationName_1+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="<c:url value="/resources/images/modelImage.svg"/>">'+navigationName_1+'</a>');
	    $("#history_tab").css("display", "flex")
		dictionaryXML[navigationName_1] = xml_graph;
		$.each(allDivIds, function(i, val){
			$( "#"+val+"11" ).css("background", "");
		});
		$.each( dictionaryXML, function( key, value ) {
	  		if(key==navigationName_1){
	  			graphXML = value;
				$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "#e9e9e9");
				currentWindowID = key.replaceAll(' ','_')+"11";
	  		}
	  		else{
				$( "#"+key.replaceAll(' ','_')+"11" ).css("background", "");
	  		}
		});
	}	
			function renameNavigation(){
		alert("RemoveNavigation..")
	}	
		