<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
 <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<div id="lg">
<center>
  <fieldset>
<h1>Login Page</h1>

<form action="login" method="post">

<input type="text" placeholder="Enter username" name="username" ><br>

<input type="password" placeholder="Enter  password" name="password" ><br>

<input type="submit" value="Login" ><b>

<p>Not a registered user ? <a href="registration.jsp">Go To Registration page</a></p>
</form>
<%@   include file="message.jsp"  %>
  </fieldset></center>
</div>
</body>

</html>