$(function(){
	$(window).on("scroll",function(){
		$(".bg").fadeIn(300);
		var scroll = $(window).scrollTop();
		if(scroll === 0){
			$(".bg").fadeOut(300);
		}
	});
	$(".sou").click(function(e){
		e = e || event;
		e.stopPropagation();
		$(".search").stop().animate({top:0},500,function(){
		});
	});

	$("body").on("click",function(){
		$(".search").stop().animate({top:-120},500);
	});
	
	$(".search").click(function(e){
		e = e || event;
		e.stopPropagation();
	 });


	 $("#subscribe button").mouseenter(function(){
	 	$(this).css({"background":"#507992"});
	 }).mouseleave(function(){
	 	$(this).css({"background":"#729bb4"});
	})
})