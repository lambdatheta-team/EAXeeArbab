function export_Graph(modelName, fileType){
	modelName = modelName.replaceAll("---", " ");
	if (!mxClient.isBrowserSupported())
	{
		// Displays an error message if the browser is not supported.
		mxUtils.error('Browser is not supported!', 200, false);
	}
	else
	{
		var container2 = document.getElementById('exportGraph');
		//console.log("container2", container2)
		var graph2 = new mxGraph(container2);
		//var parent = graph2.getDefaultParent();
		
		$.ajax({
			url: "getGraph",
			data:{dbname:"graphs", graphName:modelName},
			success: function(result){
				if(fileType == 'PNG'){
					result = result.replaceAll('.svg','.png');
				}
				 //console.log("result", result)
				var diagram = mxUtils.parseXml(result);
			    var codec = new mxCodec(diagram);
			    codec.decode(diagram.documentElement, graph2.getModel());
			    if(fileType == 'PNG')
			    	exportAsPNG();
			    if(fileType == 'SVG')
			    	exportAsSVG();
			}});
	}
	
	function exportAsPNG(){
		var format = 'png';
		var bg = '#ffffff';
		var scale = 1;
		var b = 1;
		
		var imgExport = new mxImageExport();
		var bounds = graph2.getGraphBounds();
		var vs = graph2.view.scale;
		
		// New image export
		var xmlDoc = mxUtils.createXmlDocument();
		var root = xmlDoc.createElement('output');
		xmlDoc.appendChild(root);
		
		// Renders graph2. Offset will be multiplied with state's scale when painting state.
		var xmlCanvas = new mxXmlCanvas2D(root);
		xmlCanvas.translate(Math.floor((b / scale - bounds.x) / vs), Math.floor((b / scale - bounds.y) / vs));
		xmlCanvas.scale(scale / vs);
		
		imgExport.drawState(graph2.getView().getState(graph2.model.root), xmlCanvas);

		// Puts request data together
		var w = Math.ceil(bounds.width * scale / vs + 2 * b);
		var h = Math.ceil(bounds.height * scale / vs + 2 * b);
		
		var xml = mxUtils.getXml(root);
			
		if (bg != null)
		{
			bg = '&bg=' + bg;
		}
		
		new mxXmlRequest('Export', 'filename='+modelName+'.' + format + '&format=' + format +
			bg + '&w=' + w + '&h=' + h + '&xml=' + encodeURIComponent(xml)).
			simulate(document);
		$('#exportGraph').empty();
	}
	
	function exportAsSVG(){
		var background = '#ffffff';
		var scale = 1;
		var border = 1;
		
		var imgExport = new mxImageExport();
		var bounds = graph2.getGraphBounds();
		var vs = graph2.view.scale;

		// Prepares SVG document that holds the output
		var svgDoc = mxUtils.createXmlDocument();
		var root = (svgDoc.createElementNS != null) ?
	    		svgDoc.createElementNS(mxConstants.NS_SVG, 'svg') : svgDoc.createElement('svg');
	    
		if (background != null)
		{
			if (root.style != null)
			{
				root.style.backgroundColor = background;
			}
			else
			{
				root.setAttribute('style', 'background-color:' + background);
			}
		}
	    
		if (svgDoc.createElementNS == null)
		{
	    	root.setAttribute('xmlns', mxConstants.NS_SVG);
	    	root.setAttribute('xmlns:xlink', mxConstants.NS_XLINK);
		}
		else
		{
			// KNOWN: Ignored in IE9-11, adds namespace for each image element instead. No workaround.
			root.setAttributeNS('http://www.w3.org/2000/xmlns/', 'xmlns:xlink', mxConstants.NS_XLINK);
		}
		
		root.setAttribute('width', (Math.ceil(bounds.width * scale / vs) + 2 * border) + 'px');
		root.setAttribute('height', (Math.ceil(bounds.height * scale / vs) + 2 * border) + 'px');
		root.setAttribute('version', '1.1');
		
	    // Adds group for anti-aliasing via transform
		var group = (svgDoc.createElementNS != null) ?
				svgDoc.createElementNS(mxConstants.NS_SVG, 'g') : svgDoc.createElement('g');
		group.setAttribute('transform', 'translate(0.5,0.5)');
		root.appendChild(group);
		svgDoc.appendChild(root);

	    // Renders graph2. Offset will be multiplied with state's scale when painting state.
		var svgCanvas = new mxSvgCanvas2D(group);
		svgCanvas.translate(Math.floor((border / scale - bounds.x) / vs), Math.floor((border / scale - bounds.y) / vs));
		svgCanvas.scale(scale / vs);

		// Displayed if a viewer does not support foreignObjects (which is needed to HTML output)
		svgCanvas.foAltText = '[Not supported by viewer]';
		imgExport.drawState(graph2.getView().getState(graph2.model.root), svgCanvas);

		var xml = encodeURIComponent(mxUtils.getXml(root));
		var xml1 = mxUtils.getXml(root);
		new mxXmlRequest('Echo', 'filename='+modelName+'.svg&format=svg' + '&xml=' + xml).simulate(document);
		$('#exportGraph').empty();
	}
}
/* Export Testing ends here */