<!--
  Copyright (c) 2006-2018, JGraph Ltd
  
  Hello, World! example for mxGraph. This example demonstrates using
  a DOM node to create a graph and adding vertices and edges.
-->
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
	<title>Hello, World! example for mxGraph</title>

	<style type="text/css">
	
		body div.mxPopupMenu {
			-webkit-box-shadow: 3px 3px 6px #C0C0C0;
			-moz-box-shadow: 3px 3px 6px #C0C0C0;
			box-shadow: 3px 3px 6px #C0C0C0;
			background: white;
			position: absolute;
			border: 3px solid #e7e7e7;
			padding: 3px;
		}
		body table.mxPopupMenu {
			border-collapse: collapse;
			margin: 0px;
		}
		body tr.mxPopupMenuItem {
			color: black;
			cursor: default;
		}
		body td.mxPopupMenuItem {
			padding: 6px 60px 6px 30px;
			font-family: Arial;
			font-size: 10pt;
		}
		body td.mxPopupMenuIcon {
			background-color: white;
			padding: 0px;
		}
		body tr.mxPopupMenuItemHover {
			background-color: #eeeeee;
			color: black;
		}
		table.mxPopupMenu hr {
			border-top: solid 1px #cccccc;
		}
		table.mxPopupMenu tr {
			font-size: 4pt;
		}
		
	</style>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Sets the basepath for the library if not in same directory -->
	<script type="text/javascript">
		mxBasePath = "<c:url value="/resources/js/src" />";
	</script>

	<!-- Loads and initializes the library -->
	<script type="text/javascript" src="<c:url value="/resources/js/mxClient.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/xmlToJSON.js" />"></script>
	<!-- Example code -->
	<script type="text/javascript">
		// Program starts here. Creates a sample graph in the
		// DOM node with the specified ID. This function is invoked
		// from the onLoad event handler of the document (see below).
		//var graph = new mxGraph(document.getElementById('graphContainer'));
		var graph1;

		function main(container)
		{
			//var container = ;
// 			mxConnectionHandler.prototype.connectImage = new mxImage("resources/js/examples/images/connector.gif", 16, 16);
			// Checks if the browser is supported
			if (!mxClient.isBrowserSupported())
			{
				// Displays an error message if the browser is not supported.
				mxUtils.error('Browser is not supported!', 200, false);
			}
			else
			{
				
				// Disables the built-in context menu
				mxEvent.disableContextMenu(container);
				
				// Changes some default colors
				mxConstants.HANDLE_FILLCOLOR = '#99ccff';
				mxConstants.HANDLE_STROKECOLOR = '#0088cf';
				mxConstants.VERTEX_SELECTION_COLOR = '#00a8ff';
				
				// Creates the graph inside the given container
				var graph = new mxGraph(container);

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
				
// 				graph.setTooltips(true);
// 				graph.htmlLabels = true;
// 				graph.vertexLabelsMovable = true;
				
				
				// Gets the default parent for inserting new cells. This
				// is normally the first child of the root (ie. layer 0).
				var parent = graph.getDefaultParent();
				
				var layout = new mxHierarchicalLayout(graph);
				layout.execute(graph.getDefaultParent());
				
				// Adds cells to the model in a single step
// 				graph.getModel().beginUpdate();
// 				try
// 				{
// // 					var v1 = graph.insertVertex(parent, null, 'Node 1', 100, 100, 80, 30);

					
// 				}
// 				finally
// 				{
					
// 					// Updates the display
// 					graph.getModel().endUpdate();
					
// 				}
				graph1 = graph;
// 				// Creates a new overlay with an image and a tooltip and makes it "transparent" to events
// 				var overlay = new mxCellOverlay(
// 					new mxImage("resources/js/examples/editors/images/overlays/check.png", 16, 16),
// 					'Overlay tooltip');

// 				var mxCellRendererInstallCellOverlayListeners = mxCellRenderer.prototype.installCellOverlayListeners;
// 				mxCellRenderer.prototype.installCellOverlayListeners = function(state, overlay, shape)
// 				{
// 					mxCellRendererInstallCellOverlayListeners.apply(this, arguments);
// 					var graph  = state.view.graph;

// 					mxEvent.addGestureListeners(shape.node,
// 						function (evt)
// 						{
// 							graph.fireMouseEvent(mxEvent.MOUSE_DOWN,
// 									new mxMouseEvent(evt, state));
// 						},
// 						function (evt)
// 						{
// 							graph.fireMouseEvent(mxEvent.MOUSE_MOVE,
// 								new mxMouseEvent(evt, state));
// 						});
					
// 					if (!mxClient.IS_TOUCH)
// 					{
// 						mxEvent.addListener(shape.node, 'mouseup', function (evt)
// 						{
// 							overlay.fireEvent(new mxEventObject(mxEvent.CLICK,
// 									'event', evt, 'cell', state.cell));
// 						});
// 					}
// 				};
				
// 				graph.addListener(mxEvent.CLICK, function(sender, evt)
// 						{
// 							var cell = evt.getProperty('cell');
							
// 							if (cell != null)
// 							{
// 								var overlays = graph.getCellOverlays(cell);
								
// 								if (overlays == null)
// 								{
// 									// Creates a new overlay with an image and a tooltip
// 									var overlay = new mxCellOverlay(
// 										new mxImage('editors/images/overlays/check.png', 16, 16),
// 										'Overlay tooltip');

// 									// Installs a handler for clicks on the overlay							
// 									overlay.addListener(mxEvent.CLICK, function(sender, evt2)
// 									{
// 										mxUtils.alert('Overlay clicked');
// 									});
									
// 									// Sets the overlay for the cell in the graph
// 									graph.addCellOverlay(cell, overlay);
// 								}
// 								else
// 								{
// 									graph.removeCellOverlays(cell);
// 								}
							
// 							}
// 						});
				
				// Sets the overlay for the cell in the graph
				// graph.addCellOverlay(v1, overlay);

			 	// Configures automatic expand on mouseover
				graph.popupMenuHandler.autoExpand = true;

			    // Installs context menu
				graph.popupMenuHandler.factoryMethod = function(menu, cell, evt)
				{
			    	
					menu.addItem('Relationship Type 1', null, function()
				    {
						alert('Relationship Type 1');
						value = 'Relationship Type 1';
						graph.model.setValue(cell, value);
				    });
					
					menu.addItem('Relationship Type 2', null, function()
				    {
						alert('Relationship Type 2');
						value = 'Relationship Type 2';
						graph.model.setValue(cell, value);
				    });
					
					menu.addItem('Relationship Type 3', null, function()
				    {
						alert('Relationship Type 3');
						value = 'Relationship Type 3';
						graph.model.setValue(cell, value);
				    });
			    	
					
					// Adds a special tooltip for edges
// 					graph.setTooltips(true);
// 					var getTooltipForCell = graph.getTooltipForCell;
// 					graph.getTooltipForCell = function(cell)
// 					{
						
						
// 						// Adds some relation details for edges
// 						if (graph.getModel().isEdge(cell))
// 						{
// 							var src = this.getLabel(this.getModel().getTerminal(cell, true));
// 							var trg = this.getLabel(this.getModel().getTerminal(cell, false));

// 							return src + ' ' + cell.value.nodeName + ' ' +  trg;
// 						}

// 						return getTooltipForCell.apply(this, arguments);
// 					};

// 					menu.addSeparator();
					
// 					var submenu1 = menu.addItem('Submenu 1', null, null);
					
// 					menu.addItem('Subitem 1', null, function()
// 				    {
// 						alert('Subitem 1');
// 				    }, submenu1);
// 					menu.addItem('Subitem 1', null, function()
// 				    {
// 						alert('Subitem 2');
// 				    }, submenu1);
				}; 
<!-- 	Toolbar container for the graph 		-->
				// Creates the div for the toolbar
				var tbContainer = document.createElement('div');
				tbContainer.style.position = 'absolute';
				tbContainer.style.overflow = 'hidden';
				tbContainer.style.padding = '3px';
				tbContainer.style.left = '30px';
				tbContainer.style.top = '20px';
				tbContainer.style.width = '20px';
				tbContainer.style.bottom = '0px';
				
				document.body.appendChild(tbContainer);			
				
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
				mxDragSource.prototype.getDropTarget = function(graph, x, y)
				{
					var cell = graph.getCellAt(x, y);
					
					if (!graph.isValidDropTarget(cell))
					{
						cell = null;
					}
					
					return cell;
				};
				
				// Enables new connections in the graph
				graph.setConnectable(true);
				graph.setMultigraph(false);

				// Stops editing on enter or escape keypress
				var keyHandler = new mxKeyHandler(graph);
				var rubberband = new mxRubberband(graph);
				
				var addVertex = function(mylabel, icon, w, h, style)
				{
					var vertex = new mxCell(mylabel, new mxGeometry(0, 0, w, h), style);
					vertex.setVertex(true);
				
					addToolbarItem(graph, toolbar, vertex, icon);
				};
				
				addVertex("None",'<c:url value="/resources/js/examples/editors/images/swimlane.gif"/>', 120, 160, 'shape=swimlane;startSize=20;');
				addVertex("Catagory 1",'<c:url value="/resources/js/examples/editors/images/rectangle.gif"/>', 100, 40, 'shape=rectangle');
				addVertex("Catagory 2",'<c:url value="/resources/js/examples/editors/images/rounded.gif"/>', 100, 40, 'shape=rounded');
				addVertex("Catagory 3",'<c:url value="/resources/js/examples/editors/images/ellipse.gif"/>', 40, 40, 'shape=ellipse');
				addVertex("Catagory 4",'<c:url value="/resources/js/examples/editors/images/rhombus.gif"/>', 40, 40, 'shape=rhombus');
				addVertex("Catagory 5",'<c:url value="/resources/js/examples/editors/images/triangle.gif"/>', 40, 40, 'shape=triangle');
				addVertex("Catagory 6",'<c:url value="/resources/js/examples/editors/images/cylinder.gif"/>', 40, 40, 'shape=cylinder');
				addVertex("Catagory 7",'<c:url value="/resources/js/examples/editors/images/actor.gif"/>', 30, 40, 'shape=actor');
// 				toolbar.addLine();
				
				graph.addListener(mxEvent.CLICK, function (sender, evt) {
				    var cell = evt.getProperty("cell"); // cell may be null
				    if (cell != null) {
				        SelectGraphCell(cell);
				        graph.setSelectionCell(cell);
				    }
				    evt.consume();
				});
				
				var button1 = mxUtils.button('View XML', function() {
				    var encoder = new mxCodec();
				    var node = encoder.encode(graph.getModel());
				    mxUtils.popup(mxUtils.getPrettyXml(node), true);
				});
				button1.style.position = 'absolute';
				button1.style.left = '600px';
				button1.style.top = '20px';
				document.body.appendChild(button1);
				
			}
			
			
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

			// do children
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
		
		function xmlToString(xmlData) { 

	        var xmlString;
	        //IE
	        if (window.ActiveXObject){
	            xmlString = xmlData.xml;
	        }
	        // code for Mozilla, Firefox, Opera, etc.
	        else{
	        	var oSerializer = new XMLSerializer();
	        	
	            xmlString = oSerializer.serializeToString(xmlData);
	        }
	        return xmlString;
	    }   

		function myFunction() {
			var encoder = new mxCodec();
			var node = encoder.encode(graph1.getModel());
			
			var xml_graph = mxUtils.getXml(node);
			
// 			var json_graph = xmlToJSON.parseString(xml_graph);   // parses to JSON object
// 			var json_str = JSON.stringify(json_graph);
			var xml_str = xml_graph;
			alert("button clicked");
			alert(xml_str);
			$.ajax({
				url: "save_graph",
				data:{test:xml_str},
				success: function(result){
				alert(result);

			}});	
			
		}
		
				
// 		function OBJtoXML(obj) {
// 			  var xml = '';
// 			  for (var prop in obj) {
// 			    xml += obj[prop] instanceof Array ? '' : "<" + prop + ">";
// 			    if (obj[prop] instanceof Array) {
// 			      for (var array in obj[prop]) {
// 			        xml += "<" + prop + ">";
// 			        xml += OBJtoXML(new Object(obj[prop][array]));
// 			        xml += "</" + prop + ">";
// 			      }
// 			    } else if (typeof obj[prop] == "object") {
// 			      xml += OBJtoXML(new Object(obj[prop]));
// 			    } else {
// 			      xml += obj[prop];
// 			    }
// 			    xml += obj[prop] instanceof Array ? '' : "</" + prop + ">";
// 			  }
// 			  var xml = xml.replace(/<\/?[0-9]{1,}>/g, '');
// 			  return xml
// 			}
		function json2xml(o, tab) {
			   var toXml = function(v, name, ind) {
			      var xml = "";
			      if (v instanceof Array) {
			         for (var i=0, n=v.length; i<n; i++)
			            xml += ind + toXml(v[i], name, ind+"\t") + "\n";
			      }
			      else if (typeof(v) == "object") {
			         var hasChild = false;
			         xml += ind + "<" + name;
			         for (var m in v) {
			            if (m.charAt(0) == "@")
			               xml += " " + m.substr(1) + "=\"" + v[m].toString() + "\"";
			            else
			               hasChild = true;
			         }
			         xml += hasChild ? ">" : "/>";
			         if (hasChild) {
			            for (var m in v) {
			               if (m == "#text")
			                  xml += v[m];
			               else if (m == "#cdata")
			                  xml += "<![CDATA[" + v[m] + "]]>";
			               else if (m.charAt(0) != "@")
			                  xml += toXml(v[m], m, ind+"\t");
			            }
			            xml += (xml.charAt(xml.length-1)=="\n"?ind:"") + "</" + name + ">";
			         }
			      }
			      else {
			         xml += ind + "<" + name + ">" + v.toString() +  "</" + name + ">";
			      }
			      return xml;
			   }, xml="";
			   for (var m in o)
			      xml += toXml(o[m], m, "");
			   return tab ? xml.replace(/\t/g, tab) : xml.replace(/\t|\n/g, "");
			}
		
		function getDBlist(){
			$.ajax({
				url: "getGraph",
				data:{dbname:"graphs", tablename:"json_graph"},
				success: function(result){
				
// 				var xml = mxUtils.parseXml(result);
// 				var xml = eval("OBJtoXML("+result+");")
// 				var jsonObj = JSON.parse(result); 
// 				var xml = json2xml(jsonObj);
// 				alert(jsonObj);
				var xml = result;
				alert(result);
				
// 				var xml = '<root><mxCell id="2" value="World!Vishal" vertex="1"><mxGeometry x="200" y="150" width="80" height="30" as="geometry"/></mxCell><mxCell id="3" edge="1" source="2"><mxGeometry relative="1" as="geometry"><mxPoint x="440" y="90" as="targetPoint"/></mxGeometry></mxCell></root>';
				
// 				var graph = new mxGraph(container);
			    
			    var diagram = mxUtils.parseXml(xml);
			    var codec = new mxCodec(diagram);
			    codec.decode(diagram.documentElement, graph1.getModel());
// 			    var elt = diagram.documentElement.firstChild;

// 			    var cells = [];
// 			    graph1.getModel().beginUpdate();
// 			    while (elt != null)
// 			    {
// 			      cells.push(codec.decode(elt));
// 			      elt = elt.nextSibling;
			      
// 			    }
// 			    graph1.addCells(cells);
// // 			    alert(cells);
// 			    graph1.getModel().endUpdate();
			    

			    
// 			    graph1.fit();
// 			    graph1 = graph;
				}});	
			
		}
		
	</script>
</head>

<!-- Page passes the container for the graph to the program -->
<body onload="main(document.getElementById('graphContainer'))">

	
	<!-- Creates a container for the graph with a grid wallpaper -->
	<div id="graphContainer"
		style="position:relative;overflow:hidden;width:1300px;height:600px;background:url(<c:url value="/resources/js/examples/editors/images/grid.gif" />);cursor:default;">
	</div>
	
	<input type="button" style="position: absolute; top: 20; left: 700" value="Save Graph" onclick="myFunction()">
	
	<input type="button" style="position: absolute; top: 20; left: 800" value="get DB" onclick="getDBlist()">
	
	<select name="category">
	    <option value="category_id">Select Database</option>
	    <option value="category_id">name</option>
	    <option value="category_id">name</option>
	</select>
</body>
</html>