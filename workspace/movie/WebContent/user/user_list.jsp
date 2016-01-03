<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"
 import="java.util.*,movie.admin.*"%>

<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />
<jsp:setProperty name="datas" property="*" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="../css/movie_list_css.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상영 영화 리스트</title>
</head>
<body>

<div align="center">
<h2>상영 영화 리스트</h2>

<form name=form1 method=request  action="user_login.jsp">
<table border="1">
	<tr><th>타이틀</th><th>이미지</th>
	<th>관람가</th><th>총 좌석수</th>
	<th>상영기간</th><th>예매(ID)</th>
	<hr></tr>
	
	<%	
		String img;
		for(film ab:(ArrayList<film>) datas){
			img=ab.getName_film();	
	%>
	<tr>
	<td><%=ab.getName_film() %></td>
	<% if(img.equals("aboutTime")) {%>
	<td><img src="../image/aboutTime.jpg" width=70 height=70 /></td>
	<% }else if(img.equals("star wars")) {%>
	<td><img src="../image/star wars.jpg" /></td>
	<% }else if(img.equals("Damage")) {%>
	<td><img src="../image/Damage.jpg" /></td>
	<% }else if(img.equals("Hobbit")) {%>
	<td><img src="../image/Hobbit.jpg" /></td>
	<% }else if(img.equals("LesMiserables")) {%>
	<td><img src="../image/LesMiserables.jpg" /></td>
	<% }else if(img.equals("martian")){%>
	<td><img src="../image/martian.jpg" /></td>
	<% }else if(img.equals("Monster")){%>
	<td><img src="../image/Monster.jpg" /></td>
	<% }else if(img.equals("Mother")){%>
	<td><img src="../image/Mother.jpg" /></td>
	<% }else if(img.equals("Sevendays")){%>
	<td><img src="../image/Sevendays.jpg" /></td>
	<% }else if(img.equals("Titanic")){%>
	<td><img src="../image/Titanic.jpg" /></td>
	<% }else if(img.equals("Blackswan")){%>
	<td><img src="../image/Blackswan.jpg" /></td>
	<% }else{%>
	<td>이미지 없음</td>
	<%} %>
	
	
	<td><%=ab.getAge_phase() %></td>
	<td><%=ab.getSeat_num() %></td>
	<td><%=ab.getWatch_date() %></td>
	<td><input type="Submit" name="id_film" value="<%=ab.getId_film() %>"></td>

	</tr>
	<%
		}
	%>
</table>
</form>
</div>


</body>
</html>