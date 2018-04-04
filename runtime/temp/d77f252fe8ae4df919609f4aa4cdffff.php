<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:57:"E:\project\shop03/application/index\view\index\index.html";i:1522308934;s:58:"E:\project\shop03/application/index\view\public\color.html";i:1522308934;s:59:"E:\project\shop03/application/index\view\public\footer.html";i:1522308934;}*/ ?>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title><?php echo $meta_title; ?>_<?php echo C('WEB_SITE_TITLE'); ?></title>
	<link href="__CSS__/base.css" rel="stylesheet" type="text/css"/>
	<link href="__CSS__/style.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="__JS__/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="__JS__/base.js"></script>
	<script type="text/javascript" src="__JS__/jquery.jqzoom.js"></script>
	<script type="text/javascript" src="__JS__/lvjing.js"></script>
	<script type="text/javascript" src="__JS__/jquery.lazyload.js"></script>
</head>
 
<style>

.nav_in .sidebar_div .title h2 {
    background: <?php echo $config['theme_color']; ?>;
}
.logo_in .head-search-bar .search-form {
    background: <?php echo $config['theme_color']; ?>
}
.logo_in .cart_num {
   background: <?php echo $config['theme_color']; ?>
}
.gm_in .gm_in_right .gm_tools.active {
    background: <?php echo $config['theme_color']; ?>;
}
.gm_in .gm_in_right  .gm_tools.active {
    background: <?php echo $config['theme_color']; ?>;
}
.in_storage.gm_selected {
    color: <?php echo $config['theme_color']; ?>;
}
.index_main_in .common_list .top {
    height: 31px;
    line-height: 31px;
    margin: 5px 0;
    overflow: visible;
    clear: both;
    border-bottom: 2px solid <?php echo $config['theme_color']; ?>;
}
.index_main_in .common_list .top a.active {
    background-color: rgb(255, 255, 255);
    color: rgb(0, 0, 0);
    border: 2px solid <?php echo $config['theme_color']; ?>;
    height: 29px;
    line-height: 29px;
    border-bottom: 2px solid #fff;
}
.index_main_in .common_list .top .title a {
    
	 color:#000;
}
.footer_in .footer_title ul li .left_icon {
    display: inline-block;
    width: 39px;
    height: 39px;
    border: 4px solid <?php echo $config['theme_color']; ?>;
    border-radius: 50%;
    color: <?php echo $config['theme_color']; ?>;
    font-size: 21px;
    text-align: center;
    line-height: 42px;
    float: left;
}
.nav_header {
    border-bottom: 2px solid <?php echo $config['theme_color']; ?>;
}
.nav_in .sidebar_div .title h2.active{
    background:<?php echo $config['theme_color']; ?>;font-size: 16px;
}
.nav_in .sidebar_div .title h2 {
    width: 202px;
    height: 40px;
    line-height: 40px;
    background: #3a3a3a;
    color: #fff;
    padding: 0 0 0 13px;
    cursor: pointer;
}
.cate .cate_in .category_item_title {
    height: 32px;
    line-height: 32px;
    text-indent: 4px;
    width: 93px;
    color:#999;
}
.gm_in .gm_in_left .jxsp_item .jxsp_price {
    width: 190px;
    margin-left: 9px;
    font-size: 14px;
    height: 26px;
    line-height: 26px;
    color: <?php echo $config['theme_color']; ?>;
}
.gl_item .gl_item_price {
    width: 228px;
    height: 45px;
    line-height: 45px;
    font-size: 18px;
    margin-left: 7px;
    color: <?php echo $config['theme_color']; ?>;
}
.cate .cate_in .category_item_list li a.checked {
   color: <?php echo $config['theme_color']; ?>;
}
.category_more:hover .cm_wrap {
    color: <?php echo $config['theme_color']; ?>;
    border-color:<?php echo $config['theme_color']; ?>;
    border-top: 1px solid #ffffff;
    position: relative;
    top: -1px;
}
.category_more:hover {
    border-top: 1px solid <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .shdz_right_pan #top_search_form .ipts .save {
    margin: 0 0 25px 103px;
    width: 75px;
    height: 25px;
    line-height: 25px;
    text-align: center;
    color: #fff;
    background:<?php echo $config['theme_color']; ?>;
    color: #fff;
    
}
.grzx_main_in .shdz_right_pan .table_div .addr_table .table_list {
    color: #333333;
    width: 100%;
    border-bottom: 1px solid #cccccc;
    height: 30px;
    cursor: pointer;
}
.grzx_main_in .shdz_right_pan .table_div .addr_table .table_list.current .td_07 a {
    color: #fff;
    background: <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .shdz_right_pan .table_div .addr_table .table_list .td_07 a{
    width: 70px;
    height: 20px;
    line-height: 20px;
    text-align: center;
    color: <?php echo $config['theme_color']; ?>;
    border: 1px solid <?php echo $config['theme_color']; ?>;
    border-radius: 0px;
    background: #fff;
}
.grzx_main_in .sppj_right_pan .top_tab ul li.current a {
    color: <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .sppj_right_pan .top_tab ul li a span {
     color: <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .sppj_right_pan .top_tab ul li.current {
    border-bottom: 2px solid <?php echo $config['theme_color']; ?>;
}
.nav_in .nav_list li.current a {
    color: <?php echo $config['theme_color']; ?>;
}
.page .active {
    border: 1px solid <?php echo $config['theme_color']; ?>;
    background: <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .wddd_right_pan .top_tab ul li.current {
    border-bottom: 2px solid  <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .wddd_right_pan .top_tab ul li.current a {
    color: <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .wddd_right_pan .tab_con .sc_xl .sc_btn {
    margin: 0 0 16px 0;
    background-color: <?php echo $config['theme_color']; ?>;
    color: #fff;
    border: 1px solid #e8303f;
    display: inline-block;
    border: none;
    height: 28px;
    line-height: 26px;
    padding: 0 12px;
    cursor: pointer;
    text-decoration: none;
}

.spxq_main .spxq_main_in .top_div .pro_info .price .price_div .num_02 .span_r {
    color: <?php echo $config['theme_color']; ?>;
    font-size: 30px;
}
.spxq_main .spxq_main_in .top_div .pro_info .caizhi .sel_ul li.current {
    border: 2px solid <?php echo $config['theme_color']; ?>;
}
.cate .cate_in .category_item_list li a:hover{

	
    color:<?php echo $config['theme_color']; ?>;
	
}
.spxq_main .spxq_main_in .top_div .pro_info .caizhi .sel_ul li.current .icon {
     display: block;
    width: 0;
    height: 0;
    position: absolute;
    right: 0;
    width: 0;
    height: 0;
    border-top: brown;
}
.price{
    color: <?php echo $config['theme_color']; ?>; 

}
.spxq_main .spxq_main_in .details .rgt_pan .tit ul li.current a{
    background-color: <?php echo $config['theme_color']; ?>;
    color: #fff;
}
.spxq_main .spxq_main_in .details .rgt_pan .tit ul li.current a {
    position: relative;
    z-index: 2;
    height: 32px;
    line-height: 32px;
    margin-top: -7px;
    margin-left: -2px;
    border-top: 2px solid <?php echo $config['theme_color']; ?>;
    border-left: 1px solid #DEDFDE;
    border-right: 1px solid #DEDFDE;
    background-color: #fff;
    color: #333333;
    font-size: 14px;
}
.grzx_main_in .wdgwc_main_top .top_tab ul li.current a {
    color: <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .wdgwc_main_top .top_tab .hsz .js.current {
    background: <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .wdgwc_main_top .top_tab .hsz .txt span {
    color: <?php echo $config['theme_color']; ?>;
    margin: 0 5px 0 10px;
}
.grzx_main_in .wdgwc_main_top .tab_con .bot_all .total_div .js_btn.current {
    background: <?php echo $config['theme_color']; ?>;
}
.spxq_tc .price span {
    color: <?php echo $config['theme_color']; ?>;
    font-weight: bold;
}
.spxq_tc .price span {
    color: <?php echo $config['theme_color']; ?>;
    font-weight: bold;
}
.spxq_tc .btns .ck {
    width: 75px;
    height: 22px;
    line-height: 22px;
    text-align: center;
    background:<?php echo $config['theme_color']; ?>;
    color: #fff;
    margin: 0 4px 0 0;
    font-weight: bold;
}
.spxq_main .spxq_main_in .top_div .pro_info .num_input .jr {
    height: 43px;
    background: <?php echo $config['theme_color']; ?>;
    color: #fff;
    line-height: 43px;
    padding: 0 12px 0 32px;
    position: relative;
    margin: 0 8px 0 0;
}
.spxq_main .spxq_main_in .top_div .pro_info .num_input .buy {
    width: 134px;
    height: 43px;
    border: 1px solid  <?php echo $config['theme_color']; ?>;
    line-height: 43px;
    text-align: center;
}
#ul-list .tab .curr {
    position: relative;
    height: 25px;
    padding: 0;
    border: 2px solid  <?php echo $config['theme_color']; ?>;
    border-bottom: 0;
}
.shopping_act .buy_btn {
    width: 90px;
    height: 26px;
    color: #fff;
    line-height: 28px;
    background-color: <?php echo $config['theme_color']; ?>;
    border: 1px solid <?php echo $config['theme_color']; ?>;
    float: left;
    display: inline;
    text-align: center;
    _zoom: 1;
    border-radius: 2px;
}
.spxq_main .spxq_main_in .details .lft_pan .klyk .list_ul li .price {
    width: 150px;
    color: <?php echo $config['theme_color']; ?>;
    margin: 7px auto;
}
.spxq_main .spxq_main_in .details .lft_pan .klyk .list_ul li .tit:hover {
     color: <?php echo $config['theme_color']; ?>;
}
.logo_in .minicart_list .checkout_btn {
    background-color: <?php echo $config['theme_color']; ?>;
    color: #fff;
    padding: 0 10px;
    display: inline-block;
    line-height: 30px;
    font-size: 14px;
}
.grzx_main_in .wdgwc_main_top .top_tab ul li a span {
    color: <?php echo $config['theme_color']; ?>;
}
.grzx_main_in .wdgwc_main_top .top_tab ul li.current {
    border-bottom: 2px solid <?php echo $config['theme_color']; ?>;
}
.login_main .login_main_in .con .login_div .login_btn {
    width: 323px;
    height: 41px;
    line-height: 41px;
    text-align: center;
    background: <?php echo $config['theme_color']; ?>;
    color: #fff;
    border: 1px solid <?php echo $config['theme_color']; ?>;
    margin: 0 0 30px 0;
}
.register_main .register_main_in .con .reg_div .tab_con .tab_div .reg_btn {
    width: 318px;
    height: 41px;
    line-height: 41px;
    text-align: center;
    background: <?php echo $config['theme_color']; ?>;
    color: #fff;
    border: 1px solid <?php echo $config['theme_color']; ?>;
    border-radius: 3px;
}
.register_main .register_main_in .con .reg_div .reg_tab li.current {
    border-bottom: 1px solid <?php echo $config['theme_color']; ?>;
    color:<?php echo $config['theme_color']; ?>;
}
.login_main .login_main_in .con .login_div .next_btn {
    width: 92%;
    height: 41px;
    line-height: 41px;
    text-align: center;
    background: <?php echo $config['theme_color']; ?>;
    color: #fff;
    border: 1px solid <?php echo $config['theme_color']; ?>;
    border-radius: 3px;
    margin: 30px 0 0 0;
}
.login_main .login_main_in .con .login_div .wjmm_info #wjmm_form .tip_dl p a {
    display: inline-block;
    padding: 0 13px;
    line-height: 22px;
    background: <?php echo $config['theme_color']; ?>;
    color: #fff;
    border-radius: 3px;
    margin: 0 5px 0 8px;
}
</style>
	

<body><div class="ad in_width f12"> <?php $__LIST__= parseAd(99); if(is_array($__LIST__) || $__LIST__ instanceof \think\Collection || $__LIST__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__LIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
             		 <a href="<?php echo get_url($vo['url']); ?>"> 
					 <img src="<?php echo get_cover_path($vo['cover_id']); ?>"></a>
		             <?php endforeach; endif; else: echo "" ;endif; ?></div>
	<!--header start-->
	<div class="header w100"> 
		<div class="header_in in_width f12">
			<?php if(is_login()): ?>
			<div class="header_lef fl">
				<p>
					您好 <?php echo $UcenterMember['username']; ?>
					<span class="span_01"><?php echo (isset($UcenterMember['level']) && ($UcenterMember['level'] !== '')?$UcenterMember['level']:'vo'); ?>普通会员</span>
					，欢迎来到
					<a href="" class="sc_a">yershop商城</a>
					<a href="<?php echo url('User/logout'); ?>" class="tc_a">［退出］</a>
				</p>
			</div><?php else: ?><div class="header_lef fl header_lef_wdl">
				<div class="wzc">
					<span class="fl">嗨，欢迎光临yershop商城</span>
					
					<a href="<?php echo url('User/login'); ?>" class="login_a fl">［登录］</a>
					<a href="<?php echo url('User/register'); ?>" class="zc_a fl">［免费注册］</a>
				</div>
			</div><?php endif; ?>
			<div class="header_rgt fr">
					<dl class="">
					<dt><a href="<?php echo U('order/index'); ?>">我的订单</a></dt>
					
				</dl>
				<dl class="">
					<dt><a href="<?php echo U('collect/index'); ?>">我的收藏</a></dt>
					
				</dl>
				<dl class="">
					<dt><a href="<?php echo U('help/index?id=65'); ?>">客户服务</a></dt>
					
				</dl>
			    <dl class="weixin">
					<dt>关注我们<i></i></dt>
					<dd>
					    <h4>扫描二维码<br>
						关注商城微信号</h4>
					    <img src="__IMG__/code_pic.gif"> 
					</dd>
				</dl>									
			</div>
		</div>	
	</div>
	<!--/header end-->
	
	<!--logo start-->
	<div class="logo w100">
		<div class="logo_in in_width">
			<h1 class="logo_pic fl"><a href="<?php echo url('index/index'); ?>"><img title="YERSHOP" src="__IMG__/logo_pic.gif" width="201" height="59" /></a></h1>			
			<div class="head-search-layout">
				<div class="head-search-bar" id="head-search-bar">
					
                    <form class="search-form" id="top_search_form" action="<?php echo url('search/index'); ?>" method="post">
						<input name="act" id="search_act" value="search" type="hidden">
          
                        <input name="keyword" id="keyword" type="text" class="input-text ui-autocomplete-input" value="" maxlength="60" x-webkit-speech="" lang="zh-CN" onwebkitspeechchange="foo()" placeholder="请输入您要搜索的商品的关键字" data-value="" x-webkit-grammar="builtin:search" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true">
                        <input type="submit" id="button" value="搜索" class="input-submit">
					
                    </form>
                  	<p>热门搜索:<?php if(is_array($hotsearch) || $hotsearch instanceof \think\Collection || $hotsearch instanceof \think\Paginator): $_5ac47ec50ca09 = is_array($hotsearch) ? array_slice($hotsearch,0,8, true) : $hotsearch->slice(0,8, true); if( count($_5ac47ec50ca09)==0 ) : echo "" ;else: foreach($_5ac47ec50ca09 as $key=>$vo): ?><a href="<?php echo url('Search/index?keyword='.$vo); ?>"><?php echo $vo; ?></a><?php endforeach; endif; else: echo "" ;endif; ?></p>
				</div>
				
			</div>			
			<div class="mod_minicart" style="">
				<a id="nofollow" target="_self" href="<?php echo url('cart/index'); ?>" class="mini_cart_btn">
					<i class="cart_icon"></i> 
					<em class="cart_num"><?php echo (isset($cart["total_num"]) && ($cart["total_num"] !== '')?$cart["total_num"]:"0"); ?></em>
					<span>购物车</span>
				</a>
				<div id="minicart_list" class="minicart_list">
					<div class="spacer"></div>
					<!-- 购物车没有商品 -->
					
					<!-- 购物车有商品 -->
					<div class="list_detail">
						<ul class="has_sp cartlist">
					        <?php if(empty($cartlist) || (($cartlist instanceof \think\Collection || $cartlist instanceof \think\Paginator ) && $cartlist->isEmpty())): ?>
			         	<!-- 购物车没有商品 -->
						  
							<p  class="none_tips" style="margin:50px 0;text-align:center;">购物车中没有商品，赶紧去选购！</p>
						 
				        <?php else: if(is_array($cartlist) || $cartlist instanceof \think\Collection || $cartlist instanceof \think\Paginator): if( count($cartlist)==0 ) : echo "" ;else: foreach($cartlist as $key=>$vo): ?>  
							<li class="item<?php echo $vo['id']; ?>">
								<a href="<?php echo url('Goods/detail?id='.$vo['goodsid']); ?>" class="pic fl"><img src="<?php echo get_goods_cover($vo['goodsid']); ?>"/></a>
								<a href="<?php echo url('Goods/detail?id='.$vo['goodsid']); ?>" class="name fl"><?php echo get_goods($vo['goodsid'],"title"); ?><?php echo $vo['specifications']; ?></a>
								<div class="mcartRight">
									<span class="pro_price">¥<em><?php echo $vo['price']; ?></em>×<em class="item_num_<?php echo $vo['id']; ?>"><?php echo $vo['num']; ?></em></span>
									<em><a onclick="cancelCart(this,<?php echo $vo['id']; ?>)">删除</a></em>
								</div>
							</li>
						<?php endforeach; endif; else: echo "" ;endif; endif; ?>
						</ul>
						<div class="checkout_box" style="<?php if(empty($cartlist) || (($cartlist instanceof \think\Collection || $cartlist instanceof \think\Paginator ) && $cartlist->isEmpty())): ?>display:none<?php else: ?>display:block<?php endif; ?> ">
							<p class="fl">共<em class="tNum"><?php echo $cart['total_count']; ?></em>种商品,总计金额：<em class="tSum">¥<?php echo $cart['total_money']; ?></em></p>
							<a class="checkout_btn" href="<?php echo url('cart/index'); ?>"> 去结算 </a>

						</div>
					</div> 
				</div>				
			</div>			
			
		</div>
	</div>
	<!--/logo end--> 
	<!--nav start-->
	<div class="nav w100">
		<div class="nav_in in_width">
			<div class="sidebar_div fl">
				<div class="title">
					<i></i>
					<h2 class="f14" id="all-class">全部商品分类</h2>
				</div>
				
				<ul class="left_sidebar" id="all-goods"  style="display:block;">

				<?php if(is_array($category) || $category instanceof \think\Collection || $category instanceof \think\Paginator): $i = 0; $__LIST__ = $category;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
					<li class="left_sidebar_li">
						<div class="product">
							<div class="border">								
								<div class="fl_div fl"><h3><a href="<?php echo url('Goods/lists?id='.$vo['id']); ?>"><?php echo $vo['title']; ?></a></h3>
								</div>
								<span class="fr pic"><img src="__IMG__/left_sidebar_li.gif"/></span>
							</div>							
						</div>
						<div class="product-wrap f14">
							<div class="menu_div">								
								<div class="sub-class" >
									<div class="sub-class-content">
										<div class="recommend-class">
											<?php echo parseHot($vo['id']); ?>
											
										</div>
										  <?php if(is_array($vo['child']) || $vo['child'] instanceof \think\Collection || $vo['child'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
										<dl>
											<dt><h3><a href="<?php echo url('Goods/lists?id='.$vo1['id']); ?>"><?php echo $vo1['title']; ?></a></h3></dt>
											<dd class="goods-class">
												<?php if(!(empty($vo1['child']) || (($vo1['child'] instanceof \think\Collection || $vo1['child'] instanceof \think\Paginator ) && $vo1['child']->isEmpty()))): if(is_array($vo1['child']) || $vo1['child'] instanceof \think\Collection || $vo1['child'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo1['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i;?><a href="<?php echo url('Goods/lists?id='.$vo2['id']); ?>"><?php echo $vo2['title']; ?></a>
											     <?php endforeach; endif; else: echo "" ;endif; endif; ?>
											</dd>
										</dl> <?php endforeach; endif; else: echo "" ;endif; ?>
									</div>
								</div>								
							</div>
						</div>
					</li><?php endforeach; endif; else: echo "" ;endif; ?>
					
				</ul>
			</div>			
			<ul class="nav_list fl">
             <?php if(is_array($channel) || $channel instanceof \think\Collection || $channel instanceof \think\Paginator): $i = 0; $__LIST__ = $channel;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
				<li class="fl"><a href="<?php echo get_url($vo['url']); ?>"><?php echo $vo['title']; ?></a></li>
				
			<?php endforeach; endif; else: echo "" ;endif; ?>
			</ul>
		</div>
	</div>
	<!--/nav end-->
		<!--banner start-->
	<div class="banner w_100">
		<div class="banner_in in_width">
			<ul class="banner_list">
				<?php if(is_array($slidelist) || $slidelist instanceof \think\Collection || $slidelist instanceof \think\Paginator): $i = 0; $__LIST__ = $slidelist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>  
				
				<li class="li_01"><a href="<?php echo get_url($vo['url']); ?>"><img src="<?php echo get_cover_path($vo['cover_id']); ?>"/></a></li>
				
              <?php endforeach; endif; else: echo "" ;endif; ?>
			</ul>
			<ol class="banner_ol">
			    <?php if(is_array($slidelist) || $slidelist instanceof \think\Collection || $slidelist instanceof \think\Paginator): $k = 0; $__LIST__ = $slidelist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?>  
				  <li <?php if($k == 1): ?>class="current"<?php endif; ?>></li>
				  <?php endforeach; endif; else: echo "" ;endif; ?>
			</ol>
			
		</div>	
	</div>
	<!--/banner end-->
	
	<!--main start-->
	<div class="main w100 index_main" style="background:;">
		<div class="main_in in_width index_main_in">

			<div class="mid_banner6" style="display:block;height:15px;"></div>
			<?php if(is_array($tree) || $tree instanceof \think\Collection || $tree instanceof \think\Paginator): $k = 0;$__LIST__ = is_array($tree) ? array_slice($tree,0,8, true) : $tree->slice(0,8, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?>
			<div class="common_list">
				<div class="top">
					<div class="title f14">
						<a href="<?php echo url('Goods/lists?id='.$vo['id']); ?>" class=" f14"><?php echo $k; ?>F <?php echo $vo['title']; ?></a>
						<i class="icon"></i>
					</div>
		                 
				<?php if(is_array($vo['child']) || $vo['child'] instanceof \think\Collection || $vo['child'] instanceof \think\Paginator): $n = 0;$__LIST__ = is_array($vo['child']) ? array_slice($vo['child'],0,4, true) : $vo['child']->slice(0,4, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$to): $mod = ($n % 2 );++$n;?>
	 <a   id='category_<?php echo $to['id']; ?>' title="<?php echo $to['title']; ?>" href="javascript:vod(0);"   onmouseover="getlist(<?php echo $to['id']; ?>,<?php echo $vo['id']; ?>)">
    <?php echo $to['title']; ?></a>
	<?php endforeach; endif; else: echo "" ;endif; ?> 
				 <a  class="active" id='category_<?php echo $vo['id']; ?>' title="<?php echo $vo['title']; ?>"href="javascript:vod(0);" onmouseover="getlist(<?php echo $vo['id']; ?>,<?php echo $vo['id']; ?>)">
   <?php switch($k): case "1": ?>最新<?php break; ?><case value="2"}热门{/case}{case value="3"}大牌</case}<?php case "4": ?>推荐<?php break; default: ?>热门<?php endswitch; ?></a>
				
   		
				</div>
				
				<div class="list_div">
					<div class="lft">
						<ul>
						<?php if(is_array($vo['child']) || $vo['child'] instanceof \think\Collection || $vo['child'] instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($vo['child']) ? array_slice($vo['child'],0,6, true) : $vo['child']->slice(0,6, true); if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$to): $mod = ($i % 2 );++$i;?>
						 <li><a  id='category_<?php echo $to['id']; ?>' title="<?php echo $to['title']; ?>" href="<?php echo url('Goods/lists?id='.$vo['id']); ?>"   onmouseover="getlist(<?php echo $to['id']; ?>,<?php echo $vo['id']; ?>)">
                              <?php echo $to['title']; ?></a></li>
	                    <?php endforeach; endif; else: echo "" ;endif; ?>
						</ul>
						<div class="ad"><a href="<?php echo url('Goods/lists?id='.$vo['id']); ?>" class=" f14"><img src="<?php echo get_cover($vo['cover_id'],'path'); ?>"/></a></div>
					</div>
					
					<div class="rgt">
						<ul id="list_<?php echo $vo['id']; ?>">
						  <?php if(is_array($vo['item']) || $vo['item'] instanceof \think\Collection || $vo['item'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['item'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article): $mod = ($i % 2 );++$i;?>                      
                            <li>
                           <div class="pic" >
							<a class="yershop_img" href="<?php echo url('goods/detail?id='.$article['id']); ?>" title="<?php echo $article['title']; ?>">
								<img class="lazy" data-original="<?php echo get_cover($article['cover_id'],'path'); ?>"></a>
						   
						</div>
						<div class="name"><a href="<?php echo url('goods/detail?id='.$article['id']); ?>"  title="<?php echo $article['title']; ?>"><?php echo substr_cn($article['title'],"30"); ?></a></div>
						<div class="price" style="text-align:center;">
							<font>￥</font><span><?php echo $article['price']; ?></span>
						   
						</div>
					   </li>  
				   <?php endforeach; endif; else: echo "" ;endif; ?>
			  
						</ul>
					</div>
				</div>
			</div>	
			 <p class="adimg">
			  <?php if(is_array($vo['brand']) || $vo['brand'] instanceof \think\Collection || $vo['brand'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['brand'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$bo): $mod = ($i % 2 );++$i;?> 
			     
				 <span  style="display:inline-block;overflow:hidden;width:<?php echo 1200/count($vo['brand']); ?>px">  <a  href="<?php echo U('goods/lists?brand_id='.$bo['id'].'&id='.$vo['id']); ?>">
                            <img src="<?php echo get_cover($bo['cover_id'],'path'); ?>" width="100%" height=
							"40px"></a></span>
			  <?php endforeach; endif; else: echo "" ;endif; ?></p>	
			  
	 <p>
			  <?php if(is_array($vo['ad']) || $vo['ad'] instanceof \think\Collection || $vo['ad'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['ad'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ao): $mod = ($i % 2 );++$i;?> 
			     
				 <span style="display:inline-block;overflow:hidden;width:<?php echo 100/count($vo['ad']); ?>">  <a  href="<?php echo get_url($ao['url']); ?>">
                            <img src="<?php echo get_cover($ao['cover_id'],'path'); ?>" width="100%" ></a></span>
			  <?php endforeach; endif; else: echo "" ;endif; ?></p>	

			<?php endforeach; endif; else: echo "" ;endif; ?> 		
			
		</div>
	</div>
	<!--/main end-->	

	
	<script type="text/javascript" src="__JS__/common.js"></script>

		<!--footer  start-->
	<div class="footer w100">
		<div class="footer_in in_width f14">
			<div class="footer_title">
				<ul>
					<li class="qa">
						<span class="left_icon">优</span>
						<div class="right_div">
							<div class="right_div_t_cn">品质保障</div>
							<div class="right_div_t_en">Quality Assurance</div>
						</div>
					</li>
					<li class="wr">
						<span class="left_icon">七</span>
						<div class="right_div">
							<div class="right_div_t_cn">七天无理由退换货</div>
							<div class="right_div_t_en">Without Reason</div>
						</div>
					</li>
					<li class="csr">
						<span class="left_icon">特</span>
						<div class="right_div">
							<div class="right_div_t_cn">特色服务体验</div>
							<div class="right_div_t_en">Characteristic Service Experience</div>
						</div>
					</li>
					<li class="hc">
						<span class="left_icon">帮</span>
						<div class="right_div">
							<div class="right_div_t_cn">帮助中心</div>
							<div class="right_div_t_en">Help Center</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="footer_site_info">
				 <?php if(is_array($footer) || $footer instanceof \think\Collection || $footer instanceof \think\Paginator): $i = 0; $__LIST__ = $footer;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
				 <ul class="footer_site_info_ul">
					<li><a href="<?php echo U('help/index?id='.$vo['id']); ?>"><?php echo $vo['title']; ?></a></li>
					 <?php if(is_array($vo['ids']) || $vo['ids'] instanceof \think\Collection || $vo['ids'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['ids'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?> 
					<li><a href="<?php echo U('help/index?id='.$vo['id']); ?>"><?php echo $vo1['title']; ?></a></li>
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</ul>
               <?php endforeach; endif; else: echo "" ;endif; ?> 
			
				
			</div>
		</div>
	</div>
	<!--/footer  end-->
	<span class="copyright" style="">@2014-2017
	   <a href="http://yershop.com">yershop</a> 版权所有</span>


	<script type="text/javascript">
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
				oDiv4.style.display = 'block'; },300);
			}
			
			//banner
				var banner_len=$('.banner_in .banner_list li').length-1;
				var ol_len=$('.banner_in .banner_ol li').length-1;
				var myFn_01 = function(){
						myOl++;
						if(myOl > banner_len){
							myOl = 0;	
						}
						$('.banner_in .banner_ol li').eq(myOl).addClass('current').siblings().removeClass('current');
						$('.banner_in .banner_list li').eq(myImg).stop().hide();
						myImg++;
						if(myImg > banner_len){
							myImg = 0;	
						}
						$('.banner_in .banner_list li').eq(myImg).stop().show();
					} 
				var myOl = 0;
				var myImg = 0;
				$('.banner_in').hover(function(e) {
					clearInterval(timer02);
				},function(){	
					clearInterval(timer02);
					timer02 = setInterval(myFn_01,3000)
				});	
						
				$('.banner_in .banner_list li').eq(0).show();		
				
				//ol点击
				$('.banner_in .banner_ol li').click(function(e) {
					$(this).addClass('current').siblings().removeClass('current');
					$('.banner_in ul li').eq($(this).index()).stop().show().siblings().stop().hide();
					myOl = $(this).index();
					myImg = $(this).index();
				});
				
				var timer02 = null;
				timer02 = setInterval(myFn_01,4000);
			
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
			
			//li hover_01
			$('.index_main_in .tjsj_con .top_div .rgt_div ul li').hover(function(){		
				$(this).css('opacity','1');
				$(this).siblings().css('opacity','0.8');
			},function(){
				$(this).css('opacity','1');
				$(this).siblings().css('opacity','1');
			});
			//li hover_02
			$('.index_main_in .tjsj_con .bot_div ul li').hover(function(){		
				$(this).find('img').css('opacity','1');
				$(this).siblings().find('img').css('opacity','0.8');
			},function(){
				$(this).find('img').css('opacity','1');
				$(this).siblings().find('img').css('opacity','1');
			});
			
			
			//
			var myFn = function(){
				olKey++;
				if(olKey >2){
					olKey = 0;
				}
				$('.index_main_in .del_con .rgt_div .con_del .lft_ul .tab_ol li').eq(olKey).addClass('current').siblings().removeClass('current');
				imgKey++;
				if(imgKey >3){
					imgKey =1;
					$('.con ul').css('left','0px');	
				}
				var move = imgKey * -348;
				$('.index_main_in .del_con .rgt_div .con_del .lft_ul .conIn ul ').stop().animate({'left':move +'px'},500);			
			}
			
					
				//自动轮播2
			var timer01 = null;
			timer01 = setInterval(myFn,1000);
			$('.index_main_in .del_con .rgt_div .con_del').hover(function(e) {
				clearInterval(timer01);
			},function(){
				clearInterval(timer01);	
				timer01 = setInterval(myFn,1000);
			});
			
			
			var myLi = $('.index_main_in .del_con .rgt_div .con_del .lft_ul .conIn ul li:eq(0)').clone(true);
			var myTag = $(myLi);
			$('.index_main_in .del_con .rgt_div .con_del .lft_ul .conIn ul').append(myTag);
			
			var olKey = 0;
			var imgKey = 0;

				// ol点击
			$('.index_main_in .del_con .rgt_div .con_del .lft_ul .tab_ol li').click(function(e) {
				$(this).addClass('current').siblings().removeClass('current');
				var move = $(this).index() * -348;
				$('.index_main_in .del_con .rgt_div .con_del .lft_ul .conIn ul').stop().animate({'left':move + 'px'},500);
				olKey = $(this).index();
				imgKey = $(this).index();
			});
			
			//li hover_03
			$('.index_main_in .del_con .rgt_div .title ul li').hover(function(){		
				$(this).find('i').css('color','#f19715');
				$(this).siblings().find('i').css('color','#b5b5b5');
			});
			
			$('.index_main_in .del_con .rgt_div .title ul li').click(function(){		
				$(this).find('i').css('color','#f19715');
				$(this).siblings().find('i').css('color','#b5b5b5');
				var this_index =$(this).index();
				$(this).closest('.title').siblings('.con_del').find('.list_01').eq(this_index).addClass('current').siblings().removeClass('current');
			});
			//li hover_04
			$('.index_main_in .del_con .rgt_div .con_del .rgt_ul .list_01 li').hover(function(){		
				$(this).find('img').css('opacity','1');
				$(this).siblings().find('img').css('opacity','0.8');
			},function(){
				$(this).find('img').css('opacity','1');
				$(this).siblings().find('img').css('opacity','1');
			});
		})
	
function getlist(id,pid) {
	$("#category_"+id).addClass('active').siblings().removeClass('active');
	var url="<?php echo url('Index/getGoodlist'); ?>";
	$.post(url, {id:id},function(data){
		 if(data){
				  var html = '';
				 $("ul#list_"+pid).empty(); 		  
				  $.each(data, function(i,n){			
						 var html='<li><div class="pic" > <a class="yershop_img" href="'+n.url+'" target="_blank" title="'+n.title+'"> <img src="'+n.pic+'"width="120" height="120" ></a>  </div> <div class="name"><a href="'+n.url+'"  target="_blank" title="'+n.title
						  +'">'+n.title+'</a></div> <div  class="price">  <font>￥</font><span>'+n.price+'</span></div></li> ';	
					    $("ul#list_"+pid).append(html);
				 });
		}

	})
}

</script>

<script type="text/javascript" charset="utf-8">
  $(function() {
      $("img.lazy").lazyload({effect: "fadeIn"});
  });
</script>

</body>
</html>
