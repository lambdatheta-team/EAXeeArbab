<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>Login V16</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animate/animate.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/animsition/css/animsition.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/select2/select2.min.css" />">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendor/daterangepicker/daterangepicker.css" />">
<!--===============================================================================================-->
	<link href="<c:url value="/resources/css/login_main.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/login_util.css"/>" rel="stylesheet">
	
	<script type="text/javascript" src="<c:url value="/resources/js/xmlToJSON.js" />"></script>
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Account Login
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="User name">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js" />"></script>
	<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/select2/select2.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/daterangepicker/moment.min.js" />"></script>
	<script src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/vendor/countdowntime/countdowntime.js" />"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="<c:url value="/resources/js/login.js" />"></script>

</body>
</html>