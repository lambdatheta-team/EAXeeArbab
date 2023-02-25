function renameCatalogMatrix(graphID,liID,folderNameID,elementName,parentFolderName,catalog_or_matrix){
	var addData = elementName.replace(/\s/g, '---');
	let checkGraphOrObject = elementName.includes("---");
	if(checkGraphOrObject == true){
		//if(checkType == 'Folder'){
			addData = parentFolderName.replace(/---/g, ' ');
			$("#change_text").val(addData);
		//}
		//else{
			addData = elementName.replace(/---/g, ' ');
			$("#change_text").val(addData);			
		//}
	}
	else{
		$("#change_text").val(elementName);
	}
	if(catalog_or_matrix == 'catalog') //For Catalog
	{
		$( function() {
		    var dialog, form,
		    dialog = $( "#renameText" ).dialog({
		      autoOpen: false,
		      height: 400,
		      width: 350,
		      modal: true,
		      buttons: {
		        [Change]: function updateText(){
					let changeTextValue = $("#change_text").val();
					changeTextValue = changeTextValue.replace(/[^\w\u0600-\u06FF\s]/gi,'_')
					$.ajax({
				           url: "renameCatalog",
				           type: 'POST',
						   data: {
								'lastcatalogName' :elementName,
								'newcatalogName' :changeTextValue,
						   },
				           dataType: 'json', // added data type
				           success: function(data) {
						   $("."+elementName ).remove();
						   refreshTree();
						   getGraphNames();
						   drawCatalogFromXML(changeTextValue, graphID);
						   				
	//							$("#"+liID).remove();
	////							let get_string = '&nbsp;&nbsp;<img style="width: 20px; height: 20px; user-select: auto;" draggable="false" src="resources/images/modelImage.svg">&nbsp;';
	//							let get_string = `<li id='${liID}' class="model_list '${parentFolderName}'" onclick="drawCatalogFromXML('${changeTextValue}','${graphID}',true,'${parentFolderName}')" oncontextmenu="on_context_menu_remove_graph('${graphID}','${liID}', '${folderNameID}','${changeTextValue}','${parentFolderName}', '${catalog_or_matrix}')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/catalog.svg">&nbsp;${changeTextValue}</li>`;							
	//							$("#"+folderNameID).append(get_string);				
								dialog.dialog( "close" );
				           }
				       });
			        },
		        //"<spring:message code='Cancel'/>": function() {
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
		      updateText();
		    });
		      dialog.dialog( "open" );
		  });	
	}	
	else{ //For Matrix
		$( function() {
		    var dialog, form,
		    dialog = $( "#renameText" ).dialog({
		      autoOpen: false,
		      height: 400,
		      width: 350,
		      modal: true,
		      buttons: {
		        [Change]: function updateText(){
					let changeTextValue = $("#change_text").val();
					$.ajax({
				           url: "renameMatrix",
				           type: 'POST',
						   data: {
								'lastmatrixName' :elementName,
								'newmatrixName' :changeTextValue,
						   },
				           dataType: 'json', // added data type
				           success: function(data) {
						   $("."+elementName ).remove();
						   drawMatrixFromXML(changeTextValue, data[0], data[1], data[2], graphID, parentFolderName);
						   refreshTree();
						   getGraphNames();						   				
	//							$("#"+liID).remove();
	////							let get_string = '&nbsp;&nbsp;<img style="width: 20px; height: 20px; user-select: auto;" draggable="false" src="resources/images/modelImage.svg">&nbsp;';
	//							let get_string = `<li id='${liID}' class="model_list '${parentFolderName}'" onclick="drawCatalogFromXML('${changeTextValue}','${graphID}',true,'${parentFolderName}')" oncontextmenu="on_context_menu_remove_graph('${graphID}','${liID}', '${folderNameID}','${changeTextValue}','${parentFolderName}', '${catalog_or_matrix}')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/catalog.svg">&nbsp;${changeTextValue}</li>`;							
	//							$("#"+folderNameID).append(get_string);				
								dialog.dialog( "close" );
				           }
				       });
			        },
		        //"<spring:message code='Cancel'/>": function() {
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
		      updateText();
		    });
		      dialog.dialog( "open" );
		  });
	}
}