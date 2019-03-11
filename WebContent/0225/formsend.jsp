<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<style>
		div {
			height : 40px;
			backgroud : yellow;
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
	
	<div>
		이름 : <%= username %><br>
		비밀번호 : <%= userpass %><br>	
		이메일 : <%= useremail %><br>
	</div>
		
</body>
</html>