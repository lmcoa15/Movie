<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="movie.admin.*" import="java.util.*"%>
    
 <jsp:useBean id="gb" scope="page" class="movie.admin.MembershipBean" />
 <jsp:useBean id="_membership"  class="movie.admin.membership" />
 <jsp:setProperty name="_membership" property="*" />

<% 
	String action=request.getParameter("action");
	
	//admin에서 유저 목록 확인할 때
 	 if(action.equals("list")){
 		ArrayList<membership> memberships=gb.getDBlist();
 		request.setAttribute("datas",memberships);
 		pageContext.forward("admin_Member_management.jsp");
 	}
 	else if(action.equals("delete")){

 		if(gb.deleteDB(_membership.getId_mem())){
 			response.sendRedirect("membership_control.jsp?action=list");
 		}else
 			throw new Exception("DB 삭제 오류");
 	}
	//else if(action.equals("update")){
	 	//}
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