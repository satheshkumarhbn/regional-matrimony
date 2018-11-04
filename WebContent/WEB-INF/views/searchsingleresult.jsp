<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result-Regional Matrimony</title>
<link href="<c:url value="resources/css/dashboard/style.css"/>" rel="stylesheet">
<link href="<c:url value="resources/css/dashboard/styles.css"/>" rel="stylesheet">
<link href="<c:url value="resources/css/dashboard/switchery.min.css"/>" rel="stylesheet">
<spring:url value="/resources/css/bootstrap/hello.css" var="coreCss" />
<spring:url value="/resources/css/bootstrap/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>
<body>
<main>
<jsp:include page="dashboard.jsp"></jsp:include>
	<article class="larg">
	<div class="container">

	<c:if test="${not empty msg}">
		<div class="alert alert-${css} alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<strong>${msg}</strong>
		</div>
	</c:if> 

	<h1>User Detail</h1>
	<br/>

	<div class="row">
		<label class="col-sm-2">ID</label>
		<div class="col-sm-10">${searchresult.memberId}</div>
	</div>

	<div class="row">
		<label class="col-sm-2"> Full Name</label>
		<div class="col-sm-10">${fullname}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Email</label>
		<div class="col-sm-10">${searchresult.email}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Address</label>
		<div class="col-sm-10">${searchresult.address}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Mobile Number</label>
		<div class="col-sm-10">${searchresult.mobileNumber}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Star</label>
		<div class="col-sm-10">${searchresult.star}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Raasi</label>
		<div class="col-sm-10">${searchresult.raasi}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Father's name</label>
		<div class="col-sm-10">${searchresult.fathersName}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Country</label>
		<div class="col-sm-10">${user.country}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Skill</label>
		<div class="col-sm-10">${user.skill}</div>
	</div>

</div>
	</article>
	<script src="resources/js/dashboard/switchery.min.js"></script>
</main>
</body>
</html>