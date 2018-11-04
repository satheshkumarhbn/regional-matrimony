<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%-- 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Regional Matrimony- Register Bride</title>
<meta name="description" content="Regional Matrimony Admin Portal">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
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
								<h1>Register Bride</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">Dashboard</a></li>
									<li class="active">Register Bride</li>
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
					<div class="col-lg-6">
						<div class="card">
							<div class="card-header">
								<strong>Bride Registration</strong> Form
							</div>
							<div class="card-body card-block">
								<form action="registerBrideForm" method="post"
									class="form-horizontal">
									<!-- enctype="multipart/form-data" -->
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="firstName" class=" form-control-label">First
												Name</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="firstName" name="firstName"
												placeholder="Please enter Bride's First Name"
												class="form-control"><small
												class="form-text text-muted">Name should contain
												only alphabets</small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="lastName" class=" form-control-label">Last
												Name</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="lastName" name="lastName"
												placeholder="Please enter Bride's Last Name"
												class="form-control"><small
												class="form-text text-muted">Name should contain
												only alphabets</small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="dateofbirth" class=" form-control-label">Date
												of Birth</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="date" id=dateofbirth name="dateofbirth"
												class="form-control"><small
												class="form-text text-muted">Bride's age should be
												more than 18</small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="age" class=" form-control-label">Age</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="age" id="age" class="form-control">
												<option value="0">Please select Bride's age</option>
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
											<label for="gender" class=" form-control-label">Gender</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="gender" name="gender"
												placeholder="female" value="female" disabled="disabled"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="education" class=" form-control-label">Educational
												Qualification</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="education" id="education" class="form-control">
												<option value="0">Please select Bride's highest
													educational qualification</option>
												<option value="SSLC">SSLC</option>
												<option value="HSC">HSC</option>
												<option value="Bachelors in Engineering">Bachelors
													in Engineering</option>
												<option value="Masters in Engineering">Masters in
													Engineering</option>
												<option value="Bachelors in Science">Bachelors in
													Science</option>
												<option value="Masters in Science">Masters in
													Science</option>
												<option value="Bachelors in Commerce">Bachelors in
													Commerce</option>
												<option value="Masters in Commerce">Masters in
													Commerce</option>
												<option value="Bachelors in Science">Bachelors in
													Science</option>
												<option value="Masters in Science">Masters in
													Science</option>
												<option value="Bachelors in Computer Applications">Bachelors
													in Computer Applications</option>
												<option value="Masters in Computer Applications">Masters
													in Computer Applications</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="occupation" class=" form-control-label">Bride's
												Occupation</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="occupation" id="occupation"
												class="form-control">
												<option value="0">Please select Bride's Occupation</option>
												<option value="Business-own">Business- own</option>
												<option value="Business-partner">Business- partner</option>
												<option value="Salaried-own">Salaried- public
													sector</option>
												<option value="Salaried-own">Salaried- private
													sector</option>
												<option value="other">Others</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="annualIncome" class=" form-control-label">Bride's
												Annual Income</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="annualIncome" id="annualIncome"
												class="form-control">
												<option value="0">Please select Bride's Annual
													Income</option>
												<option value="1Lakhs-2Lakhs">1Lakhs-2Lakhs</option>
												<option value="2Lakhs-4Lakhs">2Lakhs-4Lakhs</option>
												<option value="4Lakhs-6Lakhs">4Lakhs-6Lakhs</option>
												<option value="6Lakhs-8Lakhs">6Lakhs-8Lakhs</option>
												<option value="8Lakhs-10Lakhs">8Lakhs-10Lakhs</option>
												<option value="8Lakhs-10Lakhs">8Lakhs-10Lakhs</option>
												<option value="10Lakhs-15Lakhs">10Lakhs-15Lakhs</option>
												<option value="15Lakhs-20Lakhs">15Lakhs-20Lakhs</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="workLocation" class=" form-control-label">Work
												Location</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="workLocation" name="workLocation"
												placeholder="Please enter Bride's Work Location"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="height" class=" form-control-label">Height</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="height" name="height"
												placeholder="Please enter Bride's Height"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="weight" class=" form-control-label">Weight</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="weight" name="weight"
												placeholder="Please enter Bride's Weight"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="fathersName" class=" form-control-label">Father's
												Name</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="fathersName" name="fathersName"
												placeholder="Please enter Bride's Father Name"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="mothersName" class=" form-control-label">Mother's
												Name</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="mothersName" name="mothersName"
												placeholder="Please enter Bride's Mother Name"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="fathersOccupation" class=" form-control-label">Father's
												Occupation</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="fathersOccupation" id="fathersOccupation"
												class="form-control">
												<option value="0">Please select Bride's Father
													Occupation</option>
												<option value="own business">Own business</option>
												<option value="public sector">Public Sector</option>
												<option value="private sector">Private Sector</option>
												<option value="teacher">Teacher</option>
												<option value="doctor">Doctor</option>
												<option value="lawyer">Lawyer</option>
												<option value="other">Other</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="mothersOccupation" class=" form-control-label">Mother's
												Occupation</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="mothersOccupation" id="mothersOccupation"
												class="form-control">
												<option value="0">Please select Bride's Mother
													Occupation</option>
												<option value="home maker">Home Maker</option>
												<option value="public sector">Public Sector</option>
												<option value="private sector">Private Sector</option>
												<option value="teacher">Teacher</option>
												<option value="doctor">Doctor</option>
												<option value="lawyer">Lawyer</option>
												<option value="other">Other</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="caste" class=" form-control-label">Caste</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="caste" id="caste" class="form-control">
												<option value="0">Please select Bride's Caste</option>
												<option value="hindu nadar">Hindu Nadar</option>
												<option value="christian nadar">Christian Nadar</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="subCaste" class=" form-control-label">Sub
												Caste</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="subCaste" id="subCaste" class="form-control">
												<option value="0">Please select Bride's Sub Caste</option>
												<option value="nattathi nadar">Nattathi nadar</option>
												<option value="kongu nadar">Kongu Nadar</option>
												<option value="nattuva nadar">Nattuva Nadar</option>
												<option value="karunchanar">Karunchanar</option>
												<option value="sanar">Sanar</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="division" class=" form-control-label">Division</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="division" id="division" class="form-control">
												<option value="0">Please select Bride's Division</option>
												<option value="pallan">Pallan</option>
												<option value="madan kulam">Madan Kulam</option>
												<option value="sakkarai vilambi">Sakkarai vilambi</option>
												<option value="uppu kachi">Uppu kachi</option>
												<option value="silambu chinnan">Silambu chinnan</option>
												<option value="nay thinni">Nay thinni</option>
												<option value="monnai kootam">Monnai kootam</option>
												<option value="kadai kootam">Kadai kootam</option>
												<option value="selathan kootam">Selathan kootam</option>
												<option value="others">Others</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="diety" class=" form-control-label">Diety</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="diety" id="diety" class="form-control">
												<option value="0">Please select Bride's Diety</option>
												<option value="angalamman">Angalamman</option>
												<option value="bathrakaliamman">Bathrakaliamman</option>
												<option value="others">Others</option>
											</select>
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
												<option value="0">Please select Bride's Marital
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
											<label for="siblings" class=" form-control-label">Siblings</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="siblings" id="siblings" class="form-control">
												<option value="0">Please select Bride's Siblings</option>
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
												<option value="4">4</option>
												<option value="5">5</option>
												<option value="6">6</option>
												<option value="7">7</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="mobileNumber" class=" form-control-label">Mobile
												Number</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="mobileNumber" name="mobileNumber"
												placeholder="Please enter Bride's Mobile Number"
												class="form-control" pattern="[6789][0-9]{9}"
												title="Mobile number starts with 6-9 and remaing 9 digit is allowed (+91 not needed)">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="alternateMobileNumber"
												class=" form-control-label">Alternate Mobile Number</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="alternateMobileNumber"
												name="alternateMobileNumber"
												placeholder="Please enter Bride's Alternate Mobile Number"
												class="form-control" pattern="[6789][0-9]{9}"
												title="Mobile number starts with 6-9 and remaing 9 digit is allowed (+91 not needed)">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="whatsappNumber" class=" form-control-label">Whatsapp
												Number</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="whatsappNumber" name="whatsappNumber"
												placeholder="Please enter Bride's Whatsapp Number"
												class="form-control" pattern="[6789][0-9]{9}"
												title="Mobile number starts with 6-9 and remaing 9 digit is allowed (+91 not needed)">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="email" class=" form-control-label">Email</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="email" id="email" name="email"
												placeholder="Enter Bride's Email" class="form-control"><small
												class="help-block form-text">Please enter your email</small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="address" class=" form-control-label">Address</label>
										</div>
										<div class="col-12 col-md-9">
											<textarea name="address" id="address" rows="5"
												placeholder="Please enter Bride's address for Communication"
												class="form-control"></textarea>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="star" class=" form-control-label">Star</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="star" id="star" class="form-control">
												<option value="ashvini">Ashvini</option>
												<option value="bharani">Bharani</option>
												<option value="karthigai">Karthigai</option>
												<option value="rohini">Rohini</option>
												<option value="mirukaseerisham">Mirukaseerisham</option>
												<option value="thiruvathirai">Thiruvathirai</option>
												<option value="punarpusam">Punarpusam</option>
												<option value="poosam">Poosam</option>
												<option value="ayilyam">Ayilyam</option>
												<option value="maham">Maham</option>
												<option value="pooram">Pooram</option>
												<option value="uthiram">Uthiram</option>
												<option value="hashtham">Hashtham</option>
												<option value="sithirai">Sithirai</option>
												<option value="swathi">Swathi</option>
												<option value="visakam">Visakam</option>
												<option value="anusham">Anusham</option>
												<option value="kettai">kettai</option>
												<option value="moolam">Moolam</option>
												<option value="pooradam">Pooradam</option>
												<option value="uthiradam">Uthiradam</option>
												<option value="thiruvonam">Thiruvonam</option>
												<option value="avittam">Avittam</option>
												<option value="sathayam">Sathayam</option>
												<option value="pooratathi">Pooratathi</option>
												<option value="uthiratathi">Uthiratathi</option>
												<option value="revathi">Revathi</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="raasi" class=" form-control-label">Raasi</label>
										</div>
										<div class="col-12 col-md-9">
											<select name="raasi" id="raasi" class="form-control">
												<option value="mesham">Mesham</option>
												<option value="rishabam">Rishabam</option>
												<option value="mithunam">Mithunam</option>
												<option value="kadakam">Kadakam</option>
												<option value="simmam">Simmam</option>
												<option value="kanni">Kanni</option>
												<option value="thulam">Thulam</option>
												<option value="viruchikam">Viruchikam</option>
												<option value="dhanusu">Dhanusu</option>
												<option value="makaram">Makaram</option>
												<option value="kumbam">Kumbam</option>
												<option value="meenam">Meenam</option>
											</select>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="timeOfBirth" class=" form-control-label">Time
												of birth</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="time" id="timeOfBirth" name="timeOfBirth"
												placeholder="Please enter Bride's Time of birth"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="placeOfBirth" class=" form-control-label">Place
												of Birth</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="text" id="placeOfBirth" name="placeOfBirth"
												placeholder="Please enter Bride's Place of Birth"
												class="form-control">
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="horoscope" class=" form-control-label">Horoscope</label>
										</div>
										<div class="col-12 col-md-9">
											<input type="file" id="horoscope" name="horoscope"
												class="form-control-file">
										</div>
									</div>
									<button type="submit"
										class="btn btn-outline-success btn-lg btn-block">Register
										Bride</button>
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