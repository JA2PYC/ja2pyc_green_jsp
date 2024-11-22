<%@ page import='java.net.URLEncoder'%>
<%@ page import='java.util.List'%>
<%@ page import='fileupload.MyFileDAO'%>
<%@ page import='fileupload.MyFileDTO'%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MyFileDAO dao = new MyFileDAO();
List<MyFileDTO> fileLists = dao.myFileList();
dao.closeDBCP();
%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>File Upload - File List</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>File List</h1>
		<hr>
		<div>
			<h2>File List</h2>
			<div>
				<a href='./fileUploadMain.jsp'>파일 업로드</a> <a
					href='./multiUploadMain.jsp'>다중 파일 업로드</a>
			</div>
			<div>
				<table>
					<thead>
						<tr>
							<th>No</th>
							<th>작성자</th>
							<th>제목</th>
							<th>카테고리</th>
							<th>원폰 파일명</th>
							<th>저장된 파일명</th>
							<th>작성일</th>
							<th>다운로드</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (MyFileDTO f : fileLists) {
						%>
						<tr>
							<td><%=f.getIdx()%></td>
							<td><%=f.getTitle()%></td>
							<td><%=f.getCate()%></td>
							<td><%=f.getOfile()%></td>
							<td><%=f.getSfile()%></td>
							<td><%=f.getPostdate()%></td>
							<td><a
								href='download.jsp?oName=<%=URLEncoder.encode(f.getOfile(), "UTF-8")%>&sName=<%=URLEncoder.encode(f.getSfile(), "UTF-8")%>'>[다운로드]</a>
							</td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>