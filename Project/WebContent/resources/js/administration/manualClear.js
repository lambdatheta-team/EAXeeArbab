function objectClear(){
	$( function() {
	    $( "#dialog-confirm" ).dialog({
	      resizable: false,
	      height: "auto",
	      width: 400,
	      modal: true,
	      buttons: {
	        [Delete]: function() {
				$.ajax({
					url:'truncateObjectClear',
					type:'GET',
				    beforeSend: function() {
				    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+object_truncate_is_in_process+'</div>');
				    	alert_message_function();	
				    	$(".loader").css("display", "block")
				    },		
					success: function(response){
			//			alert(response)
					},
					complete: function(){
				    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+object_clear_sucessfully+'</div>');
				    	alert_message_function();
				    	$(".loader").css("display", "none");	
					}
				})			
	          $( this ).dialog( "close" );
	        },
	        [Cancel]: function() {
	          $( this ).dialog( "close" );
	        }
	      }
	    });
	  } );
}

function modelClear(){
  $( function() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: 400,
      modal: true,
      buttons: {
        [Delete]: function() {
			$.ajax({
				url:'truncateModelClear',
				type:'GET',
			    beforeSend: function() {
			    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+model_clear_is_in_process+'</div>');
			    	alert_message_function();	
			    	$(".loader").css("display", "block")
			    },		
				success: function(response){
		//			alert(response)
				},
				complete: function(){
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+model_clear_sucessfully+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "none");	
				}		
			})		
          $( this ).dialog( "close" );
        },
        [Cancel]: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  } );		
}

function attachmentClear(){
  $( function() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: 400,
      modal: true,
      buttons: {
        [Delete]: function() {
			$.ajax({
				url:'truncateAttachmentClear',
				type:'GET',
			    beforeSend: function() {
			    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+attachment_clear_is_in_process+'</div>');
			    	alert_message_function();	
			    	$(".loader").css("display", "block")
			    },		
				success: function(response){
		//			alert(response)
				},
				complete: function(){
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+attachment_clear_sucessfully+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "none");	
				}		
			})		
          $( this ).dialog( "close" );
        },
        [Cancel]: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  } );	
}

function dashboardClear(){
  $( function() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height: "auto",
      width: 400,
      modal: true,
      buttons: {
        [Delete]: function() {
			$.ajax({
				url:'truncatedashboardslear',
				type:'GET',
			    beforeSend: function() {
			    	$(".alert_message").html('<div class="alert alert-primary" role="alert">'+dashboard_clear_is_in_process+'</div>');
			    	alert_message_function();	
			    	$(".loader").css("display", "block")
			    },		
				success: function(response){
		//			alert(response)
				},
				complete: function(){
			    	$(".alert_message").html('<div class="alert alert-success" role="alert">'+dashboard_clear_sucessfully+'</div>');
			    	alert_message_function();
			    	$(".loader").css("display", "none");	
				}		
			})		
          $( this ).dialog( "close" );
        },
        [Cancel]: function() {
          $( this ).dialog( "close" );
        }
      }
    });
  } );		
}