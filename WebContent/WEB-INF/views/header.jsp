<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value="resources/clientassets/css/matri.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<tag:url value="/getAllProfiles" var="urlGetAllProfiles" />
	<tag:url value="/profile/G1900001" var="urlProfile" />
	<tag:url value="/logout" var="urlLogout" />

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
					<c:if test="${not empty user.fullName }">
						<div class="dropdown matri-left" style="width: 100%;">
							<button class="dropbtn"
								style="font-size: 22px; font-align: left;">
								<i class="fa fa-user-circle matri-left"></i> ${ user.fullName }
							</button>
							<div class="dropdown-content matri-theme-d2">
								<a href="#">My Profile</a> <a href="#">Change Password</a> <a
									href="${urlLogout }">Logout</a>
							</div>
						</div>
					</c:if>
					<a href="#">About</a> <a href="#">Services</a> <a href="#">Clients</a>
					<a href="#">Contact</a>

				</div>
				<a class="matri-bar-item matri-button matri-center"><img
					class="matri-circle"
					src="<c:url value="resources/images/logo2.png" />"
					style="height: 40px;"></a>
			</div>
		</div>

		<div class="matri-half">
			<div class="matri-bar matri-xlarge">
				<c:if test="${not empty user.fullName }">
					<div class="dropdown matri-right">
						<button class="dropbtn">
							${user.fullName } <i class="fa fa-user-circle"></i>
						</button>
						<div class="dropdown-content matri-theme-d2">
							<a href="#">My Profile</a> <a href="#">Change Password</a> <a
								href="${urlLogout }">Logout</a>
						</div>
					</div>
				</c:if>
				<div class="dropdown matri-right">
					<button class="dropbtn">
						Wishlist <i class="fa fa-heartbeat"></i>
					</button>
					<div class="dropdown-content matri-theme-d2">
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
				</div>
				<div class="dropdown matri-right">
					<button class="dropbtn">
						Help <i class="fa fa-question-circle"></i>
					</button>
					<div class="dropdown-content matri-theme-d2">
						<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link
							3</a>
					</div>
				</div>
				<div class="dropdown matri-right">
					<button class="dropbtn">Success Stories</button>
				</div>
				<div class="dropdown matri-right">
					<button class="dropbtn">
						Matches <i class="fa fa-users"></i>
					</button>
					<div class="dropdown-content matri-theme-d2">
						<a href="${ urlGetAllProfiles}">All Profile</a> <a href="#">Suggested
							Matches</a> <a href="#">Recently viewed</a>
					</div>
				</div>
			</div>

		</div>
		<div class="matri-quarter">
			<a href="#" class="matri-bar-item matri-button matri-right"><i
				class="fa fa-search"></i></a> <input type="text"
				class="matri-amber matri-border-0 matri-padding matri-right"
				style="width: 80%;">
		</div>
	</div>
</body>
<script type="text/javascript">
	function openNav() {
		document.getElementById("headerpanel").style.width = "300px";
	}

	function closeNav() {
		document.getElementById("headerpanel").style.width = "0";
	}
</script>
</html>