function manualBackup(){
	$.ajax({
		url: "getBackupOfDatabases",
		type: 'POST',
		data: {},
		dataType: 'json',
	    beforeSend: function() {
	    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+backup_is_in_process+'</div>');
	    	alert_message_function();	
	    	$(".loader").css("display", "block")
//	    	$("#Manual").css({display:})
	    	$("#Manual").prop('disabled', true);
	    },		
		success: function(folder) {
			console.log("folder",folder)
			if(folder == "1"){
//				alert("Backup Created Sucessfully");
		    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+backup_created_sucessfully+'</div>');
		    	alert_message_function();				
			}
			else{
//				alert("Error occured while backup");
		    	$(".alert_message").html('<div class="alert alert-danger" role="alert">'+error_occured_while_backup+'</div>');
		    	alert_message_function();
	
			}
		},
		complete: function(data){
			$(".loader").css("display", "none");
			$("#Manual").prop('disabled', false);
		}
	});
}