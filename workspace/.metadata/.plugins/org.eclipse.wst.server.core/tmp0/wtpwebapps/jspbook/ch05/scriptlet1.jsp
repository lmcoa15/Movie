<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div align="center">
<h>태스트  &nbsp</h>
<hr>

<%
	for(int n=4;n>0;n--){
		for(int i=n;i>0;i--){
			out.print("*");
		}
		out.print(" ");
		for(int j=n;j>0;j--){
			out.print("*");
		}
		out.print("<BR>");
	}
	for(int n=2;n<5;n++){
		for(int i=0;i<n;i++){
			out.print("*");
		}
		out.print(" ");
		for(int j=0;j<n;j++){
			out.print("*");
		}
		out.print("<BR>");
	}
%>
<BR>

</div>

</body>
</html>