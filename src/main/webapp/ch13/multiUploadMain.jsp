<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>File Uplaod - Multi Upload Main</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Multi Upload Main</h1>
		<hr>
		<div>
			<h2>Multiple File Upload</h2>
			<div>${errorMessage }</div>
			<div>
				<form action="./MultipleProcess.do" enctype='multipart/form-data'
					method='post' name='fileForm' onsubmit='return validateForm(this);'>
					<table>
						<tbody>
							<tr>
								<td>제 목</td>
								<td><input type='text' name='title'></td>
							</tr>
							<tr>
								<td>카테고리</td>
								<td><input type='checkbox' name='cate' value='사진'
									id='cate_photo' /><label for='cate_photo'>사 진</label> <input
									type='checkbox' name='cate' value='과제' id='cate_report' /><label
									for='cate_report'>과 제</label> <input type='checkbox'
									name='cate' value='워드' id='cate_word' /><label for='cate_word'>워
										드</label> <input type='checkbox' name='cate' value='음악'
									id='cate_music' /><label for='cate_music'>음 악</label></td>
							</tr>
							<tr>
								<td>첨부 파일</td>
								<td><input type='file' name='attachedFile' multiple></td>
							</tr>
							<tr>
								<td><input type='submit' value='전송'></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
		<hr>
	</main>
	<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>