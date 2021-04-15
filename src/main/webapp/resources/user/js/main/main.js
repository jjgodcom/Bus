// tab content show hide
$(".main-tap li").on("click",function(){
	$(this).addClass("active").siblings().removeClass("active");
	if($(this).index() == 0){
		$(".ticketing").show();
		$(".ticket").hide();
	}else{
		$(".ticketing").hide();
		$(".ticket").show();
	}
});