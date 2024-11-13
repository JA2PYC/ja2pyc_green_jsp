<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String popupMode = "on";
boolean cookieConfirm = false; 
Cookie[] cookies = request.getCookies();
if (cookies != null){
	for (Cookie c : cookies ){
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		if (cookieName.equals("PopupClose")) {
			popupMode = cookieValue;
			cookieConfirm = true;
		}
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie - Pop up Main</title>
<link rel='stylesheet' type='text/css' href='./css/popupMain.css' />
<script type="text/javascript"
	src='https://code.jquery.com/jquery-3.7.1.min.js'></script>
<script type="text/javascript" src='./js/popupMain.js'></script>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Pop up Main</h1>
		<hr>
		<div>
			<h2>팝업 메인 페인지</h2>
			<%
			if (cookieConfirm == true){
				out.print("쿠키가 확인되었습니다.");
			}
			for (int i = 0; i < 10; i++) {
				out.print("현재 팝업창은 " + popupMode + "상태 입니다.<br/>");
			}

			if (popupMode.equals("on")) {
			%>
			<div id='popup'>
				<h3>공지사항</h3>
				<div>
					<form name='popFrm'>
						<input type='checkbox' id='inactiveToday' value='1' />하루동안 열지 않음
						<input type='button' value='닫기' id='closeBtn' />
					</form>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>