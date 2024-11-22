/**
 * 
 */
function requestAction (frm, met) {
	if (met==1) {
		frm.method = 'get';
	} else {
		frm.method = 'post';
	}
	frm.submit();
}