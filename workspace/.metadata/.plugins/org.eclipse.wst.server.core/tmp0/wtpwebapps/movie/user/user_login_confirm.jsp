<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String user_id=request.getParameter("user_id"); //유저의 이름
	String films_id=request.getParameter("films_id");
	//int films_id2=Integer.parseInt(films_id); //선택한 영화의 id
	
	System.out.println(user_id);
	//System.out.println(films_id2);
	
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>회원정보 변경</h2>
	<form method ="post" action="membership_control.jsp" name="form1">
	<input type=hidden name="action" value="change">
	<input type=hidden name="user_id" value=<%=user_id%>>
	<input type=hidden name="films_id" value=<%=films_id %>>
	<table width="250" border="1"align="center" cellspacing="0"
												cellpadding="5">
	
	<tr>
		<td>ID</td>
		<td><input type="text" name="name_mem" value=<%=user_id%> disabled=disabled size=10></td>
	</tr>

	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="password" size=10></td>
	</tr>
	
	<tr>
		<td>비밀번호 확인</td>
		<td><input type="password" name="password_confirm" size=10></td>
	</tr>
	
	<tr>
		<td>나이</td>
		<td><input type="password" name="age_mem" size=10></td>
	</tr>
	
	<tr>
		<td><input type="Submit" name="login_button" value="승인" size=1>
			<input type="reset" name="initialization_button" value="초기화" size=1>
		</td>
	</tr>
</table>
</form>
<hr><hr>

<h2>회원정보 변경x</h2>
	<form method ="post" action="membership_control.jsp" name="form2">
	 <input type=hidden name="action" value="enter"> 
	<input type=hidden name="user_id" value=<%=user_id%>>
	<input type=hidden name="films_id" value=<%=films_id %>>
	<table width="250" border="1"align="center" cellspacing="0"
												cellpadding="5">
	
	<tr>
		<td>변경 안하고 입장</td>
	
	</tr>

	<tr>
		<td><input type="Submit" name="login_button" value="입장" size=1>
		</td>
	</tr>
</table>
</form>
<hr><hr>
<h2>로그아웃</h2>
	<form method ="post" action="membership_control.jsp" name="form2">
	 <input type=hidden name="action" value="exit"> 
	<input type=hidden name="user_id" value=<%=user_id%>>
	<input type=hidden name="films_id" value=<%=films_id %>>
	<table width="250" border="1"align="center" cellspacing="0"
												cellpadding="5">
	
	<tr>
		<td>로그아웃</td>
	
	</tr>

	<tr>
		<td><input type="Submit" name="login_button" value="로그아웃" size=1>
		</td>
	</tr>
</table>
</form>
</body>
</html>