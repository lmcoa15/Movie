<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="../list/movie_list_css.css" type="text/css" media="screen" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/movie_list_css.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 로그인</title>
</head>
<body>

<h2>관리자 로그인</h2>
	<form method ="post" action="admin_login_process.jsp" name="form1">
	<table width="250" border="1"align="center" cellspacing="0"
												cellpadding="5">
	
	<tr>
		<td>ID</td>
		<td><input type="text" name="admin_id" size=10></td>
	</tr>

	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="admin_password" size=10></td>
	</tr>
	
	<tr>
		<td></td>
		<td><input type="submit" name="login_button" value="로그인" size=2>
		</td>
	</tr>
</table>

</body>
</html>