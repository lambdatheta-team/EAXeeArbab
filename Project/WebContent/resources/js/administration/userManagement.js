$(document).ready(function() {
	fillUsers_userRegistration();
	fillUsers_changePassword();
	$("#addUser").click(function() {
		addUser();
	});
//	$("#username").keyup(function(){
//		checkUserNameAvailablity();
//	});
	
	$(".addUser").keyup(function(){
//		checkFieldsEmpty();
		checkUserNameAvailablity();
	});
	
	usersList_userRegistrationClick();
	
	usersList_changePasswordClick();
	
});

function usersList_userRegistrationClick(){
	$(".usersList_userRegistration tr").click(function() {
		$(this).addClass('usersList_userRegistration_selected').siblings().removeClass('usersList_userRegistration_selected').addClass('pools_tbody_tr');
		$(this).removeClass('pools_tbody_tr')
	});
}

function usersList_changePasswordClick(){
	$(".usersList_changePassword tr").click(function() {
		$(this).addClass('usersList_changePassword_selected').siblings().removeClass('usersList_changePassword_selected').addClass('pools_tbody_tr');
		$(this).removeClass('pools_tbody_tr')
	});
}

function removeUser_userRegistration(){
	let username = $('.usersList_userRegistration_selected').find('td:eq(1)').html();
	console.log('username',username)
	$.ajax({
		url: "removeUser",
		type: 'GET',
		data: {username},
		success: function(res) {
			fillUsers_userRegistration();
			usersList_userRegistrationClick();
			fillUsers_changePassword();
			usersList_changePasswordClick();
			showNamedLicenses();
			showActiveUsers();
		},
		async: false
	});
}

function removeUser_changePassword(){
	let username = $('.usersList_changePassword_selected').find('td:eq(1)').html();
	console.log('username',username)
	$.ajax({
		url: "removeUser",
		type: 'GET',
		data: {username},
		success: function(res) {
			fillUsers_userRegistration();
			usersList_userRegistrationClick();
			fillUsers_changePassword();
			usersList_changePasswordClick();
			showNamedLicenses();
			showActiveUsers();
		},
		async: false
	});
}


function fillUsers_userRegistration(){
	$(".usersList_userRegistration").empty();
	let users = [];
	$.ajax({
		url: "getUsers",
		type: 'POST',
		data: {},
		success: function(res) {
			users = res;
			console.log('users',res)
		},
		async: false
	});
	
	$.each(users, function(i, val) {
		let email = val.email;
		let user_fullname = val.user_fullname;
		let username = val.username;
		let enabled = val.enabled;
		let tr = '';
		tr += '<tr class="pools_tbody_tr">';
		tr += '<td>'+user_fullname+'</td><td>'+username+'</td><td>'+email+'</td>';
		if(enabled == 1){
			tr += '<td><input onclick="activate_OR_deactivate(\''+username+'\',\'deactivate\');" type="button" style="width: 100%;" value='+deactivate+'></td>';
		}else{
			tr += '<td><input onclick="activate_OR_deactivate(\''+username+'\',\'activate\');" type="button" style="width: 100%;" value='+activate+'></td>';
		}
		tr += '</tr>';
		$(".usersList_userRegistration").append(tr);
	});
}

function fillUsers_changePassword(){
	$(".usersList_changePassword").empty();
	let users = [];
	$.ajax({
		url: "getUsers",
		type: 'POST',
		data: {},
		success: function(res) {
			users = res;
			console.log('users',res)
		},
		async: false
	});
	
	$.each(users, function(i, val) {
		let email = val.email;
		let user_fullname = val.user_fullname;
		let username = val.username;
		let tr = '';
		tr += '<tr class="pools_tbody_tr">';
		tr += '<td>'+user_fullname+'</td><td>'+username+'</td><td>'+email+'</td>';
//		if(enabled == 1){
			tr += '<td><input onclick="changePassword(\''+username+'\');" type="button" style="width: 100%;" value="'+change+'"></td>';
//		}else{
//			tr += '<td><input onclick="activate_OR_deactivate(\''+username+'\',\'activate\');" type="button" style="width: 100%;" value="Activate"></td>';
//		}
		tr += '</tr>';
		$(".usersList_changePassword").append(tr);
	});
}

function activate_OR_deactivate(username,action){
	$.ajax({
		url: "updateUserStatus",
		type: 'GET',
		data: {username,action},
		success: function(res) {
			fillUsers_userRegistration();
			usersList_userRegistrationClick();
		},
		async: false
	});
	console.log(username,action);
}

function changePassword(username){
	$("#password").val('');
	$("#confirmPassword").val('');
	$(".changePassword").prop('disabled', false);
	$("#updatePassword").click(function() {
		let passwordValue = $("#password").val();
		let confirmPasswordValue = $("#confirmPassword").val();
		
		if(passwordValue == confirmPasswordValue && passwordValue != '' && passwordValue.length>=8){
			$("#passwordErrorMessage").empty();
			$.ajax({
				url: "updateUserPassword",
				type: 'POST',
				data: { username, passwordValue },
				success: function(res) {
					$(".alert_message").html('<div class="alert alert-success" role="alert">'+password_successfully_updated+'</div>');
			    	alert_message_function();
					$(".changePassword").prop('disabled', true);
				},
				async: false
			});
			console.log(passwordValue);
		}else if(passwordValue.length<8){
			$("#passwordErrorMessage").html(''+minimum_8_characters_are_required+'');
		}else if(confirmPasswordValue == '' ||  passwordValue == ''){
			$("#passwordErrorMessage").html(''+fields_cant_be_empty+'');
		}else if ( (passwordValue != confirmPasswordValue) && passwordValue != ''){
			$("#passwordErrorMessage").html(''+password_doesnt_match+'');
		}
		$("#password").val('');
		$("#confirmPassword").val('');
	});
}

function addUser(){
	$("#addUser").prop("disabled", true);
	let fullName = $("#userFullName").val();
	let username = $("#username").val();
	let email = $("#email").val();
	$.ajax({
		url: "addUser",
		type: 'GET',
		data: {fullName,username,email},
		success: function(res) {
			$(".alert_message").html('<div class="alert alert-success" role="alert">'+user_added+'</div>');
			alert_message_function();
			$("#userFullName").val('');
			$("#username").val('');
			$("#email").val('');
			fillUsers_userRegistration();
			usersList_userRegistrationClick();
			fillUsers_changePassword();
			usersList_changePasswordClick();
			showNamedLicenses();
			showActiveUsers();
		},
		async: false
	});
}

//function checkFieldsEmpty(){
//	let fullName = $("#userFullName").val();
//	let email = $("#email").val();
//	if (fullName == '' || email == '') {
//		$("#addUser").prop("disabled", true);
//	}else{
//		checkUserNameAvailablity();
//	}
//}

//function checkUserNameAvailablity() {
//	
//	let username = $('#username').val();
//	let fullName = $("#userFullName").val();
//	let email = $("#email").val();
//	let emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
//	var format = /[ `!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;
////		console.log('fileVal',fileVal)
////		console.log( format.test(fileVal) );
//	if (username != '' && username.length>=5 && !format.test(username) ) {
//		$.ajax({
//			url: "check_username_when_registration",
//			data: { 'username': username },
//			success: function(response) {
//				if (response == 'Available') {
////					$("#addUser").prop('disabled', false);
//					if (fullName != '' && email != '' && emailReg.test(email)) {
//						$("#addUser").prop("disabled", false);
//					}else {
//						$("#addUser").prop("disabled", true);
//					}
//				} else {
//					$("#addUser").prop("disabled", true);
//				}
//				$('#username_response').html(response);
//			}
//		});
//	} else {
//		$("#addUser").prop("disabled", true);
//		if(username.length<5 && username != ''){
//			$("#username_response").html("(Minimum 5 Characters Are Required)");
//		}else if(format.test(username) && username != ''){
//			$("#username_response").html("(Only Alphanumeric ID is Allowed)");
//		}else{
//			$("#username_response").html("<br>");
//		}
//	}
//}





function checkUserNameAvailablity() {
	
	let username = $('#username').val();
	let fullName = $("#userFullName").val();
	let email = $("#email").val();
	let emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	var format = /[`!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?~]/;


	if (username != '' && username.length>=5 && !format.test(username) && !format.test(fullName)) {
		$.ajax({
			url: "check_username_when_registration",
			data: { 'username': username },
			success: function(response) {
				if (response == 'Available') {
//					$("#addUser").prop('disabled', false);
					if (fullName != '' && email != '' && emailReg.test(email)) {
						$("#addUser").prop("disabled", false);
					}else {
						$("#addUser").prop("disabled", true);
						$("#userfullname_response").html("<br>");
					}
				} else {
					$("#addUser").prop("disabled", true);
				}
				$('#username_response').html(response);
			}
		});
		
			
	} else {
		$("#addUser").prop("disabled", true);
		
		if( format.test(username) ){
//			$("#username_response").html(''+special_characters_are_not_allowed+'');
			if(format.test(username)){
				$("#username_response").html(''+special_characters_are_not_allowed+'');
			}else{
				$("#username_response").html("<br>");
			}
			if( format.test(fullName) ){
				$("#userfullname_response").html(''+special_characters_are_not_allowed+'');
			}else{
				$("#userfullname_response").html("<br>");
			}
		}
		else if(username.length<5 && username != ''){
			$("#username_response").html(''+minimum_5_characters_are_required+'');
		}else if(format.test(fullName)){
//			$("#userfullname_response").html(''+special_characters_are_not_allowed+'');
			if(format.test(username)){
				$("#username_response").html(''+special_characters_are_not_allowed+'');
			}else{
				$("#username_response").html("<br>");
			}
			if( format.test(fullName) ){
				$("#userfullname_response").html(''+special_characters_are_not_allowed+'');
			}else{
				$("#userfullname_response").html("<br>");
			}
		}
		else if(format.test(username) && username != ''){
			$("#username_response").html(''+only_alphanumeric_id_is_allowed+'');
		}else{
			$("#username_response").html("<br>");
			$("#userfullname_response").html("<br>");
		}
	}
}

