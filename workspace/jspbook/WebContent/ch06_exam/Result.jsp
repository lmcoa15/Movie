<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% String result=request.getParameter("RESULT");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>

	<h3>회원 가입 결과</h3>

<%
	if(result.equals("SUCCESS")){
		out.println("가입완료");
	}
		
	else
		out.println("가입 실패");
%></body>
</html>