var arr = new Array;

$(".seat-area input").on("click",function(){
	var number = $(this).attr("data-seat");
	var flag = $(this).is(":checked");
	
	if(flag){
		// 체크된경우
		arr.push(number);
	}else{
		// 체크 안된 경우
		for(i = 0; i<arr.length; i++){
			if(arr[i] == number){
				arr.splice(i, 1);
				i--;
			}
		}
	}
	
	var tete = arr.sort(function(a, b) {
	    return a - b;
	});
	
	$(".seat-number").text(tete);
	$(".price").text(arr.length*1000+"원");
});

$(".seat-btn").on("click",function(){
	
	var tete = arr.sort(function(a, b) {
	    return a - b;
	});
	
	if(arr.length == 0){
		alert("좌석을 선택해 주세요.");
		return false;
	}else{
		$("[name='check_seat']").val(tete);
		$("form").submit();
	}
});