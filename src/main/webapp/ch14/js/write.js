/**
 * 
 */
function validateForm(form) {
	if (form.name.value == "" ) {
		alert("작성자를 입력하세요.");
		form.name.focus();
		return false;
	}
	if (form.title.value == "" ) {
		alert("제목을 입력하세요.");
		form.name.focus();
		return false;
	}
	if (form.content.value == "" ) {
		alert("내용을 입력하세요.");
		form.name.focus();
		return false;
	}
	if (form.pw.value == "" ) {
		alert("비밀번호를 입력하세요.");
		form.name.focus();
		return false;
	}
}