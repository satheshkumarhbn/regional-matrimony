<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value="resources/clientassets/css/matri.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<style>
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="matri-row">
		<div class="matri-col s8 matri-mobile">
			<img class="matri-image" alt="Banner for Regional matrimony"
				src="<c:url value = "resources/images/bannerashok.jpg" />">
		</div>
		<div class="matri-col s4 matri-mobile matri-right matri-theme-d2">
			<div class="matri-row matri-theme-dark matri-xlarge">
				<div class="matri-bar">
					<h4 class="matri-margin-left">Vision</h4>
				</div>
			</div>
			<div class="matri-row matri-theme-light matri-xlarge">
				<p class="matri-margin-left matri-medium">We kind of people act as a bridge between the bride and groom for their life</p>
			</div>
			<div class="matri-row matri-theme-dark matri-xlarge">
				<div class="matri-bar">
					<h4 class="matri-margin-left">Mission</h4>
				</div>
			</div>
			<div class="matri-row matri-theme-light matri-xlarge">
				<p class="matri-margin-left matri-medium">Next-Gen matrimonial application for the youngsters.</p>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${not empty recAddGroomList }">
			<div class="matri-row matri-theme-d2 matri-xlarge">
				<div class="matri-bar">
					<h3 class="matri-margin-left">Recently Added Profiles</h3>
				</div>
			</div>
			<div class="matri-row matri-center">
				<c:forEach begin="0" end="6" var="profile"
					items="${recAddGroomList }">
					<div class="matri-col s2 matri-mobile">
						<img class="matri-profile matri-padding-top matri-center" alt="Banner for Regional matrimony"
							src="<c:url value="resources/images/admin.jpg" />"> <label
							class="matri-center"><b>${profile.firstName } ${profile.lastName }, ${profile.age }</b></label> <label
							class="matri-center"><b>${profile.occupation }/${profile.workLocation }</b></label>
						<div class="profile-card-name">
							<button class="matri-btn view-profile-btn matri-center"
								style="width: 100%">View Profile</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:when>
		<c:when test="${not empty recAddBrideList }">
			<div class="matri-row matri-theme-d2 matri-xlarge">
				<div class="matri-bar">
					<h3 class="matri-margin-left">Recently Added Profiles</h3>
				</div>
			</div>
			<div class="matri-row matri-center">
				<c:forEach begin="0" end="6" var="bride"
					items="${recAddBrideList }">
					<div class="matri-col s2 matri-mobile">
						<img class="matri-profile matri-padding-top matri-center" alt="Banner for Regional matrimony"
							src="<c:url value="resources/images/admin.jpg" />"> <label
							class="matri-center matri-mobile matri-padding-left matri-padding-right"><b>${ bride.firstName } ${bride.lastName }, ${bride.age }</b><br></label> <label
							class="matri-center matri-mobile matri-padding">${bride.occupation } | ${bride.workLocation }</label>
						<div class="profile-card-name">
							<button class="matri-btn view-profile-btn matri-center"
								style="width: 100%">View Profile</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:when>
		<c:when test="${not empty sugGroomList }">
			<div class="matri-row matri-theme-d2 matri-xlarge">
				<div class="matri-bar">
					<h3 class="matri-margin-left">Suggested Profiles</h3>
				</div>
			</div>
			<div class="matri-row matri-center">
				<c:forEach begin="0" end="6" var="profile"
					items="${sugGroomList }">
					<div class="matri-col s2 matri-mobile">
						<img class="matri-profile matri-padding-top matri-center" alt="Banner for Regional matrimony"
							src="<c:url value="resources/images/admin.jpg" />"> <label
							class="matri-center"><b>${profile.firstName } ${profile.lastName }, ${profile.age }</b></label> <label
							class="matri-center"><b>${profile.occupation }/${profile.workLocation }</b></label>
						<div class="profile-card-name">
							<button class="matri-btn view-profile-btn matri-center"
								style="width: 100%">View Profile</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:when>
		<c:when test="${not empty sugBrideList }">
			<div class="matri-row matri-theme-d2 matri-xlarge">
				<div class="matri-bar">
					<h3 class="matri-margin-left">Suggested Profiles</h3>
				</div>
			</div>
			<div class="matri-row matri-center">
				<c:forEach begin="0" end="6" var="bride"
					items="${sugBrideList }">
					<div class="matri-col s2 matri-mobile">
						<img class="matri-profile matri-padding-top matri-center" alt="Banner for Regional matrimony"
							src="<c:url value="resources/images/admin.jpg" />"> <label
							class="matri-center matri-mobile matri-padding-left matri-padding-right"><b>${ bride.firstName } ${bride.lastName }, ${bride.age }</b><br></label> <label
							class="matri-center matri-mobile matri-padding">${bride.occupation } | ${bride.workLocation }</label>
						<div class="profile-card-name">
							<button class="matri-btn view-profile-btn matri-center"
								style="width: 100%">View Profile</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:when>
	</c:choose>
	<jsp:include page="SimpleSearch.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>