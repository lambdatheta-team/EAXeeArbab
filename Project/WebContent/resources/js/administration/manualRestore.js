$(document).ready(function () {
    $('#example').DataTable();
});    

function restore(){
	$.ajax({
	    url: "getFolderNamesForRestore", // url: "/findTables?dbName="+db_name,
	  method: 'get',
	    //type: "GET",
	    data: {},
	    success: function (folderName) {
	    	let insertDataIntoList = "";
	    	var t = $('#example').DataTable();
//	    	var iteration = 1;
	    	t
	        .clear()
	        .draw();			    	
	    	folderName.forEach((element) => {
	    	    let splitString = element.split("__");
	    	    let firstDate = splitString[0];
	    	    let secondTime = splitString[1];
	    	    
	    	    let formatDate = firstDate.replaceAll("_","/");
	    	    let formatTime = secondTime.replaceAll("_",":");
	    	    let FinalDateAndTime = formatDate+" "+formatTime;
// 						insertDataIntoList = "<tr><td>"+FinalDateAndTime+"</td><td>Active</td></tr>";
				t.row.add([FinalDateAndTime, '<button type="button" class="btn btn-primary">Restore</button>']).node().id = element;
//				t.row.add([iteration,FinalDateAndTime, '<button type="button" class="btn btn-primary">Restore</button>']).node().id = element;
				t.draw(false);
//				iteration++;
	    	});		 
		    $('#example tbody').on('click', 'tr', function () {
		        var data = t.row(this).data();
		        console.log("data",data)
		        let getDateAndTime = data[0].split(" ");
		        let getDate = getDateAndTime[0].replaceAll("/", "_");
		        let getTime = getDateAndTime[1].replaceAll(":", "_");
		        let joinDateAndTime = getDate+"__"+getTime;
		        
//				var confirmRestore = confirm("Are you sure?All existing data will be lost ");
//				if(confirmRestore == true){
//				  	$.ajax({
//						type: "POST",
//						url: "restoreSpecificData",
//						data: {joinDateAndTime:joinDateAndTime},
//					    beforeSend: function() {
//					    	console.log("Inside BeforeSend")
//					    	$(document.body).css({'cursor' : 'progress'});
//					    	$(".btn-primary").prop('disabled', true);
//					    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">Restore Is In Process.</div>');
//					    	alert_message_function();
//					    	$(".loader").css("display", "block")						    	
//					    },							
//						success: function(data)
//						{	
//							console.log("Inside Success")
//							$("#"+joinDateAndTime).css({'pointer-events': "none", 'background':'#dddddd'});
//							$(document.body).css({'cursor' : 'pointer'});
//							$(".btn-primary").prop('disabled', false);
//					    	$(".alert_message").html('<div class="alert alert-success" role="alert">Restored Successfully!!</div>');
//					    	alert_message_function();								
//						},
//						complete: function (data){
//							$(document.body).css({'cursor' : 'default'});
//							$(".loader").css("display", "none")
//						},
//						error: function (data) {
//					    	$(".alert_message").html('<div class="alert alert-warning" role="alert">Error occured while restoring!!</div>');
//					    	alert_message_function();						
//						}
//				  	});						
//				}   
//				else{
//					
//				} 
		        
		        var change_name = name.replaceAll(" ","---");
		        $( "#dialog-confirm" ).dialog({
		          resizable: false,
		          height: "auto",
		          width: 400,
		          modal: true,
		          buttons: {
		            "Restore": function() {
					  	$.ajax({
							type: "POST",
							url: "restoreSpecificData",
							data: {joinDateAndTime:joinDateAndTime},
						    beforeSend: function() {
						    	console.log("Inside BeforeSend")
						    	$(document.body).css({'cursor' : 'progress'});
						    	$(".btn-primary").prop('disabled', true);
						    	$(".alert_message").html('<div class="alert alert-secondary" role="alert">'+restore_is_in_process+'</div>');
						    	alert_message_function();
						    	$(".loader").css("display", "block")						    	
						    },							
							success: function(data)
							{	
								console.log("Inside Success")
								$("#"+joinDateAndTime).css({'pointer-events': "none", 'background':'#dddddd'});
								$(document.body).css({'cursor' : 'pointer'});
								$(".btn-primary").prop('disabled', false);
						    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+restored_successfully+'</div>');
						    	alert_message_function();								
							},
							complete: function (data){
								$(document.body).css({'cursor' : 'default'});
								$(".loader").css("display", "none")
							},
							error: function (data) {
						    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured_while_restoring+'</div>');
						    	alert_message_function();						
							}
					  	});
		                $( this ).dialog( "close" );
		            },
		            "Cancel": function() {
		              $( this ).dialog( "close" );
		            }
		          }
		        }); 
		    });			    	
		},
		error: function(ts) {
	    	$(".alert_message").html('<div class="alert alert-warning" role="alert">'+error_occured+'</div>');
	    	alert_message_function();
		}
	});	    	
}