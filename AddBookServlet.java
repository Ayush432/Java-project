package book.mgmt.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import book.mgmt.dao.BookDao;
import book.mgmt.dao.BookDaoImpl;
import book.mgmt.entity.Book;

@MultipartConfig (maxFileSize = 1600000)                   
@WebServlet("/addBook")
public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   String bookName =request.getParameter("book-name");    
		String price  =request.getParameter("book-price");  
		String no  =request.getParameter("no-of-books");
	    Part imagePart  =request.getPart("book-image");
	    
	    double bookPrice =Double.parseDouble(price);
	    int noOfBooks=Integer.parseInt(no);
	    boolean inStock=noOfBooks>0;
	    
	    LocalDate lastModificationDate=LocalDate.now();
	    InputStream bookImage =imagePart.getInputStream();
	    
	    Book book=new Book();
	    book.setBookName(bookName);
	    book.setBookPrice(bookPrice);
	    book.setInStock(inStock);
	    book.setLastModificationDate(lastModificationDate);
	    book.setBookImage(bookImage);
	    book.setNoOfBooks(noOfBooks);
	    
	    try {
			BookDao bookDao=new BookDaoImpl();
			int result=bookDao.addBook(book);
			if(result>0) {
				response.sendRedirect("book_dashboard.jsp?message=Book Added Succesfully");
			}else {
				response.sendRedirect("book_add.jsp?message=Cant Add Book !! Try Again Later");
			}
		} catch (ClassNotFoundException | IOException |SQLException  e) {
			
			e.printStackTrace();
			response.sendRedirect("book_add.jsp?message=Cant Add Book !! Try Again Later");
		} 
	}

}
  