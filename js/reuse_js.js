$(function(){
	$(window).on("scroll",function(){
		$(".bg").fadeIn(300);
		var scroll = $(window).scrollTop();
		if(scroll === 0){
			$(".bg").fadeOut(300);
		}
	}).on("click",function(){
		$(".search").hide();
	});
	$(".search").on("click").show();
})