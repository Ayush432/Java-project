

package book.mgmt.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import book.mgmt.dao.UserDao;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String username =request.getParameter("username");	
	String password =request.getParameter("password");
	
	UserDao userDao =new UserDaoImpl();
	
	try {
		boolean isUserRegistered=userDao.authenticateUser(username, password);
	
		if(isUserRegistered) {
			
			HttpSession session =request.getSession();
			String uniqueId =username+password;
			session.setAttribute("credentials" , uniqueId);
			 
			response.sendRedirect("book_dashboard.jsp");
		}else {
			response.sendRedirect("login.jsp?message=Login Failed !! Try Again..");
		}
	} catch (ClassNotFoundException|SQLException| IOException e) {
		
		response.sendRedirect("login.jsp?message=OOPS something went wrong !! Try Again..");
		e.printStackTrace();
	}
	
	}

}
