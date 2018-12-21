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
	<main class="profile-page">
	<section class="section-profile-cover section-shaped my-0">
		<!-- Circles background -->
		<div class="shape shape-style-1 shape-primary alpha-4">
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span> <span></span>
		</div>
		<!-- SVG separator -->
		<div class="separator separator-bottom separator-skew">
			<svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none"
				version="1.1" xmlns="http://www.w3.org/2000/svg">
          <polygon class="fill-white" points="2560 0 2560 100 0 100"></polygon>
        </svg>
		</div>
	</section>
	<section class="section">
		<div class="container">
			<div class="card card-profile shadow mt--300">
				<div class="px-4">
					<div class="row justify-content-center">
						<div class="col-lg-3 order-lg-2">
							<div class="card-profile-image">
								<a href="#"> <img
									src="resources/clientassets/img/theme/team-4-800x800.jpg"
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
							Sathesh Kumar <span class="font-weight-light">, 27</span>
						</h3>
						<div class="h6 font-weight-300">
							<i class="ni location_pin mr-2"></i>Bucharest, Romania
						</div>
						<div class="h6 mt-4">
							<i class="ni business_briefcase-24 mr-2"></i>Engineer -
						</div>
						<div>
							<i class="ni education_hat mr-2"></i>University of Computer
							Science
						</div>
						<div class="col-lg-12">
							<!-- Tabs with icons -->
							<div class="nav-wrapper">
								<ul class="nav nav-pills nav-fill flex-column flex-md-row"
									id="tabs-icons-text" role="tablist">
									<li class="nav-item"><a
										class="nav-link mb-sm-3 mb-md-0 active"
										id="tabs-icons-text-1-tab" data-toggle="tab"
										href="#tabs-icons-text-1" role="tab"
										aria-controls="tabs-icons-text-1" aria-selected="true"><i
											class="ni ni-cloud-upload-96 mr-2"></i>Personal Info</a></li>
									<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
										id="tabs-icons-text-2-tab" data-toggle="tab"
										href="#tabs-icons-text-2" role="tab"
										aria-controls="tabs-icons-text-2" aria-selected="false"><i
											class="ni ni-bell-55 mr-2"></i>Family</a></li>
									<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
										id="tabs-icons-text-3-tab" data-toggle="tab"
										href="#tabs-icons-text-3" role="tab"
										aria-controls="tabs-icons-text-3" aria-selected="false"><i
											class="ni ni-calendar-grid-58 mr-2"></i>Career</a></li>
									<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
										id="tabs-icons-text-4-tab" data-toggle="tab"
										href="#tabs-icons-text-4" role="tab"
										aria-controls="tabs-icons-text-4" aria-selected="false"><i
											class="ni ni-calendar-grid-58 mr-2"></i>Contact</a></li>
									<li class="nav-item"><a class="nav-link mb-sm-3 mb-md-0"
										id="tabs-icons-text-5-tab" data-toggle="tab"
										href="#tabs-icons-text-5" role="tab"
										aria-controls="tabs-icons-text-5" aria-selected="false"><i
											class="ni ni-calendar-grid-58 mr-2"></i>Horoscope</a></li>
								</ul>
							</div>
							<div class="card shadow">
								<div class="card-body">
									<div class="tab-content" id="myTabContent">
										<div class="tab-pane fade show active" id="tabs-icons-text-1"
											role="tabpanel" aria-labelledby="tabs-icons-text-1-tab">
											<p class="description">
											<div class="card-body">
												<table class="table table-striped">
													<tbody>
														<tr>
															<th scope="row">First Name</th>
															<td>Sathesh</td>
														</tr>
														<tr>
															<th scope="row">Last Name</th>
															<td>Kumar</td>
														</tr>
														<tr>
															<th scope="row">Date of Birth</th>
															<td>02-10-1995</td>
														</tr>
														<tr>
															<th scope="row">Age</th>
															<td>24</td>
														</tr>
														<tr>
															<th scope="row">Height</th>
															<td>172 cm</td>
														</tr>
														<tr>
															<th scope="row">Weight</th>
															<td>63 kg</td>
														</tr>
														<tr>
															<th scope="row">Marital Status</th>
															<td>Never married</td>
														</tr>
														<tr>
															<th scope="row">Disabilities</th>
															<td>Normal</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="tab-pane fade" id="tabs-icons-text-2"
											role="tabpanel" aria-labelledby="tabs-icons-text-2-tab">
											<p class="description">
											<div class="card-body">
												<table class="table table-striped">
													<tbody>
														<tr>
															<th scope="row">Father's name</th>
															<td>Palanisamy</td>
														</tr>
														<tr>
															<th scope="row">Mother's Name</th>
															<td>Shantha Kumari</td>
														</tr>
														<tr>
															<th scope="row">Father's Occupation</th>
															<td>Private Employee</td>
														</tr>
														<tr>
															<th scope="row">Mother's Occupation</th>
															<td>Home maker</td>
														</tr>
														<tr>
															<th scope="row">Siblings</th>
															<td>1</td>
														</tr>
													</tbody>
												</table>
											</div>
											</p>
										</div>
										<div class="tab-pane fade" id="tabs-icons-text-3"
											role="tabpanel" aria-labelledby="tabs-icons-text-3-tab">

											<div class="card-body">
												<table class="table table-striped">
													<tbody>
														<tr>
															<th scope="row">Education</th>
															<td>B.E</td>
														</tr>
														<tr>
															<th scope="row">Occupation</th>
															<td>Engineer</td>
														</tr>
														<tr>
															<th scope="row">Work Location</th>
															<td>Noida</td>
														</tr>
														<tr>
															<th scope="row">Annual Income</th>
															<td>2-4 lakhs</td>
														</tr>
														<tr>
															<th scope="row">Siblings</th>
															<td>1</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<c:choose>
											<c:when test="${payment == 1 }">
												<div class="tab-pane fade" id="tabs-icons-text-4"
													role="tabpanel" aria-labelledby="tabs-icons-text-4-tab">
													<p class="description"></p>
												</div>
												<div class="tab-pane fade" id="tabs-icons-text-5"
													role="tabpanel" aria-labelledby="tabs-icons-text-5-tab">
													<p class="description"></p>
												</div>
											</c:when>
											<c:when test="${payment == 0 }">
												<div class="tab-pane fade" id="tabs-icons-text-4"
													role="tabpanel" aria-labelledby="tabs-icons-text-4-tab">
													<p class="description"></p>
												</div>
												<div class="tab-pane fade" id="tabs-icons-text-5"
													role="tabpanel" aria-labelledby="tabs-icons-text-5-tab">
													<p class="description"></p>
												</div>
											</c:when>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="mt-5 py-5 border-top text-center">
						<div class="row justify-content-center">
							<div class="col-lg-9">
								<p>An artist of considerable range, Ryan — the name taken by
									Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs
									and records all of his own music, giving it a warm, intimate
									feel with a solid groove structure. An artist of considerable
									range.</p>
								<a href="#">Show more</a>
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