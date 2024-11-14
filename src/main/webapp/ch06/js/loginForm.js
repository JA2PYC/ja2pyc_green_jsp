/**
 * 
 */
function validateForm(form) {
	console.log('validateForm');
	if (!form.user_id.value) {
		alert("아이디를 입력하세요.");
		return false;
	}
	if (form.user_pw.value == "") {
		alert('비밀번호를 입력하세요.');
		return false;
	}
	return true;
}

$(document).ready (() => {
	$form = $('form');
	console.log($form);
});
