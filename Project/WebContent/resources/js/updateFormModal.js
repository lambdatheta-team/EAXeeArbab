

function updateFormModal(cellValue,elementName,cell,route){
	console.log("route "+route )
	$(".loader").css("display", "block");
	//console.log("cellValue,elementName", cellValue,elementName);
	// Get the modal
	var modal11 = document.getElementById("updateFormModal");
	$( "#modal_content" ).draggable();
	//console.log("modal11", modal11)
	// Get the button that opens the modal
	//var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[4];
	var modal11z = document.getElementById("myModal1");
	var span2 = document.getElementsByClassName("close")[3];
	
	// When the user clicks the button, open the modal 
	//btn.onclick = function() {
	//modal.style.display = "block";
//	  document.getElementById("updateFormModal_heading").innerHTML = elementName;
	  //document.getElementById("modal_info_text").innerHTML = attribute_tip;
	//}
	  var tableName = elementName.split(' ').join('_');
	  $.ajax({
	    url: "getRowData", // url: "/findAttributes?dbName="+db_name,
	    type: "POST",
	    data:
	    {
			'tableName':elementName.replaceAll(' ','_'),
	    	'name':cellValue.replaceAll('\n',' ')
	    },
	    	  	dataType: "json",
	   	beforeSend: function() {
	   		$("#updateFormModal_form").empty();
	    },
		success: function(data) {
			var formData="";
			var labels = [];
			var idd = "";
			var checkboxIds = "";
			var CurrenttabID = "";
			var row_name = "";
			var allIds = "";
			var AllRelRowIDs = [];
			var btnedit = '';
			var object_name_id = '';
			var relationsClass;
			var last_time_updated = '';
			var AllRelTableIDs = [];
			let {dataBeforeUpdate} = data;
			$.each(data, function(i, val){
				$.each(data, function(i, val){
					if(i=="row_id"){
						idd = val;
					}
					if(i=="allIds"){
						allIds = val;
					}
					if(i=="checkboxIds"){
						checkboxIds = val;
					}
					if(i=="formData"){
						formData = val;
					}
					if(i=="attributeNames"){
						labels = val;
					}
					if(i=="CurrenttabID"){
	                   CurrenttabID = val;
		            }
					if(i=="row_name"){
						row_name = val;
		            }
					if(i=="AllRelRowIDs"){
						AllRelRowIDs = val;
		            }
					if(i=="AllRelRowIDs"){
						AllRelRowIDs = val;
		            }
					if(i=="editButtonId"){
						btnedit = val;
		            }
					if(i=="object_name_id"){
						object_name_id = val;
		            }
					if(i=="relationsClassList"){
						relationsClass = val[0];
		            }
					if(i=="AllRelTableIDs"){
						AllRelTableIDs = val;
		            }
					if(i=="last_time_updated"){
						last_time_updated = val[0];
		            }
			  	});
			  });
			  
			$(".loader").css("display", "none");
			$( function() {
	               $( "#"+CurrenttabID ).tabs().addClass( "ui-tabs-vertical1 ui-helper-clearfix" );
	               $( "#"+CurrenttabID+" li" ).removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );
			  } );
			var imageName = tableName.toLowerCase().replaceAll('_','-');
            imageName = imageName+'.svg';
            var current_ID = "";
			//formData += '</form></div>'
			//console.log(formData);
			$("#updateFormModal_form").append(formData);
			$.each(checkboxIds, function(i, val){
				$("#"+val).on('change', function() {
					  if ($(this).is(':checked')) {
					    $(this).attr('value', 'True');
					  } else {
					    $(this).attr('value', 'False');
					  }
					  
				});
				
			});
			form_submitForUpdate(dbName, tableName, labels, idd,allIds,row_name,AllRelRowIDs,btnedit, object_name_id, imageName, current_ID,CurrenttabID[0],cell,last_time_updated,AllRelTableIDs,dataBeforeUpdate,route);
	        $("#"+btnedit).click(function () {
				modal11.style.display = "none";
			});
	        
	        },
		  error: function(ts) {
			  console.log("Error")
			  $(".alert_message").html('<div class="alert alert-danger" role="alert">Object Not Found</div>');
			  modal11z.style.display = "none";
			  modal11.style.display = "none";
			  alert_message_function();
			  $(".loader").css("display", "none");
		  }
	    	  	
	    });
	  
	  
	span2.onclick = function() {
	  modal11z.style.display = "none";
	}
	  
	 modal11.style.display = "block";
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal11.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
//window.onclick = function(event) {
//	  if (event.target == modal) {
//	    modal.style.display = "none";
//	  }
//	}
}