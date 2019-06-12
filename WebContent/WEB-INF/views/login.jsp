<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="NextGen Matrimonial Portal for searching a perfect life partner">
<meta name="author" content="Regional Matrimony">
<title>Regional Matrimony - NextGen Matrimonial Portal</title>
<!-- Favicon -->
<link href="resources/clientassets/img/brand/favicon.png" rel="icon"
	type="image/png">
<link type="text/css"
	href="<c:url value="resources/clientassets/css/matri.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body, html {
	height: 100%;
	margin: 0;
}

.tablink {
	background-color: #555;
	color: white;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
	width: 50%;
}

.tablink:hover {
	background-color: #777;
}

.tabcontent {
	color: white;
	display: none;
	padding: 100px 20px;
	height: 100%;
}

#login-form {
	background-color: #0d457b;
}

#register-form {
	background-color: #0d457b;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

a {
	color: dodgerblue;
}

.signin {
	background-color: #f1f1f1;
	text-align: center;
}
</style>
</head>
<body>
	<tag:url value="/" var="urlHome" />
	<div class="matri-row matri-padding matri-theme-d2 matri-xlarge">
		<div class="matri-quarter">
			<div class="matri-bar">
				<!--  <a href="#" class="matri-bar-item matri-button matri-left"><i
					class="fa fa-bars"></i></a> -->
				<button class="matri-bar-item matri-button matri-left openbtn"
					onclick="openNav()">
					<i class="fa fa-bars"></i>
				</button>
				<div id="headerpanel" class="sidepanel matri-theme-d2">
					<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
					<a href="${urlHome }">Home</a> <a href="#">About Us</a> <a href="#">Success
						Stories</a> <a href="#">Clients</a> <a href="#">Help</a> <a
						style="font-size: 19px"><i class="fa fa-mobile-phone"></i> +91
						90955-94034</a> <a style="font-size: 19px"><i
						class="fa fa-envelope-o"></i> sathesh@engineer.com</a> <a
						style="font-size: 19px"><i class="fa fa-mobile-phone"></i>
						(+91) 90955-94034</a>
				</div>
				<a class="matri-bar-item matri-button matri-center"><img
					class="matri-circle"
					src="<c:url value="resources/images/logo2.png" />"
					style="height: 40px;"></a>
			</div>
		</div>

		<div class="matri-half">
			<div class="matri-bar matri-xlarge">

				<div class="dropdown matri-right">
					<button class="dropbtn">
						Help <i class="fa fa-question-circle"></i>
					</button>
					<div class="dropdown-content matri-theme-d2">
						<a href="#">E-mail Us</a> <a href="#">Call Us</a> <a href="#">Chat
							with Us</a>
					</div>
				</div>
				<div class="dropdown matri-right">
					<button class="dropbtn">Success Stories</button>
				</div>
				<div class="dropdown matri-right">
					<button class="dropbtn">About Us</button>
				</div>
				<div class="dropdown matri-right">
					<button type="button"
						onclick="window.location.href = '${urlHome }'" class="dropbtn">Home</button>
				</div>
			</div>
		</div>
		<div class="matri-quarter">
			<div class="matri-bar">
				<button class="matri-bar-item matri-button matri-right openbtn">
					<i class="fa fa-facebook"></i>
				</button>
				<button class="matri-bar-item matri-button matri-right openbtn">
					<i class="fa fa-instagram"></i>
				</button>
				<button class="matri-bar-item matri-button matri-right openbtn">
					<i class="fa fa-twitter"></i>
				</button>
				<button class="matri-bar-item matri-button matri-right openbtn">
					<i class="fa fa-whatsapp"></i>
				</button>
			</div>
		</div>
	</div>
	<div class="matri-row matri-xlarge">
		<div class="matri-col s4 matri-left matri-mobile">
			<button class="tablink"
				onclick="openPage('login-form', this, '#0d457b')" id="defaultOpen">Login
				with Us!</button>
			<button class="tablink"
				onclick="openPage('register-form', this, '#0d457b')">Sign-up
				with Us!!</button>
			<div id="login-form" class="tabcontent">
				<form action="memberLogin" method="post" autocomplete="off">
					<div class="matri-container" style="font-size: 17px;">
						<p style="margin: 0; font-size: 17px;">Please enter
							credentials to login.</p>
						<label for="memberId"><b>E-mail</b></label> <input type="text"
							placeholder="Enter member Id" name="memberId" id="memberId"
							required> <label for="password"><b>Password</b></label> <input
							type="password" placeholder="Enter Password" name="password"
							id="password" required>
						<hr>
						<p style="color: red;">${errormsg }</p>
						<p>
							By creating an account you agree to our <a href="#">Terms Nd
								Privacy</a>.
						</p>
						<button type="submit" class="registerbtn">
							<b>Login</b>
						</button>
					</div>
				</form>
			</div>

			<div id="register-form" class="tabcontent">
				<form action="" method="post" autocomplete="off">
					<div class="matri-container"
						style="font-size: 17px; margin-botton: 17px;">
						<p style="margin: 0; font-size: 17px;">Please fill this form
							to create free account.</p>
						<label for="email"><b>E-mail</b></label> <input type="text"
							placeholder="Enter Email" name="email" required> <label
							for="mobileNumber"><b>Mobile Number</b></label> <input
							type="text" placeholder="Enter Mobile Number" name="mobileNumber"
							required> <label for="fullName"><b>Full Name</b></label>
						<input type="text" placeholder="Enter FullName" name="fullName"
							required>
						<hr>
						<p>
							By creating an account you agree to our <a href="#">Terms Nd
								Privacy</a>.
						</p>
						<button type="submit" class="registerbtn">
							<b>Register</b>
						</button>
					</div>
				</form>
			</div>
		</div>
		<div class="matri-col s8 matri-right matri-mobile">
			<div class="matri-row">
				<c:forEach var="image" items="${imagelist }" varStatus="counter">
					
				</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript">
	function openNav() {
		document.getElementById("headerpanel").style.width = "300px";
	}

	function closeNav() {
		document.getElementById("headerpanel").style.width = "0";
	}

	function openPage(pageName, elmnt, color) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}

		tablinks = document.getElementsByClassName("tablink");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].style.backgroundColor = "";
		}

		document.getElementById(pageName).style.display = "block";

		elmnt.style.backgroundColor = color;
	}

	document.getElementById("defaultOpen").click();
	
	$().ready(function() {
	    if(document.referrer != 'http://localhost:8080/logout'){ 
	        history.pushState(null, null, 'login');
	        window.addEventListener('popstate', function () {
	            history.pushState(null, null, 'login');
	        });
	    }
	});
</script>
</html>
