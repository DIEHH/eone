$(function(){

	$(".popProduct button").mouseenter(function(){$(this).css({"background":"#729bb4","color":"#fff"})}).mouseleave(function(){$(this).css({"background":"#eee","color":"#ccc"})})

	var imgs = $("#banner img"),
		len = imgs.length,
		pre = 0,
		next = 1;
	var timer = setInterval(move,5000);

	$(".left").click(function(){
		move();
	});

	$(".right").click(function(){
		next = pre - 1;
		if (next < 0)
			next = len - 1;
		move();
	});
	$("#banner").mouseenter(function(){
		clearInterval(timer);
	}).mouseleave(function(){
		timer = setInterval(move,5000);
	});
	function move(){
		$("#banner img").eq(pre).fadeOut(1000);
		$("#banner img").eq(next).fadeIn(1000);
		pre = next;
		next++;
		if(next >= len)
			next = 0;
	};
});