<%@ page language="java" contentType="text/html; charset=UTF-8" import="movie.admin.*"
    import="java.util.*" pageEncoding="UTF-8"%>
  
 <%request.setCharacterEncoding("utf-8"); %>
 <jsp:useBean id="gb" scope="page" class="movie.admin.seat_noBean" />

 

 <%
 	String user_id=request.getParameter("user_id"); //유저의 이름
 	String films_id=request.getParameter("films_id"); //선택한 영화의 id
 	String action=request.getParameter("action");
 	int films_id2=Integer.parseInt(films_id); //선택한 영화의 id
 	 
 	
 	System.out.println("선택한 영화 id : " +films_id);
 	System.out.println("유저 id : "+user_id);
 
 	
 		/* //해당 영화가 예약 좌석을 처음 한다면
	 	if(action.equals("confirm")){
	 		
		  if(gb.confirmDB(films_id2)){
			seat_no _seat_nos=new seat_no();
			
			if(gb.insertDB(_seat_nos,films_id2)){
				System.out.println("seat db 생성");
				pageContext.forward("film_reservation_control.jsp???films_id="+films_id+"action=list"+"user_id="+user_id);
	 		}
	 		else
	 			throw new Exception("DB 입력 오류");
			
		}
		  
		else{	//존재 한다면 해당 id에 맞는 좌석을 보여준다.
			seat_no _seat_nos=gb.getDB(films_id2);
 			//request.setAttribute("datas",_seat_nos);
			pageContext.forward("film_reservation_control.jsp???films_id="+films_id+"action=list"+"user_id="+user_id);
		}  
 	}  */
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