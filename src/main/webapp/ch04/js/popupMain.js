/**
 * 
 */
$(document).ready(() => {
	$('#closeBtn').click(() => {
		$('#popup').hide();
		let chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
		console.log(chkVal);
		if (chkVal == 1) {
			$.ajax({
				url : './popupCookie.jsp',
				type: 'get',
				data:{inactiveToday: chkVal},
				dataType: "text",
				success: function(resData) {
					// if (resData != '') location.reload();
				}				
			})
		}
	});
});
