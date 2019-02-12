<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<section class="section-profile-cover section-shaped my-0">
		<!-- Circles background -->
		<div class="shape shape-style-1 shape-primary alpha-4">
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span> <span></span>
		</div>
	</section>
	<section class="section">
		<div class="container">
			<c:if test="${not empty groomlist }">
				<c:forEach var="groom" items="groomlist">
					<div class="card card-profile shadow mt--300">
						<div class="px-4">
							<div class="row justify-content-center">
								<div class="col-lg-3 order-lg-1">
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
										<a href="#" class="btn btn-sm btn-info mr-4">Add to
											Wishlist</a> <a href="#"
											class="btn btn-sm btn-default float-right">Shortlist</a>
									</div>
								</div>
								<div class="col-lg-4 order-lg-2">
									<div
										class="card-profile-stats d-flex justify-content-center py-4 mt-lg-0">
										<div>
											<span class="description mr-4">Name</span> <span
												class="heading mr-4">${groom.firstName }
												${groom.lastName }</span>
										</div>
										<div>
											<span class="description mr-4">Age</span> <span
												class="heading mr-4">${groom.age }</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-lg-4 order-lg-3">
									<div class="card-profile-stats d-flex justify-content-center">

										<div>
											<span class="description mr-4">Star</span> <span
												class="heading mr-4">${groom.star }</span>
										</div>
										<div>
											<span class="description mr-4">Raasi</span> <span
												class="heading mr-4">${groom.raasi }</span>
										</div>
									</div>
								</div>
								<div class="col-lg-4 order-lg-1"></div>
								<div class="col-lg-4 order-lg-2">
									<div class="card-profile-stats d-flex justify-content-center">
										<div>
											<span class="description">Caste</span> <span class="heading">${groom.caste }</span>
										</div>
										<div>
											<span class="description">Sub Caste</span> <span
												class="heading">${groom.subCaste }</span>
										</div>
										<div>
											<span class="description">Division</span> <span
												class="heading">${groom.division }</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm d-flex justify-content-center">
									<table>
										<tbody>
											<tr>
												<th class="description" scope="row">Education</th>
												<td>${groom.education }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Occupation</th>
												<td>${groom.occupation }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Annual Income</th>
												<td>${groom.annualIncome }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Residential City</th>
												<td>${groom.workLocation }</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-sm d-flex justify-content-center">
									<table>
										<tbody>
											<tr>
												<th class="description" scope="row">Height</th>
												<td>${groom.height }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Weight</th>
												<td>${groom.weight }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Disability</th>
												<td>${groom.disability }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Marrital Status</th>
												<td>${groom.maritalStatus }</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-sm d-flex justify-content-center">
									<table>
										<tbody>
											<tr>
												<th class="description" scope="row">Father's Name</th>
												<td>${groom.fathersName }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Father's Occupation</th>
												<td>${groom.fathersOccupation }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Mother's Name</th>
												<td>${groom.mothersName }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Mother's Occupation</th>
												<td>${groom.mothersOccupation }</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${not empty bridelist }">
				<c:forEach var="bride" items="bridelist">
					<div class="card card-profile shadow mt--300">
						<div class="px-4">
							<div class="row justify-content-center">
								<div class="col-lg-3 order-lg-1">
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
										<a href="#" class="btn btn-sm btn-info mr-4">Add to
											Wishlist</a> <a href="#"
											class="btn btn-sm btn-default float-right">Shortlist</a>
									</div>
								</div>
								<div class="col-lg-4 order-lg-2">
									<div
										class="card-profile-stats d-flex justify-content-center py-4 mt-lg-0">
										<div>
											<span class="description mr-4">Name</span> <span
												class="heading mr-4">${bride.firstName }
												${bride.lastName }</span>
										</div>
										<div>
											<span class="description mr-4">Age</span> <span
												class="heading mr-4">${bride.age }</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-lg-4 order-lg-3">
									<div class="card-profile-stats d-flex justify-content-center">

										<div>
											<span class="description mr-4">Star</span> <span
												class="heading mr-4">${bride.star }</span>
										</div>
										<div>
											<span class="description mr-4">Raasi</span> <span
												class="heading mr-4">${bride.raasi }</span>
										</div>
									</div>
								</div>
								<div class="col-lg-4 order-lg-1"></div>
								<div class="col-lg-4 order-lg-2">
									<div class="card-profile-stats d-flex justify-content-center">
										<div>
											<span class="description">Caste</span> <span class="heading">${bride.caste }</span>
										</div>
										<div>
											<span class="description">Sub Caste</span> <span
												class="heading">${bride.subCaste }</span>
										</div>
										<div>
											<span class="description">Division</span> <span
												class="heading">${bride.division }</span>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm d-flex justify-content-center">
									<table>
										<tbody>
											<tr>
												<th class="description" scope="row">Education</th>
												<td>${bride.education }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Occupation</th>
												<td>${bride.occupation }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Annual Income</th>
												<td>${bride.annualIncome }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Residential City</th>
												<td>${bride.workLocation }</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-sm d-flex justify-content-center">
									<table>
										<tbody>
											<tr>
												<th class="description" scope="row">Height</th>
												<td>${bride.height }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Weight</th>
												<td>${bride.weight }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Disability</th>
												<td>${bride.disability }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Marrital Status</th>
												<td>${bride.maritalStatus }</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-sm d-flex justify-content-center">
									<table>
										<tbody>
											<tr>
												<th class="description" scope="row">Father's Name</th>
												<td>${bride.fathersName }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Father's Occupation</th>
												<td>${bride.fathersOccupation }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Mother's Name</th>
												<td>${bride.mothersName }</td>
											</tr>
											<tr>
												<th class="description" scope="row">Mother's Occupation</th>
												<td>${bride.mothersOccupation }</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>
	</section>

	
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>