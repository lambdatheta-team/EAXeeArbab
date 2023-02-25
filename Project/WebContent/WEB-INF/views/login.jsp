<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html lang="en">
<head>
	<title>EAXee</title>
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
<!-- 	////// default css -->
	<link rel="stylesheet" type="text/css" id="switcher-id" href="<c:url value="/resources/css/login/login-default.css"/>">
	<!--===============================================================================================-->
</head>
<body>
<style>

	.error{
		text-align:center;
	}
	
	.passwordDiv{
		display: flex;
	    flex-direction: row-reverse;
	    align-items: center;
	    justify-content: center;
	    color: gray;
	}
	
	 showNow:focus{
	 	background-color: 'red';
	}

</style>
<script>

document.addEventListener("keydown", function (event) {
	if (event.ctrlKey) {
	event.preventDefault();
	}
});
	

</script>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form id="loginForm" class="login100-form validate-form" action="<c:url value='/login' />" method='POST'>
					<span class="login100-form-title p-b-26">
						<img class="logo" alt="logo"  width="150px" src="<c:url value="resources/images/logo-login.png"/>">
					</span>
					<!-- <span class="login100-form-title p-b-48"> -->
						<!-- <i class="zmdi zmdi-font"></i> -->
					<!-- </span> -->
					<div class="wrap-input100 validate-input" data-validate = "">
						<input class="input100" type="text" name='username' placeholder="Username" required>
<!-- 						<span class="focus-input100"></span> -->
					</div>

					<div class="wrap-input100 validate-input passwordDiv" data-validate="">
						<span class="showNow">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input id="loginPassword" class="input100" type="password" name='password' placeholder="Password" required>
<!-- 						<span class="focus-input100" placeholder="Password"></span> -->
					</div>

					<div class="container-login100-form-btn">
<!-- 						<div class="wrap-login100-form-btn"> -->
<!-- 							<div class="login100-form-bgbtn"></div> -->
							<button class="login100-form-btn" id="login-btn">
								Login
							</button>
<!-- 						</div> -->
					</div>
					
						<c:if test="${not empty error}">
						<div class="error">${error}</div>
						</c:if>
						<c:if test="${not empty msg}">
						<div class="msg">${msg}</div>
						</c:if>	
						
					<div class="text-center p-t-115">
<!-- 						<span class="txt1"> -->
<!-- 							Don't have an account? -->
<!-- 						</span> -->

<!-- 						<a class="txt2" href="/EAZee/registration"> -->
<!-- 							Sign Up -->
<!-- 						</a> -->
						<br/>
<!-- 						<a class="txt2" href="#/EAZee/forgot_password"> -->
<!-- 							Forgot Password -->
<!-- 						</a> -->
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
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

</body>
	<script>
	
		$(".showNow").mousedown(function(){
		    $("#loginPassword").attr('type','text');
			// $(".showNow").css('background-color', '#0d7e8a');
		    $(".showNow").css('color', '#0d7e8a');
		}).mouseup(function(){
		    $("#loginPassword").attr('type','password');
			// $(".showNow").css('background-color', '#e3fdff');
		    $(".showNow").css('color', 'gray');
		}).mouseout(function(){
		    $("#loginPassword").attr('type','password');
			// $(".showNow").css('background-color', '#e3fdff');
		    $(".showNow").css('color', 'gray');
		});
		
		
		$(document).ready(function () {
		    $("#loginForm").submit(function () {
		        $("#login-btn").prop("disabled", true);
			setTimeout(function(){
				$("#login-btn").prop("disabled", false);
			}, 3000);
		        return true;
		    });
		});
	
	
	</script>
	

</html>