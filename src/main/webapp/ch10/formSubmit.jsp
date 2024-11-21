<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<title>EL - Form Submit</title>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>
	<main>
		<h1>Form Submit</h1>
		<hr>
		<div>
			<h2>Form</h2>
			<div>
				<form name='frm' action="formResult.jsp" method='post'>
					<table>
						<tbody>
							<tr>
								<td>이 름</td>
								<td><input type='text' name='name' /></td>
							</tr>
							<tr>
								<td>성 별</td>
								<td><input type='radio' name='gender' value='male'
									id='gender_male'><label for='gender_male'>남자</label> <input
									type='radio' name='gender' value='female' id='gender_female'><label
									for='gender_female'>여자</label></td>
							</tr>
							<tr>
								<td>학 력</td>
								<td><select name='grade'>
										<option value='ele'>초등학교</option>
										<option value='mid'>중학교</option>
										<option value='high'>고등학교</option>
										<option value='univ'>대학교</option>
								</select></td>
							</tr>
							<tr>
								<td>취 미</td>
								<td><input type='checkbox' name='hobby' value='game'
									id='hobby_game' /><label for='hobby_game'>게임</label> <input
									type='checkbox' name='hobby' value='sport' id='hobby_sport' /><label
									for='hobby_sport'>스포츠</label> <input type='checkbox'
									name='hobby' value='dance' id='hobby_dance' /><label
									for='hobby_dance'>댄스</label></td>
							</tr>
							<tr>
								<td><input type='submit' value='제출하기' /></td>
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