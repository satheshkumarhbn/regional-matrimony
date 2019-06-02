<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="NextGen Matrimonial Portal for searching a perfect life partner">
<meta name="author" content="Regional Matrimony">
<title>Regional Matrimony - NextGen Matrimonial Portal</title>
<!-- Favicon -->
<link href="resources/clientassets/img/brand/favicon.png" rel="icon"
	type="image/png">
<link type="text/css"
	href="<c:url value="resources/clientassets/css/matri.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="text/css">
#regForm {
  background-color: #ffffff;
  margin: 100px auto;
  padding-top: 5px;
  padding-bottom: 40px;
  padding-left: 40px;
  padding-right: 40px;
  width: 70%;
  min-width: 300px;
}

/* Style the input fields */
input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none; 
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

/* Mark the active step: */
.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
	</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="matri-row">
		<div class="matri-col s8">
			<form id="regForm" action="">
				<h1>Register:</h1>

				<!-- One "tab" for each step in the form: -->
				<div class="tab">
					First Name:
					<p>
						<input placeholder="First name..." oninput="this.className = ''">
					</p>
					Last Name
					<p>
						<input placeholder="Last name..." oninput="this.className = ''">
					</p>
					Height (cm)
					<p>
						<input placeholder="Last name..." oninput="this.className = ''">
					</p>
					Weight (Kg)
					<p>
						<input placeholder="Last name..." oninput="this.className = ''">
					</p>
				</div>

				<div class="tab">
					Contact Info:
					Mobile number
					<p>
						<input placeholder="E-mail..." oninput="this.className = ''">
					</p>
					E-mail
					<p>
						<input placeholder="Phone..." oninput="this.className = ''">
					</p>
				</div>

				<div class="tab">
					Birthday:
					<p>
						<input placeholder="dd" oninput="this.className = ''">
					</p>
					<p>
						<input placeholder="mm" oninput="this.className = ''">
					</p>
					<p>
						<input placeholder="yyyy" oninput="this.className = ''">
					</p>
				</div>

				<div class="tab">
					Login Info:
					<p>
						<input placeholder="Username..." oninput="this.className = ''">
					</p>
					<p>
						<input placeholder="Password..." oninput="this.className = ''">
					</p>
				</div>

				<div style="overflow: auto;">
					<div style="float: right;">
						<button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
						<button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
					</div>
				</div>

				<!-- Circles which indicates the steps of the form: -->
				<div style="text-align: center; margin-top: 40px;">
					<span class="step"></span> <span class="step"></span> <span
						class="step"></span> <span class="step"></span>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
	var currentTab = 0; // Current tab is set to be the first tab (0)
	showTab(currentTab); // Display the current tab

	function showTab(n) {
	  // This function will display the specified tab of the form ...
	  var x = document.getElementsByClassName("tab");
	  x[n].style.display = "block";
	  // ... and fix the Previous/Next buttons:
	  if (n == 0) {
	    document.getElementById("prevBtn").style.display = "none";
	  } else {
	    document.getElementById("prevBtn").style.display = "inline";
	  }
	  if (n == (x.length - 1)) {
	    document.getElementById("nextBtn").innerHTML = "Submit";
	  } else {
	    document.getElementById("nextBtn").innerHTML = "Next";
	  }
	  // ... and run a function that displays the correct step indicator:
	  fixStepIndicator(n)
	}

	function nextPrev(n) {
	  // This function will figure out which tab to display
	  var x = document.getElementsByClassName("tab");
	  // Exit the function if any field in the current tab is invalid:
	  if (n == 1 && !validateForm()) return false;
	  // Hide the current tab:
	  x[currentTab].style.display = "none";
	  // Increase or decrease the current tab by 1:
	  currentTab = currentTab + n;
	  // if you have reached the end of the form... :
	  if (currentTab >= x.length) {
	    //...the form gets submitted:
	    document.getElementById("regForm").submit();
	    return false;
	  }
	  // Otherwise, display the correct tab:
	  showTab(currentTab);
	}

	function validateForm() {
	  // This function deals with validation of the form fields
	  var x, y, i, valid = true;
	  x = document.getElementsByClassName("tab");
	  y = x[currentTab].getElementsByTagName("input");
	  // A loop that checks every input field in the current tab:
	  for (i = 0; i < y.length; i++) {
	    // If a field is empty...
	    if (y[i].value == "") {
	      // add an "invalid" class to the field:
	      y[i].className += " invalid";
	      // and set the current valid status to false:
	      valid = false;
	    }
	  }
	  // If the valid status is true, mark the step as finished and valid:
	  if (valid) {
	    document.getElementsByClassName("step")[currentTab].className += " finish";
	  }
	  return valid; // return the valid status
	}

	function fixStepIndicator(n) {
	  // This function removes the "active" class of all steps...
	  var i, x = document.getElementsByClassName("step");
	  for (i = 0; i < x.length; i++) {
	    x[i].className = x[i].className.replace(" active", "");
	  }
	  //... and adds the "active" class to the current step:
	  x[n].className += " active";
	}
	
	</script>
</body>
</html>