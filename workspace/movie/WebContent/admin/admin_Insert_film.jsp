<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Insert film</h2>
<form name=form1 method=post  action=film_control.jsp>
 <input type=hidden name="action" value="insert">

  
<table width="250" border="1"align="center" cellspacing="0"
												cellpadding="5">
												
	<tr>
		<td>Title</td>
		<td><input type="text" name="name_film" size=20></td>
	</tr>
	<tr>
		<td>Age</td>
		<td><input type="text" name="age_phase" size=20></td>
	</tr>
	<tr>
		<td>Total seat</td>
		<td><input type="text" name="seat_num" size=20></td>
	</tr>
	<tr>
		<td>Date</td>
		<td><input type="date" name="watch_date" size=20></td>
	</tr>
	
	<tr>
		<td></td>
		<td><input type=submit value="Submit" size=2>
			<input type=reset  value="Reset" size=2>
		</td>
	</tr>
</table>
</form>
</body>
</html>