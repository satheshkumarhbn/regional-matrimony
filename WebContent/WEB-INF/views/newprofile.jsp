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
<link type="text/css"
	href="<c:url value="resources/clientassets/css/matri.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="matri-row">
		<div class="matri-col s3">
			<button class="matri-button" style="width: 100%">Personal
				Profile</button>
		</div>
		<div class="matri-col s9"></div>
	</div>
	<c:choose>
		<c:when test="${not empty mem }">
			<div class="matri-row matri-xlarge matri-mobile">
				<div class="matri-col s3 matri-mobile matri-center">
					<div class="matri-row matri-theme-d2 matri-padding matri-large">Member
						id:- ${mem.memberId }</div>
					<img class="matri-center"
						src="<c:url value="resources/images/admin.jpg" />" alt="Avatar"
						style="width: 300px; height: 100%;">
				</div>
				<div class="matri-col s3 matri-mobile">
					<div class="matri-table">
						<div class="matri-row matri-theme-d2 matri-padding matri-large">Personal
							Information</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Name</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${mem.firstName }
									${mem.lastName }</label>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Age</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${mem.age }</label>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Height/Weight</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${mem.height }cm/${mem.weight }kg</label>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Education</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${mem.education }</label>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Occupation</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${mem.occupation }</label>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Maritalstatus</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${mem.maritalStatus }</label>
							</div>
						</div>
						<div class="matri-row matri-theme-d2 matri-padding matri-large">Family
							Information</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium">Father's Name</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">Mr.${mem.fathersName }</label>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium">Mother's name</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">Mrs.${mem.mothersName }</label>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Father's
									occupation</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${mem.fathersOccupation }</label>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Mother's</label>
								<label class="matri-medium matri-padding-small">Occupation</label>
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
				<div class="matri-col s3 matri-mobile">
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
								<label class="matri-medium matri-padding-small">Landline</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">+04294-263033</label>
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
								<label class="matri-medium matri-padding-small">${mem.address }</label>
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
			</div>
		</c:when>
		<c:when test="${not empty recAddBrideList }">
			<div class="matri-col s3 matri-mobile">
				<div class="profile-card-name">
					<button class="matri-btn matri-hover-none matri-center-align"
						style="height: 100%; width: 100%; font-size: 20px;">Recently
						Added Profiles</button>
				</div>
				<div class="small-profile-card"></div>
			</div>
		</c:when>
		<c:when test="${not empty recAddGroomList }">
			<div class="matri-col s3 matri-mobile">
				<div class="profile-card-name">
					<button class="matri-btn matri-hover-none matri-center-align"
						style="height: 100%; width: 100%; font-size: 20px;">Recently
						Added Profiles</button>
				</div>
				<div class="small-profile-card"></div>
			</div>
		</c:when>
		<c:otherwise>

		</c:otherwise>
	</c:choose>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>