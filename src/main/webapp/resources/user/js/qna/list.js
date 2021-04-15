/**
 * 
 */
$(".itme").on("click",function(){
	$(this).addClass("active").siblings().removeClass("active");
});

$(".search-btn").on("click",function(){
	var data = $(".search-input").val();
	if(data == "" || data == null){
		alert("검색값을 입력해 주세요");
		return false;
	}else{
		self.location = "/qnaSearch?email="+data;
	}
});