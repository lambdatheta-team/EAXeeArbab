

function nonExistingElementsFunc(objNames){
//	alert('sds')
//	console.log('objNames',objNames)
//	console.log('objNamesType',typeof objNames)
//	$.each(objNames, function(i, val){
//		console.log('objNames',val)
//	});
	
	// Get the modal
	var modal = document.getElementById("myModal");
	//$( "#myModal" ).draggable();
	$( ".modal-content" ).draggable();

	// Get the button that opens the modal
	//var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal 
	//btn.onclick = function() {
	//modal.style.display = "block";
	  document.getElementById("modal_heading").innerHTML = Elements_Not_Found;
	  document.getElementById("modal_info_text").innerHTML = "";
	$.each( objNames, function( key, value ) {
 		 document.getElementById("modal_info_text").innerHTML += value+'<br>';
	});
	
	//}
	 modal.style.display = "block";
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}

	// When the user clicks anywhere outside of the modal, close it
//window.onclick = function(event) {
//	  if (event.target == modal) {
//	    modal.style.display = "none";
//	  }
//	}
}