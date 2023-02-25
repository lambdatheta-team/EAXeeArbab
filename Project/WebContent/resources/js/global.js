//function sessionLoggedOutModalOpen(){
//	
//	console.log("opening modal")
//	   
//   $( function() {
//	    var dialog, form,
//	    dialog = $( "#sessionExpiredDialog" ).dialog({
//	      autoOpen: false,
//	      width: 350,
//	      modal: true,
//	      buttons: {
//	        "Okay": function() {
//	        	document.location.href="login";
//	          $( this ).dialog( "close" );
//	        }
//		  }
//	    });
//	    dialog.dialog( "open" );
//	    $(".ui-dialog-titlebar-close").hide();
//	  }); 
//}
   
var time;
var inactivityTime = function () {
    window.onload = resetTimer;
    // DOM Events

	//document.onload = resetTimer;
	//document.onmousemove = resetTimer;
	//document.onmousedown = resetTimer; // touchscreen presses
	//document.ontouchstart = resetTimer;
	document.onclick = resetTimer;     // touchpad clicks

    // document.onmousemove = resetTimer;
    document.onkeydown = resetTimer;



};

function logout() {
	$.ajax({
        url: "getSessionStatus",
        type: 'GET',
        data: {},
        success: function(res) {
        	
        	if(res == 1){
				//sessionLoggedOutModalOpen();
				alert("session timeout")
				location.reload()
			}else{
				resetTimer()	
			}

			
        }
    });
}
function resetTimer() {
    clearTimeout(time);
    time = setTimeout(logout, 630000)
    // 1000 milliseconds = 1 second
}


//$( document ).ready(function() {
//    console.log( "ready!" );
//    inactivityTime();
//    resetTimer()
//	document.body.onclick = resetServerSessionTimeOut;
//    
//});

function resetServerSessionTimeOut(){
	$.ajax({
		url: "resetServerSessionTimeOut",
		type: 'GET',
		data: {},
		success: function(res) {
		}
	});
}


