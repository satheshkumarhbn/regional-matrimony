<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result-Regional Matrimony</title>
<link href="<c:url value="resources/css/dashboard/style.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/dashboard/styles.css"/>"
	rel="stylesheet">
<link href="<c:url value="resources/css/dashboard/switchery.min.css"/>"
	rel="stylesheet">
<spring:url value="/resources/css/bootstrap/hello.css" var="coreCss" />
<spring:url value="/resources/css/bootstrap/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>
<body>
	<jsp:include page="dashboard.jsp"></jsp:include>
	<!-- Right Panel start -->
	<div id="right-panel" class="right-panel">
		<div class="content">
			<div class="animated fadeIn">
				<div class="row">
					<!-- breadcrump start -->
					<div class="breadcrumbs">
						<div class="breadcrumbs-inner">
							<div class="row m-0">
								<div class="col-sm-4">
									<div class="page-header float-left">
										<div class="page-title">
											<h1>Profile</h1>
										</div>
									</div>
								</div>
								<div class="col-sm-8">
									<div class="page-header float-right">
										<div class="page-title">
											<ol class="breadcrumb text-right">
												<li><a href="#">Dashboard</a></li>
												<li class="active">View Profile</li>
											</ol>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- breadcrump end -->

					<!-- card start -->
					<div class="col-md-4">
						<aside class="profile-nav alt">
							<section class="card">
								<div class="card-header user-header alt bg-dark">
									<div class="media">
										<a href="#"> <img
											class="align-self-center rounded-circle mr-3"
											style="width: 85px; height: 85px;" alt=""
											src="resources/images/admin.jpg">
										</a>
										<div class="media-body">
											<h3 class="text-light display-6">${member.firstName } ${member.lastName }</h3>
											<p>ID: ${member.memberId }</p>
										</div>
									</div>
								</div>


								<ul class="list-group list-group-flush">
									<li class="list-group-item"><a href="#"> <i
											class="fa fa-envelope-o"></i> New Request <span
											class="badge badge-primary pull-right">10</span></a></li>
									<li class="list-group-item"><a href="#"> <i
											class="fa fa-tasks"></i> Accepted Request <span
											class="badge badge-success pull-right">15</span></a></li>
									<li class="list-group-item"><a href="#"> <i
											class="fa fa-bell-o"></i> Pending Request <span
											class="badge badge-warning pull-right">11</span></a></li>
									<li class="list-group-item"><a href="#"> <i
											class="fa fa-comments-o"></i> Declined Request <span
											class="badge badge-danger pull-right r-activity">03</span></a></li>
								</ul>

							</section>
						</aside>
					</div>
					<!-- card end -->

					<!-- tab start -->
					<div class="col-md-8">
						<div class="card">
							<div class="card-header">
								<h4>Profile Information</h4>
							</div>
							<div class="card-body">

								<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										id="pills-personal-tab" data-toggle="pill"
										href="#pills-personal" role="tab"
										aria-controls="pills-personal" aria-selected="true">Personal</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										id="pills-family-tab" data-toggle="pill" href="#pills-family"
										role="tab" aria-controls="pills-family" aria-selected="false">Family</a></li>
									<li class="nav-item"><a class="nav-link"
										id="pills-career-tab" data-toggle="pill" href="#pills-career"
										role="tab" aria-controls="pills-career" aria-selected="false">Career</a></li>
									<li class="nav-item"><a class="nav-link"
										id="pills-contact-tab" data-toggle="pill"
										href="#pills-contact" role="tab" aria-controls="pills-contact"
										aria-selected="false">Contact</a></li>
									<li class="nav-item"><a class="nav-link"
										id="pills-horoscope-tab" data-toggle="pill"
										href="#pills-horoscope" role="tab"
										aria-controls="pills-horoscope" aria-selected="false">Horoscope</a></li>
								</ul>
								<div class="tab-content" id="pills-tabContent">
									<div class="tab-pane fade show active" id="pills-personal"
										role="tabpanel" aria-labelledby="pills-personal-tab">
										<div class="card-body">
											<table class="table table-striped">
												<tbody>
													<tr>
														<th scope="row">Name</th>
														<td>${member.firstName } ${member.lastName }</td>
													</tr>
													<tr>
														<th scope="row">Date Of Birth</th>
														<td>${member.dateOfBirth }</td>
													</tr>
													<tr>
														<th scope="row">Age</th>
														<td>${member.age }</td>
													</tr>
													<tr>
														<th scope="row">Gender</th>
														<td>${member.gender }</td>
													</tr>
													<tr>
														<th scope="row">Height</th>
														<td>${member.height } cm</td>
													</tr>
													<tr>
														<th scope="row">${member.weight } kg</th>
														<td>63</td>
													</tr>
													<tr>
														<th scope="row">Marittal Status</th>
														<td>${member.maritalStatus }</td>
													</tr>
													<tr>
														<th scope="row">Disablities</th>
														<td>${member.disability }</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="tab-pane fade" id="pills-family" role="tabpanel"
										aria-labelledby="pills-family-tab">
										<div class="card-body">
											<table class="table table-striped">
												<tbody>
													<tr>
														<th scope="row">Father's Name</th>
														<td>${member.fathersName }</td>
													</tr>
													<tr>
														<th scope="row">Mother's Name</th>
														<td>${member.mothersName }</td>
													</tr>
													<tr>
														<th scope="row">Father's Occupation</th>
														<td>${member.fathersOccupation }</td>
													</tr>
													<tr>
														<th scope="row">Mother's Occupation</th>
														<td>${member.mothersOccupation }</td>
													</tr>
													<tr>
														<th scope="row">Siblings</th>
														<td>${member.siblings }</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="tab-pane fade" id="pills-career" role="tabpanel"
										aria-labelledby="pills-career-tab">
										<div class="card-body">
											<table class="table table-striped">
												<tbody>
													<tr>
														<th scope="row">Educational Qualification</th>
														<td>${member.education }</td>
													</tr>
													<tr>
														<th scope="row">Occupation</th>
														<td>${member.occupation }</td>
													</tr>
													<tr>
														<th scope="row">Annual Income</th>
														<td>${member.annualIncome }</td>
													</tr>
													<tr>
														<th scope="row">Work Location</th>
														<td>${member.workLocation }</td>
													</tr>
													<tr>
														<th scope="row">Firm Name</th>
														<td>IBM India Pvt Ltd</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="tab-pane fade" id="pills-contact" role="tabpanel"
										aria-labelledby="pills-contact-tab">
										<div class="card-body">
											<table class="table table-striped">
												<tbody>
													<tr>
														<th scope="row">Mobile Number</th>
														<td>${member.mobileNumber }</td>
													</tr>
													<tr>
														<th scope="row">Alternate Mobile Number</th>
														<td>${member.alternateMobileNumber }</td>
													</tr>
													<tr>
														<th scope="row">Whatsapp Number</th>
														<td>${member.whatsappNumber }</td>
													</tr>
													<tr>
														<th scope="row">Email</th>
														<td>${member.email }</td>
													</tr>
													<tr>
														<th scope="row">Address</th>
														<td>${member.address }</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="tab-pane fade" id="pills-horoscope" role="tabpanel"
										aria-labelledby="pills-horoscope-tab">
										<div class="card-body">
											<table class="table table-striped">
												<tbody>
													<tr>
														<th scope="row">Star</th>
														<td>${member.star }</td>
													</tr>
													<tr>
														<th scope="row">Raasi</th>
														<td>${member.raasi }</td>
													</tr>
													<tr>
														<th scope="row">Time of Birth</th>
														<td>${member.timeOfBirth }</td>
													</tr>
													<tr>
														<th scope="row">Date Of Birth</th>
														<td>${member.dateOfBirth }</td>
													</tr>
													<tr>
														<th scope="row">Place of Birth</th>
														<td>${member.placeOfBirth }</td>
													</tr>
													<tr>
														<th scope="row">Horoscope</th>
														<td>file</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- tab end -->
				</div>

			</div>
		</div>
	</div>


	<!-- Right Panel end -->
</body>
</html>