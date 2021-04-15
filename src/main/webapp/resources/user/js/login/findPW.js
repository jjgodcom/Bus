/**
 * 
 */
$(".find-pw-btn").on("click",function(){
	
	var email = $("#userID").val();
	console.log(email);
	if (email == "" || email == null) {
		alert("이메일을 입력해 주세요.");
		return false;
	}else{
		$.ajax({
			type: 'post',
			url: 'findPW',
			data: {
				'email': email
			},
			success: function(resultData) {
				if(resultData.email != null){
					$(".result").show();
					$("#sendPW").attr("href","sendPW?email="+resultData.email);
				}else{
					$(".result").hide();
					alert("일치하는 아이디가 존재 하지 않음.");
					return false;
				}	
			},
			error: function() {
				alert("오류입니다. 다시시도해 주세요.");
			}
		}); //ajax 
	}	
});