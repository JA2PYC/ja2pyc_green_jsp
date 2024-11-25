<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>MVC Board - Write</title>
<script type="text/javascript" src='./js/write.js'></script>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Write</h1>
		<hr>
		<div>
			<h2>게시판 글쓰기</h2>
			<form action="../mvcboard/Write.do" method='post' name='wirteFrm'
				enctype='multipart/form-data' onsubmit='return validateForm(this);'>
				<table>
					<tbody>
						<tr>
							<td>작성자</td>
							<td><input type='text' name='name' /></td>
						</tr>
						<tr>
							<td>제목</td>
							<td><input type='text' name='title' /></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea name='content' rows="5" cols="30"></textarea></td>
						</tr>
						<tr>
							<td>첨부파일</td>
							<td><input type='file' name='attachedFile' /></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type='password' name='pw' /></td>
						</tr>
						<tr>
							<td colspan='2'>
								<button type='submit'>글쓰기</button>
								<button type='reset'>초기화</button>
								<button type='button'
									onclick='loaction.href="../mvcboard/List.do";'>글 목록</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>