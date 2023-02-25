function getUserRoles(){
var userRoleDetails= $.ajax({
		url: "getUserRoles",
		data: {},
		type: "POST",
		success: function(result) {
			console.log(result)
		},
		async: false
	});
return userRoleDetails.responseJSON;
}