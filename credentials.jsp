<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  response.setHeader("Cache -Control", "no-cache ,no-store,mmust-revalidate");
     response.setHeader("Pragma","no-casche");
         String credentials =(String)session.getAttribute("credentials");
         
            if(credentials == null){
            	response.sendRedirect("login.jsp");
            }
            
%>