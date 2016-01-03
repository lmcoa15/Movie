<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

.menu_left{
	outline: 1px solid red;	
	display:inline;
	width=30%;
	height=100%;
    padding-right:35%;
    padding-bottom:3%;
	padding-top:5%; 
	float=left;
}
.menu_center{
	outline: 1px solid red;
	display:inline;
	width=30%;
	height=100%;
	padding-right:25%;
    padding-bottom:3%;
	padding-top:5%; 
}
.menu_right{
	outline: 1px solid red;
	display:inline;
	width=30%;
	height=100%;
	padding-right:5%;
    padding-bottom:3%;
	padding-top:5%; 
}
.logo{
	width=800px;
	height=auto;
	border: 1px solid red;
    
}
.center{
	width=800px;
	height=auto;
	margin-top:10%;
	border: 1px solid red;
}
.greet{
	color:#99004C;
	text-align:center;
	margin-bottom:5%;
	border: 1px solid red;
}
.login{
	text-align:center;
	margin-bottom:5%;
	border: 1px solid red;
}
.login2{
	text-align:center;
	margin-bottom:3%;
}
.blank{
	display:inline;
	color:white;
}
</style>

</head>
<body>

<div class="logo">
	<div class="menu_left">menu</div>
	<div class="menu_center">MAEIL NAEIL</div>
	<div class="menu_right">네일 고수 등록하기 </div>
	<div class="menu_right">로그인</div>
</div>

<div class="center">
	<div class="greet">반가워요! </div>
	<div class="login"> 
		<a href="www.facebook.com">페이스북 로그인  </a>
		<a href="www.kakao.com">  카카오로그인</a>
	</div>

	 <div class="login2">
	 <input type="text" id="email" placehorder="이메일" size="20" required><br>
	 <input type="text" id="password" placehorder="비밀번호" size="20" required>
	 </div>
	 
	 <div class="login">
	 <a href="www.kakao.com">로그인</a>
	 </div>

	<div class="login2">
	<input type="checkbox" id="keep_login">로그인유지
		<div class="blank">aa</div>   
	<a href="" id="join">회원가입
	
	</div>
</div>
</body>
</html>