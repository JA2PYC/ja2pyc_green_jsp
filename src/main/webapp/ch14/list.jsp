<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>MVC Board - List</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>List</h1>
		<hr>
		<div>
			<h2>Board List</h2>
			<div>
				<form action="" method='get'>
					<table>
						<tr>
							<td><select name='searchField'>
									<option value='title'>제목</option>
									<option value='content'>내용</option>
							</select> <input type='text' name='searchWord' /> <input type='submit'
								value='검색' /></td>

						</tr>
					</table>
				</form>

				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>조회수</th>
							<th>작성일</th>
							<th>첨부</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty boardLists }">
								<tr>
									<td colspan='6'></td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${boardLists }" var="row" varStatus="loop">
									<tr>
										<td>${map.totalCount -(((map.pageNum -1 ) * map.pageSize ) + loop.index) }</td>
										<td><a href='../mvcboard/View.do?idx=${row.idx }'>${row.title }</a></td>
										<td>${row.name }</td>
										<td>${row.visitcount }</td>
										<td>${row.postdate }</td>
										<td><c:if test="${not empty row.ofile }">
												<a
													href='../mvcboard/Download.do?ofile=${row.ofile}&sfile=${row.sfile}&idx=${row.idx}'>[다운로드]</a>
											</c:if></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<table>
					<tr>
						<td><button type='button'
								onclick='location.href="../mvcboard/Write.do";'>글쓰기</button></td>
					</tr>
				</table>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>