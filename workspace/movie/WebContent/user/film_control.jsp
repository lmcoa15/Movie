<%@ page language="java" contentType="text/html; charset=UTF-8" import="movie.admin.*"
    import="java.util.*" pageEncoding="UTF-8"%>
  
 <%request.setCharacterEncoding("utf-8"); %>
 <jsp:useBean id="gb" scope="page" class="movie.admin.filmBean" />
 <jsp:useBean id="_film"  class="movie.admin.film" />
 <jsp:setProperty name="_film" property="*" />
 

 <%
 
 	String action=request.getParameter("action");

 	if(action.equals("list")){
 		ArrayList<film> films=gb.getDBlist();
 		request.setAttribute("datas",films);
 		pageContext.forward("user_list.jsp");
 	}
 	else if(action.equals("insert")){
 		if(gb.insertDB(_film)){
 			response.sendRedirect("film_control.jsp?action=list");
 		}
 		else
 			throw new Exception("DB 입력 오류");
 	}
 	else if(action.equals("delete")){

 		if(gb.deleteDB(_film.getId_film())){
 			response.sendRedirect("film_control.jsp?action=list");
 		}else
 			throw new Exception("DB 삭제 오류");
 	}
 	//else if(action.equals("update")){
 	//}
 	else{
 	}
 %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>