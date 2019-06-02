<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link type="text/css"
	href="<c:url value="resources/clientassets/css/matri.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

/* Button used to open the chat form - fixed at the bottom of the page */
.open-button {
	background-color: #555;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	opacity: 0.8;
	position: fixed;
	bottom: 23px;
	right: 28px;
	width: 280px;
}

/* The popup chat - hidden by default */
.chat-popup {
	display: none;
	position: fixed;
	bottom: 0;
	right: 15px;
	border: 3px solid #f1f1f1;
	z-index: 9;
}

/* Add styles to the form container */
.form-container {
	max-width: 300px;
	padding: 10px;
	background-color: white;
}

/* Full-width textarea */
.form-container input {
	width: 100%;
	padding: 10px;
	margin: 5px 0 12px 0;
	border: none;
	background: #f1f1f1;
	resize: none;
	min-height: 20px;
}

/* When the textarea gets focus, do something */
.form-container input:focus {
	background-color: #ddd;
	outline: none;
}

/* Set a style for the submit/send button */
.form-container .btn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 100%;
	margin-bottom: 10px;
	opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
	background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
	opacity: 1;
}
</style>
</head>
<body>
	<button class="open-button" onclick="openForm()">
		<i class="fa fa-search"></i> Simple Search
	</button>
	<div class="chat-popup" id="myForm">
		<form action="" method="post" class="form-container">
			<label for="education"><b>Education</b></label> <input type="text"
				placeholder="start typing education.." name="education"
				id="education"> <label for="occupation"><b>Profession</b></label>
			<input type="text" placeholder="start typing profession.."
				name="occupation" id="occupation" style="margin: 5px 0 17px 0;">
			<label for="mobileNumber"><b>Mobile Number</b></label> <input
				type="text" placeholder="start typing mobile number.."
				name="mobileNumber" id="mobileNumber" style="margin: 5px 0 17px 0;">
			<label for="subCaste"><b>Sub-Caste</b></label><input type="text"
				placeholder="start typing sub caste.." name="subCaste" id="subCaste"
				style="margin: 5px 0 17px 0;"> <label for="star"><b>Star</b></label><input
				type="text" placeholder="start typing star.." name="star" id="star"
				style="margin: 5px 0 17px 0;"> <label for="raasi"><b>Raasi</b></label><input
				type="text" placeholder="start typing raasi.." name="raasi"
				id="raasi" style="margin: 5px 0 17px 0;">

			<button type="submit" class="btn">
				<i class="fa fa-search"></i> Search My Partner
			</button>
			<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
		</form>
	</div>

	<script>
		function openForm() {
			document.getElementById("myForm").style.display = "block";
		}

		function closeForm() {
			document.getElementById("myForm").style.display = "none";
		}
	</script>
</body>
</html>