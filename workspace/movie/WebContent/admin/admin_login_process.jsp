<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <jsp:useBean id="admin_login" class="movie.admin.LoginBean" scope="page" />
 <jsp:setProperty name="admin_login" property="*" />
 

 
 <%

 	if(admin_login.checkAdmin()){
 		pageContext.forward("film_control.jsp?action=list");

 	}
 	else{
 		pageContext.forward("admin_login.jsp");
 	}
 %> 
 