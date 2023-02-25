function exportGraph(modelName){
	createHiddenGraph(modelName);
	alert(modelName)
}

function createHiddenGraph(modelName){
//	if (!mxClient.isBrowserSupported())
//	{
//		// Displays an error message if the browser is not supported.
//		mxUtils.error('Browser is not supported!', 200, false);
//	}
//	else
//	{
//		
//		var container2 = document.getElementById('exportGraph');
//		var graph2 = new mxGraph(container2);
//		var parent = graph2.getDefaultParent();
//		
//		$.ajax({
//			url: "getGraph",
//			data:{dbname:"graphs", graphName:modelName},
//			success: function(result){
//				console.log("result", result)
//				var diagram = mxUtils.parseXml(result);
//			    var codec = new mxCodec(diagram);
//			    codec.decode(diagram.documentElement, graph2.getModel());
//			}});
//		
//	}
}