/**
 * 
 */
$(".change-pn-btn").on("click",function(){
	var phone = $("#phone").val();
	var replace = phone.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3"); // 핸드폰 번호 - 정규식
	
	
	if (phone == "" || phone == null) {
		alert("핸드폰 번호를 입력해 주세요.");
		return false;
	}else if(phone.length > 11 || phone.length < 11){
		alert("핸드폰 번호 자리수 11개를 입력해 주세요.");
		return false;
	}else{
		$("#phone").val(replace);
		$("form").submit();
	}
});



	