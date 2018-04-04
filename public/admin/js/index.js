
	$(".p_menue").on('click',function(){
		if($(this).parent(".menue").hasClass("down")){
			$(this).parent(".menue").removeClass("down").addClass("up");
		}else{
			$(this).parent(".menue").removeClass("up").addClass("down");
		}
	});
	$(".c_menue_item").on("click",function(){
		if(!$(this).hasClass("checked")){
			$(".nav_tree_list .c_menue_item").removeClass("checked");
			$(this).addClass("checked");
		}
	})

