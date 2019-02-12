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
<link type="text/css"
	href="<c:url value="resources/clientassets/css/argon.css" />"
	rel="stylesheet">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<main class="profile-page">
	<section class="section-profile-cover section-shaped my-0">
		<!-- Circles background -->
		<div class="shape shape-style-1 shape-primary alpha-4">
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span> <span></span>
		</div>
		<!-- SVG separator 
		<div class="separator separator-bottom separator-skew">
			<svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none"
				version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-white" points="2560 0 2560 100 0 100"></polygon>
        </svg>
		</div>-->
	</section>
	<section class="section">
		<div class="container">
			<div class="card card-profile shadow mt--300">
				<div class="px-4">
					<div class="row justify-content-center">
						<div class="col-lg-3 order-lg-2">
							<div class="card-profile-image">
								<a href="#"> <img
									src="resources/clientassets/img/theme/team-4-800x800.jpeg"
									class="rounded-circle">
								</a>
							</div>
						</div>
						<div
							class="col-lg-4 order-lg-3 text-lg-right align-self-lg-center">
							<div class="card-profile-actions py-4 mt-lg-0">
								<a href="#" class="btn btn-sm btn-info mr-4">Add to Wishlist</a>
								<a href="#" class="btn btn-sm btn-default float-right">Shortlist</a>
							</div>
						</div>
						<div class="col-lg-4 order-lg-1">
							<div class="card-profile-stats d-flex justify-content-center">
								<div>
									<span class="heading">22</span> <span class="description">Friends</span>
								</div>
								<div>
									<span class="heading">10</span> <span class="description">Photos</span>
								</div>
								<div>
									<span class="heading">89</span> <span class="description">Comments</span>
								</div>
							</div>
						</div>
					</div>
					<div class="text-center mt-5">
						<h3>
							${member.firstName } ${member.lastName } <span
								class="font-weight-light">, ${member.age }</span>
						</h3>
						<div class="h6 font-weight-300">
							<i class="ni location_pin mr-2"></i> ${member.education }
						</div>
						<div class="h6 mt-4">
							<i class="ni business_briefcase-24 mr-2"></i>${member.occupation }
							- ${member.workLocation }
						</div>
						<div>
							<i class="ni education_hat mr-2"></i>Company Name
						</div>
						<div class="col-lg-12">
							<div class="row">
								<div class="col-sm">
									<div class="card shadow">
										<div class="card text-left">
											<div class="card-header">
												<i class="fa fa-user"></i><strong class="card-title pl-2">Personal
													Information</strong>
											</div>
											<div class="table-stats order-table ov-h">

												<table class="table">
													<tbody>
														<tr>
															<th scope="row">First Name</th>
															<td>${member.firstName }</td>
														</tr>
														<tr>
															<th scope="row">Last Name</th>
															<td>${member.lastName }</td>
														</tr>
														<tr>
															<th scope="row">Date of Birth</th>
															<td>${member.dateOfBirth }</td>
														</tr>
														<tr>
															<th scope="row">Age</th>
															<td>${member.age }</td>
														</tr>
														<tr>
															<th scope="row">Height</th>
															<td>${member.height }cm</td>
														</tr>
														<tr>
															<th scope="row">Weight</th>
															<td>${member.weight }kg</td>
														</tr>

													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm">
									<div class="card shadow">
										<div class="card text-left">
											<div class="card-header">
												<i class="fa fa-user"></i><strong class="card-title pl-2">Family</strong>
											</div>
											<div class="table-stats order-table ov-h">
												<table class="table">
													<tbody>
														<tr>
															<th scope="row">Father's name</th>
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
									</div>
								</div>
								<div class="col-sm">
									<div class="card shadow">
										<div class="card text-left">
											<div class="card-header">
												<i class="fa fa-user"></i><strong class="card-title pl-2">Careers</strong>
											</div>
											<div class="table-stats order-table ov-h">

												<table class="table">
													<tbody>
														<tr>
															<th scope="row">Education</th>
															<td>${member.education }</td>
														</tr>
														<tr>
															<th scope="row">Occupation</th>
															<td>${member.occupation }</td>
														</tr>
														<tr>
															<th scope="row">Work Location</th>
															<td>${member.workLocation }</td>
														</tr>
														<tr>
															<th scope="row">Annual Income</th>
															<td>${member.annualIncome }</td>
														</tr>
														<tr>
															<th scope="row">Marital Status</th>
															<td>${member.maritalStatus }</td>
														</tr>
														<tr>
															<th scope="row">Disabilities</th>
															<td>${member.disability }</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm">
									<div class="card shadow">
										<div class="card text-left">
											<div class="card-header">
												<i class="fa fa-user"></i><strong class="card-title pl-2">Contact
													Details</strong>
											</div>
											<div class="table-stats order-table ov-h">
												<c:choose>
													<c:when test="${payment == 1 }">
														<table class="table">
															<tbody>
																<tr>
																	<th scope="row">Address</th>
																	<td>${member.address }</td>
																</tr>
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
															</tbody>
														</table>
													</c:when>
													<c:otherwise>
														<table class="table">
															<tbody>
																<tr>
																	<th scope="row">Address</th>
																	<td class="card-blur">Dummy address</td>
																</tr>
																<tr>
																	<th scope="row">Mobile Number</th>
																	<td class="card-blur">Dummy Mobile</td>
																</tr>
																<tr>
																	<th scope="row">Alternate Mobile Number</th>
																	<td class="card-blur">Dummy Mobile</td>
																</tr>
																<tr>
																	<th scope="row">Whatsapp Number</th>
																	<td class="card-blur">Dummy Whatsapp</td>
																</tr>
															</tbody>
														</table>
													</c:otherwise>
												</c:choose>

											</div>
										</div>
									</div>
								</div>
								<div class="col-sm">
									<div class="card shadow">
										<div class="card text-left">
											<div class="card-header">
												<i class="fa fa-user"></i><strong class="card-title pl-2">Horoscope</strong>
											</div>
											<div class="table-stats order-table ov-h">
												<c:choose>
													<c:when test="${payment == 1 }">
														<table class="table">
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
																	<th scope="row">Place of Birth</th>
																	<td>${member.placeOfBirth }</td>
																</tr>
																<tr>
																	<th scope="row">Horoscope</th>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</c:when>
													<c:otherwise>
														<table class="table">
															<tbody>
																<tr>
																	<th scope="row">Star</th>
																	<td class="card-blur">star</td>
																</tr>
																<tr>
																	<th scope="row">Raasi</th>
																	<td class="card-blur">raasi</td>
																</tr>
																<tr>
																	<th scope="row">Time of Birth</th>
																	<td class="card-blur">Time Of Birth</td>
																</tr>
																<tr>
																	<th scope="row">Place of Birth</th>
																	<td class="card-blur">Place Of Birth</td>
																</tr>
																<tr>
																	<th scope="row">Horoscope</th>
																	<td class="card-blur"></td>
																</tr>
															</tbody>
														</table>
													</c:otherwise>
												</c:choose>

											</div>
										</div>
									</div>
								</div>
								<div class="col-sm">
									<div class="card shadow">
										<div class="card text-left">
											<div class="card-header">
												<i class="fa fa-user"></i><strong class="card-title pl-2">Religion</strong>
											</div>
											<div class="table-stats order-table ov-h">
												<c:choose>
													<c:when test="${payment == 1 }">
														<table class="table">
															<tbody>
																<tr>
																	<th scope="row">Caste</th>
																	<td>${member.caste }</td>
																</tr>
																<tr>
																	<th scope="row">Sub Caste</th>
																	<td>${member.subCaste }</td>
																</tr>
																<tr>
																	<th scope="row">Division</th>
																	<td>${member.division }</td>
																</tr>
																<tr>
																	<th scope="row">Diety</th>
																	<td>${member.diety }</td>
																</tr>
																<tr>
																	<th scope="row">Horoscope</th>
																	<td></td>
																</tr>
															</tbody>
														</table>
													</c:when>
													<c:otherwise>
														<table class="table">
															<tbody>
																<tr>
																	<th scope="row">Caste</th>
																	<td class="card-blur">Caste</td>
																</tr>
																<tr>
																	<th scope="row">Sub Caste</th>
																	<td class="card-blur">Sub Caste</td>
																</tr>
																<tr>
																	<th scope="row">Division</th>
																	<td class="card-blur">division</td>
																</tr>
																<tr>
																	<th scope="row">Diety</th>
																	<td class="card-blur">Place Of Birth</td>
																</tr>
																<tr>
																	<th scope="row">Horoscope</th>
																	<td class="card-blur"></td>
																</tr>
															</tbody>
														</table>
													</c:otherwise>
												</c:choose>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="mt-5 py-5 border-top text-center">
							<div class="row justify-content-center">
								<div class="col-lg-9">
									<p>An artist of considerable range, Ryan — the name taken
										by Melbourne-raised, Brooklyn-based Nick Murphy — writes,
										performs and records all of his own music, giving it a warm,
										intimate feel with a solid groove structure. An artist of
										considerable range.</p>
									<a href="#">Show more</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>