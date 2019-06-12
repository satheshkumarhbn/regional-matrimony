<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="NextGen matrimonial system for searching groom and bride">
<meta name="author" content="Regional Matrimony">
<title>Regional Matrimony - Profile</title>

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
	<div class="matri-row matri-xlarge matri-mobile">
		<div class="matri-col s3 matri-mobile matri-center">
			<div class="matri-row matri-theme-d2 matri-padding matri-large">Member
				id:- G1900001</div>
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
						<label class="matri-medium matri-padding-small">Sathesh
							Kumar</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Age</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">24</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Height/Weight</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">160cm/63kg</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Education</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Bachelors
							in Enginerring</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Occupation</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Engineer</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Maritalstatus</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Never married</label>
					</div>
				</div>
				<div class="matri-row matri-theme-d2 matri-padding matri-large">Family
					Information</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium">Father's
							Name</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Mr.Palanisamy</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium">Mother's
							name</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Mrs.Shantha
							Kumari</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Father's
							occupation</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Business</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Mother's</label> <label
							class="matri-medium matri-padding-small">Occupation</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Homemaker</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Siblings</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">2</label>
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
							90955-94034</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Whatsapp</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">+91
							90955-94034</label>
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
						<label class="matri-medium matri-padding-small">contactsatheshhbn@gmail.com</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Address</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Some address</label>
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
						<label class="matri-medium matri-padding-small">Pooradam</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Raasi</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Dhanusu</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Date of Birth</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">02/10/1995</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Time of Birth</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">02:30 PM</label>
					</div>
				</div>
				<div class="matri-row matri-xlarge">
					<div class="matri-col s4">
						<label class="matri-medium matri-padding-small">Place of Birth</label>
					</div>
					<div class="matri-col s8">
						<label class="matri-medium matri-padding-small">Coimbatore</label>
					</div>
				</div>
			</div>
		</div>
		<div class="matri-col s3 matri-mobile">
			<div class="profile-card-name">
				<button class="matri-btn matri-hover-none matri-center-align"
					style="height: 100%; width: 100%; font-size: 20px;">Recently
					Added Profiles</button>
			</div>
			<div class="small-profile-card"></div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>