<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Regional Matrimony-Profile</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="<c:url value="resources/clientassets/css/matri.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<tag:url value="/editProfile" var="urlEditProfile"></tag:url>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="matri-row">
		<div class="matri-col s6 m6">
			<p class="matri-left" style="width: 100%; padding-left: 30px; font-size: 20px; margin-top: 5px; margin-bottom: 5px;">Personal
				Profile</p>
		</div>
		<div class="matri-col s2 m6 matri-right matri-padding-small">
			<button onclick="window.location.href = '${urlEditProfile }'" class="matri-button matri-right matri-theme-d3"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit Profile</button>
		</div>
	</div>

	<div class="matri-row matri-xlarge matri-mobile">
		<c:if test="${not empty mem }">
			<div class="matri-col s3 m12 l3 matri-mobile matri-center">
				<div class="matri-row matri-theme-d2 matri-padding matri-large">Member
					id:- ${mem.memberId }</div>
				<img class="matri-center"
					src="<c:url value="resources/images/admin.jpg" />" alt="Avatar"
					style="width: 300px; height: 100%; padding-top: 5px; padding-bottom:5px;">
			</div>
			<div class="matri-col s3 m6 l3 matri-mobile">
				<div class="matri-table">
					<div class="matri-row matri-theme-d2 matri-padding matri-large">Personal
						Information</div>
					<div class="matri-row ">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Name</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.firstName }
								${mem.lastName }</label>
						</div>
					</div>
					<div class="matri-row ">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Age</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.age }</label>
						</div>
					</div>
					<div class="matri-row ">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Height/Weight</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.height }cm/${mem.weight }kg</label>
						</div>
					</div>
					<div class="matri-row ">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Education</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.education }</label>
						</div>
					</div>
					<div class="matri-row">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Occupation</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.occupation }</label>
						</div>
					</div>
					<div class="matri-row">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Maritalstatus</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.maritalStatus }</label>
						</div>
					</div>
					<div class="matri-row matri-theme-d2 matri-padding matri-large">Family
						Information</div>
					<div class="matri-row">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small matri-wrap">Father's Name</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">Mr.${mem.fathersName }</label>
						</div>
					</div>
					<div class="matri-row">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small matri-wrap">Mother's name</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">Mrs.${mem.mothersName }</label>
						</div>
					</div>
					<div class="matri-row">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small matri-wrap">Father's occupation</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.fathersOccupation }</label>
						</div>
					</div>
					<div class="matri-row">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small matri-wrap">Mother's Occupation</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.mothersOccupation }</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Siblings</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.siblings }</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Family
								Type</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">Orthodox</label>
						</div>
					</div>
				</div>
			</div>
			<div class="matri-col s3 m6 l3 matri-mobile">
				<div class="matri-table">
					<div class="matri-row matri-theme-d2 matri-padding matri-large">Contact
						Information</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small"
								style="padding: 0;">Mobile</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">+91
								${mem.mobileNumber }</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Whatsapp</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.whatsappNumber }</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Alt-mobile</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.alternateMobileNumber }</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">email</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.email }</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Address</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small matri-wrap">${mem.address }</label>
						</div>
					</div>
					<div class="matri-row matri-theme-d2 matri-padding matri-large">Horoscope
						Information</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small"
								style="padding: 0;">Star</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.star }</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Raasi</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.raasi }</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Date of
								Birth</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">02/10/1995</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Time of
								Birth</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.timeOfBirth }</label>
						</div>
					</div>
					<div class="matri-row matri-xlarge">
						<div class="matri-col s4">
							<label class="matri-medium matri-padding-small">Place of
								Birth</label>
						</div>
						<div class="matri-col s8">
							<label class="matri-medium matri-padding-small">${mem.placeOfBirth }</label>
						</div>
					</div>
				</div>
			</div>
		</c:if>
		<div class="matri-col s3 m7 l3 matri-mobile">
			<div class="profile-card-name">
				<button class="matri-btn matri-hover-none matri-center-align"
					style="height: 100%; width: 100%; font-size: 20px;">Recently
					Added Profiles</button>
			</div>
			<c:if test="${not empty recAddBrideList }">
				<c:forEach var="bride" items="${recAddBrideList }" begin="1"
					end="10">
					<div class="matri-row" style="padding-top: 5px;">
						<div class="matri-col s2 matri-left">
							<img class="matri-center"
								src="<c:url value="resources/images/admin.jpg" />" alt="Avatar"
								style="width: 120%; height: 100%;">
						</div>
						<div class="matri-col s10">
							<div class="matri-row">
								<p class="matri-medium"
									style="margin-top: 8px; margin-bottom: 0px; padding-left: 25px;">${bride.firstName }
									${bride.lastName }, ${bride.age }, ${bride.weight }kg/${bride.height }cm</p>
							</div>
							<div class="matri-row">
								<p class="matri-medium"
									style="margin-top: 8px; margin-bottom: 0px; padding-left: 25px;">${bride.occupation },
									${bride.workLocation }</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${not empty recAddGroomList }">
				<c:forEach var="groom" items="${recAddGroomList }" begin="1"
					end="10">
					<div class="matri-row" style="padding-top: 5px;">
						<div class="matri-col s2 matri-left">
							<img class="matri-center"
								src="<c:url value="resources/images/admin.jpg" />" alt="Avatar"
								style="width: 120%; height: 100%;">
						</div>
						<div class="matri-col s10">
							<div class="matri-row">
								<p class="matri-medium"
									style="margin-top: 8px; margin-bottom: 0px; padding-left: 25px;">${groom.firstName }
									${groom.lastName }, ${groom.age }, ${groom.weight }kg/${groom.height }cm</p>
							</div>
							<div class="matri-row">
								<p class="matri-medium"
									style="margin-top: 8px; margin-bottom: 0px; padding-left: 25px;">${groom.occupation },
									${groom.workLocation }</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>