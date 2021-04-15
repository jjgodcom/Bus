/**
 * 
 */
$(".gray-select").on("change",function(){
	var area = $(this).val();
	self.location = "/terminal?area="+area;
})