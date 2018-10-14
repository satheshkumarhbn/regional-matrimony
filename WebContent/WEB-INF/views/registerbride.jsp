<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Regional Matrimony- Register Bride</title>
	<link rel="shortcut icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  	<link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
	<link href="<c:url value="resources/css/dashboard/style.css"/>" rel="stylesheet">
	<link href="<c:url value="resources/css/dashboard/styles.css"/>" rel="stylesheet">
	<link href="<c:url value="resources/css/dashboard/switchery.min.css"/>" rel="stylesheet">
</head>
<body>
<main>
<jsp:include page="dashboard.jsp"></jsp:include>
	<article class="larg">
		<div id="wrapper">
			<form action="/registerBride" method="post">
				<div class="col-2">
			    <label>
			      FirstName
			      <input placeholder="What is Bride's first name?" id="firstName" name="firstName" required>
			    </label>
			  </div>
			  <div class="col-2">
			    <label>
			      LastName
			      <input placeholder="What is Bride's second name?" id="secondName" name="secondName" required>
			    </label>
			  </div>
			  
			  <div class="col-3">
			    <label>
			      Date of Birth
			      <input type="date" id="dateOfBirth" name="dateOfBirth" required>
			    </label>
			  </div>
			  <div class="col-3">
			    <label>
			      Age
			      <input placeholder="What is Bride's age?" pattern="[0-9][0-9]" title="Age should be in 2 digit" id="age" name="age" required>
			    </label>
			  </div>
			  <div class="col-3">
			    <label>
			      Gender
			      <select name="gender" required>
			        <option>Male</option>
			        <option>Female</option>
			      </select>
			    </label>
			  </div>
			  
			  <div class="col-2">
			    <label>
			      Education
			      <input placeholder="What is Bride's highiest education qualification?" id="education" name="education" required>
			    </label>
			  </div>
			  <div class="col-2">
			    <label>
			      Occupation
			      <input placeholder="Where is Bride's Occupation?" id="occupation" name="occupation" required>
			    </label>
			  </div>
			  
			  <div class="col-3">
			    <label>
			      Annual Income
			      <input placeholder="What is Bride's Annual Income?" id="annualIncome" name="annualIncome">
			    </label>
			  </div>
			  <div class="col-3">
			    <label>
			      Height
			      <input placeholder="What is Bride's Height?" id="height" name="height">
			    </label>
			  </div>
			  <div class="col-3">
			    <label>
			      Weight
			      <input placeholder="What is Bride's Weight?" id="weight" name="weight">
			    </label>
			  </div>
			  
			  <div class="col-4">
			    <label>
			      Father's Name
			      <input placeholder="What is Bride's father name?" id="fathersName" name="fathersName" required>
			    </label>
			  </div>
			  <div class="col-4">
			    <label>
			      Father's Occupation
			      <input placeholder="What is Bride's father occupation?" id="fathersOccupation" name="fathersOccupation" required>
			    </label>
			  </div>
			  <div class="col-4">
			    <label>
			      Mother's Name
			      <input placeholder="Where is Bride's mother name?" id="mothersName" name="mothersName" required>
			    </label>
			  </div>
			  <div class="col-4">
			    <label>
			      Mother's Occupation
			      <input placeholder="What is Bride's mother occupation?" id="mothersOccupation" name="mothersOccupation" required>
			    </label>
			  </div>
			  
			    <div class="col-3">
			    <label>
			      Nationality
			      <input placeholder="What is Bride's nationality?" id="nationality" name="nationality" required>
			    </label>
			  </div>
			  <div class="col-3">
			    <label>
			      Religion
			      <input placeholder="What is Bride's religion?" id="religion" name="religion" required>
			    </label>
			  </div>
			  <div class="col-3">
			    <label>
			      Caste
			      <input placeholder="What is Bride's caste?" id="caste" name="caste" required>
			    </label>
			  </div>
			  <div class="col-3">
			    <label>
			      SubCaste
			      <input placeholder="What is Bride's Sub Caste?" id="subCaste" name="subCaste" required>
			    </label>
			  </div>
			  <div class="col-3">
			    <label>
			      Division
			      <input placeholder="What is Bride's division?" id="division" name="division" required>
			    </label>
			  </div>
			  <div class="col-3">
			    <label>
			      Diety
			      <input placeholder="What is Bride's Diety(Kulatheivam)?" id="diety" name="diety" required>
			    </label>
			  </div>
			  
			   <div class="col-4">
			    <label>
			      StdCode
			      <input placeholder="What is Bride's landline stdcode?" pattern="[0]{0-9}{4}" title="Std code should start with 0 followed by 4 digits" id="stdcode" name="stdcode">
			    </label>
			  </div>
			  <div class="col-4">
			    <label>
			      Landline
			      <input placeholder="What is Bride's landline number?" id="landline" name="landline">
			    </label>
			  </div>
			  <div class="col-4">
			    <label>
			      Mobile Number
			      <input placeholder="What is Bride's Mobile Number?" pattern="[6789][0-9]{9}" title="Mobile number starts with 6-9 and remaing 9 digit is allowed (+91 not needed)" id="mobileNumber" name="mobileNumber" required>
			    </label>
			  </div>
			  
			  <div class="col-4">
			    <label>
			      Alternate Mobile Number
			      <input placeholder="What is Bride's Alternate Mobile Number?" pattern="[6789][0-9]{9}" title="Mobile number starts with 6-9 and remaing 9 digit is allowed (+91 not needed)" id="alternateMobileNumber" name="alternateMobileNumber">
			    </label>
			  </div>
			  
			  <div class="col-3">
			    <label>
			      Whatsapp Number
			      <input placeholder="What is Bride's Whatsapp Number?" type="text" pattern="[6789][0-9]{9}" title="Mobile number starts with 6-9 and remaing 9 digit is allowed (+91 not needed)" id="whatsappNumber" name="whatsappNumber" required>
			    </label>
			  </div>
			  
			  <div class="col-3">
			    <label>
			      Email Address
			      <input placeholder="What is Bride's E-mail address?" type="email" id="email" name="email" required>
			    </label>
			  </div>
			  
			  <div class="col-3">
			    <label>
			      Address
			      <input placeholder="What is Bride's address for Communication?" type="text" id="address" name="address">
			    </label>
			  </div>
			  
			  <div class="col-4">
			    <label>
			      Star
			      <input placeholder="What is Bride's Star?" type="text" id="star" name="star" required>
			    </label>
			  </div>
			  <div class="col-4">
			    <label>
			      Raasi
			      <input placeholder="What is Bride's Raasi?" type="text" id="raasi" name="raasi" required>
			    </label>
			  </div>
			  <div class="col-4">
			    <label>
			      Time of birth
			      <input placeholder="What is Bride's Time of birth?" type="text" id="timeOfBirth" name="timeOfBirth">
			    </label>
			  </div>
			  <div class="col-4">
			    <label>
			      Place of Birth
			      <input placeholder="What is Bride's Place of Birth?" type="text" id="placeOfBirth" name="placeOfBirth">
			    </label>
			  </div>
			  
			  <div class="col-2">
			    <label>
			      Horoscope
			      <input type="file" id="horoscope" name="horoscope" required>
			    </label>
			  </div>
			  
			  <div class="col-submit">
			    <button class="submitbtn">Register Bride</button>
			  </div>
			</form>
		</div>
		<script type="text/javascript">
		var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
		
		elems.forEach(function(html) {
		  var switchery = new Switchery(html);
		});
		</script>
		<script src="resources/js/dashboard/switchery.min.js"></script>
	</article>
</main>
</body>
</html>