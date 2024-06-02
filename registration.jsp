<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title> User Registration </title>
 <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
<div id="reg">
 <center>
   <fieldset>
<h1>Registration Page</h1>

<form action="register" method="post">

<input type="text" placeholder="Enter username" name="username" ><br>

<input type="password" placeholder="Enter  password" name="password" ><br>

<input type="submit" value="Register" ><br>

</form>
    <p>Already registered ? <a href="login.jsp">Go To Login</a></p>

<%@   include file="message.jsp"  %>
  </fieldset></center>

</div>

</body>

</html>