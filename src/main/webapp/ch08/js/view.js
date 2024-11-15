/**
 * 
 */
function deletePost() {
	let confirmed = confirm("정말로 삭제하시겠습니까?");
	if (confirmed) {
		let form = document.writeFrm;
		form.method = 'post';
		form.action = 'deleteProcess.jsp';
		form.submit();
	}
}