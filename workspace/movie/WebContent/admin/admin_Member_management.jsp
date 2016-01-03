<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"
 import="java.util.*,movie.admin.*" %>

<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />
<jsp:setProperty name="datas" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="../css/movie_list_css.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 모드 / 회원 목록 화면</title>
</head>
<body>

<div align="center">
<h2> 관리자 모드 / 회원 목록 화면 </h2>
<hr>
<form name=form1 method=post  action="film_control.jsp">
<table border="1">
<tr><td><input type="submit" name="action" value="back" > </td>
<td>Member management</td>
</tr>
</table>
</form>

<hr>
<form name=form1 method=post  action="membership_control.jsp">

<table border="1">
	<tr><th>ID</th><th>Age</th>
	<th>Registration Date</th>
	<th>삭제(ID)</th>
	</tr>

	<%	
		//String id
		for(membership ab:(ArrayList<membership>) datas){
	%>
	<tr>
	
	<td><%=ab.getName_mem() %></td>
	<td><%=ab.getAge_mem() %></td>
	<td><%=ab.getRdate() %></td>

	<input type=hidden name="action" value="delete">
 	<td><input type=Submit name="id_mem" value="<%=ab.getId_mem() %>"></td>

	</tr>
	<%
		}
	%>
</table>
</form>
</div>


</body>
</html>