<%@  page import="book.mgmt.entity.Book" %>
<%@  page import="book.mgmt.dao.BookDao" %>
<%@  page import="book.mgmt.dao.BookDaoImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>
 <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
 <body>
 <div id="upd">
 <center>
   <fieldset>
 
         <%@   include file="credentials.jsp"  %> 
 <% 
     BookDao bookDao=new BookDaoImpl();
    String id =request.getParameter("bookId");
    	out.print(id);
      int bookId=Integer.parseInt(id);
      Book book=bookDao.getBookById(bookId); 
      
 %>
      
   <h1>Update Book</h1>
   
         <form action="updateBook" method="post" enctype="multipart/form-data">
        <input type="text" placeholder="enter book id"    name="book-id" value="<%= book.getBookId() %>"/><br>
        <input type="text" placeholder="enter book name" name="book-name" value="<%= book.getBookName() %>"/><br>
        <input type="text" placeholder="enter book price" name="book-price" value="<%= book.getBookPrice() %>"/><br>
        <input type="text" placeholder="enter no of books" name="no-of-books" value="<%= book.getNoOfBooks() %>"/><br>
          <pre>          <input type="file"  name="book-image"/><br>  </pre>
        <input type="submit" value="Update Book"/><br>
    </form>
    
        <%@   include file="message.jsp"  %>
          <%@   include file="logout.jsp"  %>   
           </fieldset> </center> </div>
</body>

</html>