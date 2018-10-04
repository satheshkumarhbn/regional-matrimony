<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login - Regional Matrimony</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Roboto:300);
.body {
	background: #e1e5ed;
}
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
  
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
  
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .errormessage {
  margin: 15px 0 0;
  color: #ff3333;
  font-size: 20px;
}
.form .header {
  color: #384a70;
  font-size: 25px;
  font-family: "Roboto", sans-serif;
}
.form .server-time {
	font-family: "Roboto", sans-serif;
	font-size: 12px;
	color: #a6a7a8;
}

</style>
</head>
<body class="body">
  <div class="login-page">
  <div class="form">
  <h2 class="header">Please Login</h2>
    <form class="login-form" action="userLogin" method="post">
    <P class="server-time">The time on the server is ${serverTime}.</p>
    <p class="errormessage">${errorMessage}</p>
      <input name="userName" type="text" placeholder="username"/>
      <input name="password" type="password" placeholder="password"/>
      <button type="submit">login</button>
    </form>
  </div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>

</body>
</html>