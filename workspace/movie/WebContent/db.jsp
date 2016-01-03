<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% request.setCharacterEncoding("utf-8"); %>

<%
	//데이터베이스 연결관련 변수 선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	//데이터베이스 연결 관련 정보를 문자열로 선언
	String jdbc_driver="com.mysql.jdbc.Driver";
	String jdbc_url="jdbc:mysql://localhost/jspdb";
	
	try{
		//jdbc 드라이버 로드
		Class.forName("com.mysql.jdbc.Driver");
		
		//데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
		conn = DriverManager.getConnection(jdbc_url,"root", "wjqthr12");
		
		//connection 클래스의 인스턴스로부터 sql문 작성을 위한 statement 준비
		String sql = "insert into jdbc_test values(?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		
		//username 값을 입력한 경우 sql문을 수행
		if(request.getParameter("username") != null){
			pstmt.executeUpdate();
		}
	}
	catch(Exception e){
		System.out.println(e);
	}
%>


<html>
<head>

<title>Insert title here</title>
</head>
<body>
<center>
	<h2>이벤트등</h2>

	<form name = form1 method = post>	
	등록이름 : <input type=text name="username">
	주소 : <input type=text name=email size=20>
	<input type=submit value="등록">
	</form>
</center>
# 등록목록<p>
<% 
try{
String sql="select username,email from jdbc_test";
pstmt=conn.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery();
int i=1;
while(rs.next()){
out.println(i+":"+rs.getString(1)+","+rs.getString("email")+"<br>");
i++;
}
rs.close();
pstmt.close();
conn.close();
}
catch(Exception e){
System.out.println(e);
}
%>

</body>
</html>