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
<title>Regional Matrimony- Mailing</title>
</head>
<body>
	<main>
	<jsp:include page="dashboard.jsp"></jsp:include>
		<article class="larg">
			<div id="wrapper">
				<form action="">
				<div class="col-2">
					<label>
					Member Id
					<input type="text" placeholder="Please enter Member ID" name="memberID" required>
					</label>
				</div>
				<div class="col-2">
					<div class="col-submit">
			    	<button class="submitbtn">Search Member</button>
			  </div>
				</div>
				</form>
			</div>
		</article>
	</main>		
</body>
</html>