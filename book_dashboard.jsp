<%@  page import="book.mgmt.entity.Book" %>
<%@  page import="java.util.List" %>
<%@  page import="book.mgmt.dao.BookDao" %>
<%@  page import="book.mgmt.dao.BookDaoImpl" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
   
    <html>
      <head>
          <meta charset="UTF-8">
        <title>Book Dash--Board</title>
     <link rel="stylesheet" type="text/css" href="css/style.css" />
  </head> 
 <body>
        <div id="dsb">   
          <%@   include file="credentials.jsp"  %>
          
      <%   BookDao bookDao=new BookDaoImpl();
           List<Book>booksList= bookDao.getAllBooks();
        %>
  
<center><table>
              <tr>
                  <td>Id</td>
                  <td>Name</td>
                  <td>Price</td>
                  <td>Pieces</td>
                  <td>Availability</td>
                  <td>Date</td>
                  <td>Image</td>
                  <td>Update</td>
                  <td>Delete</td>
             </tr>
             <h1>BOOK DASHBOARD</h1>
                  <%
                      for(Book book:booksList){
                	     String availability=book.isInStock()?"Available":"Not Available";
                  %>
                    
                 <tr>
                     <td><%=book.getBookId() %></td>
                      <td><%=book.getBookName() %></td>
                       <td><%=book.getBookPrice() %></td>
                        <td><%=book.getNoOfBooks() %></td>
                         <td><%= availability %></td>
                          <td><%=  book.getLastModificationDate() %></td>
                           <td>image</td>
                            <td><a href="book_update.jsp?bookId=<%=book.getBookId() %>">Update Book</a></td>
                           <td>  <a href="deleteBook?bookId=<%=book.getBookId() %>">Delete Book</a></td>
                  </tr>
                 <% } %>
                      
                      <tr>
                      
                          <td colspan="9"> 
                                   <a href="book_add.jsp">Add Book</a>
                          </td>
                      
                     </tr>
               </table>

        
           <%@ include file="message.jsp"  %>
            <%@   include file="logout.jsp"  %>
         </center>  </div> </body> 
            
         </html> 
               