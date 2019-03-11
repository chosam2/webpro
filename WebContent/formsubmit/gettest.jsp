<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<style>
		div {
			color : blue;
			border : 2px solid crimson;
		}
	</style>
</head>
<body>

	jsp : java server page 입니다.<br>
	클라이언트에서 전송(요청)시 입력되는 데이터를 받아서 <br>
	처리해주는 페이지입니다.<br>
	입력되는 데이터를 받을 떄는 request.getParameter("name")<br>
	을 사용합니다. <br>
	자바코드와 html 코드가 동시에 가능한 페이지 입니다. <br>
	자바코드는 &lt;% %&gt; 기호 사이에 입력합니다.<br>
	실행된 자바변수를 출력하기위해서는 &lt;% %&gt; 사이에 기술합니다. <br>
	
	<%
		String username = request.getParameter("name");
		String useraddr = request.getParameter("addr");
		String userphone = request.getParameter("phoneNum");
		String userpass = request.getParameter("pass");
	%>
	
	<div>
		당신의 이름은 <%= username %> 이고 <br>
		주소는 <%= useraddr %><br>
		연락처는 <%= userphone %>입니다.<br>
		비밀번호는 비밀입니다. <br>
	</div>

</body>
</html>