<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="kr">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
<script>
	window.onload = function() {

		// content의 초기 메뉴에 이벤트 리스터를 등록하고자 한다.
		items = document.getElementsByClassName('list-group-item');

		for (i = 0; i < items.length; i++) {
			// actiove 문자가 포함되어 있으면 이벤트 등록을 하지 않는다
			if (items[i].getAttribute('class').match('active'))
				continue;
			// active 문자가 포함되어 있지 않으면 이벤트 등록한다.
			// click : 이벤트 종류, subMenuPrint 함수이름
			items[i].addEventListener('click', subMenuPrint);
			
			
			regist = document.getElementsByClassName('registration')[0];
			regist.addEventListener('click', subRegist);
		}
	}

	function subRegist() {
		// 회원가입 블력 - 회원가입.html 파일을 iframe으로 실행하도록
		// 이벤트 리스너를 등록
		subr = this.textContent.trim();
		event.target.setAttribute('target', 'ifr');
		event.target.setAttribute('href', subr + '.html');
	}


	function subMenuPrint() {
		// 
		// event.target -> this나 event.target로 접근가능
		// this : 현재 등록 이벤트 실행하는 요소반복

		subm = this.textContent.trim(); // 공지게시판, QnA, 게시판
		event.target.setAttribute('target', 'ifr');
		event.target.setAttribute('href', subm + '.html');
	}
</script>
</head>
<body>

	<jsp:include page="navbar.html"></jsp:include>
	<jsp:include page="content.html"></jsp:include>
	<jsp:include page="footer.html"></jsp:include>

</body>
</html>
