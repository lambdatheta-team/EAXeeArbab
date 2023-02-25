	function translateText(element_name, liID, id, folderName, parentID, ulID, checkType){
		var addData = element_name.replace(/\s/g, '---');
		let checkGraphOrObject = element_name.includes("---");
		if(checkGraphOrObject == true){
			//if(checkType == 'Folder'){
				addData = folderName.replace(/---/g, ' ');
				$("#change_text").val(addData);
			//}
			//else{
				addData = element_name.replace(/---/g, ' ');
				$("#change_text").val(addData);			
			//}
		}
		else{
			$("#change_text").val(element_name);
		}
		
   		$( function() {
		    var dialog, form,
 		    dialog = $( "#translateText" ).dialog({
		      autoOpen: false,
		      height: 400,
		      width: 350,
		      modal: true,
		      buttons: {
		        "Change": function updateText(){
					let changeTextValue = $("#change_text").val();
				$.ajax({
			           url: "updateTextFromFile",
			           type: 'POST',
					   data: {
							'elementName' :element_name,
							'changeTextValue' :changeTextValue,
					   },
			           dataType: 'json', // added data type
			           success: function(data) {
			           		if(checkType == 'catalog'){
			           			let get_string = '&nbsp;&nbsp;<img style="width: 20px; height: 20px; user-select: auto;" draggable="false" src="resources/images/catalog.svg">&nbsp;';
			           			$("#"+liID).html(get_string+changeTextValue);			           		
			           		}
			           		else if(checkType == 'matrix'){
			           			let get_string = '&nbsp;&nbsp;<img style="width: 20px; height: 20px; user-select: auto;" draggable="false" src="resources/images/matrix.svg">&nbsp;';
			           			$("#"+liID).html(get_string+changeTextValue);				           		
			           		}
			           		else if(id  == 'Folder'){
			           			let get_string = '<span class="caret '+element_name+'" oncontextmenu="on_context_menu_graph('+folderName+','+liID+','+parentID+', '+element_name+','+ulID+','+checkType+',\'folder\')" style="user-select: auto;">'+changeTextValue+'</span>';
			           			$("#"+element_name+"123").html(get_string);				           		
			           		}			          
			           		else{
				           		if(data == 1){
									let get_string = '&nbsp;&nbsp;<img style="width: 20px; height: 20px; user-select: auto;" draggable="false" src="resources/images/modelImage.svg">&nbsp;';
									$("#"+liID).html(get_string+changeTextValue);
				           		}
								else if(data == 2){
				           			let image_type = liID.toLowerCase().replace(/_/g, "-");
									let get_string = '<span title='+changeTextValue+' draggable="false" style="user-select: auto;"><img style="width: 20px; height: 20px; user-select: auto;" draggable="false" src="resources/js/examples/editors/images/images1/'+image_type+'.svg">&nbsp;'+changeTextValue+'</span>';
									$("#"+addData).html(get_string);
								}				           
			           		}		           	
							dialog.dialog( "close" );
			           }
			       });
		        },
		        //"<spring:message code='Cancel'/>": function() {
				"Cancel": function() {
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