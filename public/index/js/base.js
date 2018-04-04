$(function(){
	//购物车
	$(".mod_minicart").hover(function() {
		$("#nofollow,#minicart_list").addClass("on");
	},function() {
		$("#nofollow,#minicart_list").removeClass("on");
	});
	//nav		
	$('.nav_list li').click(function(e) {
		$(this).addClass('current').siblings().removeClass('current');
	});
	
	//left_sidebar
	$('.nav_in .left_sidebar .left_sidebar_li').hover(function(){		
		$(this).find('.product').addClass('active')
		$(this).find('.product-wrap').show();
	},function(){
		$(this).find('.product').removeClass('active');
		$(this).find('.product-wrap').hide();

	});
	$('.nav_in .left_sidebar .left_sidebar_li .product-wrap .menu_oneclose').click(function(e) {				
		$(this).parent('.menu_div').parent('.product-wrap').hide();
	});
	
	//分类菜单的显示隐藏                                                                
	var oDiv3 = document.getElementById('all-class');
	var oDiv4 = document.getElementById('all-goods');
	var timer2 = null;//定义定时器变量
	//鼠标移入div1或div2都把定时器关闭了，不让他消失
	oDiv3.onmouseover = oDiv4.onmouseover = function (){	
		oDiv4.style.display = 'block';
		clearTimeout(timer2);
	}

	//鼠标移出div1或div2都重新开定时器，让他延时消失
	oDiv3.onmouseout = oDiv4.onmouseout = function (){
		//开定时器
		timer2 = setTimeout(function () { 
		oDiv4.style.display = 'none'; },300);
	}
	
	
	//侧边fold_nav
	$('.fold_nav .fold_nav_list .title_div').click(function(e) {
		
		if($(this).siblings('.fold_ul').css('display').match('block')){
			$(this).siblings('.fold_ul').css('display','none');				
		}else{
			$(this).siblings('.fold_ul').css('display','block');		
		}
	});
	
	$('.fold_nav .fold_nav_list .fold_ul li').click(function(){
		$(this).addClass('li_cur').siblings().removeClass('li_cur');
		$(this).parent('.fold_ul').parent('.fold_nav_list').siblings().find('.fold_ul').children('li').removeClass('li_cur');
	});
	//侧边栏
	$('.nc_appbar .con .kf a').hover(function(){		
		$(this).children('.icon').addClass('cur');
		$(this).children('.tit').show();
	},function(){
		$(this).children('.icon').removeClass('cur');
		$(this).children('.tit').hide();
	});
	$('.nc_appbar .con .gwc a').hover(function(){		
		$(this).children('.icon').addClass('cur');
		$(this).children('.tit').addClass('cur');
	},function(){
		$(this).children('.icon').removeClass('cur');
		$(this).children('.tit').removeClass('cur');
	});
	$('.nc_appbar .con .spdb a').hover(function(){		
		$(this).children('.icon').addClass('cur');
		$(this).children('.tit').show();
	},function(){
		$(this).children('.icon').removeClass('cur');
		$(this).children('.tit').hide();
	});
	$('.nc_appbar .con .dl a').hover(function(){		
		$(this).children('.icon_01').addClass('cur');
		$(this).children('.login_div').show();
	},function(){
		$(this).children('.icon_01').removeClass('cur');
		$(this).children('.login_div').hide();
	});
	$('.to_top').click(function(e) {
		$('body,html').animate({'scrollTop':'0'},500);
	});
	$('.to_top a').hover(function(){		
		$(this).children('.icon').addClass('cur');
		$(this).children('.tit').addClass('cur');
	},function(){
		$(this).children('.icon').removeClass('cur');
		$(this).children('.tit').removeClass('cur');
	});
	
})

