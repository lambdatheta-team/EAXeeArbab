<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html lang="en">
<head>
	<title>EAXEE - Registration</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value="/resources/vendor/images/icons/favicon.ico"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" >
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/fonts/iconic/css/material-design-iconic-font.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animate/animate.css"/>">
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css-hamburgers/hamburgers.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animsition/css/animsition.min.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/select2/select2.min.css"/>">
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css"/>">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css/util.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/css/main.css"/>">
	<!--===============================================================================================-->
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
	<title>Registration</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<!--  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	<!--  -->
</head>
<body >
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="user_register" method='POST'>
					<span class="login100-form-title p-b-26">
						<img  alt="logo"  width="150px" src="<c:url value="resources/images/eazee-Logo.png"/>">
					</span>
					<!-- <span class="login100-form-title p-b-48"> -->
						<!-- <i class="zmdi zmdi-font"></i> -->
					<!-- </span> -->
					<c:if test="${not empty error}">
						<div class="error">${error}</div>
					</c:if>
					<c:if test="${not empty msg}">
						<div class="msg">${msg}</div>
					</c:if>
					<div class="wrap-input100 validate-input" data-validate = "Valid username is: admin">
						<input class="input100" id="username" type="text" name='username' placeholder="Username">
						<!-- <span id="uname_response">(Name must be unique)</span> -->
						<span id="uname_response" class="focus-input100">(Name must be unique)</span>
					</div>
					
					<div  class="wrap-input100 validate-input" data-validate = "Valid email is: admin@mail.com">
						<input id="email"  class="input100" type="email" name='email' placeholder="admin@mail.com">
						<!-- <span class="focus-input100"></span> -->
						<span id="email_response" class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Company Name">
						<input class="input100" type="text" name='company_name' placeholder="Company Name">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="metaModel">
	                    <select class="input100 addMetaModel" name='metamodel_name' onchange="selectmetaModel(this.value)">
        	
    					</select>
					</div>					
					
			        <div class="wrap-input100 validate-input" data-validate="Company Phone Number">
			        	<input type="tel" id="phone_no" name="phone_no" placeholder="Phone# 2137889098" pattern="[0-9]{10}" maxlength="12">
			        	<span style="font-size: 12px">(Enter 12 digit no <strong>e.g: 2137889098</strong> please don't type country code)</span>
			        	<!-- <input type="number" id="phone_no" class="form-control" name="phone_no" placeholder="Phone#" required="required"> -->
			        </div>
	        
					<div class="wrap-input100 validate-input" data-validate="Company Address">
						<input class="input100" type="text" name='company_address' placeholder="Company Address">
						<span class="focus-input100"></span>
					</div>
					
<!-- 					<div class="wrap-input100 validate-input" data-validate="Enter password"> -->
<!-- 						<span class="btn-show-pass"> -->
<!-- 							<i class="zmdi zmdi-eye"></i> -->
<!-- 						</span> -->
<!-- 						<input class="input100" type="password" name='password' placeholder="Password"> -->
<!-- 						<span class="focus-input100" placeholder="Password"></span> -->
<!-- 					</div> -->

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
			            <input class="input100" id="password" type="password" name="password" placeholder="Password" minlength="8" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="required">
			            <span style="font-size: 12px">(Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters)</span>
			        </div>
	        
<!-- 					<div class="wrap-input100 validate-input" data-validate="Enter confirm password"> -->
<!-- 						<span class="btn-show-pass"> --> 
<!-- 							<i class="zmdi zmdi-eye"></i> --> 
<!-- 						</span> -->
<!-- 						<input class="input100" type="password" name='confirm_password' placeholder="Confirm Password"> -->
<!-- 						<span class="focus-input100" placeholder="Confirm Password"></span> -->
<!-- 					</div> -->
					
					<div class="wrap-input100 validate-input" data-validate="Enter confirm password">
			            <input class="input100" id="confirm_password" type="password" class="form-control" name="confirm_password" placeholder="Confirm Password" minlength="8" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="required">
			        	<span class="focus-input100" placeholder="Confirm Password"></span>
			        </div>  
	        
					
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Register
							</button>
						</div>
					</div>	        
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>

				<div class="container-login100-form-btn">
					<div class="wrap-login100-form-btn">
						<div class="login100-form-bgbtn"></div>
						<button class="btn btn-info btn-lg btn-block">
							<a href="/EAZee" style="color: white; text-decoration: none;">Back</a>
						</button>
					</div>
				</div>
					
				<div class="text-center">Already have an account? <a href="/EAZee">Sign in</a></div>
			</div>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js"/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js"/>"></script>
	<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/select2/select2.min.js"/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/daterangepicker/moment.min.js"/>"></script>
	<script src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js"/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/countdowntime/countdowntime.js"/>"></script>
	<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/js/main.js"/>"></script>
	
	<script>
	$(document).ready(function(){
		$("#username").keyup(function(){
			var username = $(this).val().trim();
			if(username != ''){
				//console.log('username',username)
				$.ajax({
					url: "check_username_when_registration",
					type: 'post',
					data: {username: username},
					success: function(response){
						console.log(response)
						$('#uname_response').html(response);
						// check_email();
					}
				});
			}else{
				$("#uname_response").html("");
			}
		});

		// function check_email(){
		$("#email").keyup(function(){
			var email = $(this).val().trim();
			if(email != ''){
				$.ajax({
					url: "check_email_when_registration",
					type: 'post',
					data: {email:email},
					success: function(response){
						$('#email_response').html(response);
					}
				});
			}else{
				$("#email_response").html("");
			}
		});
		// }
	});
	//Password matching 
	var password = document.getElementById("password")
	var confirm_password = document.getElementById("confirm_password");

	function validatePassword(){
		if(password.value != confirm_password.value) {
			confirm_password.setCustomValidity("Passwords doesn't match");
		} else {
			confirm_password.setCustomValidity('');
		}
	}

	password.onchange = validatePassword;
	confirm_password.onkeyup = validatePassword;

	//Input value not empty condition
	function validateForm() {
		// var name = document.forms["myForm"]["name"].value;
		var username = document.forms["myForm"]["username"].value;
		var email = document.forms["myForm"]["email"].value;
		var company_name = document.forms["myForm"]["company_name"].value;
		var phone_no = document.forms["myForm"]["phone_no"].value;
		// var cell_no = document.forms["myForm"]["cell_no"].value;
		var country_name = document.forms["myForm"]["country_name"].value;
		var address = document.forms["myForm"]["address"].value;
		var password = document.forms["myForm"]["password"].value;
		var confirm_password = document.forms["myForm"]["confirm_password"].value;
		//var role_type = document.forms["myForm"]["role_type"].value;
		//var current_balance = document.forms["myForm"]["current_balance"].value;
		$.ajax({
			url :"/node/register",
			type:"post",
			// data:{name:name, username:username, email:email, phone_no:phone_no, cell_no:cell_no, address:address, password:password, confirm_password:confirm_password, role_type:role_type},
			data:{username:username, email:email, company_name:company_name, phone_no:phone_no, country_name:country_name,address:address, password:password, confirm_password:confirm_password, role_type:role_type, current_balance:current_balance},
			dataType:"json",
			success:function(response){
				if(response == 1){
					alert("User already exists!");
				}
				else{
					alert("Your Request has been sent to Super admin.\nPlease Check Your Email Within 24 hours!");
					// window.location.href = '/';
					window.close();
				}
			}
		});
		return false;
	  // if (username != "" && email != "" && password != "" && confirm_password != "" && role_type != "" ){
	  // 	alert("Your Request is send!");
	  // }
	  // else{
	  // 	alert("Password do not match");
	  // }
	}
	
	/* Select metaModel starts here */
	window.onload = (event) => {
		$.ajax({
		    url: "getMetaModel", // url: "/findTables?dbName="+db_name,
		  	method: 'get',
		    //type: "GET",
		    data: {},
		    success: function(database_name){
		    	//console.log("database_name", database_name)
		    	let metamodel_name = []
		    	for(let i = 0 ; i <= database_name.length-1; i++){
		    		metamodel_name.push(database_name[i].dbName)
		    	}
		    	$('.addmetaModel').append('<option value="" selected disabled hidden>Select MetaModel</option>');
		    	for(var i = 0 ; i <= metamodel_name.length-1; i++){
			    	let final_metamodel_name = metamodel_name[i].split("_metamodel");
			    	if(final_metamodel_name.indexOf( final_metamodel_name[1]) == '1'){
			    		$('.addmetaModel').append('<option value="'+final_metamodel_name[0]+'">'+final_metamodel_name[0]+'</option>');
			    	}
		    	}
		    }
		})
	};
	
	function selectmetaModel(metaModelName){
		console.log("metaModelName",metaModelName)
	}
	/* Select metaModel ends here */
	</script>
</body>
</html>