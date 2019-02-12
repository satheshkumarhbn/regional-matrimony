<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Regional Matrimony- Match Preference</title>
<meta name="description" content="Regional Matrimony Admin Portal">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
<link href="<c:url value="resources/assets/css/dropdown.css"/>" rel="stylesheet">
<link href="<c:url value="resources/assets/scss/dropdown.scss"/>" rel="stylesheet">
</head>
<body>
	<jsp:include page="dashboard.jsp"></jsp:include>
	<!-- Right Panel -->
	<div id="right-panel" class="right-panel">
		<div class="breadcrumbs">
			<div class="breadcrumbs-inner">
				<div class="row m-0">
					<div class="col-sm-4">
						<div class="page-header float-left">
							<div class="page-title">
								<h1>Match Preference</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">Dashboard</a></li>
									<li class="active">Match Preference</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="animated fadeIn">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header">
								<strong>Match Preference</strong> Form
							</div>
							<div class="card-body card-block">
								<form action="matchPreference" method="post"
									class="form-horizontal">
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="age" class=" form-control-label">Age</label>
										</div>
										<div class="col-6 col-md-3">
											<select name="mpStartAge" id="startage" class="form-control">
												<option value="0">Please select start age</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
												<option value="32">32</option>
												<option value="33">33</option>
												<option value="34">34</option>
												<option value="35">35</option>
												<option value="36">36</option>
												<option value="37">37</option>
												<option value="38">38</option>
												<option value="39">39</option>
												<option value="40">40</option>
												<option value="41">41</option>
												<option value="42">42</option>
												<option value="43">43</option>
												<option value="44">44</option>
												<option value="45">45</option>
												<option value="46">46</option>
												<option value="47">47</option>
												<option value="48">48</option>
												<option value="49">49</option>
												<option value="50">50</option>
											</select>
										</div>
										<div class="col-12 col-md-3">
											<select name="mpEndAge" id="endage" class="form-control">
												<option value="0">Please select end age</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
												<option value="24">24</option>
												<option value="25">25</option>
												<option value="26">26</option>
												<option value="27">27</option>
												<option value="28">28</option>
												<option value="29">29</option>
												<option value="30">30</option>
												<option value="31">31</option>
												<option value="32">32</option>
												<option value="33">33</option>
												<option value="34">34</option>
												<option value="35">35</option>
												<option value="36">36</option>
												<option value="37">37</option>
												<option value="38">38</option>
												<option value="39">39</option>
												<option value="40">40</option>
												<option value="41">41</option>
												<option value="42">42</option>
												<option value="43">43</option>
												<option value="44">44</option>
												<option value="45">45</option>
												<option value="46">46</option>
												<option value="47">47</option>
												<option value="48">48</option>
												<option value="49">49</option>
												<option value="50">50</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">Educational
												Qualification</label>
										</div>
										<div class="col col-md-6">
											<fieldset>
												<c:forEach var="education" items="${educationlist }">
													<div class="form-check form-check-inline">
											            <input type="checkbox" id="${education.education }" name="mpEducation" value="${education.education }">
											            <label class="form-check-label btn btn-success" for="${education.education }">${education.displayName }</label>
											          </div>
												</c:forEach>
											</fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">Occupation</label>
										</div>
										<div class="col col-md-9">
											<fieldset>
												<c:forEach var="occupation" items="${occupationlist }">
													<div class="form-check form-check-inline">
											            <input type="checkbox" id="${occupation.occupation }" name="mpOccupation" value="${occupation.occupation }">
											            <label class="form-check-label btn btn-success" for="${occupation.occupation }">${occupation.displayName }</label>
											          </div>
												</c:forEach>
											</fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">Work Location</label>
										</div>
										<div class="col col-md-9">
											<fieldset>
												<c:forEach var="workLocation" items="${workloclist }">
													<div class="form-check form-check-inline">
											            <input type="checkbox" id="${workLocation.city }" name="mpWorkLocation" value="${workLocation.city }">
											            <label class="form-check-label btn btn-success" for="${workLocation.city }">${workLocation.displayName }</label>
											          </div>
												</c:forEach>
											</fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="height" class=" form-control-label">Height</label>
										</div>
										<div class="col-6 col-md-3">
											<select name="mpHeight" id="height" class="form-control">
												<option value="0">Please select height range</option>
												<option value="100-140">below 140cm</option>
												<option value="141-150">141cm-150cm</option>
												<option value="151-160">151cm-160cm</option>
												<option value="161-170">161cm-170cm</option>
												<option value="171-180">171cm-180cm</option>
												<option value="181-190">181cm-190cm</option>
												<option value="191-200">191cm-200cm</option>
												<option value="201-300">above 300cm</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="weight" class=" form-control-label">Weight</label>
										</div>
										<div class="col-6 col-md-3">
											<select name="mpWeight" id="weight" class="form-control">
												<option value="0">Please select weight range</option>
												<option value="10-40">below 40kg</option>
												<option value="41-50">41kg-50kg</option>
												<option value="51-60">51kg-60kg</option>
												<option value="61-70">61kg-70kg</option>
												<option value="71-80">71kg-80kg</option>
												<option value="81-90">81kg-90kg</option>
												<option value="91-100">91kg-100kg</option>
												<option value="101-300">above 100kg</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="caste" class=" form-control-label">Caste</label>
										</div>
										<div class="col col-md-9">
											<fieldset>
          									<c:forEach var="caste" items="${castelist }">
									          <div class="form-check form-check-inline">
									            <input type="checkbox" id="${caste.casteName }" name="mpCaste" value="${caste.casteName }">
									            <label class="form-check-label btn btn-success" for="${caste.casteName }">${caste.displayName }</label>
									          </div>
									          </c:forEach>
									        </fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="subcaste" class=" form-control-label">Sub
												Caste</label>
										</div>
										<div class="col col-md-9">
										<fieldset>
											<c:forEach var="subCaste" items="${subcastelist }">
												<div class="form-check form-check-inline">
										            <input type="checkbox" id="${subCaste.subCasteName }" name="mpSubCaste" value="${subCaste.subCasteName }">
										            <label class="form-check-label btn btn-success" for="${subCaste.subCasteName }">${subCaste.displayName }</label>
										          </div>
											</c:forEach>
											</fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="division" class=" form-control-label">Division</label>
										</div>
										<div class="col col-md-9">
										<fieldset>
											<c:forEach var="division" items="${divisionlist }">
												<div class="form-check form-check-inline">
										            <input type="checkbox" id="${division.division }" name="mpDivision" value="${division.division }">
										            <label class="form-check-label btn btn-success" for="${division.division }">${division.displayName }</label>
										          </div>
											</c:forEach>
										</fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="diety" class=" form-control-label">Diety</label>
										</div>
										<div class="col col-md-9">
										<fieldset>
											<c:forEach var="diety" items="${dietylist }">
												<div class="form-check form-check-inline">
										            <input type="checkbox" id="${diety.diety }" name="mpDiety" value="${diety.diety }">
										            <label class="form-check-label btn btn-success" for="${diety.diety }">${diety.displayName }</label>
										          </div>
											</c:forEach>
										</fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="maritalstatus" class=" form-control-label">Marital
												Status</label>
										</div>
										<div class="col-12 col-md-9">
											<fieldset>
												<div class="form-check form-check-inline">
										            <input type="checkbox" id="maritalstatus-never-married" name="mpMaritalStatus" value="never married">
										            <label class="form-check-label btn btn-success" for="maritalstatus-never-married">Never married</label>
										          </div>
										        <div class="form-check form-check-inline">
										            <input type="checkbox" id="maritalstatus-divorced" name="mpMaritalStatus" value="divorced">
										            <label class="form-check-label btn btn-success" for="maritalstatus-divorced">Divorced</label>
										          </div>
										        <div class="form-check form-check-inline">
										            <input type="checkbox" id="maritalstatus-widowed" name="mpMaritalStatus" value="widowed">
										            <label class="form-check-label btn btn-success" for="maritalstatus-widowed">Widowed</label>
										          </div>
										        <div class="form-check form-check-inline">
										            <input type="checkbox" id="maritalstatus-awaiting-divorced" name="mpMaritalStatus" value="awaiting divorced">
										            <label class="form-check-label btn btn-success" for="mpMaritalstatus-awaiting-divorced">Awaiting divorced</label>
										          </div>
											</fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="disability" class=" form-control-label">Disabilities</label>
										</div>
										<div class="col-12 col-md-9">
											<fieldset>
												<div class="form-check form-check-inline">
										            <input type="checkbox" id="disability-normal" name="mpDisability" value="normal">
										            <label class="form-check-label btn btn-success" for="disability-normal">Normal</label>
										          </div>
										        <div class="form-check form-check-inline">
										            <input type="checkbox" id="disability-physically-challenged" name="mpDisability" value="physically challenged">
										            <label class="form-check-label btn btn-success" for="disability-physically-challenged">Physically Challenged</label>
										          </div>
											</fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="star" class=" form-control-label">Star</label>
										</div>
										<div class="col col-md-9">
										<fieldset>
											<c:forEach var="star" items="${starlist }">
												<div class="form-check form-check-inline">
										            <input type="checkbox" id="${star.starname }" name="mpStar" value="${star.starname }">
										            <label class="form-check-label btn btn-success" for="${star.starname }">${star.displayName }</label>
										          </div>
											</c:forEach>
											</fieldset>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="raasi" class=" form-control-label">Raasi</label>
										</div>
										<div class="col col-md-9">
											<fieldset>
											<c:forEach var="raasi" items="${raasilist }">
												<div class="form-check form-check-inline">
										            <input type="checkbox" id="${raasi.raasiName }" name="mpRaasi" value="${raasi.raasiName }">
										            <label class="form-check-label btn btn-success" for="${raasi.raasiName }">${raasi.displayName }</label>
										          </div>
											</c:forEach>
											</fieldset>
										</div>
									</div>
									<c:choose>
										<c:when test = "${not empty groomId }">
											<input type="hidden" name = "memberId" value = "${groomId }">
										</c:when>
										<c:otherwise>
											<input type="hidden" name = "memberId" value = "${brideId }">
										</c:otherwise>
									</c:choose>
									
									<button type="submit"
										class="btn btn-outline-success btn-lg btn-block">Register
										Match Preference</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>