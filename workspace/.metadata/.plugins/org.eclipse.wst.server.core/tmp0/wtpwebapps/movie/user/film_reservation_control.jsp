<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="movie.admin.*" import="java.util.*" %>
    
 <jsp:useBean id="gb" scope="page" class="movie.admin.seat_noBean" />
<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />
<jsp:setProperty name="datas" property="*" />

<%
	String user_id=request.getParameter("user_id"); //유저의 이름
	String films_id=request.getParameter("films_id");
	int films_id2=Integer.parseInt(films_id); //선택한 영화의 id
	String action=request.getParameter("action");
%>



 <%
 
 	if(action.equals("list")){
 		ArrayList<seat_no> _seat_no=gb.getDBlist();
 		request.setAttribute("datas",_seat_no);
 		pageContext.forward("user_reservation.jsp");
 	}
 	/* else if(action.equals("insert")){
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
 	} */
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