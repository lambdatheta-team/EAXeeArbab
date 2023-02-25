
var idds = [];
var max_number;
var idd;
var objectValuesArray = [];
var div_idd = '';
var tableCreated = false;
var table;
//var table = $('#example').DataTable({paging: false});

function relationship_modal(objectsArray,idd,maxPossibleObjects,elementIcon, save_btn_id,maxValues){
	// console.log(maxValues);
	//$('#table_data').empty();
	if(tableCreated == false){
		table = $('#example').DataTable({paging: false});
		tableCreated = true;
	}
	
//	 var table = $('#example').DataTable();
	table
	    .clear()
	    .draw();

	//objectsValues = $('#'+idd).val();
	// console.log('values', objectsValues);
	// console.log('elementIcon', elementIcon);
	// console.log(objectValuesArray)
//	objectValuesArray = objectsValues.split(',');
	
//	elementIcon = "Application Component";
	let object_names_form = document.getElementById(idd).getElementsByClassName("object_name_form");
	var elementIconList = document.getElementById(idd).getElementsByClassName("elementIcon");
	//console.log('idd',idd)
	//console.log('elementIcon',elementIcon)
	let loopLength = object_names_form.length;
	
//	elementIcon = elementIcon.replaceAll(" ", "-").replaceAll("_", "-").toLowerCase() + ".svg";
	//console.log(objectValuesArray)
	//console.log('objects', object_names_form);
	if(object_names_form[0].innerHTML!=""){
//		$.each( object_names_form, function( key, value ) {
		for(var i=0;i<loopLength;i++){
			let value = object_names_form[i].innerHTML;
			if(value == ''){
				continue;
			}
			elementIcon =elementIconList[i].innerHTML;
//			let table = $('#example').DataTable();
			$('#example').DataTable().row.add([
			  '<td class="elementIcon">'+elementIcon+'</td>','<td class="object_name">'+value+'</td>','<td><a style="cursor:pointer" onclick="removeRow(\''+idd+'_'+value.replaceAll(" ", "_")+'\')">&#10006;</a></td>'
			])
			.node().id = idd+'_'+value.replaceAll(" ", "_");
			//.node().id = div_idd+'_'+object_name.replaceAll(" ", "_");

			table.draw();
			let elementClass = elementIcon.split('/');
			elementClass = elementClass[elementClass.length-1].split('.')[0]
			elementClass = capitalizeFirstLetter(elementClass);
			console.log('value',elementClass);
			
			insert_class(idd+'_'+value.replaceAll(" ", "_"),elementClass.replaceAll(" ", "_"));
		}

			//$("#table_data").append('<tr id="'+idd+'_'+value.replaceAll(" ", "_")+'"><td><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td><td class="object_name">'+value+'</td><td><a style="cursor:pointer" onclick="removeRow(\''+idd+'_'+value.replaceAll(" ", "_")+'\')">&#10006;</a></td></tr>');
//		});
	}

	max_number = maxValues;
	div_idd = idd;
	// Get the modal
/*	console.log("objectsArray",objectsArray);
	console.log("idd",idd);*/
	var modal1 = document.getElementById("myModal1");
	//$( "#myModal1" ).draggable();
	$( ".modal-content" ).draggable();

	// Get the button that opens the modal
	//var btn = document.getElementById("myBtn");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[1];
	var add_button = document.getElementById("addButtonRel");

	// When the user clicks the button, open the modal 
	//btn.onclick = function() {
	//modal.style.display = "block";
	// $('#updateFormModal_body').empty();
	// $('#choices-multiple-remove-button').empty();
	$('#addButtonRel').empty();
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
	$(".dataTables_empty").html(no_data_found_modal);
	$(".dataTables_info").html(showing_0_out_0_entries);
	$('#addButtonRel').append('<button onclick="add_object(\''+idd+'\', \''+save_btn_id+'\');" class="form-control">'+save_changes+'</button>')


	//document.getElementById("modal_heading1").innerHTML = heading;
	//document.getElementById("modal_info_text1").innerHTML = attribute_tip;
	//}
	$('#get_tree').empty();
			var ghj = '<ul><li id="modal_tree"><span class="caret caret-down">'+lambdatheta+'</span>';
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

function add_object(idd, save_btn_id){
	console.log('save id',save_btn_id)
	let object_names = document.getElementById("example").getElementsByClassName("object_name");
	let elementIconList = document.getElementById("example").getElementsByClassName("elementIcon");
	var tag_input = "";
//	$('.table_data').empty();
	console.log('idd', idd);
	
	let inputField = document.getElementById(idd).getElementsByTagName("tbody");
	$(inputField).empty();
//	$(inputField).append()
	
//	var table = $('#'+idd).DataTable();
	var loopLength = object_names.length;
	console.log('loopLength',loopLength)
	if(loopLength>0){
//		$.each( object_names, function( key, value ) {
		for(var i=0;i<loopLength;i++){
			tag_input = object_names[i].innerHTML;
			elementIcon =elementIconList[i].innerHTML;
			$(inputField).append('<tr><td class="elementIcon" style=\"width: 5px !important\">'+elementIcon+'</td><td align=\"right\" class="object_name_form">'+tag_input+'</td></tr>');
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

		for(var j=0;j<4-loopLength;j++){
			$(inputField).append('<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>');
		}
	}else
	{
		for(var j=0;j<4;j++){
			$(inputField).append('<tr><td class = \"first_td elementIcon\"></td><td class=\"object_name_form\"></td></tr>');
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


function add_into_modal_table(object_name, elementIcon,elementClass){
	console.log('elementClass',elementClass)
	var elementMaxNumber = max_number[elementClass].replaceAll('.0','');
	console.log('22',elementMaxNumber)
	var array = [];
	var values = $('td.object_name').map(function(index, td) {
	//var values = $('img.object_name').map(function(index, td) {
	    var ret = { };
	    ret[ index ] = $(td).text();
	    return ret;
	}).get();
	
	var currentClassValues = $('.'+elementClass+'td').map(function(index, td) {
	    var ret = { };
	    ret[ index ] = $(td).text();
	    return ret;
	}).get();
	
	var length_check = currentClassValues.length + 1;
	 console.log("length_check", length_check)
	 console.log("max_number", elementMaxNumber)

	if(elementMaxNumber == "Unlimited"){
		//$("#"+div_idd+'_'+object_name.replaceAll(" ", "_")).remove();

		//console.log("id__:"+div_idd+'_'+object_name.replaceAll(" ", "_"));
		let table = $('#example').DataTable();
		
		var rows = table
		    .rows("#"+div_idd+'_'+object_name.replaceAll(" ", "_"))
		    .remove()
		    .draw()

		$("."+object_name.replaceAll(" ", "_")).removeClass("modal_li_toggle");
	}
	
	if(length_check > elementMaxNumber){
		/*alert('Can\'t add more than '+max_number)*/
		if($("#" + div_idd+'_'+object_name.replaceAll(" ", "_")).length > 0 ) {
		  //it exist
		  //var check = $("#"+div_idd+'_'+object_name.replaceAll(" ", "_")).remove();
		  //console.log("check", check)

			var table = $('#example').DataTable();
			 
			var rows = table
			    .rows("#"+div_idd+'_'+object_name.replaceAll(" ", "_"))
			    .remove()
			    .draw()

   		  $("."+object_name.replaceAll(" ", "_")).removeClass("modal_li_toggle");
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
		//console.log("findObject", findObject);
		if(!findObject){

			let table = $('#example').DataTable();
			$('#example').DataTable().row.add([
			  '<td class="elementIcon"><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td>', '<td class="object_name '+elementClass+'">'+object_name+'</td>', '<td><a style="cursor:pointer" onclick="removeRow(\''+div_idd+'_'+object_name.replaceAll(" ", "_")+'\')">&#10006;</a></td>'
				
			])
			.node().id = div_idd+'_'+object_name.replaceAll(" ", "_");
			// $(t).addClass("object_name");
			table.draw();

			insert_class(div_idd+'_'+object_name.replaceAll(" ", "_"),elementClass);
			
			// $('#example').dataTable( {
			//   "columnDefs": [
			//     { className: "object_name", "targets": [ 1 ] }
			//   ]
			// } );

			//$("#table_data").append('<tr id="'+div_idd+'_'+object_name.replaceAll(" ", "_")+'"><td><img style=\"width:20px; height:20px\" draggable=\"false\" src=\"resources/js/examples/editors/images/images1/'+elementIcon+'\" ></td><td class="object_name">'+object_name+'</td><td><a style="cursor:pointer" onclick="removeRow(\''+div_idd+'_'+object_name.replaceAll(" ", "_")+'\')">&#10006;</a></td></tr>');//<td onclick="abc("'+object_name+'");">&#10006;</td>
			//console.log("object_name_inside", object_name);
			//$("."+object_name).css("background-color", "grey");
			$("."+object_name.replaceAll(" ", "_")).addClass("modal_li_toggle");
			/*var element_id = document.getElementsByClassName(object_name);
			console.log("element_id", element_id);*/
			// document.getElementById(object_name).style.background-color = "red";
			// document.getElementsByClassName(object_name).style.setProperty("background-color", "red", "important");
			// document.getElementsByClassName(object_name).style.background-color = "red";
		}
	}	
}

function removeRow(trId){
	//console.log("trId", trId);
	// $('.remove_tr').click(function() {
		// var trId = $(this).closest('tr').prop('id');
	    //$("#"+trId).remove();

	var table = $('#example').DataTable();
	 
	var rows = table
	    .rows("#"+trId)
	    .remove()
	    .draw()

	    $(".tree_modal_alert_message").html('<div class="alert alert-secondary" role="alert">Removed Successfully!</div>');
	    tree_modal_alert_message();
	// });
}


function insert_class(id__,elementClass){
	var get_value = $("#"+id__);
	var first_td = $("#"+id__).find("td:eq(0)").addClass("elementIcon");
	var second_td = $("#"+id__).find("td:eq(1)").addClass("object_name");
	var second_td1 = $("#"+id__).find("td:eq(1)").addClass(elementClass+'td');
	// console.log("get_value", get_value[0]);
	// console.log("second_td", second_td)
}