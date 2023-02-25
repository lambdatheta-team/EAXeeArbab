//var namedLicenseKeyGlobal = '';
//var namedLicenseRoleGlobal = '';
$(document).ready(function() {
	showAllocatedLicenses();
	showNamedLicenses();
	showActiveUsers();
	
	$("#allocateNamedLicense").click(function() {
		let selectedUser = $('#activatedUsersForNamedLicense').val();
		namedLicenseKeyGlobal = $('.namedLicenceSelected').find('td:first').html();
		namedLicenseRoleGlobal = $('.namedLicenceSelected').find('td:eq(1)').html();
		
		if(selectedUser && namedLicenseRoleGlobal){
			
		$.ajax({
			url: "allocateNamedLicense",
			type: 'POST',
			data: {
				'license_key': namedLicenseKeyGlobal,
				'username': selectedUser
			},
			success: function(res) {
				
			},
			async: false
		});
		}else if(!namedLicenseRoleGlobal){
			$(".alert_message").html('<div class="alert alert-danger" role="alert">'+license_not_selected+'</div>');
			alert_message_function();
		}else if(!selectedUser){
			$(".alert_message").html('<div class="alert alert-danger" role="alert">'+user_not_selected+'</div>');
			alert_message_function();
		}else{
			$(".alert_message").html('<div class="alert alert-danger" role="alert">'+user_and_license_are_not_selected+'</div>');
			alert_message_function();			
		}

		$('.namedLicenceSelected').remove();
		showAllocatedLicenses();
	});
});

function showNamedLicenses(){
	$("#available_named_license_tbody").empty();
	let availableNamedLicenses = [];
	$.ajax({
		url: "getAvailableNamedLicenses",
		type: 'GET',
		data: {},
		success: function(res) {
			availableNamedLicenses = res;
		},
		async: false
	});
	$.each(availableNamedLicenses, function(i, val) {
		let license_key = val.license_key;
		let user_role = val.user_role;
		let tr = '';
		tr += '<tr class="pools_tbody_tr">';
		tr += '<td>' + license_key + '</td><td>' + user_role + '</td>';
		tr += '</tr>';
		$("#available_named_license_tbody").append(tr);
	});
	addSelectedClassToTable ();
}

function addSelectedClassToTable (){
	$("#available_named_license_tbody tr").click(function() {
		$(this).addClass('namedLicenceSelected').siblings().removeClass('namedLicenceSelected').addClass('pools_tbody_tr');
		$(this).removeClass('pools_tbody_tr')
	});
}

function showActiveUsers(){
	let activeUsers = [];
	$.ajax({
		url: "getActiveUsers",
		type: 'GET',
		data: {},
		success: function(res) {
			activeUsers = res;
		},
		async: false
	});
	$("#activatedUsersForNamedLicense").empty();
	var i = 0;
	$.each(activeUsers, function(i, val) {
		if (i == 0) {
			$("#activatedUsersForNamedLicense").append('<option selected value="' + val + '">' + val + '</option>');
			i = 2;
		} else {
			$("#activatedUsersForNamedLicense").append('<option value="' + val + '">' + val + '</option>');
		}
	});
}


function showAllocatedLicenses() {
	$(".named_license_tbody").empty();
	let allocatedNamedLicenses = [];
	$.ajax({
		url: "getAllocatedNamedLicenses",
		type: 'GET',
		data: {},
		success: function(res) {
			allocatedNamedLicenses = res;
		},
		async: false
	});
	
	$.each(allocatedNamedLicenses, function(i, val) {
		let namedLicesenceTrID = 'namedLicesenceTr_'+i;
		let license_key = val.license_key;
		let user_role = val.user_role;
		let username = val.username;
		let row_id = val.row_id;
		let tr = '';
		tr += '<tr id="'+namedLicesenceTrID+'" class="pools_tbody_tr">';
		tr += '<td>' + license_key + '</td><td>' + user_role + '</td><td>' + username + '</td><td><input type="button" onclick="deAllocateLicense(\''+row_id+'\',\''+namedLicesenceTrID+'\',\''+username+'\');" style="width: 100%;" value='+deallocate+'></td>';
		tr += '</tr>';
		$(".named_license_tbody").append(tr);
	});
}

function deAllocateLicense(row_id,tr_id,username){
	$.ajax({
		url: "deAllocateNamedLicense",
		type: 'GET',
		data: {row_id,username},
		success: function(res) {
			$("#"+tr_id).remove();
			$(".alert_message").html('<div class="alert alert-success" role="alert">'+deallocated+'Deallocated</div>');
			alert_message_function();
		},
		async: false
	});
	showNamedLicenses()
}
