<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
	<jsp:include page="header.jsp"></jsp:include>

	<c:if test="${not empty groom }">
		<form action="updategroomprofile" method="post">
			<div class="matri-row">
				<div class="matri-col s6 m6">
					<p class="matri-left"
						style="width: 100%; padding-left: 30px; font-size: 20px; margin-top: 5px; margin-bottom: 5px;">Personal
						Profile</p>
				</div>
				<div class="matri-col s2 m6 matri-right matri-padding-small">
					<button class="matri-button matri-right matri-theme-d3">
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i> Update
						Profile
					</button>
				</div>
			</div>

			<div class="matri-row matri-xlarge matri-mobile">
				<div class="matri-col s3 m12 l3 matri-mobile matri-center">
					<div class="matri-row matri-theme-d2 matri-padding matri-large">Member
						id:- ${groom.memberId }</div>
					<input type="hidden" name="memberId" value="${groom.memberId }">
					<img class="matri-center"
						src="<c:url value="resources/images/admin.jpg" />" alt="Avatar"
						style="width: 300px; height: 100%; padding-top: 5px; padding-bottom: 5px;">
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
								<label class="matri-medium matri-padding-small">${groom.firstName }
									${groom.lastName }</label> <input type="hidden" name="firstName"
									value="${groom.firstName }"> <input type="hidden"
									name="lastName" value="${groom.lastName }"> <input
									type="hidden" name="password" value="${groom.password }">
								<input type="hidden" name="agencyId" value="${groom.agencyId }">
							</div>
						</div>
						<div class="matri-row ">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Age</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${groom.age }</label>
								<input type="hidden" name="age" value="${groom.age }">
							</div>
						</div>
						<div class="matri-row ">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Height/Weight</label>
							</div>
							<div class="matri-col s8">
								<div class="matri-row">
									<div class="matri-col s3">
										<input name="height" style="width: 100%"
											class="matri-medium matri-padding-small" type="text"
											value="${groom.height }">
									</div>
									<div class="matri-col s2">
										<p class="matri-medium matri-padding-top">cm</p>
									</div>
									<div class="matri-col s3">
										<input name="weight" style="width: 100%"
											class="matri-medium matri-padding-small" type="text"
											value="${groom.weight }">
									</div>
									<div class="matri-col s2">
										<p class="matri-medium matri-padding-top">kgs</p>
									</div>

								</div>

							</div>
						</div>
						<div class="matri-row ">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Education</label>
							</div>
							<div class="matri-col s8">
								<select name="education" id="education"
									class="form-control matri-medium matri-padding-top"
									style="width: 100%;">
									<option value="SSLC">SSLC</option>
									<option value="HSC">HSC</option>
									<option value="Bachelors in Engineering">Bachelors in
										Engineering</option>
									<option value="Masters in Engineering">Masters in
										Engineering</option>
									<option value="Bachelors in Science">Bachelors in
										Science</option>
									<option value="Masters in Science">Masters in Science</option>
									<option value="Bachelors in Commerce">Bachelors in
										Commerce</option>
									<option value="Masters in Commerce">Masters in
										Commerce</option>
									<option value="Bachelors in Science">Bachelors in
										Science</option>
									<option value="Masters in Science">Masters in Science</option>
									<option value="Bachelors in Computer Applications">Bachelors
										in Computer Applications</option>
									<option value="Masters in Computer Applications">Masters
										in Computer Applications</option>
									<c:if test="${not empty groom.education }">
										<option value="${groom.education }" selected>${groom.education }</option>
									</c:if>
									<c:if test="${empty groom.education }">
										<option value="0" selected>Select Education</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Occupation</label>
							</div>
							<div class="matri-col s8">
								<select name="occupation" id="occupation"
									class="form-control matri-padding-top matri-medium"
									style="width: 100%;">
									<option value="Business-own">Business- own</option>
									<option value="Business-partner">Business- partner</option>
									<option value="Salaried-own">Salaried- public sector</option>
									<option value="Salaried-own">Salaried- private sector</option>
									<option value="other">Others</option>
									<c:if test="${not empty groom.occupation }">
										<option value="${groom.occupation }" selected>${groom.occupation }</option>
									</c:if>
									<c:if test="${empty groom.occupation }">
										<option value="0" selected>Select Occupation</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Maritalstatus</label>
							</div>
							<div class="matri-col s8">
								<select name="maritalStatus" id="maritalStatus"
									class="form-control matri-padding-top matri-medium"
									style="width: 100%;">
									<option value="Never Married">Never Married</option>
									<option value="Divorced">Divorced</option>
									<option value="Widowed">Widowed</option>
									<option value="Awaiting Divorced">Awaiting Divorced</option>

									<c:if test="${not empty groom.maritalStatus }">
										<option value="${groom.maritalStatus }" selected>${groom.maritalStatus }</option>
									</c:if>
									<c:if test="${empty groom.maritalStatus }">
										<option value="0" selected>Select Maritalstatus</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row matri-theme-d2 matri-padding matri-large">Family
							Information</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small matri-wrap">Father's
									Name</label>
							</div>
							<div class="matri-col s8">
								<input name="fathersName" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${groom.fathersName }">
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small matri-wrap">Mother's
									name</label>
							</div>
							<div class="matri-col s8">
								<input name="mothersName" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${groom.mothersName }">
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small matri-wrap">Father's
									occupation</label>
							</div>
							<div class="matri-col s8">
								<select style="width: 100%;" name="fathersOccupation"
									id="fathersOccupation"
									class="form-control matri-padding-top matri-medium">
									<option value="own business">Own business</option>
									<option value="public sector">Public Sector</option>
									<option value="private sector">Private Sector</option>
									<option value="teacher">Teacher</option>
									<option value="doctor">Doctor</option>
									<option value="lawyer">Lawyer</option>
									<option value="other">Other</option>
									<c:if test="${not empty groom.fathersOccupation }">
										<option value="${groom.fathersOccupation }" selected>${groom.fathersOccupation }</option>
									</c:if>
									<c:if test="${empty groom.fathersOccupation }">
										<option value="0" selected>Select Occupation</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small matri-wrap">Mother's
									Occupation</label>
							</div>
							<div class="matri-col s8">
								<select style="width: 100%;" name="mothersOccupation"
									id="mothersOccupation"
									class="form-control matri-padding-top matri-medium">
									<option value="home maker">Home Maker</option>
									<option value="public sector">Public Sector</option>
									<option value="private sector">Private Sector</option>
									<option value="teacher">Teacher</option>
									<option value="doctor">Doctor</option>
									<option value="lawyer">Lawyer</option>
									<option value="other">Other</option>
									<c:if test="${not empty groom.mothersOccupation }">
										<option value="${groom.mothersOccupation }" selected>${groom.mothersOccupation }</option>
									</c:if>
									<c:if test="${empty groom.mothersOccupation }">
										<option value="0" selected>Select Occupation</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Siblings</label>
							</div>
							<div class="matri-col s8">
								<input name="siblings" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${groom.siblings }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Family
									Type</label>
							</div>
							<div class="matri-col s8">
								<input name="familyType" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="Orthodox">
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
									${groom.mobileNumber }</label> <input type="hidden" name="mobileNumber"
									value="${groom.mobileNumber }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Whatsapp</label>
							</div>
							<div class="matri-col s8">
								<input name="whatsappNumber" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${groom.whatsappNumber }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Alt-Mobile</label>
							</div>
							<div class="matri-col s8">
								<input name="alternateMobileNumber" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${groom.alternateMobileNumber }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">email</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${groom.email }</label>
								<input type="hidden" name="email" value="${groom.email }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Address</label>
							</div>
							<div class="matri-col s8">
								<textarea name="address" style="width: 100%;"
									class="matri-medium matri-padding-small" rows="3">${groom.address }</textarea>
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
								<label class="matri-medium matri-padding-small">${groom.star }</label>
								<input type="hidden" name="star" value="${groom.star }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Raasi</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${groom.raasi }</label>
								<input type="hidden" name="raasi" value="${groom.raasi }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Date of
									Birth</label>

							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">02/10/1995</label>
								<input type="hidden" name="dateOfBirth"
									value="${groom.dateOfBirth }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Time of
									Birth</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${groom.timeOfBirth }</label>
								<input type="hidden" name="timeOfBirth"
									value="${groom.timeOfBirth }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Place of
									Birth</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${groom.placeOfBirth }</label>
								<input type="hidden" name="placeOfBirth"
									value="${groom.placeOfBirth }">
							</div>
						</div>
					</div>
				</div>
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
										src="<c:url value="resources/images/admin.jpg" />"
										alt="Avatar" style="width: 120%; height: 100%;">
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
										src="<c:url value="resources/images/admin.jpg" />"
										alt="Avatar" style="width: 120%; height: 100%;">
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
		</form>
	</c:if>
	<c:if test="${not empty bride }">
		<form action="updatebrideprofile" method="post">
			<div class="matri-row">
				<div class="matri-col s6 m6">
					<p class="matri-left"
						style="width: 100%; padding-left: 30px; font-size: 20px; margin-top: 5px; margin-bottom: 5px;">Personal
						Profile</p>
				</div>
				<div class="matri-col s2 m6 matri-right matri-padding-small">
					<button class="matri-button matri-right matri-theme-d3">
						<i class="fa fa-pencil-square-o" aria-hidden="true"></i> Update
						Profile
					</button>
				</div>
			</div>

			<div class="matri-row matri-xlarge matri-mobile">
				<div class="matri-col s3 m12 l3 matri-mobile matri-center">
					<div class="matri-row matri-theme-d2 matri-padding matri-large">Member
						id:- ${bride.memberId }</div>
					<input type="hidden" name="memberId" value="${bride.memberId }">
					<img class="matri-center"
						src="<c:url value="resources/images/admin.jpg" />" alt="Avatar"
						style="width: 300px; height: 100%; padding-top: 5px; padding-bottom: 5px;">
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
								<label class="matri-medium matri-padding-small">${bride.firstName }
									${bride.lastName }</label> <input type="hidden" name="firstName"
									value="${bride.firstName }"> <input type="hidden"
									name="lastName" value="${bride.lastName }"> <input
									type="hidden" name="password" value="${bride.password }">
								<input type="hidden" name="agencyId" value="${bride.agencyId }">
							</div>
						</div>
						<div class="matri-row ">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Age</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${bride.age }</label>
								<input type="hidden" name="age" value="${bride.age }">
							</div>
						</div>
						<div class="matri-row ">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Height/Weight</label>
							</div>
							<div class="matri-col s8">
								<div class="matri-row">
									<div class="matri-col s3">
										<input name="height" style="width: 100%"
											class="matri-medium matri-padding-small" type="text"
											value="${bride.height }">
									</div>
									<div class="matri-col s2">
										<p class="matri-medium matri-padding-top">cm</p>
									</div>
									<div class="matri-col s3">
										<input name="weight" style="width: 100%"
											class="matri-medium matri-padding-small" type="text"
											value="${bride.weight }">
									</div>
									<div class="matri-col s2">
										<p class="matri-medium matri-padding-top">kgs</p>
									</div>

								</div>

							</div>
						</div>
						<div class="matri-row ">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Education</label>
							</div>
							<div class="matri-col s8">
								<select name="education" id="education"
									class="form-control matri-medium matri-padding-top"
									style="width: 100%;">
									<option value="SSLC">SSLC</option>
									<option value="HSC">HSC</option>
									<option value="Bachelors in Engineering">Bachelors in
										Engineering</option>
									<option value="Masters in Engineering">Masters in
										Engineering</option>
									<option value="Bachelors in Science">Bachelors in
										Science</option>
									<option value="Masters in Science">Masters in Science</option>
									<option value="Bachelors in Commerce">Bachelors in
										Commerce</option>
									<option value="Masters in Commerce">Masters in
										Commerce</option>
									<option value="Bachelors in Science">Bachelors in
										Science</option>
									<option value="Masters in Science">Masters in Science</option>
									<option value="Bachelors in Computer Applications">Bachelors
										in Computer Applications</option>
									<option value="Masters in Computer Applications">Masters
										in Computer Applications</option>
									<c:if test="${not empty bride.education }">
										<option value="${bride.education }" selected>${bride.education }</option>
									</c:if>
									<c:if test="${empty bride.education }">
										<option value="0" selected>Select Education</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Occupation</label>
							</div>
							<div class="matri-col s8">
								<select name="occupation" id="occupation"
									class="form-control matri-padding-top matri-medium"
									style="width: 100%;">
									<option value="Business-own">Business- own</option>
									<option value="Business-partner">Business- partner</option>
									<option value="Salaried-own">Salaried- public sector</option>
									<option value="Salaried-own">Salaried- private sector</option>
									<option value="other">Others</option>
									<c:if test="${not empty bride.occupation }">
										<option value="${bride.occupation }" selected>${bride.occupation }</option>
									</c:if>
									<c:if test="${empty bride.occupation }">
										<option value="0" selected>Select Occupation</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Maritalstatus</label>
							</div>
							<div class="matri-col s8">
								<select name="maritalStatus" id="maritalStatus"
									class="form-control matri-padding-top matri-medium"
									style="width: 100%;">
									<option value="Never Married">Never Married</option>
									<option value="Divorced">Divorced</option>
									<option value="Widowed">Widowed</option>
									<option value="Awaiting Divorced">Awaiting Divorced</option>

									<c:if test="${not empty bride.maritalStatus }">
										<option value="${bride.maritalStatus }" selected>${bride.maritalStatus }</option>
									</c:if>
									<c:if test="${empty bride.maritalStatus }">
										<option value="0" selected>Select Maritalstatus</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row matri-theme-d2 matri-padding matri-large">Family
							Information</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small matri-wrap">Father's
									Name</label>
							</div>
							<div class="matri-col s8">
								<input name="fathersName" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${bride.fathersName }">
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small matri-wrap">Mother's
									name</label>
							</div>
							<div class="matri-col s8">
								<input name="mothersName" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${bride.mothersName }">
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small matri-wrap">Father's
									occupation</label>
							</div>
							<div class="matri-col s8">
								<select style="width: 100%;" name="fathersOccupation"
									id="fathersOccupation"
									class="form-control matri-padding-top matri-medium">
									<option value="own business">Own business</option>
									<option value="public sector">Public Sector</option>
									<option value="private sector">Private Sector</option>
									<option value="teacher">Teacher</option>
									<option value="doctor">Doctor</option>
									<option value="lawyer">Lawyer</option>
									<option value="other">Other</option>
									<c:if test="${not empty bride.fathersOccupation }">
										<option value="${bride.fathersOccupation }" selected>${bride.fathersOccupation }</option>
									</c:if>
									<c:if test="${empty bride.fathersOccupation }">
										<option value="0" selected>Select Occupation</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small matri-wrap">Mother's
									Occupation</label>
							</div>
							<div class="matri-col s8">
								<select style="width: 100%;" name="mothersOccupation"
									id="mothersOccupation"
									class="form-control matri-padding-top matri-medium">
									<option value="home maker">Home Maker</option>
									<option value="public sector">Public Sector</option>
									<option value="private sector">Private Sector</option>
									<option value="teacher">Teacher</option>
									<option value="doctor">Doctor</option>
									<option value="lawyer">Lawyer</option>
									<option value="other">Other</option>
									<c:if test="${not empty bride.mothersOccupation }">
										<option value="${bride.mothersOccupation }" selected>${bride.mothersOccupation }</option>
									</c:if>
									<c:if test="${empty bride.mothersOccupation }">
										<option value="0" selected>Select Occupation</option>
									</c:if>
								</select>
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Siblings</label>
							</div>
							<div class="matri-col s8">
								<input name="siblings" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${bride.siblings }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Family
									Type</label>
							</div>
							<div class="matri-col s8">
								<input name="familyType" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="Orthodox">
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
									${bride.mobileNumber }</label> <input type="hidden" name="mobileNumber"
									value="${bride.mobileNumber }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Whatsapp</label>
							</div>
							<div class="matri-col s8">
								<input name="whatsappNumber" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${bride.whatsappNumber }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Alt-Mobile</label>
							</div>
							<div class="matri-col s8">
								<input name="alternateMobileNumber" style="width: 100%;"
									class="matri-medium matri-padding-small" type="text"
									value="${bride.alternateMobileNumber }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">email</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${bride.email }</label>
								<input type="hidden" name="email" value="${bride.email }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Address</label>
							</div>
							<div class="matri-col s8">
								<textarea style="width: 100%;"
									class="matri-medium matri-padding-small" rows="3">${bride.address }</textarea>
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
								<label class="matri-medium matri-padding-small">${bride.star }</label>
								<input type="hidden" name="star" value="${bride.star }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Raasi</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${bride.raasi }</label>
								<input type="hidden" name="raasi" value="${bride.raasi }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Date of
									Birth</label>

							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">02/10/1995</label>
								<input type="hidden" name="dateOfBirth"
									value="${bride.dateOfBirth }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Time of
									Birth</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${bride.timeOfBirth }</label>
								<input type="hidden" name="timeOfBirth"
									value="${bride.timeOfBirth }">
							</div>
						</div>
						<div class="matri-row matri-xlarge">
							<div class="matri-col s4">
								<label class="matri-medium matri-padding-small">Place of
									Birth</label>
							</div>
							<div class="matri-col s8">
								<label class="matri-medium matri-padding-small">${bride.placeOfBirth }</label>
								<input type="hidden" name="placeOfBirth"
									value="${bride.placeOfBirth }">
							</div>
						</div>
					</div>
				</div>
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
										src="<c:url value="resources/images/admin.jpg" />"
										alt="Avatar" style="width: 120%; height: 100%;">
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
										src="<c:url value="resources/images/admin.jpg" />"
										alt="Avatar" style="width: 120%; height: 100%;">
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
		</form>
	</c:if>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>