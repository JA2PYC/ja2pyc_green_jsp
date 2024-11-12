<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Object - Application Main</title>
</head>
<body>
	<%@ include file='../header.jsp'%>
	<main>
		<h1>Application Main</h1>
		<hr>
		<div>
			<h2>Web.xml에 설정한 내용 읽어오기</h2>
			<div>
				<div>
					초기화 매개변수 :
					<%=application.getInitParameter("INIT_PARAM")%></div>
			</div>
		</div>
		<hr>
		<div>
			<h2>서버의 물리적 경로 얻어오기</h2>
			<div>
				Application 내장 객체 :
				<%=application.getRealPath("/ch02")%></div>
		</div>
		<hr>
		<div>
			<h2>선언부에서 Application 내장 객체 사용하기</h2>
			<div>
				<%!public String useImplicitObject() {
		return this.getServletContext().getRealPath("/ch02");
	}

	public String useImplicitObject(ServletContext app) {
		return app.getRealPath("/ch02");
	}%>
				<ul>
					<li>This 사용 : <%=useImplicitObject() %></li>
					<li>내장 객체를 인수로 전달 : <%=useImplicitObject(application) %></li>
				</ul>
			</div>
		</div>
		<hr>
	</main>
	<%@ include file='../footer.jsp'%>
</body>
</html>