<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./isLoggedIn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board - Write</title>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/js/jquery-3.7.1.js'></script>
<script type="text/javascript" src='./js/write.js'></script>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<main>
		<h1>Write</h1>
		<hr>
		<div>
			<h2>글쓰기</h2>
			<div>
				<form name='writeFrm' action="writeProcess.jsp" method='post'
					onsubmit='return validateForm(this);'>
					<table>
						<tr>
							<td>제목</td>
							<td><input type='text' name='title' /></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name='content' rows="5" cols="30"></textarea></td>
						</tr>
						<tr>
							<td>
								<button type='submit'>작성 완료</button>
								<button type='reset'>초기화</button>
								<button type='button' onclick='location.href="list.jsp";'>목록
									보기</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>