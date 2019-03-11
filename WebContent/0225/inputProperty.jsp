<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String sid = request.getParameter("id");
		String sname = request.getParameter("name");
		String smail = request.getParameter("email"); // ""안 있는 내용은 html파일에 있는거랑 일치해야함.
		
	%>
	
	<%= sid %><br>
	<%= sname %><br>
	<%= smail %><br>
</body>
</html>