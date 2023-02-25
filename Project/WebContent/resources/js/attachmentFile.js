function on_context_menu_attachment(company_name,folderID,id, folderName,parentID,ulID){
	console.log(`company_name:${company_name}, folderID:${folderID}, id:${id}, folderName:${folderName}, parentID:${parentID}, ulID:${ulID}`)
	var userRoles = getUserRoles();
	  event.preventDefault();
	  var contextElement = document.getElementById("context-menu");
	  var content_= "";
	  if(folderName=='0'){
			if(userRoles['graphCreate']==true)
				content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewAttachmentFolder(\''+company_name+'\', \''+folderID+'\', \''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>'+new_folder+'</div></a>';
	  }else{
			if(userRoles['graphCreate']==true)
				content_ += '<a style="text-decoration:none; cursor:cell;" onclick="createNewAttachmentFile(\''+company_name+'\', \''+folderID+'\', \''+id+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i>'+new_attachment+'</div></a>';
	  			content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="deleteAttachmentFolder(\''+folderID+'\',\''+id+'\', \''+folderName+'\',\''+ulID+'\',\'folder\', \''+company_name+'\', \''+parentID+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true"></i>'+remove+'</div></a>';
	  }
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

function createNewAttachmentFolder(company_name, folderID,id){	
	$( function() {
	    var dialog, form,
	    dialog = $( "#dialog-form" ).dialog({
	      autoOpen: false,
	      height: 400,
	      width: 350,
	      modal: true,
	      buttons: {
	        [Create]: function addUser(){ 	
	        	var folderName = $("#folder_name").val().replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_');
	        	if(folderName){
	        		$.ajax({
		      		      url: "validateAttachmentFolderName", // url: "/findTables?dbName="+db_name,
		      		      //type: "GET",
		      		      data: {"folderName":folderName},
		      		      //dataType: "text/String"
		      		    
		      			success: function(data) {
		      				if(data==''){
			 			 		$.ajax({
								      url: "createNewAttachmentFolderName", // url: "/findAttributes?dbName="+db_name,
								      data:{'id':id,'folderName': folderName, 'company_name': company_name},
								      success:function(data) {
										  refreshTree();
//					 			    	  getGraphNames();
					 			    	  getattachmentNames();
//										  console.log("data",data);
//									      $(".alert_message").html('<div class="alert alert-success" role="alert">Folder Created Successfully!</div>');
//					      				  alert_message_function();
//					      				  console.log("folderID",folderID);
//								    	  $('#'+folderID).append('<li id="'+folderName+'123"><span class="caret '+folderName+'" oncontextmenu="on_context_menu_graph(\''+company_name+'\',\''+folderName+data+'\',\''+data+'\',\''+folderName+'\')">'+folderName+'</span></li>');
//								    	  refreshTree();
////					 			    	  getGraphNames();
//					 			    	  getattachmentNames();
//								    	  $("#"+name+"").remove();
								      }
								}); 
			 			 		//refreshTree();
						    	//getGraphNames();
			 			 		dialog.dialog( "close" );
		      				}
		      				else{
							      $(".alert_message").html('<div class="alert alert-danger" role="alert">'+folder_already_exist+'</div>');
			      				  alert_message_function();
		      				}
		      			}
	        		});
	        	}
	        	else{
	        		dialog.dialog( "open" );
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
	

function createNewAttachmentFile(company_name, folderID,id){
	$( function() {
	    var dialog, form,
	    dialog = $( "#dialog-form-file-upload" ).dialog({
	      autoOpen: false,
	      height: 400,
	      width: 350,
	      modal: true,
	      buttons: {
			[upload]: function addUser(){
				uploadAttachmentFiles(id, company_name, folderID, dialog)
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

function deleteAttachmentFolder(folderID,id, folderName,ulID,type, company_name,parentID){
	$("#"+folderName+"123").remove();
	///$("."+folderName+"file").remove();
	$("#recycle_bin_list_for_attachments").append('<li id="'+folderID+'2" class="model_list '+folderName+'" style="padding-left:38px" oncontextmenu="on_context_menu_restore_attachment(\''+id+'\', \''+folderID+'\', \''+folderName+'\',\''+ulID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\');"><i class="fa fa-folder" aria-hidden="true"></i>&nbsp;'+folderName.replaceAll('---', ' ')+'</li>')
	//if(attachmentName!=null){
 		$.ajax({
		      url: "deleteAttachmentFolder", // url: "/findAttributes?dbName="+db_name,
		      data:{'id':id},//,'folderName':folderName, 'folderID':folderID
		      success:function(data) {
		    	  $("."+folderName).click();
// 			    	  refreshTree();
// 			    	  getGraphNames();
				 //$('#'+folderID).append('<li id="'+attachmentName+data+'" class="model_list" onclick="getDBlist(\''+attachmentName+'\',\''+data+'\')\" oncontextmenu="on_context_menu_remove_attachment(\''+data+'\',\''+attachmentName+data+'\',\''+attachmentName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+attachmentName+'</li>');
		      }	  	
		}); 
	//}
	
}

//on_context_menu_remove_attachment
function on_context_menu_remove_attachment(graphID,liID, folderName,modelName, parentFolder){
		  event.preventDefault();
		  var contextElement = document.getElementById("context-menu");
		  var content_ = '';
		  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
// 			  var content_ = '<a style="text-decoration:none; cursor:cell;" onclick="translateText(\''+modelName+'\', \''+liID+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-plus" aria-hidden="true"></i><spring:message code="translate_text"/></div></a>';
		  /* content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:exportGraph(\''+modelName+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>Export as SVG</div></a>'; */
//		  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'SVG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_SVG"/></div></a>';
//		  content_+= '<a style="text-decoration:none; cursor:pointer;" href="javascript:export_Graph(\''+modelName+'\',\'PNG\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i><spring:message code="export_as_PNG"/></div></a>';
//		  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="renameDiagram(\''+graphID+'\', \''+liID+'\', \''+folderName+'\', \''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-edit" aria-hidden="true"></i><spring:message code="rename"/></div></a>';	
		  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="downloadAttachmentUploadedFile(\''+modelName.replaceAll("---"," ")+'\')"><div class="item"><i class="fa fa-download" aria-hidden="true"></i>'+download+'</div></a>';
		  content_ += '<a style="text-decoration:none; cursor:pointer;" href="javascript:removeAttachment(\''+graphID+'\',\''+liID+'\', \''+folderName+'\',\''+modelName+'\', \''+parentFolder+'\')"><div class="item"><i class="fa fa-trash-o" aria-hidden="true"></i>'+remove+'</div></a>';
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

function removeAttachment(graphID,liID, folderName,modelName1, parentFolder){
	$.ajax({
	      url: "delAttachmentRowData", // url: "/findAttributes?dbName="+db_name,
	      data:{'graphID':graphID},
	      success:function(data) {
	    	  for(var i = 0; i < data.length ; i++){
	    				data[i].modelName.replaceAll(' ', '---');
	    			  if(data[i].modelName.replaceAll(' ', '---') == modelName1){
//		    			   $("#recycle_bin_list_for_attachments").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_attachment(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
	    			  	   $("#recycle_bin_list_for_attachments").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_attachment(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><i class="fa fa-paperclip" aria-hidden="true"></i>&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
	    			  }  
	    			  else if(data[i].modelName == modelName1){
//			    			$("#recycle_bin_list_for_attachments").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_attachment(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
	    			  		$("#recycle_bin_list_for_attachments").append('<li id="'+liID+'2" class="model_list '+parentFolder+'file '+parentFolder+'" style="padding-left: 40px" oncontextmenu="on_context_menu_restore_attachment(\''+data[i].id+'\', \''+data[i].modelName+'\',\''+folderName+'\', \''+liID+'\', \''+parentFolder+'\');"><i class="fa fa-paperclip" aria-hidden="true"></i>&nbsp;'+data[i].modelName+'</li>') //onclick="getDBlist(\''+data[i].modelName+'\',\''+graphID+'\')"
	    			  }
	    	  }
	    	  $.each( data, function( key, value ) {
			  });
	    	  delete dictionaryXML[modelName1.replaceAll("---","_")]
	    	  $(".gh"+graphID+"").remove();
	    	    if(allExistElementInHistoryTab.includes(modelName1.replaceAll(" ","---")) == true){
	    	    	allExistElementInHistoryTab = allExistElementInHistoryTab.filter(e => e !== modelName1.replaceAll(" ","---"));
	    	  		numItemCounter();
	    	    }		    	  
	    		if(currentWindowID==modelName1.replaceAll("---","_")+"11"){
	    			var diagram = mxUtils.parseXml(newGraphXML);
	    		    var codec = new mxCodec(diagram);
	    		    codec.decode(diagram.documentElement, graph1.getModel());
	    		    $("#element_title").hide() 
	    		    $("#palete").css("display", "none");
	    			$("#fit-screen").css("display", "none");
	    			$("#zoom-in").css("display", "none");
	    			$("#zoom-out").css("display", "none");
	    			$("#save_button").css("display", "none");
	    			$("#save_graph_as_button").css("display", "none");
	    		}
	    	  $("#"+liID+"").remove();
	      }	  	
	});   
}


// 	Restore Attachment
	function on_context_menu_restore_attachment(graphID, name, folderName, liID,type,company_name,parentID){
 			  event.preventDefault();
			  var contextElement = document.getElementById("context-menu");
			  //<div class="item"><i class="fa fa-trash-o"></i> Delete</div> <div class="item" onclick="view_xml()"><i class="fa fa-file"></i> View Xml</div>
			  var content_= '<a style="text-decoration:none; cursor:pointer;" onclick = "restore_attachment(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\',\''+company_name+'\',\''+parentID+'\')"><div class="item"><i class="fa fa-undo" aria-hidden="true"></i>'+Restore+'</div></a>';
			  content_ += '<a style="text-decoration:none; cursor:pointer;" onclick="deleteAttachmentPermanently(\''+graphID+'\',  \''+name+'\', \''+folderName+'\', \''+liID+'\',\''+type+'\')"><div class="item"><i class="fa fa-trash" aria-hidden="true" ></i>'+Delete+'</div></a>';
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
	
// restore attachment
function restore_attachment(graphID, name, folderName, liID,type,company_name,parentID){
	console.log("restore_attachment Name",name)
	console.log("restore_attachment liID",liID)
	if(type == 'folder'){
		var tree = '';
  		$.ajax({
		      url: "restoreAttachmentFolder",
		      data:{'folderName':folderName,'graphID':graphID},
		      success:function(data) {
		    	  tree+='<li id="'+folderName+'123">';
				  tree+='<span onclick = "toggleList(this)" id=\''+folderName+'\' class="caret \''+folderName+'\' caret-down" oncontextmenu="on_context_menu_attachment(\''+company_name+'\',\''+name+'\', \''+graphID+'\',\''+folderName+'\',\''+parentID+'\',\''+company_name+parentID+'\',\'folder\');">'+folderName.replaceAll('---', ' ')+'</span>';
		    	  tree+=data;
		    	  tree+='</li>';
		    	  $("#"+name+"2").remove();
		    	  $("#"+name.replaceAll(" ", "---")+"2").remove();
		    	  // $("."+folderName).hide();
		    	  //<li id="new_ahsan123"><span class="caret new_ahsan caret-down" oncontextmenu="on_context_menu_graph('new_ahsan17','17', 'new_ahsan')">new_ahsan</span></li>
		    	  //$("#"+folderName+"").append('<li class="model_list">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">'+name+'</li>');
		    	  $("#"+liID+"_attachment").append(tree);

		    	 /*  document.getElementById(folderName).addEventListener("click", function() {
		    		  console.log("toggle");
		    		  console.log(this);
				    	this.parentElement.querySelector(".nested").classList.toggle("active");
				    	this.classList.toggle("caret-down");
				  }); */
		      }
		});	
	}
	else{
		let parentFolderName = folderName.substring(0, folderName.length - (graphID.length));
		folderName = folderName.replaceAll(' ','---')
		
		if($("#" + folderName).length == 0) {
		  $(".alert_message").html('<div class="alert alert-danger" role="alert">It\'s Parent Folder '+parentFolderName+' is deleted!</div>');
		  alert_message_function();
		}
		else{
	  		$.ajax({
			      url: "restoreAttachmentData",
			      data:{'graphID':graphID},
			      success:function() {
			    	 
			    	  $("#"+liID+"2").remove();
			    	  $("#"+liID.replaceAll(" ", "---")+"2").remove();
//			    	  $("#"+folderName+"").append('<li id="'+liID+'" class="model_list '+folderName+' '+type+'" onclick="getDBlist(\''+name+'\',\''+graphID+'\',\''+folderName+'\', \''+type+'\')" oncontextmenu="on_context_menu_remove_attachment(\''+graphID+'\', \''+liID+'\',\''+folderName+'\',\''+name.replaceAll(" ","---")+'\',\''+type+'\');">&nbsp;&nbsp;<img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/images/modelImage.svg\">&nbsp;'+name+'</li>');
			    	  $("#"+folderName+"").append('<li id="'+liID+'" class="model_list '+folderName+' '+type+'" oncontextmenu="on_context_menu_remove_attachment(\''+graphID+'\', \''+liID+'\',\''+folderName+'\',\''+name.replaceAll(" ","---")+'\',\''+type+'\');">&nbsp;&nbsp;<i class="fa fa-paperclip" aria-hidden="true"></i>&nbsp;'+name+'</li>');
			      }	  	
			});
		}
	}
}

function deleteAttachmentPermanently(graphID, name, folderName, liID, type){	
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
				      url: "deleteAttachmentFolderPermanently",
				      data:{'graphID':graphID},
				      success:function(data) {
				    	  //alert(""+folderName+" has been deleted!")
							if(data == "done"){
						    	  $(".alert_message").html('<div class="alert alert-success" role="alert">'+folderName.replaceAll("---"," ")+' has been deleted!</div>');
						    	  alert_message_function();
						    	  $("#"+name+"2").remove();	
							}
							else{
								$(".alert_message").html('<div class="alert alert-danger" role="alert">'+object_delete_restriction+'</div>');
						    	alert_message_function();
							}
				      }
				});	
			}
			else{
		  		$.ajax({
				      url: "deleteAttachmentPermanently",
				      data:{'graphID':graphID},
				      success:function(data) {
				    	  //alert(""+name+" is deleted!")
							if(data == "done"){
						    	  $(".alert_message").html('<div class="alert alert-danger" role="alert">'+name+' is deleted!</div>');
						    	  alert_message_function();
						    	  $("#"+liID+"2").remove();
						    	  $("#"+name+"2").remove();
							}
							else{
								$(".alert_message").html('<div class="alert alert-danger" role="alert">'+object_delete_restriction+'</div>');
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
	
function uploadAttachmentFiles(id, company_name,folderID, dialog){
	$("#paleteDiv").show();
	$('#chart').hide();
//		var attachmentName = $("#Attached_Files").val();
//		attachmentName = attachmentName.replaceAll(/[&\/\\#+(–)`$"\""~%'\'';,.-:*?<>{}]/g, '_');
//		attachmentName = attachmentName.replace(/[^\w]/gi, '_');
//		if(attachmentName){
//			$.ajax({
//		      url: "validateAttachmentName", // url: "/findTables?dbName="+db_name,
//		      //type: "GET",
//		      data: {'attachmentName': attachmentName},
//		      //dataType: "text/String"
//				success: function(data) {
//					if(data==''){
//				 		$.ajax({
//						      url: "createNewAttachmentFile", // url: "/findAttributes?dbName="+db_name,
//						      data:{'id':id, 'company_name': company_name,'attachmentName':attachmentName,'graph_json':newGraphXML},
//						      success:function(id) {
//						    	  
//						    	 $(".alert_message").html('<div class="alert alert-success" role="alert">Model Created Successfully!</div>');
//		      				   	 alert_message_function();
//			 			    	 refreshTree();
//			 			    	 getattachmentNames();
//			 			    	 $('#'+folderID).append('<li id="'+attachmentName+id+'" class="model_list" onclick="getDBlist(\''+attachmentName+'\',\''+id+'\')\" oncontextmenu="on_context_menu_remove_attachment(\''+id+'\',\''+attachmentName+data+'\',\''+attachmentName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+attachmentName+'</li>');
//			 			    	 //$('#'+folderID).append('<li id="'+attachmentName+data+'" class="model_list" onclick="getDBlist(\''+attachmentName+'\',\''+data+'\')\" oncontextmenu="on_context_menu_remove_attachment(\''+data+'\',\''+attachmentName+data+'\',\''+attachmentName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+attachmentName+'</li>');
//						    	 //getDBlist(attachmentName, id);
//						      }	  	
//						}); 
//				 		dialog.dialog( "close" );
//					}
//					else{
//				    	$(".alert_message").html('<div class="alert alert-danger" role="alert"><spring:message code="model_exist_message"/></div>');
//				    	alert_message_function();
//					}
//		        }
//			});
//		}
//		else{
//			dialog.dialog( "open" );
//			$(".alert_message").html('<div class="alert alert-warning" role="alert"><spring:message code="enter_model_name"/> </div>');
//			alert_message_function();
//		}		

	var attachmentName = '';
	jQuery.each(jQuery('#Attached_Files')[0].files, function(i, file) {
		attachmentName+=file['name']+";";
	});
	attachmentName = attachmentName.slice(0, -1)
	
	var format = /[–`!@#$%^&*+\=\[\]{}':"\\|,<>\/?~]/;
	// console.log( format.test(fileVal) );
	if(format.test(attachmentName)){
		$(".alert_message").html('<div class="alert alert-danger" role="alert">File Names Contains Invalid Character. Please Rename Your Files.</div>');
		alert_message_function();
	}else{
		var attachmentData = new FormData();
		var fileName;
		jQuery.each(jQuery('#Attached_Files')[0].files, function(i, file) {
		    attachmentData.append('file-'+i, file);
		    fileName+=file
		});
			
		if(attachmentName){
			$.ajax({
		      url: "validateAttachmentName", // url: "/findTables?dbName="+db_name,
		      //type: "GET", 	
		      data: {'attachmentName': attachmentName},
		      async: false,
		      //dataType: "text/String"
				success: function(data) {
					if(data==''){
				 		$.ajax({
						      url: "createNewAttachmentFile", // url: "/findAttributes?dbName="+db_name,
						      data:{'id':id, 'company_name': company_name,'attachmentName':attachmentName},
						      success:function(id) {
						    	 $(".alert_message").html('<div class="alert alert-success" role="alert">'+attachment_created_successfully+'</div>');
								 $.ajax({
									url:'addMultipleFileDataFromAttachment',
									data: attachmentData,
								    cache: false,
								    contentType: false,
								    processData: false,
								    async: false,
									type:'POST',
									success: function(res){
										//$("#"+tbodyID).empty();
								    	//$("#"+tbodyID).append(res);
//								    	 $('#'+folderID).append('<li id="'+attachmentName+id+'" class="model_list" onclick="getDBlist(\''+attachmentName+'\',\''+id+'\')\" oncontextmenu="on_context_menu_remove_attachment(\''+id+'\',\''+attachmentName+data+'\',\''+attachmentName+'\')">&nbsp;&nbsp;<img style="width:20px; height:20px" draggable="false" src="resources/images/modelImage.svg">&nbsp;'+attachmentName+'</li>');
								    	 $('#'+folderID).append('<li id="'+attachmentName+id+'" class="model_list" onclick="getDBlist(\''+attachmentName+'\',\''+id+'\')\" oncontextmenu="on_context_menu_remove_attachment(\''+id+'\',\''+attachmentName+data+'\',\''+attachmentName+'\')">&nbsp;&nbsp;<i class="fa fa-paperclip" aria-hidden="true"></i>&nbsp;'+attachmentName+'</li>');
				      				   	 alert_message_function();
					 			    	 refreshTree();
					 			    	 getattachmentNames();								    	
									}			
								 });						      
						      }	  	
						}); 
				 		dialog.dialog( "close" );
					}
					else{
				    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+attachment_already_created+'</div>');
				    	alert_message_function();
					}
		        }
			});
		}			
	}
}
	
function downloadAttachmentUploadedFile(fileName){
	window.open('downloadAttachmentUploadedFile?fileName='+fileName);
}	
	
//function showAttachmentTree(currentElementName,row_name,tableName, idd,maxObjects, save_btn_id){
function showAttachmentTree(divId,saveBtnId,tableName){
		
	$(".loader").show();
	$.ajax({
		url: "getattachmentsNamesForObject", // url: "/findTables?dbName="+db_name,
		type: "GET",
		async:false,
		//data:{
		//	'tableName' :tableName
		//},
	      //dataType: "text/String"
	    	beforeSend: function() {
	    		loader_image_body();
 	    	     	//$("#loader_image_body").animate({left:15, opacity:"show"}, 5000);
			},		      
			success: function(data) {
					$(".loader").hide();
					$("body>*:not(#loader_image_body)").css("-webkit-filter", "blur(0px)");
					$("body").css("pointer-events", "initial");
					//var treeData  = data[0]['tree'];
					var treeData  = data;
					$("#attachmentTitle").html(''+attachment+'');
					attachment_modal(divId,saveBtnId,treeData);
			}
	});
}	

function attachment_modal(divId,saveBtnId,treeData){
	console.log(`divId:${divId}, saveBtnId:${saveBtnId}, treeData:${treeData}`);
	if(tableCreated == false){
		table = $('#attachmentExample').DataTable({paging: false});
		tableCreated = true;
	}
	table
	    .clear()
	    .draw();
	let object_names_form = document.getElementById(divId+"tbody").getElementsByClassName("attachment_name_form");
//	var elementIconList = document.getElementById(idd).getElementsByClassName("elementIcon");
	let loopLength = object_names_form.length;
	var iteration;
//	if(object_names_form[0].innerHTML!=""){
		for(var i=0;i<loopLength;i++){
			iteration = i+1;
			let value = object_names_form[i].innerHTML;
			if(value == ''){
				continue;
			}
//			elementIcon =elementIconList[i].innerHTML;
			$('#attachmentExample').DataTable().row.add([
			  '<td>'+iteration+'</td>','<td class="'+divId+'">'+value.replaceAll("---"," ")+'</td>','<td><a style="cursor:pointer" onclick="removeAttachmentRow(\''+value.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_")+'\')">&#10006;</a></td>'
//			  '<td class="elementIcon">'+elementIcon+'</td>','<td class="object_name">'+value+'</td>','<td><a style="cursor:pointer" onclick="removeRow(\''+idd+'_'+value.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_")+'\')">&#10006;</a></td>'
			])
			.node().id = value.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_");
			table.draw();
//			let elementClass = elementIcon.split('/');
//			elementClass = elementClass[elementClass.length-1].split('.')[0]
//			elementClass = capitalizeFirstLetter(elementClass);
//			console.log('value',elementClass);
//			console.log('value ',value);
//			console.log('value ',value.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_"));
//			insert_class(idd+'_'+value.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_"),elementClass.replaceAll(" ", "_"));
			
			insert_attachment_class(value.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_"));
		}
//	}

//	max_number = maxValues;
//	div_idd = idd;
	var modal1 = document.getElementById("attachmentModal");
	$( ".modal-content" ).draggable();
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[3];
	var add_button = document.getElementById("addAttachmentButtonRel");
	$('#addAttachmentButtonRel').empty();
	var selectTag = '';
	selectTag += '<select id="choices-multiple-remove-button'+idd+'" multiple>';
	selectTag += '</select>';
	$('#choices-multiple-remove-button').append(selectTag)
	$(".dataTables_empty").html(no_data_found_modal);
	$(".dataTables_info").html(showing_0_out_0_entries);
	$('#addAttachmentButtonRel').append('<button onclick="add_attachment(\''+divId+'\', \''+saveBtnId+'\');" class="form-control">'+save_changes+'</button>')
	
	$('#get_attachment_tree').empty();
//			var ghj = '<ul><li id="modal_tree"><span class="caret caret-down">'+mim+'</span>';
//			var ghj += '<ul id="" class="nested active">';
			var ghj = treeData;
//			ghj+= '</ul>';
//			ghj+= '</li></ul>';
			$('#get_attachment_tree').append(ghj);
			let getTree1caret = document.getElementById("get_attachment_tree").getElementsByClassName("caret");
			for (i = 0; i < getTree1caret.length; i++) {
				getTree1caret[i].addEventListener("click", function() {
					this.parentElement.querySelector(".nested").classList.toggle("active");
					this.classList.toggle("caret-down");
				});
			}	
	modal1.style.display = "block";
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal1.style.display = "none";
	}
	
	add_button.onclick = function() {
		modal1.style.display = "none";
	}
}	

function add_attachment_into_modal_table(tag_id,object_name){
//	var elementMaxNumber = max_number[elementClass].replaceAll('.0','');
//	console.log('22',elementMaxNumber)
	var array = [];
	var values = $('td.object_name').map(function(index, td) {
	//var values = $('img.object_name').map(function(index, td) {
	    var ret = { };
	    ret[ index ] = $(td).text().replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_");
	    return ret;
	}).get();
//	var currentClassValues = $('.'+elementClass+'td').map(function(index, td) {
//	    var ret = { };
//	    ret[ index ] = $(td).text();
//	    return ret;
//	}).get();
//	
//	var length_check = currentClassValues.length + 1;
//
//	if(elementMaxNumber == "Unlimited"){
//		//$("#"+div_idd+'_'+object_name.replaceAll(" ", "_")).remove();
//
//		//console.log("id__:"+div_idd+'_'+object_name.replaceAll(" ", "_"));
//		let table = $('#example').DataTable();
//		
//		var rows = table
//		    .rows("#"+div_idd+'_'+tag_id.replaceAll(" ", "_"))
//		    .remove()
//		    .draw()
//
//		$("."+tag_id.replaceAll(" ", "_")).removeClass("modal_li_toggle");
//	}
//	
//	if(length_check > elementMaxNumber){
//		/*alert('Can\'t add more than '+max_number)*/
//		if($("#" + div_idd+'_'+tag_id.replaceAll(" ", "_")).length > 0 ) {
//		  //it exist
//		  //var check = $("#"+div_idd+'_'+object_name.replaceAll(" ", "_")).remove();
//		  //console.log("check", check)
//
//			var table = $('#example').DataTable();
//			 
//			var rows = table
//			    .rows("#"+div_idd+'_'+tag_id.replaceAll(" ", "_"))
//			    .remove()
//			    .draw()
//
//   		  $("."+tag_id.replaceAll(" ", "_")).removeClass("modal_li_toggle");
//		}
//		else{
//			$(".tree_modal_alert_message").html('<div class="alert alert-danger" role="alert">Can\'t add more than '+max_number+'</div>');
//			tree_modal_alert_message();
//		}
//	}
//	else{
		
		var loop_length = values.length;
		for (var i = 0; i < loop_length; i++) {
			array.push(values[i][i])
		}
		
		console.log("values",values)
		console.log("array",array)
		var findObject = (array.indexOf(object_name.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_")) > -1)
		console.log("findObject", findObject);
		if(!findObject){
			let iteration = i+1;
			let table = $('#attachmentExample').DataTable();
			$('#attachmentExample').DataTable().row.add([
			  '<td>'+iteration+'</td>','<td class="'+tag_id+'">'+object_name.replaceAll("---"," ")+'</td>','<td><a style="cursor:pointer" onclick="removeAttachmentRow(\''+tag_id.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_")+'\')">&#10006;</a></td>'
//			  '<td class="elementIcon"><img style=\"width:20px; height:14px\" draggable=\"false\"  ></td>', '<td class="object_name '+tag_id+'">'+object_name+'</td>', '<td><a style="cursor:pointer" onclick="removeRow(\''+tag_id+'_'+object_name.replaceAll(" ", "_")+'\')">&#10006;</a></td>'
			//'<td class="elementIcon"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td>', '<td class="object_name '+elementClass+'">'+object_name+'</td>', '<td><a style="cursor:pointer" onclick="removeRow(\''+div_idd+'_'+object_name.replaceAll(" ", "_")+'\')">&#10006;</a></td>'	
			])
			.node().id = tag_id.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_");
			// $(t).addClass("object_name");
			table.draw();

			insert_attachment_class(tag_id.replaceAll(/[&\/\\#+()`$"\""~%'\'';,.:*?<>{}]/g, '_').replaceAll(" ", "_").replaceAll("---","_"));
			
			// $('#example').dataTable( {
			//   "columnDefs": [
			//     { className: "object_name", "targets": [ 1 ] }
			//   ]
			// } );

			//$("#table_data").append('<tr id="'+div_idd+'_'+object_name.replaceAll(" ", "_")+'"><td><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td><td class="object_name">'+object_name+'</td><td><a style="cursor:pointer" onclick="removeRow(\''+div_idd+'_'+object_name.replaceAll(" ", "_")+'\')">&#10006;</a></td></tr>');//<td onclick="abc("'+object_name+'");">&#10006;</td>
			//console.log("object_name_inside", object_name);
			//$("."+object_name).css("background-color", "grey");
			$("."+tag_id.replaceAll(" ", "_")).addClass("modal_li_toggle");
			/*var element_id = document.getElementsByClassName(object_name);
			console.log("element_id", element_id);*/
			// document.getElementById(object_name).style.background-color = "red";
			// document.getElementsByClassName(object_name).style.setProperty("background-color", "red", "important");
			// document.getElementsByClassName(object_name).style.background-color = "red";
		}
//	}	
}

function removeAttachmentRow(trId){
	//console.log("trId", trId);
	// $('.remove_tr').click(function() {
		// var trId = $(this).closest('tr').prop('id');
	    //$("#"+trId).remove();

	var table = $('#attachmentExample').DataTable();
	 
	var rows = table
	    .rows("#"+trId)
	    .remove()
	    .draw()

	    $(".tree_modal_alert_message").html('<div class="alert alert-secondary" role="alert">'+removed_successfully+'</div>');
	    tree_modal_alert_message();
	// });
}

function insert_attachment_class(tag_id){
	console.log("tag_id",tag_id);
	var get_value = $("#"+tag_id);
	var first_td = $("#"+tag_id).find("td:eq(0)").addClass("elementIcon");
	var second_td = $("#"+tag_id).find("td:eq(1)").addClass("object_name");
	// console.log("get_value", get_value[0]);
	// console.log("second_td", second_td)
}

function add_attachment(idd, save_btn_id){
	console.log("save_btn_id",save_btn_id)
	let object_names = document.getElementById("attachmentExample").getElementsByClassName("object_name");
//	let elementIconList = document.getElementById("attachmentExample").getElementsByClassName("elementIcon");
	console.log("idd",idd)
	var tag_input = "";
	$('.table_data').empty();
	
	let inputField = document.getElementById(idd+"tbody");
	$(inputField).empty();
//	$(inputField).append()
	
//	var table = $('#'+idd).DataTable();
	var loopLength = object_names.length;
	console.log("loopLength",loopLength)
	if(loopLength>0){
		var iteration;
//		$.each( object_names, function( key, value ) {
		for(var i=0;i<loopLength;i++){
			iteration = i+1;
			tag_input = object_names[i].innerHTML;
			console.log("tag_input",tag_input)
//			elementIcon =elementIconList[i].innerHTML;
			$(inputField).append('<tr><td>'+iteration+'</td><td class="attachment_name_form">'+tag_input+'</td><td><i class="fa fa-download" aria-hidden="true" onclick="downloadAttachmentUploadedFile(\''+tag_input+'\')"></i></td><td class="delAttachmentRow"><i class="fa fa-trash" aria-hidden="true" onclick="delAttachmentRow(\''+save_btn_id+'\');"></i></td></tr>');
	//	  /*console.log( key + ": " + value.innerHTML );*/
	//	  //tag_input += value.innerHTML+",";
	//		tag_input = value.innerHTML;
	//		$('#'+idd).DataTable().row.add([
	//		  '<td><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td>', '<td class="object_name">'+tag_input+'</td>'
	//			
	//		])
	//		.node();
			$("#"+save_btn_id+"").attr("disabled", false);
		}
//		});

		//for(var j=0;j<4-loopLength;j++){
			//$(inputField).append('<tr><td></td><td class=\"attachment_name_form\"></td><td></td><td></td></tr>');
		//}
	}else
	{	
		console.log("Inside..")
		for(var j=0;j<4;j++){
			$(inputField).append('<tr><td></td><td class=\"attachment_name_form\"></td><td></td><td></td></tr>');
		}
		$("#"+save_btn_id+"").attr("disabled", false);
	}
//	table.draw();
	
	
	/*console.log("tag_input", tag_input)*/
	// var getObjectValue = $('#choices-multiple-remove-button'+idd).val();
	//alert(getObjectValue)
	//var final_text = tag_input.slice(0, -1)
	//$('#'+idd).val(final_text);

	// $('#'+idd).tagsinput('add', final_text);
	//$('#'+idd).tagsinput('add', getObjectValue);
	//var multipleCancelButton = new Choices('#'+idd, {
	// 	//removeItemButton: true,
	// 	//maxItemCount:5,
	// 	//searchResultLimit:5,
	// 	//renderChoiceLimit:5
	//});
}

function removeAttachmentObjectUploadedFile(fileName,elementName,row_id,tbodyID){
	console.log("fileName",fileName)
	console.log("elementName",elementName)
	console.log("row_id",row_id)
	console.log("tbodyID",tbodyID)
	

	
	console.log("Inside...")
//	$.ajax({
//        url: "removeObjectUploadedFile",
//        type: 'GET',
//        data: {fileName,elementName,row_id,tbodyID},
//        success: function(res) {
//        	$("#"+tbodyID).empty();
//        	$("#"+tbodyID).append(res);
//        }
//    });
}
	
	
function delAttachmentRow(save_btn_id){
	console.log("save_btn_id",save_btn_id);
	$('table').on('click','tr .delAttachmentRow',function(e){
		e.preventDefault();
		$(this).parents('tr').remove();
	});		
	$("#"+save_btn_id+"").attr("disabled", false);
}