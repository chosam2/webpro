<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

	<style>
		div {
			width : auto;
			height: auto;
			background: lightgreen;
			font: 1.2em; 
		}
	</style>
</head>
<body>
	<div>
		클라이언트에서 전송시 입력한 데이터를 받아서 처리합니다.<br>
		request.getParameter("name")을 사용하여 데이터를 가져옵니다.<br>
		jsp는 java server page 의 약자이고
		서버내에서 동작하여 실행되는 어플리케이션(프로그램) 입니다.<br>
	</div>
	
	<!-- java코드가 실행되는 부분 -->
	<%
		// post방식에서는 server.xml파일 말고 소스 내에서 직접 UTF-8 설정 해주어야 한다.
		request.setCharacterEncoding("UTF-8"); // 안하면 깨져서 나옴.
	
		String username = request.getParameter("name");
		String usertel = request.getParameter("tel");
		String usermail = request.getParameter("email");
		String userpass = request.getParameter("pass");
		
		String userage = request.getParameter("age");
	%>
	
	<h2>결과</h2>
	<div>
		이름 : <%= username %><br>
		전화번호 : <%= usertel %><br>
		이메일 : <%= usermail %><br>
		비밀번호 : <%= userpass %><br>
		
		나이 : <%= userage %> <!-- post_submit에서 hidden으로 해놔서 넘어옴 -->
	</div>
</body>
</html>