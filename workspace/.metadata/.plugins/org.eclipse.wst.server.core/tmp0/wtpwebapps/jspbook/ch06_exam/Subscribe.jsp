<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<%
	String result=request.getParameter("AGREE");
	//String result=session.getAttribute("id");
	//session.getAttribute("ID");
	//out.println(a);
	
	if(result.equals("YES")){
		result="SUCCESS";
	}
	response.sendRedirect("Result.jsp?RESULT="+result);
	//response.sendRedirect("Result.jsp?ID="+session.getAttribute("id"));
%>