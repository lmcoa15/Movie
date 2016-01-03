<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"
 import="java.util.*,movie.admin.*"%>

<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />
<jsp:setProperty name="datas" property="*" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="../css/movie_list_css.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 모드 / 영화 목록 화면</title>
</head>
<body>

<div align="center">
<h2> 관리자 모드 / 영화 목록 화면 </h2>
<hr>
<form name=form0 metod=post action=membership_control.jsp>
<input type="hidden" name="action" value="list">
<table border="1">
<tr><td><a href="admin_Insert_film.jsp">Insert film</a> </td>
<td><input type="submit" name="member" value="Member management"></td></tr>
</table>
</form>

<hr>
<form name=form1 method=post  action=film_control.jsp>

<table border="1">
	<tr><th>Title</th><th>Age</th>
	<th>Total seat</th><th>Date</th>
	<th>삭제(ID)</th>
	</tr>

	<%	
		//String id
		for(film ab:(ArrayList<film>) datas){
	%>
	<tr>
	<td><%=ab.getName_film() %></td>
	<td><%=ab.getAge_phase() %></td>
	<td><%=ab.getSeat_num() %></td>
	<td><%=ab.getWatch_date() %></td>

	<input type=hidden name="action" value="delete">
 	<td><input type=Submit name="id_film" value="<%=ab.getId_film() %>"></td>

	</tr>
	<%
		}
	%>
</table>
</form>
</div>


</body>
</html>