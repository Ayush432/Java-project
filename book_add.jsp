<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
 <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
 <body>
 <div id="ad">
 <center>
    <fieldset>
   <h1>Add Book</h1>
   
    <%@   include file="credentials.jsp"  %>
    
    
      <form action="addBook" method="post" enctype="multipart/form-data">
          <input type="text" placeholder="enter book name" name="book-name"/><br>
          <input type="text" placeholder="enter book price" name="book-price"/><br>
          <input type="text" placeholder="enter no of books" name="no-of-books"/><br>
         <pre>                     <input type="file"  name="book-image"/><br> </pre>
          <input type="submit" value="Add Book"/><br>
       </form>
    </body>
         <%@   include file="message.jsp"  %>
          <%@   include file="logout.jsp"  %>
          </fieldset>
 </center>
 </div>
  </body>
</html>