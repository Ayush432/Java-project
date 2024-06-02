<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Message</title>
</head>
<body>
              <%    String message=request.getParameter("message");
                  if(message != null) { 
                    out.print("<p>"+message+"</p>");    }
                  %>
</body>
</html>