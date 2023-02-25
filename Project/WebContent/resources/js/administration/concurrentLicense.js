	var counterForIds = 0;
	
	$(document).ready(function() {
		showAllPools();
			
//		selectPoolAddClass();

		$( "#deletePool" ).click(function() {
			$.ajax({
				url : "deletePool",
				type : 'GET',
				data : {'poolName':poolNameGlobal},
				success : function(res) {
					if(res == null || res == undefined || res == '' || res == 0 ){
						sessionLoggedOutModalOpen();
					}else{
						$("#licenseSelect").empty();
						$("#userSelect").empty();	
						$("#user_tbody").empty();
						$("#license_tbody").empty();					
						
						$('.selected').remove();
						$(".alert_message").html('<div class="alert alert-danger" role="alert">'+removed+'</div>');
				    	alert_message_function();
			    	}
				},
		        async: false
			});
		});
		
		$( "#showPool" ).click(function() {
// 			$("#poolTables").empty();
// 			let selectedValue = $("#poolSelect").val();
// 			$("#poolTables").append('<h2 class="center">'+selectedValue+'</h2><div class="pool" id="'+selectedValue+'" style="display:flex;"></div');
// 			poolNameGlobal = selectedValue;
			getAndShowPoolLicenseAndUsers();
		});
		
		
//		$("#poolName").keyup(function(){
//			let poolName = $('#poolName').val();
//			if(poolName != ''){
//				$.ajax({
//					url: "check_poolname_when_registration",
//					data: {'poolName': poolName},
//					success: function(response){
//						if(response=='Available'){
//							$("#createPoolButton").prop('disabled', false);
//						}else{
//							$("#createPoolButton").prop("disabled",true);
//						}
//						$('#pool_response').html(response);
//					}
//				});
//			}else{
//				$("#createPoolButton").prop("disabled",true);
//				$("#pool_response").html("(Name must be unique)");
//			}
//		});
		
		var format = /[ `!@#$%^&*()+\-=\[\]{};':"\\|,.<>\/?~]/;
		
		$("#poolName").keyup(function(){
			let poolName = $('#poolName').val();
			
			if(!format.test(poolName)){
				
			if(poolName != ''){
				$.ajax({
					url: "check_poolname_when_registration",
					data: {'poolName': poolName},
					success: function(response){
						if(response=='Available'){
							$("#createPoolButton").prop('disabled', false);
						}else{
							$("#createPoolButton").prop("disabled",true);
						}
						$('#pool_response').html(response);
					}
				});
			}else{
				$("#createPoolButton").prop("disabled",true);
				$("#pool_response").html(''+name_must_be_unique+'');
			}
				
			}else{
				$("#createPoolButton").prop("disabled",true);
				$("#pool_response").html(''+special_characters_are_not_allowed+'');
			}
			
		});
		
		$( "#addLicenseToPool" ).click(function() {
			let trID = 'tr'+counterForIds++;
			let licenseDropdownValue = $( "#licenseSelect" ).val();
			$("#license_tbody").append('<tr id="'+trID+'"><td class="poolLicenses">'+licenseDropdownValue+'</td><td><a style="cursor:pointer" onclick="removeRow('+trID+',\'license\')">&#10006;</a></td></tr>');
			selectedLicenseAddClass();
			var index = $('#licenseSelect').get(0).selectedIndex;
			$('#licenseSelect option:eq(' + index + ')').remove();
			console.log($('#licenseSelect option:eq(0)'))
			$('#licenseSelect option:eq(0)').attr('selected','selected')
			// $("#save_button").attr('disabled', false);
			document.getElementById("save_button").classList.remove("disabled");
			console.log('licenseDropdownValue',licenseDropdownValue)
			licenseDropdownValue = $( "#licenseSelect" ).val();
			if(licenseDropdownValue == null){
				$("#addLicenseToPool").prop('disabled', true);
			}
			
		});
		
		$('#licenseSelect').on('change', function (e) {
			$("#addLicenseToPool").prop('disabled', false);
			
		});
		$( "#licenseSelect" ).click(function() {
			$("#addLicenseToPool").prop('disabled', false);
		});
		
		$( "#addUserToPool" ).click(function() {
			let trID = 'tr'+counterForIds++;
			let userDropdownValue = $( "#userSelect" ).val();
			$("#user_tbody").append('<tr id="'+trID+'"><td class="poolUsers">'+userDropdownValue+'</td><td><a style="cursor:pointer" onclick="removeRow('+trID+',\'user\')">&#10006;</a></td></tr>');
			selectedUserAddClass();
			var index = $('#userSelect').get(0).selectedIndex;
			$('#userSelect option:eq(' + index + ')').remove();
			console.log($('#userSelect option:eq(0)'))
			$('#userSelect option:eq(0)').attr('selected','selected')
			
			//$("#save_button").attr('disabled', false);
			document.getElementById("save_button").classList.remove("disabled");
			
			userDropdownValue = $( "#userSelect" ).val();
			if(userDropdownValue == null){
				$("#addUserToPool").prop('disabled', true);
			}
		});
		
		$('#userSelect').on('change', function (e) {
			$("#addUserToPool").prop('disabled', false);
		});
		
//		$( "#save_button" ).click(function() {
//			let poolLicenses = [];
//			let poolUsers = [];
//			let licencse_tds = document.getElementsByClassName("poolLicenses");
//			$.each(licencse_tds, function(i, val) {
//				poolLicenses.push(val.innerHTML)
//			});
//			let user_tds = document.getElementsByClassName("poolUsers");
//			$.each(user_tds, function(i, val) {
//				poolUsers.push(val.innerHTML)
//			});
//			
//			$.ajax({
//				url: "updatePoolDetails",
//				type: 'POST',
//				data: {
//					poolLicenses,poolUsers,poolNameGlobal,
//				},
//				success: function(res) {
//					$(".alert_message").html('<div class="alert alert-success" role="alert">Successfully Saved</div>');
//			    	alert_message_function();
//				}
//			});
//			console.log(poolLicenses,poolUsers,poolNameGlobal);
//		});



		$( "#save_button" ).click(function() {
			let poolLicenses = [];
			let poolUsers = [];
			let licencse_tds = document.getElementsByClassName("poolLicenses");
			$.each(licencse_tds, function(i, val) {
				poolLicenses.push(val.innerHTML)
			});
			let user_tds = document.getElementsByClassName("poolUsers");
			$.each(user_tds, function(i, val) {
				poolUsers.push(val.innerHTML)
			});
			
			
			if(poolLicenses.length != 0 && poolUsers.length != 0 ){
				$.ajax({
					url: "updatePoolDetails",
					type: 'POST',
					data: {
						poolLicenses,poolUsers,poolNameGlobal,
					},
					success: function(res) {
						$(".alert_message").html('<div class="alert alert-success" role="alert">'+successfully_saved+'</div>');
				    	alert_message_function();
				    	document.getElementById("save_button").classList.add("disabled");
					}
				});
			}else{
				if(poolLicenses.length == 0){
					$(".alert_message").html('<div class="alert alert-danger" role="alert">'+license_not_found+'</div>');
				    alert_message_function();
				}else if (poolUsers.length == 0){
					$(".alert_message").html('<div class="alert alert-danger" role="alert">'+user_not_found+'</div>');
				    alert_message_function();
				}
			}
		});
		
	
	});
	
	function getAndShowPoolLicenseAndUsers() {
		$.ajax({
			url: "getPoolLicenseAndUsers",
			type: 'GET',
			data: { 'poolName': poolNameGlobal },
			success: function(res) {
				showPoolLicense(res['poolLicense'], poolNameGlobal);
				showPoolUsers(res['poolUsers'], poolNameGlobal);
				licenseRole = res['poolRoleType'][0];
				fillLicenseDropdown(res['availableLicense']);
				fillUsersDropdown(res['availableUsers']);
				// 					console.log('availableLicense',res['availableLicense']);
				// 					console.log('availableLicense',res['availableUsers']);
			},
			async: false
		});
	}
	
	function selectPoolAddClass(){
		$(".poolSelectTable tbody tr").click(function(){
		   $(this).addClass('selected').siblings().removeClass('selected').addClass('pools_tbody_tr');
		   $(this).removeClass('pools_tbody_tr')
		   var value=$(this).find('td:first').html();
		   poolNameGlobal = value;
		   getAndShowPoolLicenseAndUsers();
		   document.getElementById("concurrentTabSaveButonDiv").style.display = "block";

		});
	}
	
	function selectedLicenseAddClass() {
		$("#license_table #license_tbody tr").click(function() {
			console.log('called')
			$(this).addClass('selectedConcurrentLicense').siblings().removeClass('selectedConcurrentLicense');
//			$(this).removeClass('pools_tbody_tr')
//			var value = $(this).find('td:first').html();
//			poolNameGlobal = value;
			// 		   console.log(value);    
		});
	}
	
	function selectedUserAddClass() {
		$("#users_table #user_tbody tr").click(function() {
			console.log('called2')
			$(this).addClass('selectedConcurrentLicenseUser').siblings().removeClass('selectedConcurrentLicenseUser');
			//			$(this).removeClass('pools_tbody_tr')
			//			var value = $(this).find('td:first').html();
			//			poolNameGlobal = value;
			// 		   console.log(value);    
		});
	}
	
	function alert_message_function(){
		setTimeout(function() { $(".alert_message").html(""); }, 2500);
		setTimeout(function() { $(".alertMessageForHistoryTab").html(""); }, 2500);
	}
	
	function showAllPools(){
		$(".pools_tbody").empty();
		let poolNames = '';
		$.ajax({
			url : "getPools",
			type : 'GET',
			data : {},
			success : function(res) {
				poolNames = res;
			},
	        async: false
		});
		let tbody = '';
		$.each(poolNames, function(i, val) {
			

 			
			let poolName = val.pool_name;
			let role = val.role_type;
			
			console.log('poolNames', poolName)
 			console.log('role', role)
 			
			let tr = '';
			tr += '<tr class="pools_tbody_tr">';
				tr +='<td>'+poolName+'</td><td>'+role+'</td>';
			tr +='</tr>';
			$(".pools_tbody").append(tr);
// 			val = val.replaceAll('pool_','').replaceAll('_license','');
			
// 			$("<option/>", {
// 				value: val,
// 				text: val
// 			}).appendTo("#poolSelect");
		});
		selectPoolAddClass();
	}
	
	function showPoolLicense(licenses,poolName){
		// console.log('licenses', licenses)
		let poolLicenseTable = '';
		poolLicenseTable += '<table class="table table-bordered ">';
		poolLicenseTable += '<thead>';
		poolLicenseTable += '<tr class="table-primary">';
		poolLicenseTable += '<th scope="col">'+license+'</th>';
		poolLicenseTable += '</tr>';
		poolLicenseTable += '</thead>';
		poolLicenseTable += '<tbody id="license_tbody" class="pool_table_data">';
		
		$.each(licenses, function(i, val) {
			let trID = 'tr'+counterForIds++;
			poolLicenseTable += '<tr id="'+trID+'">';
			poolLicenseTable += '<td class="poolLicenses">'+val+'</td><td><a style="cursor:pointer" onclick="removeRow('+trID+',\'license\')">&#10006;</a></td>';
			poolLicenseTable += '</tr>';
		});
		
		poolLicenseTable += '</tbody>';
		poolLicenseTable += '</table>';
		$("#license_table").empty();
		$("#license_table").append(poolLicenseTable);
	}
	
	function showPoolUsers(users,poolName){
		console.log('users', users)
		let poolUsersTable = '';
// 		poolUsersTable = '&nbsp&nbsp&nbsp';
		poolUsersTable += '<table class="table table-bordered">';
		poolUsersTable += '<thead>';
		poolUsersTable += '<tr class="table-primary">';
		poolUsersTable += '<th scope="col">'+users_ar+'</th>';
		poolUsersTable += '</tr>';
		poolUsersTable += '</thead>';
		poolUsersTable += '<tbody id="user_tbody" class="pool_table_data">';
		
		$.each(users, function(i, val) {
			let trID = 'tr'+counterForIds++;
			poolUsersTable += '<tr id="'+trID+'">';
			poolUsersTable += '<td class="poolUsers">'+val+'</td><td><a style="cursor:pointer" onclick="removeRow('+trID+',\'user\')">&#10006;</a></td>';
			poolUsersTable += '</tr>';
		});
		
		
		poolUsersTable += '</tbody>';
		poolUsersTable += '</table>';
		$("#users_table").empty();
		$("#users_table").append(poolUsersTable);
	}
	
	function fillLicenseDropdown(licenses){
		selectedLicenseAddClass();
		if(licenses.length>0){
			$("#addLicenseToPool").prop('disabled', false);
		}
		$("#licenseSelect").empty();
		var i=0;
		$.each(licenses, function(i, val) {
			if(i==0){
				$("#licenseSelect").append('<option selected value="'+val+'">'+val+'</option>');
// 				$("<option selected/>", {
// 					value: val,
// 					text: val
// 				}).appendTo("#licenseSelect");
				i=2;
			}else{
				$("#licenseSelect").append('<option value="'+val+'">'+val+'</option>');
// 				$("<option/>", {
// 					value: val,
// 					text: val
// 				}).appendTo("#licenseSelect");
			}
		});
	}
	
	function fillUsersDropdown(users){
		selectedUserAddClass();
		if(users.length>0){
			$("#addUserToPool").prop('disabled', false);
		}
		$("#userSelect").empty();
		var i=0;
		$.each(users, function(i, val) {
			if(i==0){
				$("#userSelect").append('<option selected value="'+val+'">'+val+'</option>');
				i=2;
			}else{
				$("#userSelect").append('<option value="'+val+'">'+val+'</option>');
			}
// 			$("<option/>", {
// 				value: val,
// 				text: val
// 			}).appendTo("#userSelect");
		});
	}
	
	function removeRow(trId,type){
//		 var trId = $(this).closest('tr').prop('id');
		console.log("trId",trId)
		var value=$(trId).find('td:first').html();
		console.log("value",value)
		if(type=='license'){
			$("#licenseSelect").append('<option selected value="'+value+'">'+value+'</option>');
		}else if(type=='user'){
			$("#userSelect").append('<option selected value="'+value+'">'+value+'</option>');
		}
	    $(trId).remove();
	    //$("#save_button").attr('disabled', false);
	    
	    document.getElementById("save_button").classList.remove("disabled");
	}
	

	function createPool() {
		let poolName = $("#poolName").val();
		let poolType = $("#roleSelect").val();
		poolNameGlobal = poolName;
		licenseRole = poolType;
		
		if(poolName && poolType){
		$.ajax({
			url: "create_pool",
			data:{  'poolName': poolName,
					'poolType': poolType
			},
			success: function(res){
				if(res == null || res == undefined || res == '' ){
					sessionLoggedOutModalOpen();
					console.log('user logged out')
				}else{
					showPoolLicense([],poolName);
					showPoolUsers([],poolName);
					fillLicenseDropdown(res['availableLicense']);
					fillUsersDropdown(res['availableUsers']);
					$("#createPoolButton").prop('disabled', true);
					// $("#deletePool").prop("disabled", false)
					// $("#showPool").prop("disabled", false)
				}
			},complete: function (data) {
				$("#poolName").val('');
				$("#roleSelect").val('');
				$("#pool_response").html("(Name must be unique)");
				showAllPools();
				document.getElementById("concurrentTabSaveButonDiv").style.display = "block";
			}
		});
		}else if(!poolName){
			$(".alert_message").html('<div class="alert alert-danger" role="alert">'+pool_name_is_not_selected+'</div>');
			alert_message_function();
		}else if(!poolType){
			$(".alert_message").html('<div class="alert alert-danger" role="alert">'+pool_type_is_not_selected+'</div>');
			alert_message_function();
		}else{
			$(".alert_message").html('<div class="alert alert-danger" role="alert">'+pool_name_and_pool_type_are_not_selected+'</div>');
			alert_message_function();
		}
		/*
		$("#poolTables").append('<h2 class="center">'+poolName+'</h2><div class="pool" id="'+poolName+'" style="display:flex;"></div');
		
		
		console.log('poolName', poolName)
		let poolTable = '';
		poolTable += '<table class="table table-bordered table-striped">';
		poolTable += '<thead>';
		poolTable += '<tr class="table-primary">';
		poolTable += '<th scope="col">License</th>';
		poolTable += '</tr>';
		poolTable += '</thead>'; 	
		poolTable += '<tbody>';
		poolTable += '<tr>';
		poolTable += '<td></td>';
		poolTable += '</tr>';
		poolTable += '</tbody>';
		poolTable += '</table>';
		
		poolTable += '&nbsp&nbsp&nbsp';

		poolTable += '<table class="table table-bordered table-striped">';
		poolTable += '<thead>';
		poolTable += '<tr class="table-primary">';
		poolTable += '<th scope="col">Users</th>';
		poolTable += '</tr>';
		poolTable += '</thead>';
		poolTable += '<tbody>';
		poolTable += '<tr>';
		poolTable += '<td></td>';
		poolTable += '</tr>';
		poolTable += '</tbody>';
		poolTable += '</table>';
		$("#"+poolName).append(poolTable);
		*/
	}
	
