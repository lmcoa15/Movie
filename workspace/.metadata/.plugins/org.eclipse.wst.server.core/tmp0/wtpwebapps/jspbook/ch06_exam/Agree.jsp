<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
	request.setCharacterEncoding("euc-kr");
	String id=request.getParameter("ID");
	String password=request.getParameter("PASSWORD");
	String name=request.getParameter("NAME");
	session.setAttribute("ID",id);
	session.setAttribute("PASSWORD",password);
	session.setAttribute("NAME",name);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
	<h3>약관</h3>
	-----------------<br>
1.회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다.<br>
2.웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다.<br>
	-----------------<br>
	<form action="Subscribe.jsp" method="POST">
	위의 약관에 동의하십니까?
	<input type=radio name=AGREE value=YES>동의함
	<input type=radio name=AGREE values=NO>동의하지 않음<br><br>
	<input type=submit value='ok'>
	</form>
</body>
</html>