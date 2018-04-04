$(function(){
	initPage();
	window.onresize=function(){
		initPage();
	}
	bindEvent();
});



function bindEvent(){
	$(".p_menue").on('click',function(){
		if($(this).parent(".menue").hasClass("down")){
			$(this).parent(".menue").removeClass("down").addClass("up");
		}else{
			$(this).parent(".menue").removeClass("up").addClass("down");
		}
		calculateHeight();
	});
	$(".c_menue_item").on("click",function(){
		if(!$(this).hasClass("checked")){
			$(".nav_tree_list .c_menue_item").removeClass("checked");
			$(this).addClass("checked");
		}
	})
	$(".cancel").click(function(){
		closeMask();
	});
	$(".del_btn").click(function(){
		openMask();
	});
	$(".page_num").click(function(){
		$(this).addClass("current_page").siblings().removeClass("current_page");
	});
}

function openMask(){
	$(".mask_container").show();
}
function closeMask(){
	$(".mask_container").hide();
}
function calculateHeight(){
	var currentRightHeight = $(".table").height();
	var currentNavHeight = $(".nav_tree").height();
	if(currentRightHeight < currentNavHeight){
		$(".table").height(currentNavHeight);
	}else{
		if(currentNavHeight > $(".nav_tree").attr("min-height")){
			$(".table").height(currentNavHeight);
		}else{
			$(".table").height($(".nav_tree").attr("min-height"));
		}
	}
}
