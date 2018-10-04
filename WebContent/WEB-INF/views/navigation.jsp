<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Dashboard</title>
	<link href="<c:url value="resources/css/dashboard/style.css"/>" rel="stylesheet">
</head>
<body>
 <span class="bckg"></span>
<header>
  <h1>Dashboard</h1>
  <nav>
    <ul>
      <li><a href="javascript:void(0);" data-title="Register Groom">Register Groom</a></li>
      <li><a href="javascript:void(0);" data-title="Register Bride">Register Bride</a></li>
      <li><a href="javascript:void(0);" data-title="Mailing">Mailing</a></li>
      <li><a href="javascript:void(0);" data-title="Search">Timeline</a></li>
      <li><a href="javascript:void(0);" data-title="Settings">Settings</a></li>
      <li><a href="javascript:void(0);" data-title="Timeline">Search</a></li>
    </ul>
  </nav>
</header>
<main>
	<div class="title">
	    <h2>Projects</h2>
	    <a href="javascript:void(0);">Hello ${name}!</a>
	  </div>
</main>
 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src="resources/js/dashboard/index.js"></script>
</body>
</html>