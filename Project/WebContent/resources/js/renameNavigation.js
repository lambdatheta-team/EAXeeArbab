var firstName = [];
function renameNavigation(graphID,liID,folderNameID,navigationName,parentFolderName){
	console.log(`graphID:${graphID}, liID:${liID}, folderNameID:${folderNameID}, navigationName:${navigationName}, parentFolderName:${parentFolderName}`)
//	console.log("navigationName",navigationName)
	firstName.push(navigationName);
//	console.log("firstName[0]",firstName[0])
//	console.log("dictionaryXML",dictionaryXML)
//	console.log("numItems = $('.column').length;",numItems = $('.column').length);
	var addData = navigationName.replace(/\s/g, '---');
	let checkGraphOrObject = navigationName.includes("---");
	if(checkGraphOrObject == true){
		//if(checkType == 'Folder'){
			addData = parentFolderName.replace(/---/g, ' ');
			$("#change_text").val(addData);
		//}
		//else{
			addData = navigationName.replace(/---/g, ' ');
			$("#change_text").val(addData);			
		//}
	}
	else{
		$("#change_text").val(navigationName);
	}
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
			           url: "renameNavigation",
			           type: 'POST',
					   data: {
							'lastNavigationName' :navigationName,
							'newNavigationName' :changeTextValue,
					   },
			           dataType: 'json', // added data type
			           success: function(data) {
					   refreshTree();
					   getGraphNames();
					   drawNavigationFromDB(changeTextValue, graphID);
					   $("#"+navigationName+"11" ).remove();
//							$("#"+liID).remove();
////							let get_string = '&nbsp;&nbsp;<img style="width: 20px; height: 20px; user-select: auto;" draggable="false" src="resources/images/modelImage.svg">&nbsp;';
//							let get_string = `<li id='${liID}' class="model_list '${parentFolderName}'" onclick="getDBlist('${changeTextValue}','${graphID}',true,'${parentFolderName}')" oncontextmenu="on_context_menu_remove_graph('${graphID}','${liID}', '${folderNameID}','${changeTextValue}','${parentFolderName}')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;${changeTextValue}</li>`;							
//							$("#"+folderNameID).append(get_string);				
							dialog.dialog( "close" );	
//							if(dictionaryXML.hasOwnProperty(`${firstName[0]}`)){
//								
////dictionaryXML[navigationName] = dictionaryXML[firstName[0]];
////delete dictionaryXML[firstName[0]];
////
////console.log("NewKey",dictionaryXML); // 👉️ {newKey: 'value'}								
//								console.log("exist")
////								delete dictionaryXML[navigationName];
////								$( "#"+navigationName+"11" ).remove();
//								$( "#"+firstName[0]+"11" ).html('<div style="display:inline-block"><span class="close_image '+parentFolderName+'" onclick="closeModelDiv(\''+changeTextValue.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+firstName[0]+'\',\''+graphID+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImage.svg"><br/>'+changeTextValue+'</a></div>');
////								$("#historyList").append('<div id="'+changeTextValue.replaceAll(' ','_')+'11" class="column gh'+graphID+'"><div style="display:inline-block"><span class="close_image '+parentFolderName+'" onclick="closeModelDiv(\''+changeTextValue.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+changeTextValue+'\',\''+graphID+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImage.svg"><br/>'+changeTextValue+'</a></div></div>');
////								$("#history_tab").css("display", "flex")
////								dictionaryXML[changeTextValue.replaceAll(' ','_')] = xml;								
////								numItems = $('.column').length-1;	
////								$(".history_page_no").html(numItems)							
//							}
//							else{
//								console.log("Not exists")
//								console.log("navigationName",navigationName)
//								console.log("changeTextValue",changeTextValue)
//								console.log("firstName",firstName)
//								$( "#"+firstName[0]+"11" ).html('<div style="display:inline-block"><span class="close_image '+parentFolderName+'" onclick="closeModelDiv(\''+changeTextValue.replaceAll(' ','_')+'\')"><img onclick="titleempty();" draggable="false" alt="" width="20px" height="20px" src="resources/images/x.svg"></span></div><br/><div><a href="#" onclick="drawGraphFromHistory(\''+firstName[0]+'\',\''+graphID+'\')"><img draggable="false" alt="circle" width="20px" height="20px" src="resources/images/modelImage.svg"><br/>'+changeTextValue+'</a></div>');
//							}													
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