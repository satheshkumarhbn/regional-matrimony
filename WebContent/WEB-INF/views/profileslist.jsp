<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<tag:url value="/profile?memberid=" var="urlProfile" />
	<div class="matri-row">
		<div class="matri-col s3">
			<button class="matri-button" style="width: 100%">Filter By</button>
		</div>
		<div class="matri-col s9"></div>
	</div>
	<div class="matri-row matri-mobile">
		<div class="matri-col s3 matri-mobile">
			<button class="accordion">
				Filter By Caste<i class="fa fa-plus matri-right"></i>
			</button>
			<div class="panel">
				<label class="checkbox-container">Hindu Nadar<input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Christian Nadar<input
					type="checkbox"> <span class="checkmark"></span>
				</label>
			</div>

			<button class="accordion">
				Filter by Sub-caste<i class="fa fa-plus matri-right"></i>
			</button>
			<div class="panel">
				<label class="checkbox-container">One <input type="checkbox">
					<span class="checkmark"></span>
				</label> <label class="checkbox-container">Two <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Three <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Four <input
					type="checkbox"> <span class="checkmark"></span>
				</label>
			</div>
			<button class="accordion">
				Filter by Diety<i class="fa fa-plus matri-right"></i>
			</button>
			<div class="panel">
				<label class="checkbox-container">One <input type="checkbox">
					<span class="checkmark"></span>
				</label> <label class="checkbox-container">Two <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Three <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Four <input
					type="checkbox"> <span class="checkmark"></span>
				</label>
			</div>
			<button class="accordion">
				Filter by Profession<i class="fa fa-plus matri-right"></i>
			</button>
			<div class="panel">
				<label class="checkbox-container">One <input type="checkbox">
					<span class="checkmark"></span>
				</label> <label class="checkbox-container">Two <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Three <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Four <input
					type="checkbox"> <span class="checkmark"></span>
				</label>
			</div>
			<button class="accordion">
				Filter by Education<i class="fa fa-plus matri-right"></i>
			</button>
			<div class="panel">
				<label class="checkbox-container">One <input type="checkbox">
					<span class="checkmark"></span>
				</label> <label class="checkbox-container">Two <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Three <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Four <input
					type="checkbox"> <span class="checkmark"></span>
				</label>
			</div>
			<button class="accordion">
				Filter by Age<i class="fa fa-plus matri-right"></i>
			</button>
			<div class="panel">
				<label class="checkbox-container">One <input type="checkbox">
					<span class="checkmark"></span>
				</label> <label class="checkbox-container">Two <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Three <input
					type="checkbox"> <span class="checkmark"></span>
				</label> <label class="checkbox-container">Four <input
					type="checkbox"> <span class="checkmark"></span>
				</label>
			</div>
		</div>
		<div class="matri-col s6 matri-mobile">
			<c:if test="${not empty groomlist}">
				<c:forEach var="groom" items="${ groomlist}">
					<div class="matri-row s9 m9 l9">
						<div class="profile-card">
							<div class="profile-card-inner">
								<div class="profile-card-front">
									<img class="matri-center"
										src="<c:url value="resources/images/admin.jpg" />"
										alt="Avatar" style="width: 300px; height: 100%;">

								</div>
								<div class="profile-card-back">
									<div class="matri-row s12 m12 l12">
										<div class="matri-col s6 m6 l6">
											<!--  <div class="matri-row s12">
												<div class="matri-col s4">
													<label class="matri-medium matri-padding-small">Height/Weight:</label>
												</div>
												<div class="matri-col s8">
													<label class="matri-medium matri-padding-small">${bride.height }cm/${bride.weight }kg</label>
												</div>
											</div>
											<div class="matri-row s12">
												<div class="matri-col s4">
													<label class="matri-medium matri-padding-small">Blood Group:</label>
												</div>
												<div class="matri-col s8">
													<label class="matri-medium matri-padding-small">B+ve</label>
												</div>
											</div> -->
											<p>Height/Weight: ${groom.height }cm/ ${groom.weight }kg</p>
											<p>Blood Group: B+ve</p>
											<p>Education: ${groom.education }</p>
											<p>Occupation/Place: ${groom.occupation },
												${groom.workLocation }
											<p>Marittal Status: ${groom.maritalStatus }</p>
										</div>
										<div class="matri-col s6 m6 l6">
											<p>Caste/Sub-Caste: ${groom.caste }/ ${groom.subCaste }</p>
											<p>Division/Diety: ${groom.division }/ ${groom.diety }</p>
											<p>Star/Raasi: ${groom.star }/ ${groom.raasi }</p>
											<p>Father/Mother : ${groom.fathersName }/
												${groom.mothersName }
											<p>Occupation: Engineer, Noida
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="profile-card-name">
							<button class="matri-btn view-profile-btn matri-left"
								style="width: 60%">${groom.firstName }${groom.lastName },
								${groom.age }</button>
							<button
								onclick="window.location.href = '${urlProfile }${groom.memberId }'"
								class="matri-btn view-profile-btn matri-right">
								View Profile <i class="fa fa-eye"></i>
							</button>
							<button class="matri-btn view-profile-btn matri-right">
								<i class="fa fa-heartbeat"></i>
							</button>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<c:if test="${not empty bridelist }">
				<c:forEach var="bride" items="${ bridelist}">
					<div class="matri-row s9">
						<div class="profile-card">
							<div class="profile-card-inner">
								<div class="profile-card-front">
									<img class="matri-center"
										src="<c:url value="resources/images/admin.jpg" />"
										alt="Avatar" style="width: 300px; height: 100%;">

								</div>
								<div class="profile-card-back">
									<div class="matri-row">
										<div class="matri-col s6">
											<p>Height/Weight: ${bride.height }cm/${bride.weight }kg</p>
											<p>Blood Group: B+ve</p>
											<p>Education: ${bride.education }</p>
											<p>Occupation/Place: ${bride.occupation },
												${bride.workLocation }
											<p>Marittal Status: ${bride.maritalStatus }</p>
											
										</div>
										<div class="matri-col s6">
											<p>Caste/Sub-Caste: ${bride.caste }/ ${bride.subCaste }</p>
											<p>Division/Diety: ${bride.division }/ ${bride.diety }</p>
											<p>Star/Raasi: ${bride.star }/ ${bride.raasi }</p>
											<p>Father/Mother : ${bride.fathersName }/
												${bride.mothersName }
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="profile-card-name">
							<button class="matri-btn view-profile-btn matri-left"
								style="width: 60%">${bride.firstName }${bride.lastName },
								${bride.age }</button>
							<button
								onclick="window.location.href = '${urlProfile }${bride.memberId }'"
								class="matri-btn view-profile-btn matri-right">
								View Profile <i class="fa fa-eye"></i>
							</button>
							<button class="matri-btn view-profile-btn matri-right">
								<i class="fa fa-heartbeat"></i>
							</button>
						</div>
					</div>
				</c:forEach>
			</c:if>
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
<script type="text/javascript">
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
		acc[i].addEventListener("click", function() {
			/* Toggle between adding and removing the "active" class,
			to highlight the button that controls the panel */
			this.classList.toggle("active");

			/* Toggle between hiding and showing the active panel */
			var panel = this.nextElementSibling;
			if (panel.style.display === "block") {
				panel.style.display = "none";
			} else {
				panel.style.display = "block";
			}
		});
	}
</script>
</html>