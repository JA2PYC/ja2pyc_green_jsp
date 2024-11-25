<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>MVC Board - View</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>View</h1>
		<hr>
		<div>
			<h2>상세보기</h2>
			<div>
				<table>
					<colgroup>
						<col width='15%'>
						<col width='35%'>
						<col width='15%'>
						<col width='*'>
					</colgroup>
					<tr>
						<td>번호</td>
						<td>${dto.idx }</td>
					</tr>
					<tr>
						<td>작성일</td>
						<td>${dto.postdate }</td>
						<td>조회수</td>
						<td>${dto.visitcount }</td>
					</tr>
					<tr>
						<td>제목</td>
						<td colspan='3'>${dto.title }</td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan='3' height='100'>${dto.content }<c:if
								test="${not empty dto.ofile and isImage eq true }">
								<br>
								<img alt="${dto.title }" src="../Uploads/${dto.sfile }" />
							</c:if>
						</td>
					</tr>
					<tr>
						<td>첨부파일</td>
						<td><c:if test="${not empty dto.ofile }">
						${dto.ofile }
						<a
									href='../mvcboard/Download.do?ofile=${dto.ofile }&sfile=${dto.sfile }&idx=${dto.idx }'>[다운로드]</a>
							</c:if></td>
						<td>다운로드 수</td>
						<td>${dto.downcount }</td>
					</tr>
					<tr>
					<td colspan='4'>
					<button type='button' onclick='location.href="../mvcboard/Pass.do?mode=edit&idx=${param.idx}";'>수정하기</button>
					<button type='button' onclick='location.href="../mvcboard/Pass.do?mode=delete&idx=${param.idx}";'>삭제하기</button>
					<button type='button' onclick='location.href="../mvcboard/List.do";'>글 목록</button>
					</td>
					</tr>
				</table>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>