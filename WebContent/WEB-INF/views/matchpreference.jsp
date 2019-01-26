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
<style type="text/css">
.dropdown {
  position: absolute;
  top:50%;
  transform: translateY(-50%);
}

a {
  color: #fff;
}

.dropdown dd,
.dropdown dt {
  margin: 0px;
  padding: 0px;
}

.dropdown ul {
  margin: -1px 0 0 0;
}

.dropdown dd {
  position: relative;
}

.dropdown a,
.dropdown a:visited {
  color: #fff;
  text-decoration: none;
  outline: none;
  font-size: 12px;
}

.dropdown dt a {
  background-color: #4F6877;
  display: block;
  padding: 8px 20px 5px 10px;
  min-height: 25px;
  line-height: 24px;
  overflow: hidden;
  border: 0;
  width: 272px;
}

.dropdown dt a span,
.multiSel span {
  cursor: pointer;
  display: inline-block;
  padding: 0 3px 2px 0;
}

.dropdown dd ul {
  background-color: #4F6877;
  border: 0;
  color: #fff;
  display: none;
  left: 0px;
  padding: 2px 15px 2px 5px;
  position: absolute;
  top: 2px;
  width: 280px;
  list-style: none;
  height: 100px;
  overflow: auto;
}

.dropdown span.value {
  display: none;
}

.dropdown dd ul li a {
  padding: 5px;
  display: block;
}

.dropdown dd ul li a:hover {
  /*background-color: #fff;*/
}

</style>
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
											<select name="startage" id="startage" class="form-control">
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
											<select name="endage" id="endage" class="form-control">
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
											<div class="form-check">
												<div class="checkbox">
													<label for="checkbox1" class="form-check-label "> <input
														type="checkbox" id="checkbox1" name="checkbox1"
														value="SSLC" class="form-check-input">SSLC
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox2" class="form-check-label "> <input
														type="checkbox" id="checkbox2" name="checkbox2"
														value="HSC" class="form-check-input"> HSC
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox3" class="form-check-label "> <input
														type="checkbox" id="checkbox3" name="checkbox3"
														value="Bachelors in Engineering" class="form-check-input">
														Bachelors in Engineering
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox4" class="form-check-label "> <input
														type="checkbox" id="checkbox4" name="checkbox4"
														value="Masters in Engineering" class="form-check-input">
														Masters in Engineering
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox5" class="form-check-label "> <input
														type="checkbox" id="checkbox5" name="checkbox5"
														value="Bachelors in Science" class="form-check-input">
														Bachelors in Science
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox6" class="form-check-label "> <input
														type="checkbox" id="checkbox6" name="checkbox6"
														value="Masters in Science" class="form-check-input">
														Masters in Science
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox7" class="form-check-label "> <input
														type="checkbox" id="checkbox7" name="checkbox7"
														value="Bachelors in Commerce" class="form-check-input">
														Bachelors in Commerce
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox8" class="form-check-label "> <input
														type="checkbox" id="checkbox8" name="checkbox8"
														value="Masters in Commerce" class="form-check-input">
														Masters in Commerce
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox9" class="form-check-label "> <input
														type="checkbox" id="checkbox9" name="checkbox9"
														value="Bachelors in Computer Applications"
														class="form-check-input"> Bachelors in Computer
														Applications
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox10" class="form-check-label ">
														<input type="checkbox" id="checkbox10" name="checkbox10"
														value="Masters in Computer Applications"
														class="form-check-input"> Masters in Computer
														Applications
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">Occupation</label>
										</div>
										<div class="col col-md-9">
											<div class="form-check">
												<div class="checkbox">
													<label for="checkbox1" class="form-check-label "> <input
														type="checkbox" id="checkbox1" name="checkbox1"
														value="Business-own" class="form-check-input">Business-
														own
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox2" class="form-check-label "> <input
														type="checkbox" id="checkbox2" name="checkbox2"
														value="Business-partner" class="form-check-input">
														Business- partner
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox3" class="form-check-label "> <input
														type="checkbox" id="checkbox3" name="checkbox3"
														value="Salaried-public" class="form-check-input">
														Salaried- public sector
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox4" class="form-check-label "> <input
														type="checkbox" id="checkbox4" name="checkbox4"
														value="Salaried-private" class="form-check-input">
														Salaried- private sector
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">Work Location</label>
										</div>
										<div class="col col-md-9">
											<div class="form-check">
												<div class="checkbox">
													<label for="checkbox1" class="form-check-label "> <input
														type="checkbox" id="checkbox1" name="checkbox1"
														value="chennai" class="form-check-input">Chennai
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox2" class="form-check-label "> <input
														type="checkbox" id="checkbox2" name="checkbox2"
														value="bangalore" class="form-check-input">
														Bangalore
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox3" class="form-check-label "> <input
														type="checkbox" id="checkbox3" name="checkbox3"
														value="hyderabad" class="form-check-input">
														Hyderabad
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox4" class="form-check-label "> <input
														type="checkbox" id="checkbox4" name="checkbox4"
														value="mumbai" class="form-check-input"> Mumbai
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox5" class="form-check-label "> <input
														type="checkbox" id="checkbox5" name="checkbox5"
														value="kolkatta" class="form-check-input">
														Kolkatta
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox6" class="form-check-label "> <input
														type="checkbox" id="checkbox6" name="checkbox6"
														value="delhi" class="form-check-input"> Delhi
													</label>
												</div>
												<div class="checkbox">
													<label for="checkbox7" class="form-check-label "> <input
														type="checkbox" id="checkbox7" name="checkbox7"
														value="other cities" class="form-check-input">
														Other Cities
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="height" class=" form-control-label">Height</label>
										</div>
										<div class="col-6 col-md-3">
											<select name="height" id="height" class="form-control">
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
											<select name="weight" id="weight" class="form-control">
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
											<dl class="dropdown"> 
											    <dt>
											    <a href="#">
											      <span class="hida">Bussiness Unit</span>    
											    </a>
											    </dt>
											  
											    <dd>
											        <div class="mutliSelect">
											            <ul>
											              <li><a href="#" onclick="selectAll()">Select all</a></li>
											                <li>
											                    <input type="checkbox" value="Apple" />Apple</li>
											                <li>
											                    <input type="checkbox" value="Blackberry" />Blackberry</li>
											                <li>
											                    <input type="checkbox" value="HTC" />HTC</li>
											                <li>
											                    <input type="checkbox" value="Sony Ericson" />Sony Ericson</li>
											                <li>
											                    <input type="checkbox" value="Motorola" />Motorola</li>
											                <li>
											                    <input type="checkbox" value="Nokia" />Nokia</li>
											            </ul>
											        </div>
											    </dd>
											  <p class="multiSel"></p>
											</dl>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="subcaste" class=" form-control-label">Sub
												Caste</label>
										</div>
										<div class="col col-md-9">
											<c:forEach var="subcaste" items="${subcastelist }">
												<div class="form-check">
													<div class="checkbox">
														<label for="subcaste" class="form-check-label ">
															<input type="checkbox" id="subcaste" name="subcaste"
															value="${subcaste.subCasteName }"
															class="form-check-input">${subcaste.displayName }
														</label>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="division" class=" form-control-label">Division</label>
										</div>
										<div class="col col-md-9">
											<c:forEach var="division" items="${divisionlist }">
												<div class="form-check">
													<div class="checkbox">
														<label for="checkbox1" class="form-check-label ">
															<input type="checkbox" id="checkbox1" name="checkbox1"
															value="${division.division }" class="form-check-input">${division.displayName }
														</label>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="diety" class=" form-control-label">Diety</label>
										</div>
										<div class="col col-md-9">
											<c:forEach var="diety" items="${dietylist }">
												<div class="form-check">
													<div class="checkbox">
														<label for="diety" class="form-check-label ">
															<input type="checkbox" id="diety" name="diety"
															value="${diety.diety }" class="form-check-input">${diety.displayName }
														</label>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="maritalStatus" class=" form-control-label">Marital
												Status</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="maritalStatus" id="maritalStatus"
												class="form-control">
												<option value="0">Please select Groom's Marital
													Status</option>
												<option value="never married">Never Married</option>
												<option value="divorced">Divorced</option>
												<option value="widowed">Widowed</option>
												<option value="awaiting divorced">Awaiting Divorced</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="disability" class=" form-control-label">Disabilities</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="disability" id="disability"
												class="form-control">
												<option value="normal">Normal</option>
												<option value="physically challenged">Physically
													Challenged</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="star" class=" form-control-label">Star</label>
										</div>
										<div class="col col-md-9">
											<c:forEach var="star" items="${starlist }">
												<div class="form-check">
													<div class="checkbox">
														<label for="star" class="form-check-label ">
															<input type="checkbox" id="star" name="star"
															value="${star.starname }" class="form-check-input">${star.displayName }
														</label>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="raasi" class=" form-control-label">Raasi</label>
										</div>
										<div class="col col-md-9">
											<c:forEach var="raasi" items="${raasilist }">
												<div class="form-check">
													<div class="checkbox">
														<label for="raasi" class="form-check-label ">
															<input type="checkbox" id="raasi" name="raasi"
															value="${raasi.raasiname }" class="form-check-input">${raasi.displayName }
														</label>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>
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
<script>
$(".dropdown dt a").on('click', function() {
	  $(".dropdown dd ul").slideToggle('fast');
	});

	$(".dropdown dd ul li a").on('click', function() {
	  $(".dropdown dd ul").hide();
	});

	function getSelectedValue(id) {
	  return $("#" + id).find("dt a span.value").html();
	}

	$(document).bind('click', function(e) {
	  var $clicked = $(e.target);
	  if (!$clicked.parents().hasClass("dropdown")) $(".dropdown dd ul").hide();
	});

	$('.mutliSelect input[type="checkbox"]').on('click', function() {

	  var title = $(this).closest('.mutliSelect').find('input[type="checkbox"]').val(),
	    title = $(this).val() + ",";

	  if ($(this).is(':checked')) {
	    var html = '<span title="' + title + '">' + title + '</span>';
	    $('.multiSel').append(html);
	    //$(".hida").hide();
	  } else {
	    $('span[title="' + title + '"]').remove();
	    var ret = $(".hida");
	    $('.dropdown dt a').append(ret);

	  }
	});
</script>
</html>