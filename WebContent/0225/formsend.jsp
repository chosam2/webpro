<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	div {
		height : 40px;
		background : yellow;
	}
</style>

</head>
<body>
	<div>
		jsp : java server page <br>
	</div>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String username = request.getParameter("name");
		String userpass = request.getParameter("pass");
		String useremail = request.getParameter("email");
	%>
	
이름 : <%= username %> <br>
비밀번호 : <%= userpass %> <br>
이메일 : <%= useremail %> <br>


</body>
</html>