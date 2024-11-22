/**
 * 
 */
function validateForm (form) {
	if (form.title.value == ""){
		alert("제목을 입력해 주세요.");
		form.title.focus();
		return false;
	}
	if (form.attachedFile.value =="") {
		alert("파일을 첨부해 주세요.");
		return false;
	}
}