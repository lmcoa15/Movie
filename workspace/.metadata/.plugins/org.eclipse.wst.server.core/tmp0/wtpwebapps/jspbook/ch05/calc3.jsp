<%@ page contentType="text/html; charset=UTF-8" %>
<%!
	int num1,num2=0;
	int result=0;
	String op="";
	
	public int calculator(){
		if(op.equals("+"))
		{	result=num1+num2;	}
		else if(op.equals("-")){
			result=num1-num2;
		}
		else if(op.equals("*")){
			result=num1-num2;
		}
		else if(op.equals("/")){
			result=num1/num2;
		}
		return result;
	}
%>
<%
	if(request.getMethod().equals("POST")){
		
		num1=Integer.parseInt(request.getParameter("num1"));
		num2=Integer.parseInt(request.getParameter("num2"));
		op=request.getParameter("operator");
	}
%>
<html>
<head>
<title>계산기 </title>
</head>
<body>
<center>
<h3>계산</h3>
<hr>
<form name=form1 method=post>
<INPUT TYPE="text" NAME="num1" width=200 size="5">
<SELECT NAME="operator">
	<option selected>+</option>option>
	<option>-<option>
	<option>*</option>
	<option>/</option>
</SELECT>
<INPUT TYPE="text" NAME="num2" width=200 size="5">
<input type="submit" value="계산" name="B1">
<input type="reset" value="다시입력" name="B2">
</form>
<HR>계산 결과: <%=calculator() %>

</center>
</body>
</html>