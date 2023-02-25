
var idds = [];
var max_number;
var idd;
var objectValuesArray = [];
var div_idd = '';

function relationship_modal(objectsArray,idd,maxPossibleObjects,elementIcon){
	/*$('#table_data').empty();*/
	objectsValues = $('#'+idd).val();
	console.log('values', objectsValues);
	console.log('elementIcon', elementIcon);
	console.log(objectValuesArray)
	objectValuesArray = objectsValues.split(',');
	elementIcon = elementIcon.replaceAll(" ", "-").replaceAll("_", "-").toLowerCase() + ".svg";
	console.log(objectValuesArray)
	if(objectValuesArray[0]!=""){
		$.each( objectValuesArray, function( key, value ) {

		t.row.add( [
		  '<td><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td>',
		  '<td class="object_name">'+object_name+'</td>',
		  '<td><a style="cursor:pointer" onclick="removeRow(\''+div_idd+'_'+object_name.replaceAll(" ", "_")+'\')">&#10006;</a></td></tr>',
		] ).node().id = div_idd+'_'+object_name.replaceAll(" ", "_");
		t.draw( false );

			//$("#table_data").append('<tr id="'+idd+'_'+value.replaceAll(" ", "_")+'"><td><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td><td class="object_name">'+value+'</td><td><a style="cursor:pointer" onclick="removeRow(\''+idd+'_'+value.replaceAll(" ", "_")+'\')">&#10006;</a></td></tr>');
		});
	}

	max_number = maxPossibleObjects;
	div_idd = idd;
	// Get the modal
/*	console.log("objectsArray",objectsArray);
	console.log("idd",idd);*/
	var modal1 = document.getElementById("myModal1");

	// Get the button that opens the modal
	//var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[1];
	var add_button = document.getElementById("addButton");

	// When the user clicks the button, open the modal 
	//btn.onclick = function() {
	//modal.style.display = "block";
	$('#updateFormModal_body').empty();
	$('#choices-multiple-remove-button').empty();
	$('#addButton').empty();
	var selectTag = '';
	selectTag += '<select id="choices-multiple-remove-button'+idd+'" multiple>';
//	$.each(objectsArray, function(i, val){
//		selectTag += '<option>'+val+'</option>';
//		//document.getElementById("choices-multiple-remove-button").append = heading;
//	});
	selectTag += '</select>';
	$('#choices-multiple-remove-button').append(selectTag)
	//if(!idds.includes(idd)){
//	createList(idd);
	//idds.push(idd);
	//}
	$('#addButton').append('<button onclick="add_object(\''+idd+'\');" class="form-control">Add</button>')


	//document.getElementById("modal_heading1").innerHTML = heading;
	//document.getElementById("modal_info_text1").innerHTML = attribute_tip;
	//}
	$('#get_tree').empty();
			var ghj = '<ul><li><span class="caret caret-down">LambdaTheta</span>';
			ghj += '<ul id="" class="nested active">';
			ghj+= objectsArray;
			ghj+= '</ul>';
			ghj+= '</li></ul>';
			$('#get_tree').append(ghj);
			//console.log(ghj)
			
			let getTree1caret = document.getElementById("get_tree").getElementsByClassName("caret");
			/*console.log(getTree1caret)*/
			
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

	// When the user clicks anywhere outside of the modal, close it
	//window.onclick = function(event) {
	//	  if (event.target == modal) {
	//	    modal.style.display = "none";
	//	  }
	//	}
}

function createList(idd){
	var multipleCancelButton = new Choices('#choices-multiple-remove-button'+idd, {
		removeItemButton: true,
		//maxItemCount:5,
		//searchResultLimit:5,
		//renderChoiceLimit:5
	});
}

function add_object(idd){
	let object_names = document.getElementById("table_data").getElementsByClassName("object_name");
	var tag_input = "";
	//console.log('object_names', object_names);

	$.each( object_names, function( key, value ) {
	  /*console.log( key + ": " + value.innerHTML );*/
	  tag_input += value.innerHTML+",";
	});

	/*console.log("tag_input", tag_input)*/
	// var getObjectValue = $('#choices-multiple-remove-button'+idd).val();
	//alert(getObjectValue)
	var final_text = tag_input.slice(0, -1)
	$('#'+idd).val(final_text);

	// $('#'+idd).tagsinput('add', final_text);
	//$('#'+idd).tagsinput('add', getObjectValue);
	//var multipleCancelButton = new Choices('#'+idd, {
	// 	//removeItemButton: true,
	// 	//maxItemCount:5,
	// 	//searchResultLimit:5,
	// 	//renderChoiceLimit:5
	//});
}


function add_into_modal_table(object_name, elementIcon){

	var array = [];
	var values = $('td.object_name').map(function(index, td) {
	    var ret = { };
	    ret[ index ] = $(td).text();
	    return ret;
	}).get();
	
	var length_check = values.length + 1;
	console.log("length_check", length_check)
	console.log("max_number", max_number)

	if(max_number == "Unlimited"){
		$("#"+div_idd+'_'+object_name.replaceAll(" ", "_")).remove();
		$("."+object_name).removeClass("modal_li_toggle");
	}
	
	if(length_check > max_number){
		/*alert('Can\'t add more than '+max_number)*/
		if($("#" + div_idd+'_'+object_name.replaceAll(" ", "_")).length > 0 ) {
		  //it exist
		  $("#"+div_idd+'_'+object_name.replaceAll(" ", "_")).remove();
   		  $("."+object_name).removeClass("modal_li_toggle");
		}
		else{
			$(".tree_modal_alert_message").html('<div class="alert alert-danger" role="alert">Can\'t add more than '+max_number+'</div>');
			tree_modal_alert_message();
		}
	}
	else{
		
		var loop_length = values.length;
		for (var i = 0; i < loop_length; i++) {
			array.push(values[i][i])
		}

		var findObject = (array.indexOf(object_name) > -1)

		if(!findObject){
			// t.row.add( [
			// 	 [
   //          '.1',
   //          '.2',
   //          '.3',
            
   //      ]
			//   // '<tr id="'+idd+'_'+value.replaceAll(" ", "_")+'"><td><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td><td class="object_name">'+value+'</td><td><a style="cursor:pointer" onclick="removeRow(\''+idd+'_'+value.replaceAll(" ", "_")+'\')">&#10006;</a></td></tr>',
			// ] )
			// t.draw( false );
/*var counter = 'a'
        t.row.add( [
            counter +'.1',
            counter +'.2',
            counter +'.3',
            counter +'.4',
            counter +'.5'
        ] ).draw( false );*/

		t.row.add( [
		  '<td><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td>',
		  '<td class="object_name">'+object_name+'</td>',
		  '<td><a style="cursor:pointer" onclick="removeRow(\''+div_idd+'_'+object_name.replaceAll(" ", "_")+'\')">&#10006;</a></td></tr>',
		] ).node().id = div_idd+'_'+object_name.replaceAll(" ", "_");
		t.draw( false );

			//$("#table_data").append('<tr id="'+div_idd+'_'+object_name.replaceAll(" ", "_")+'"><td><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td><td class="object_name">'+object_name+'</td><td><a style="cursor:pointer" onclick="removeRow(\''+div_idd+'_'+object_name.replaceAll(" ", "_")+'\')">&#10006;</a></td></tr>');//<td onclick="abc("'+object_name+'");">&#10006;</td>
			console.log("object_name_inside", object_name);
			//$("."+object_name).css("background-color", "grey");
			$("."+object_name).addClass("modal_li_toggle");
			/*var element_id = document.getElementsByClassName(object_name);
			console.log("element_id", element_id);*/
			// document.getElementById(object_name).style.background-color = "red";
			// document.getElementsByClassName(object_name).style.setProperty("background-color", "red", "important");
			// document.getElementsByClassName(object_name).style.background-color = "red";
		}
	}	
}

function removeRow(trId){
	console.log("trId", trId)
	// $('.remove_tr').click(function() {
		// var trId = $(this).closest('tr').prop('id');
	    $("#"+trId).remove();
	    $(".tree_modal_alert_message").html('<div class="alert alert-secondary" role="alert">Removed Successfully!</div>');
	    tree_modal_alert_message();
	// });
}