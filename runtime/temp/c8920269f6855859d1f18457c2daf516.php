<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:58:"E:\project\shop03/application/index\view\goods\detail.html";i:1522308934;s:59:"E:\project\shop03/application/index\view\public\header.html";i:1522308934;s:58:"E:\project\shop03/application/index\view\public\color.html";i:1522308934;s:59:"E:\project\shop03/application/index\view\public\footer.html";i:1522308934;}*/ ?>
<!-- 头部 -->
	<!doctype html><html lang="zh-cn"><head>	<meta charset="utf-8">	<title><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?>_<?php echo C('WEB_SITE_TITLE'); ?></title>	<link href="__CSS__/base.css" rel="stylesheet" type="text/css"/>	<link href="__CSS__/style.css" rel="stylesheet" type="text/css"/>	<link href="__CSS__/list.css" rel="stylesheet" type="text/css"/>	<script type="text/javascript" src="__COMMON__/jquery.min.js"></script>	<script type="text/javascript" src="__JS__/base.js"></script>  
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
	
</head><body>	<!--header start-->	<div class="header w100">		<div class="header_in in_width f12">			<?php if(is_login()): ?>			<div class="header_lef fl">				<p>					您好 <?php echo (isset($UcenterMember['username']) && ($UcenterMember['username'] !== '')?$UcenterMember['username']:''); ?>									，欢迎来到					<a href="javascript:;" class="sc_a">yershop商城</a>					<a href="<?php echo url('User/logout'); ?>" class="tc_a">［退出］</a>				</p>			</div><?php else: ?><div class="header_lef fl header_lef_wdl">				<div class="wzc">					<span class="fl">嗨，欢迎光临yershop商城</span>										<a href="<?php echo url('User/login'); ?>" class="login_a fl">［登录］</a>					<a href="<?php echo url('User/register'); ?>" class="zc_a fl">［免费注册］</a>				</div>			</div><?php endif; ?>			<div class="header_rgt fr">							<dl class="">					<dt><a href="<?php echo url('order/index'); ?>">我的订单</a></dt>									</dl>				<dl class="">					<dt><a href="<?php echo url('collect/index'); ?>">我的收藏</a></dt>									</dl>				<dl class="">					<dt><a href="<?php echo url('help/index?id=65'); ?>">客户服务</a></dt>									</dl>			    <dl class="weixin">					<dt>关注我们<i></i></dt>					<dd>					    <h4>扫描二维码<br>						关注商城微信号</h4>					    <img src="__IMG__/code_pic.gif"> 					</dd>				</dl>											</div>		</div>		</div>	<!--/header end-->	<div class="ad in_width f12"><img src="__IMG__/12.jpg"></div>	<!--logo start-->	<div class="logo w100">		<div class="logo_in in_width">			<h1 class="logo_pic fl"><a href="<?php echo url('index/index'); ?>"><img title="YERSHOP" src="<?php echo C('LOGO'); ?>" width="201" height="59" /></a></h1>						<div class="head-search-layout">				<div class="head-search-bar" id="head-search-bar">					<div class="hd_serach_tab" id="hdSearchTab">						                    </div>                     <form class="search-form" id="top_search_form" action="<?php echo url('search/index'); ?>" method="post">						<input name="act" id="search_act" value="search" type="hidden">                                  <input name="keyword" id="keyword" type="text" class="input-text ui-autocomplete-input" value="" maxlength="60" x-webkit-speech="" lang="zh-CN" onwebkitspeechchange="foo()" placeholder="请输入您要搜索的商品的关键字" data-value="" x-webkit-grammar="builtin:search" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true">                        <input type="submit" id="button" value="搜索" class="input-submit">						<p>热门搜索:<?php if(is_array($hotsearch) || $hotsearch instanceof \think\Collection || $hotsearch instanceof \think\Paginator): $_5ac48ba42b03f = is_array($hotsearch) ? array_slice($hotsearch,0,8, true) : $hotsearch->slice(0,8, true); if( count($_5ac48ba42b03f)==0 ) : echo "" ;else: foreach($_5ac48ba42b03f as $key=>$vo): ?><a href="<?php echo url('Search/index?keyword='.$vo); ?>"><?php echo $vo; ?></a><?php endforeach; endif; else: echo "" ;endif; ?></p>                    </form>                   				</div>							</div>						<div class="mod_minicart" style="">				<a id="nofollow" target="_self" href="<?php echo url('cart/index'); ?>" class="mini_cart_btn">					<i class="cart_icon"></i> 					<em class="cart_num"><?php echo (isset($cart["total_num"]) && ($cart["total_num"] !== '')?$cart["total_num"]:"0"); ?></em>					<span>购物车</span>				</a>				<div id="minicart_list" class="minicart_list">					<div class="spacer"></div>				<!-- 购物车有商品 -->					 <div class="list_detail">						<ul class="has_sp cartlist">					        <?php if(empty($cartlist) || (($cartlist instanceof \think\Collection || $cartlist instanceof \think\Paginator ) && $cartlist->isEmpty())): ?>			         	<!-- 购物车没有商品 -->							<p  class="none_tips" style="margin:50px 0;text-align:center;">购物车中没有商品，赶紧去选购！</p>				            <?php else: if(is_array($cartlist) || $cartlist instanceof \think\Collection || $cartlist instanceof \think\Paginator): if( count($cartlist)==0 ) : echo "" ;else: foreach($cartlist as $key=>$vo): ?>  							    <li class="item<?php echo $vo['id']; ?>">								<a href="<?php echo url('Goods/detail?id='.$vo['goodsid']); ?>" class="pic fl"><img src="<?php echo get_goods_cover($vo['goodsid']); ?>"/></a>								<a href="<?php echo url('Goods/detail?id='.$vo['goodsid']); ?>" class="name fl"><?php echo get_goods($vo['goodsid'],"title"); ?><?php echo $vo['specifications']; ?></a>								<div class="mcartRight">									<span class="pro_price">¥<em><?php echo $vo['price']; ?></em>×<em class="item_num_<?php echo $vo['id']; ?>"><?php echo $vo['num']; ?></em></span>									<em><a onclick="cancelCart(this,'<?php echo $vo['id']; ?>')">删除</a></em>								</div>							</li>						    <?php endforeach; endif; else: echo "" ;endif; endif; ?>						</ul>						<div class="checkout_box" style="<?php if(empty($cartlist) || (($cartlist instanceof \think\Collection || $cartlist instanceof \think\Paginator ) && $cartlist->isEmpty())): ?>display:none<?php else: ?>display:block<?php endif; ?>">							<p class="fl">共<em class="tNum"><?php echo (isset($cart['total_count']) && ($cart['total_count'] !== '')?$cart['total_count']:''); ?></em>种商品,总计金额：							<em class="tSum">¥<?php echo (isset($cart['total_money']) && ($cart['total_money'] !== '')?$cart['total_money']:''); ?></em></p>							<a class="checkout_btn" href="<?php echo url('cart/index'); ?>"> 去结算 </a>						</div>					</div>				</div>							</div>				</div>	</div>	<!--/logo end--> 	<!--nav start-->	<div class="nav w100 nav_header">		<div class="nav_in in_width">			<div class="sidebar_div fl">				<div class="title">					<i></i>					<h2 class="f14 active" id="all-class">全部商品分类</h2>				</div>				<ul class="left_sidebar" id="all-goods">									<?php if(is_array($category) || $category instanceof \think\Collection || $category instanceof \think\Paginator): $i = 0; $__LIST__ = $category;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>					<li class="left_sidebar_li">						<div class="product">							<div class="border">																<div class="fl_div fl"><h3><a href="<?php echo url('Goods/lists?id='.$vo['id']); ?>"><?php echo $vo['title']; ?></a></h3>								</div>								<span class="fr pic"><img src="__IMG__/left_sidebar_li.gif"/></span>							</div>													</div>						<div class="product-wrap f14">							<div class="menu_div">																<div class="sub-class" >									<div class="sub-class-content">										<div class="recommend-class">											<?php echo parseHot($vo['id']); ?>										</div>										  <?php if(is_array($vo['child']) || $vo['child'] instanceof \think\Collection || $vo['child'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>										<dl>											<dt><h3><a href="<?php echo url('Goods/lists?id='.$vo1['id']); ?>"><?php echo $vo1['title']; ?></a></h3></dt>											<dd class="goods-class">												<?php if(is_array($vo1['child']) || $vo1['child'] instanceof \think\Collection || $vo1['child'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo1['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i;?><a href="<?php echo url('Goods/lists?id='.$vo2['id']); ?>"><?php echo $vo2['title']; ?></a>											 <?php endforeach; endif; else: echo "" ;endif; ?>											</dd>										</dl> <?php endforeach; endif; else: echo "" ;endif; ?>									</div>								</div>															</div>						</div>					</li><?php endforeach; endif; else: echo "" ;endif; ?>				</ul>			</div>						<ul class="nav_list fl">				<li class=" current fl"><a href="javascript:;">首页</a></li>							</ul>		</div>	</div>	<!--/nav end-->		<script>var del_url="<?php echo url('cart/delItem'); ?>";var post_url="<?php echo url('cart/addItem'); ?>";	var dec_url="<?php echo url('cart/decNum'); ?>";var inc_url="<?php echo url('cart/incNum'); ?>";var img_path="__IMG__";var order_url="<?php echo url('Order/add'); ?>";var del_cart_url='<?php echo url("cart/delCart"); ?>';var clear_cart_url='<?php echo url("cart/clear"); ?>';var collect_url='<?php echo url("collect/add"); ?>';</script>
<!-- 头部 --> 
<!--crumb start-->
	<div class="crumb w100 crumb_01">
		<div class="crumb_in in_width crumb_in_01">
			<p><span class="icon">当前位置：</span><a href="<?php echo url('index/index'); ?>" class="index_a">首页</a>>>
			<?php echo get_place($info['category_id']); ?>	>><span><?php echo $info['title']; ?></span></p>
		</div>
	</div>
	<!--/crumb end-->	
	<!--main start-->
		<script type="text/javascript" src="__JS__/jquery.jqzoom.js"></script>
	<script type="text/javascript" src="__JS__/lvjing.js"></script>
	<div class="main w100 spxq_main">
		<div class="main_in in_width spxq_main_in">
			<div class="top_div">
				<div class="lft_pic fl">					
					<div id="preview" class="spec-preview"> 
						<span class="jqzoom">
						<img jqimg="<?php echo get_cover($info['cover_id'],'path'); ?>" src="<?php echo get_cover($info['cover_id'],'path'); ?>" width="360"/>
							</span> 
					</div>
					<div class="spec-scroll"> 
						<a class="spec-forward disable">
	<i class="sprite-arrow-prev"></i>
</a>
<a class="spec-backward">
	<i class="sprite-arrow-next"></i>
</a>
						<div class="items">
							<ul>	
	
							<?php $lists= get_pictures($info['id']); if(is_array($lists) || $lists instanceof \think\Collection || $lists instanceof \think\Paginator): if( count($lists)==0 ) : echo "" ;else: foreach($lists as $k=>$vo): ?> 
								<li><img alt="" bimg="<?php echo get_cover($vo,'path'); ?>" src="<?php echo get_cover($vo,'path'); ?>" onmousemove="preview(this);"></li>
							
								<?php endforeach; endif; else: echo "" ;endif; ?>
							</ul>
						</div>
					</div>
					<div class="b_div f12">
						<a onclick="addClect()" class="sc fl"><i></i>收藏商品<span>(<em><?php echo $info['collect']; ?></em>)</span></a> 
						<!--a href="javascript:;" class="share fl"><i></i>分享<span>(<em>0</em>)</span></a> 
						
						<a href="javascript:;" class="compare fl"><i class="sel"></i>加入对比</a>
						<a href="javascript:;" title="举&nbsp;报" class="inform fr">举&nbsp;报</a-->
					</div>
				</div>
				<div class="pro_info fl">
					<h3 class="f16"><a href="javascript:;"><?php echo $info['title']; ?></a></h3>
					<div class="price">
						<div class="price_div fl">
							<p class="num_01 f12"><span class="span_l fl">市&nbsp;场&nbsp;价：</span><span class="f12 span_r fl">¥<?php echo $info['price']; ?></span></p>
							<p class="num_02 f12"><span class="span_l fl">商&nbsp;城&nbsp;价：</span><span class="span_r fl">¥<?php echo $sku2['price']; ?></span></p>
							<div class="num_03 f12">
								<span class="span_l fl"> 商品评分：</span>
								<div class="star fl icon_0<?php echo getEqual($info['id']); ?>"></div>
								<a href="javascript:;" class="pl_num fl">共有<?php echo $comment['count']; ?>条评论</a>
							</div>
						</div>
						<div class="fr code f12">
							<div class="pic" id="code"></div>
							<script type="text/javascript" src="__COMMON__/jquery.qrcode.min.js"></script>
							<p>手机端扫购有惊喜</p>
                             <SCRIPT>$("#code").qrcode({ 
    render: "table", //table方式 
    width: 88, //宽度 
    height:88, //高度 
    text: "<?php echo root_url(); ?><?php echo url('wap/goods/detail?id='.$info["id"]); ?>" //任意内容 
}); </SCRIPT>
						</div>
					</div>
					<div class="ps f12" style="width:620px;padding:10px 0px;">
						<ul id="list1" >
	<li id="summary-stock">
		<div class="dt">配&nbsp;送&nbsp;至：</div>
		<div class="dd">
			<div id="arealist">
				<div class="text">湖北省 武汉市 武昌区<div></div><b></b></div>  
				<div class="content"><div data-widget="tabs" class="m ul-list" id="ul-list"><div class="mt">  
				<ul class="tab">        
				<li data-index="0" data-widget="tab-item" class="curr"><a href="#none" class="hover"><em>湖北</em><i></i></a></li>       
				<li data-index="1" data-widget="tab-item" style="display: list-item;" class=""><a href="#none" class=""><em>武汉市</em><i></i></a></li>      
				<li data-index="2" data-widget="tab-item" style="display: list-item;" ><a href="#none" class=""><em>请选择</em><i></i></a></li>       
				<li data-index="3" data-widget="tab-item" style="display:none;"><a href="#none" class=""><em>请选择</em><i></i></a></li>    
				</ul>    <div class="stock-line"></div></div>
				
				<div class="mc" data-area="0" data-widget="tab-content" id="stock_province_item" style="display: ;">    <ul class="area-list">   
				<?php if(is_array($arealist) || $arealist instanceof \think\Collection || $arealist instanceof \think\Paginator): $i = 0; $__LIST__ = $arealist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
				<li><a href="#none" data-value="<?php echo $vo['id']; ?>"><?php echo $vo['title']; ?></a>
				</li>
				<?php endforeach; endif; else: echo "" ;endif; ?> 
				</ul></div>
				
				<div class="mc" data-area="1" data-widget="tab-content" id="stock_city_item" style="display: none;"><ul class="area-list">
				<li><a href="#none" data-value="275">衡水市</a></li>
				
				</ul>
				
				</div>
				
				<div class="mc" data-area="2" data-widget="tab-content" id="stock_area_item" style="display:none ;">
				<div class="iloading">正在加载中，请稍候...</div></div>
				
				<div class="mc" data-area="3" data-widget="tab-content" id="stock_town_item" style="display: none;"></div></div>
				
				</div>
				<div onclick='$("#arealist .content, #arealist .close,#ul-list").hide();' class="close"></div>
			</div><!--store-selector end-->
			<div id="store-prompt"><strong></strong></div><!--store-prompt end--->
		</div>
	</li>
</ul>
<script>$(".spec-scroll .spec-backward").click(function(){
				if($(this).hasClass("disable")){
					return false;
				}
         })	
		
var areaTabContainer=$("#ul-list .tab li");
var provinceContainer=$("#stock_province_item");
var cityContainer=$("#stock_city_item");
var areaContainer=$("#stock_area_item");
var townaContainer=$("#stock_town_item");
var currentDom = provinceContainer;

(function(){
	$("#arealist").find(".text").unbind("mouseover").bind("click",function(){
		$('#arealist').addClass('hover');
		$("#arealist .content, #arealist .close,#ul-list").show();
	}).find("dl").remove();
	
	areaTabContainer.eq(0).find("a").click(function(){
		areaTabContainer.removeClass("curr");
		areaTabContainer.eq(0).addClass("curr").show();
		provinceContainer.show();
		cityContainer.hide();
		areaContainer.hide();
		townaContainer.hide();
		areaTabContainer.eq(1).hide();
		areaTabContainer.eq(2).hide();
		areaTabContainer.eq(3).hide();
	});
	areaTabContainer.eq(1).find("a").click(function(){
		areaTabContainer.removeClass("curr");
		areaTabContainer.eq(1).addClass("curr").show();
		provinceContainer.hide();
		cityContainer.show();
		areaContainer.hide();
		townaContainer.hide();
		areaTabContainer.eq(2).hide();
		areaTabContainer.eq(3).hide();
	});
	areaTabContainer.eq(2).find("a").click(function(){
		areaTabContainer.removeClass("curr");
		areaTabContainer.eq(2).addClass("curr").show();
		provinceContainer.hide();
		cityContainer.hide();
		areaContainer.show();
		townaContainer.hide();
		areaTabContainer.eq(3).hide();
	});
	provinceContainer.find("a").click(function() {
		
		
		chooseProvince($(this).attr("data-value"),$(this).text());
	}).end();
	//chooseProvince(currentAreaInfo.currentProvinceId);
})();

var page_load;
function chooseProvince(pid,title){
	provinceContainer.hide();
	
	areaTabContainer.eq(0).removeClass("curr").find("em").html(title);
	areaTabContainer.eq(1).addClass("curr").show().find("em").html("请选择");
	areaTabContainer.eq(2).hide();
	areaTabContainer.eq(3).hide();
	cityContainer.show();
	cityContainer.show().html("<div class='iloading'>正在加载中，请稍候...</div>");
	$.post('<?php echo U("address/change"); ?>',{pid:pid},function(data,textStatus){
						if(data){
						   var html = '<ul class="area-list" >';
                       
								$.each(data, function(i,n){
									  html = html+'<li><a data-value="'+$(this)[0]['id']
									  +'" onclick="chooseCity(this,'+$(this)[0]['id']+')">'+
									  $(this)[0]['title']+'</a></li>';
								
							});
							html +=  '</ul>';
							cityContainer.html(html);
						}else{
							alert('没有子级了!');
						}
		  });
	areaContainer.hide();
	townaContainer.hide();
	

}

function chooseCity(obj,pid){
	provinceContainer.hide();
	cityContainer.hide();
	areaContainer.hide();
	areaTabContainer.eq(1).removeClass("curr").find("em").html($(obj).html());
	areaTabContainer.eq(2).addClass("curr").show().find("em").html("请选择");
	townaContainer.show().html("<div class='iloading'>正在加载中，请稍候...</div>");
	$.post('<?php echo U("address/change"); ?>',{pid:pid},function(data,textStatus){
						if(data){
						   var html = '<ul class="area-list" >';
                       
								$.each(data, function(i,n){
									 html = html+'<li><a data-value="'+$(this)[0]['id']
									  +'" onclick="chooseArea(this,'+$(this)[0]['id']+')">'+
									  $(this)[0]['title']+'</a></li>';
								
							});
							html +=  '</ul>';

							townaContainer.html(html);
						}else{
							alert('没有子级了!');
						}
		  });
	currentDom = townaContainer;
	
	
}
function chooseArea(obj,pid){
	
	areaTabContainer.eq(2).removeClass("curr").find("em").html($(obj).html());
	$(".text").html(areaTabContainer.eq(0).text()+" &nbsp;"+areaTabContainer.eq(1).text()+" &nbsp;" +areaTabContainer.eq(2).text());
	$("#arealist .content, #arealist .close").hide();
	
	
}
				</script>	

					</div>
					 <?php if(!(empty($attrlist) || (($attrlist instanceof \think\Collection || $attrlist instanceof \think\Paginator ) && $attrlist->isEmpty()))): if(is_array($attrlist) || $attrlist instanceof \think\Collection || $attrlist instanceof \think\Paginator): $i = 0; $__LIST__ = $attrlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
					<div class="caizhi f12">
						<label class="fl"><?php echo $vo['title']; ?>：</label>
						<ul class="sel_ul">
							<?php if(is_array($vo['sid']) || $vo['sid'] instanceof \think\Collection || $vo['sid'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['sid'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
							  <li class="<?php if($i == 1): ?>current<?php endif; ?>" attr_id="<?php echo $vo1['id']; ?>">
								<span class="txt fl"><?php echo $vo1['title']; ?></span>
								<span class="icon"></span>
							  </li>
							<?php endforeach; endif; else: echo "" ;endif; ?>
						</ul>
					  </div>	
					<?php endforeach; endif; else: echo "" ;endif; endif; ?>
					<div class="num_input">
						<div class="ipt_l fl">
							<input type="text"  class="fl f16" id="num_ipt" onkeyup="value=value.replace(/[^\d]/g,'');javascript:this.value.substring(0,1)=='0'?this.value='0':this.value=this.value" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" maxlength="2"/>
							<div class="fl btn">
								<div class="jia"><span></span></div>
								<div class="jian"><span></span></div>
							</div>
						</div>						
						<a  onclick="addCart()" class="fl jr f18"><span></span>加入购物车</a>
						<a onclick="orderCreate()" class="fl buy f18">立即购买</a>
					</div>
				</div>
				<div class="left_klyk fl">
					<div class="left_klyk_pd">
					    <fieldset>
					        <legend>看了又看</legend>
					    </fieldset>
					    <ul class="left_klyk_list">
					    	<?php if(is_array($see_list) || $see_list instanceof \think\Collection || $see_list instanceof \think\Paginator): $i = 0; $__LIST__ = $see_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
							<li>
					    		<a href="<?php echo url('goods/detail?id='.$vo['id']); ?>"><img src="<?php echo get_cover($vo['cover_id'],'path'); ?>"/></a>
					    		<a href="<?php echo url('goods/detail?id='.$vo['id']); ?>" class="klyk_img_mask">￥<?php echo $vo['price']; ?></a>
					    	</li>
					    	<?php endforeach; endif; else: echo "" ;endif; ?>
					    </ul>
					</div>
				</div>
			</div>
			<script type="text/javascript" src="__JS__/jquery.lazyload.js"></script>
			<div class="details">
				<div class="lft_pan f12 fl">					
					
					<div class="klyk">
						<h3 class="title f14">推荐商品</h3>
						<ul class="list_ul">
						<?php if(is_array($rexiao) || $rexiao instanceof \think\Collection || $rexiao instanceof \think\Paginator): $i = 0;$__LIST__ = is_array($rexiao) ? array_slice($rexiao,0,6, true) : $rexiao->slice(0,6, true); if( count($__LIST__)==0 ) : echo "暂无数据" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
						   <li>
								<a href="<?php echo url('goods/detail?id='.$vo['id']); ?>" class="pic"><img class="lazy" data-original="<?php echo get_cover($vo['cover_id'],'path'); ?>" /></a>
								<a href="<?php echo url('goods/detail?id='.$vo['id']); ?>" class="tit f12"><?php echo $vo['title']; ?></a>
								<p class="price f18">¥<?php echo $vo['price']; ?></p>
							</li>
					     <?php endforeach; endif; else: echo "暂无数据" ;endif; ?>
						</ul>
					</div>
					
					<script type="text/javascript" charset="utf-8">
					  $(function() {
						  $("img.lazy").lazyload({effect: "fadeIn"});
					  });
					</script>
				</div>
				<div class="rgt_pan f14 fr">
					<div class="tit f14">
						<ul>
							<li class="current"><a href="javascript:;">商品详情</a></li>
							<li><a href="javascript:;">商品评价<span>（<?php echo $comment['count']; ?>）</span></a></li>
							<li><a href="javascript:;">销售记录<span>（<?php echo $sales['count']; ?>）</span></a></li>
							<li><a href="javascript:;">售后保障</a></li>
						</ul>
					</div>					
					<div class="spxq_con rgt_pan_con" style="display:block;">
						<br />
						<div class="info_01 f12">
							<ul>
							<?php if(is_array($basic) || $basic instanceof \think\Collection || $basic instanceof \think\Paginator): $i = 0; $__LIST__ = $basic;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
							  <li></li>
							<?php endforeach; endif; else: echo "" ;endif; ?>
								
								
							</ul>
						</div>
						<div class="info_02">
							<?php echo $info['content']; ?>
						</div>												
						
					</div>
					<div class="sppj_con rgt_pan_con" style="display:none;">
							<br /><div class="mt">
                       <h3>商品评价</h3>
                    </div>
						<div class="spms">
							<div class="div_l fl">
								<p class="txt f12">与描述相符</p>
								<p class="num"><?php echo getEqual($info['id']); ?></p>
								<div class="star star_0<?php echo getEqual($info['id']); ?>"></div>
							</div>
							<div class="div_r fl">
								<p class="txt fl">大<br />家<br />都<br />写<br />到</p>
								<span class="kh fl"></span>
								<ul class="list fl">
									 <?php if(is_array($tags) || $tags instanceof \think\Collection || $tags instanceof \think\Paginator): $i = 0; $__LIST__ = $tags;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>  
									<li><a ><?php echo $vo['title']; ?>（<?php echo $vo['num']; ?>）</a></li>
									<?php endforeach; endif; else: echo "" ;endif; ?>
								</ul>
								<div class="sel_div cl fr"><span></span></div>
							</div>
						</div>
						<div class="pj_list">
							<div class="tit_sel f12">
								<ul class="ul_l fl">
									<li>
										<input type="radio" name="all" checked="checked" onclick="comments()"/>
										<label for="">全部</label>
									</li>
									<li>
										<input type="radio" name="is_over"  onclick="comment()"/>
										<label for="">追评（<?php echo $comment["is_over_count"]; ?>）</label>
									</li>
									<li>
										<input type="radio" name="is_picture" onclick="comment()"/>
										<label for="">图片（<?php echo (isset($comment["is_picture_count"]) && ($comment["is_picture_count"] !== '')?$comment["is_picture_count"]:"0"); ?>）</label>
									</li>
								</ul>
								<div class="div_r fr">
									<div class="nr fl">
										<input type="checkbox" name="notempty"  onclick="comment()"/>
										<label for="">有内容 </label>
									</div>
									<div class="xl fl">
										<div class="show">按默认 <span></span></div>
										<div class="xl_list" onclick="comment()">按时间</div>
									</div>
								</div>
							</div>
								  <script type="text/javascript">
		     
           
           
   </script>
							<div class="list_del f12">
								<ul class="list_ul" id="comments">
									
									<?php if(is_array($comment['list']) || $comment['list'] instanceof \think\Collection || $comment['list'] instanceof \think\Paginator): $i = 0; $__LIST__ = $comment['list'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
									<li class="list_li">
										<div class="div_l fl">
											<p class="txt_01"><?php echo (isset($vo['message']) && ($vo['message'] !== '')?$vo['message']:""); ?></p>
											<ul class="pic">
												<?php if(is_array($vo['pictures']) || $vo['pictures'] instanceof \think\Collection || $vo['pictures'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['pictures'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
							                   <li> <img  src="<?php echo get_cover($vo1,'path'); ?>" width="40" height="40"/></li>
						                    <?php endforeach; endif; else: echo "" ;endif; ?>
												
											</ul>
											<p class="time"><?php echo date('Y-m-d H:i',$vo['create_time']); ?></p>
											<p class="jieshi"><?php echo (isset($vo['reply']) && ($vo['reply'] !== '')?$vo['reply']:""); ?></p>
										</div>
										<div class="div_r fr"><?php echo get_username($vo['uid']); ?>（匿名）</div>
									</li>
									<?php endforeach; endif; else: echo "" ;endif; ?>
									 <div class="comment">
									     <?php echo $comment['page']; ?>
								 </div>
									     
									  	
									   
									   
		                         <script type="text/javascript">
		                              var goodsid="<?php echo $info['id']; ?>";
									  //分页
       $(".comment a").click(function(event) {
            event.preventDefault();
            event.stopPropagation(); // 阻止冒泡
			var Regx = /page\=(\d)/g; 
			var url=$(this).attr("href");
		
           	var str= url.match(Regx);	
			var str=str.toString();
			var page=str.substring(5);
			comment(page);
       });	
       function comment(p){    //user函数名 一定要和action中的第三个参数一致上面有
                  var url="<?php echo url('goods/comment'); ?>"; 
									   if($("input[name='is_over']").is(':checked')) {
                                         var is_over=1;
                                       }
									   if($("input[name='is_picture']").is(':checked')) {
                                         var is_picture=1;
                                       }
									   if($("input[name='not_empty']").is(':checked')) {
                                         var not_empty=1;
                                       }
 $.post(url, {page:p,goodsid:goodsid,is_over:is_over,is_picture:is_picture,not_empty:not_empty,type:1}, function(data){  //用get方法发送信息到UserAction中的user方法
                                          $("#comments").html(data);; //user一定要和tpl中的一致
                });
                                     }
           
                                </script>
	    
						 </ul>	
								
							</div>
						</div>
						
					</div>
					<div class="xsjl_con rgt_pan_con" style="display:none;">
						<br />
						<div class="f12 scj">
							<p class="prcie fl">商&nbsp;&nbsp;城&nbsp;&nbsp;价<span><?php echo $info['price']; ?></span>元</p>
							<span class="tip fl">购买的价格不同可能是由于店铺往期促销活动引起的，详情可以咨询卖家</span>
						</div>
						<div class="zx_list f12">
							<div class="title_list">
								<span class="span_01 fl">买家</span>
								<span class="span_02 fl">购买价</span>
								<span class="span_03 fl">优惠活动</span>
								<span class="span_04 fl">购买数量</span>
								<span class="span_05 fl">购买时间</span>
							</div>
							<div class="xx_list" id="sales">
								<?php if(is_array($sales['list']) || $sales['list'] instanceof \think\Collection || $sales['list'] instanceof \think\Paginator): $i = 0; $__LIST__ = $sales['list'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
								<div class="list_div">
									<span class="span_01 fl"><?php echo get_username($vo['uid']); ?></span>
									<span class="span_02 fl">¥<?php echo (isset($vo['price']) && ($vo['price'] !== '')?$vo['price']:""); ?></span>
									<span class="span_03 fl"><?php echo (isset($vo['cuxiao']) && ($vo['cuxiao'] !== '')?$vo['cuxiao']:"无"); ?></span>
									<span class="span_04 fl"><?php echo (isset($vo['num']) && ($vo['num'] !== '')?$vo['num']:""); ?></span>
									<span class="span_05 fl"> <?php echo date('Y-m-d H:i',$vo['create_time']); ?></span>
								</div>
						       <?php endforeach; endif; else: echo "" ;endif; ?>
								 <div class="sales">
									      <?php echo $sales['page']; ?>
								 </div>
	     <script type="text/javascript">
		                              var goodsid="<?php echo $info['id']; ?>";
									  //分页
       $(".sales a").click(function(event) {
            event.preventDefault();
            event.stopPropagation(); // 阻止冒泡
			var Regx = /page\=(\d)/g; 
			var url=$(this).attr("href");
		
           	var str= url.match(Regx);	
			var str=str.toString();
			var page=str.substring(5);
			sales(page);
       });	
       function sales(p){    //user函数名 一定要和action中的第三个参数一致上面有
                  var url="<?php echo url('goods/sales'); ?>"; 
									  
 $.post(url, {page:p,goodsid:goodsid}, function(data){  //用get方法发送信息到UserAction中的user方法
                                          $("#sales").html(data);; //user一定要和tpl中的一致
                });
                                     }
           
                                </script>
								 
							</div>
							
						</div>
					</div>
					<div class="gmzx_con rgt_pan_con" style="display:none;">
						<br />
					<div class="mt">
                       <h3>售后保障</h3>
                    </div>	
<div class="serve-agree-bd">
    <dl style="text-indent:2em;">
                <dt>
            <i class="icon"></i>
            <strong>厂家服务</strong>
        </dt>
        <dd>
                本产品全国联保，享受三包服务，质保期为：全国联保二年<br>
              自收到商品之日起，如您所购买家电商品出现质量问题，请先联系厂家进行检测，凭厂商提供的故障检测证明，在“我的商城-客户服务-返修退换货”页面提交退换申请，将有专业售后人员提供服务。商城承诺您：30天内产品出现质量问题可退货，180天内产品出现质量问题可换货，超过180天按国家三包规定享受服务。
                                                                                            </dd>

                <dt>
            <i class="icon"></i>
            <strong>商城承诺</strong>
        </dt>
        <dd>
                            商城平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！<br>
                                        注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
        </dd>

                <dt>
            <i class="icon"></i><strong>正品行货</strong>
        </dt>
                        <dd>商城商城向您保证所售商品均为正品行货，商城自营商品开具机打发票或电子发票。</dd>
                                <dt><i class="unprofor"></i><strong>全国联保</strong></dt>
        <dd>
            凭质保证书及商城商城发票，可享受全国联保服务（奢侈品、钟表除外；奢侈品、钟表由商城联系保修，享受法定三包售后服务），与您亲临商场选购的商品享受相同的质量保证。商城商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！
            <br><br>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
        </dd>
             
            </dl>
</div>
				
						</div>
					</div>
	
				</div>
			</div>			
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

	
	<!--弹窗  start-->
	<div class="spxq_tc" style="display:none">
		<p class="scu f14">成功添加到购物车</p>
		<p class="price f12">购物车共有<span class="tNum">1</span>种商品 总金额为：<span class="tSum">¥32400.00</span></p>
		<div class="btns f12">
			<a href="<?php echo url('cart/index'); ?>" class="ck fl">查看购物车</a>
			<a href="javascript:;" class="go fl">继续购物</a>
		</div>
		<a href="javascript:;" class="close f16">X</a>
	</div>
	<!--弹窗  end-->
<div class="mask none">
			<div class="alert_success alert_div">
				<div class="alert_header">提示</div>
				<div class="alert_content"><i></i><span class="sucess_msg">操作成功</span></div>
				<div class="alert_btn">确定</div>
				<span class="alert_close"></span>
			</div>
		</div>
		<div class="mask none">
			<div class="alert_error alert_div">
				<div class="alert_header">提示</div>
				<div class="alert_content"><i></i><span class="error_msg">操作失败</span></div>
				<div class="alert_btn">确定</div>
				<span class="alert_close"></span>
			</div>
		</div>
	<script type="text/javascript">
	   var goodsid="<?php echo $info['id']; ?>";
		$(function(){
			//展开更多信息
			$('.spxq_main .spxq_main_in .top_div .lft_pic .b_div .compare i').click(function(){
				if($(this).hasClass('sel')){
					$(this).removeClass('sel');					
				}else{
					$(this).addClass('sel');		
				}
			});
			//规格
			$('.spxq_main .spxq_main_in .top_div .pro_info .guige .sel_ul li').click(function(){
				$(this).addClass('current').siblings().removeClass('current');
				
			});
			//材质
			$('.spxq_main .spxq_main_in .top_div .pro_info .caizhi .sel_ul li').click(function(){
				$(this).addClass('current').siblings().removeClass('current');
				var result = new Array(); 
			 //var ids=$(".caizhi .current");
                $(".caizhi .current").each(function () {
                        result.push($(this).attr("attr_id"));

                });

               if(result){
			       var id=result.sort(sortNum);
				}
				var path=result.join(",");
				var show_url="<?php echo url('showprice'); ?>";
				  $.getJSON(show_url,{path:path,goodsid:goodsid},function(data){
                     $(".num_02 .span_r").text("¥"+data.price);
                 });

				
			});
			//加减
			$('.spxq_main .spxq_main_in .top_div .pro_info .num_input .ipt_l #num_ipt').val(1);
			$('.spxq_main .spxq_main_in .top_div .pro_info .num_input .ipt_l .btn .jian').click(function(){	
				var cur_num = $(this).parent('.btn').siblings('#num_ipt').val();
				if(cur_num <= 0){
					$(this).parent('.btn').siblings('#num_ipt').val(0);
				}else{
					cur_num--;
					$(this).parent('.btn').siblings('#num_ipt').val(cur_num);
				}	
			})
			$('.spxq_main .spxq_main_in .top_div .pro_info .num_input .ipt_l .btn .jia').click(function(){
				var cur_num = $(this).parent('.btn').siblings('#num_ipt').val();
				if(cur_num >= 99){
					$(this).parent('.btn').siblings('#num_ipt').val(99);
				}else{
					cur_num++;
					$(this).parent('.btn').siblings('#num_ipt').val(cur_num);
				}
			})
			//商品分类 
			$('.spxq_main .spxq_main_in .details .lft_pan .spfl .tab_ul li').click(function(e) {
				$(this).addClass('current').siblings().removeClass('current');
				var this_index = $(this).index();
				$(this).closest('.tab_ul').siblings('.tab_div').find('.list_div').eq(this_index).addClass('current');
				$(this).closest('.tab_ul').siblings('.tab_div').find('.list_div').eq(this_index).siblings('.list_div').removeClass('current');
			});
			//商品排行 
			$('.spxq_main .spxq_main_in .details .lft_pan .spph .tab_ul li').click(function(e) {
				$(this).addClass('current').siblings().removeClass('current');
				var this_index = $(this).index();
				$(this).closest('.tab_ul').siblings('.tab_div').find('.list_div').eq(this_index).addClass('current');
				$(this).closest('.tab_ul').siblings('.tab_div').find('.list_div').eq(this_index).siblings('.list_div').removeClass('current');
			});
			
			//右侧tab1
			$('.spxq_main .spxq_main_in .details .rgt_pan .rgt_pan_con').eq(0).show()
			$('.spxq_main .spxq_main_in .details .rgt_pan .tit ul li').click(function(e) {
				$(this).addClass('current').siblings().removeClass('current');
				var index = $(this).index();
				$('.spxq_main .spxq_main_in .details .rgt_pan .rgt_pan_con').eq(index).show().siblings('.spxq_main .spxq_main_in .details .rgt_pan .rgt_pan_con').hide();
			});
			//sel_div
			$('.spxq_main .spxq_main_in .details .rgt_pan .rgt_pan_con.sppj_con .spms .div_r .sel_div').click(function(){
				if($(this).hasClass('cl')){
					$(this).removeClass('cl');					
				}else{
					$(this).addClass('cl');		
				}
			});
			//tit_sel .ul_l li
			$('.spxq_main .spxq_main_in .details .rgt_pan .rgt_pan_con.sppj_con .pj_list .tit_sel .ul_l li input').click(function(){				
				if($(this).attr('checked') == 'checked'){
					$(this).attr('checked','checked');
					$(this).parent('li').siblings('li').children('input').removeAttr("checked");
				}else{
					
					$(this).removeAttr("checked");
					$(this).parent('li').siblings('li').children('input').removeAttr("checked");
				}
			});
			//
			$('.spxq_main .spxq_main_in .details .rgt_pan .rgt_pan_con.sppj_con .pj_list .tit_sel .div_r .xl').click(function(){
				if($(this).hasClass('sel')){
					$(this).removeClass('sel');					
				}else{
					$(this).addClass('sel');		
				}
			});
			//page
			$('.spxq_main .spxq_main_in .details .rgt_pan .rgt_pan_con.sppj_con .pj_list .list_del .page_div .con .page_ul li').click(function(){
				$(this).addClass('current').siblings().removeClass('current');
			});
			
			//page2
			$('.spxq_main .spxq_main_in .details .rgt_pan .rgt_pan_con.xsjl_con .zx_list .xx_list .page_div_03 ul li').click(function(e) {
				$(this).addClass('current').siblings().removeClass('current');			
			});
			
			//商品分类 
			$('.spxq_main .spxq_main_in .details .rgt_pan .rgt_pan_con.gmzx_con .zx_del .zx_tab ul li').click(function(e) {
				$(this).addClass('current').siblings().removeClass('current');
				var this_index = $(this).index();
				$(this).closest('.zx_tab').siblings('.zx_list').eq(this_index).addClass('current');
				$(this).closest('.zx_tab').siblings('.zx_list').eq(this_index).siblings('.zx_list').removeClass('current');
			    var n=this_index;
				consult(1,n);
			});
			
			//弹窗 
			$('.spxq_tc .close').click(function(e) {
				$('.spxq_tc').hide();
			});
			//弹窗 
			$('.spxq_tc .go').click(function(e) {
				$('.spxq_tc').hide();
			});
			
		})
	//左右滚动
			//向前按钮点击
			$(".spec-scroll .spec-forward").click(function(){
				if($(this).hasClass("disable")){
					return false;
				}
				var reg = /\d+/;
				var marleft = parseInt($(".spec-scroll .items ul").css("margin-left").match(reg)[0]);
				var nums = $(".spec-scroll .items ul li").length;
				if(nums <= 4){
					$(".spec-scroll .spec-backward").addClass("disable");
					$(this).addClass("disable");
					return false;
				}
				var totallen = nums * (72);
				var setLeft = 0;
				
				if((marleft - 288) <= 0){
					setLeft = 0;
					$(this).addClass("disable");
				}else{
					setLeft = -(marleft - 288);
				}
				$(".spec-scroll .spec-backward").removeClass("disable");
				$(".spec-scroll .items ul").animate({
					"margin-left":setLeft + "px"
				});
			});
			//向后按钮点击
			$(".spec-scroll .spec-backward").click(function(){
				if($(this).hasClass("disable")){
					return false;
				}
				var reg = /\d+/;
				var marleft = parseInt($(".spec-scroll .items ul").css("margin-left").match(reg)[0]);
				var nums = $(".spec-scroll .items ul li").length;
				
				if(nums <= 4){
					$(".spec-scroll .spec-forward").addClass("disable");
					$(this).addClass("disable");
					return false;
				}
				
				var totallen = nums * (72);
				var setLeft = 0;
				
				if((marleft + 576) >= totallen){
					setLeft = -(totallen - 288);
					$(this).addClass("disable");
				}else{
					setLeft = -marleft - 288;
				}
				$(".spec-scroll .spec-forward").removeClass("disable");
				$(".spec-scroll .items ul").animate({
					"margin-left":setLeft + "px"
				},1000);
			});

		
         function consult(p,type){    //user函数名 一定要和action中的第三个参数一致上面有
                  
                    $.get('<?php echo url("goods/consult"); ?>', {p:p,goodsid:goodsid,type:type}, function(data){  //用get方法发送信息到UserAction中的user方法
                     $("#consult").replaceWith("<div  class='xx_list' id='consult'>"+data+"</div>"); //user一定要和tpl中的一致
                });
         }
		 function sortNum(a,b) {
               return a - b; //升序，如降序，把“a - b”该成“b - a”
         }
        function addCart(){
		     var result = new Array(); 
			 //var ids=$(".caizhi .current");
                $(".caizhi .current").each(function () {
                        result.push($(this).attr("attr_id"));

                });

               if(result){
			       var id=result.sort(sortNum);
				}
				var id=result.join(",");
				var num=$("#num_ipt").val();
				
		       $.post(post_url,{path:id,goodsid:goodsid,num:num},function(data){
                     
					 if(data.status){  
					      $(".none_tips").hide();
					      $(".checkout_box").show();
					      if(data.isin>0){
					          $('.span_r').text("¥"+data.price);
						      $('.item_num_'+data.sku_id).text(data.num); 
					     }
                         else{					
						    $('#minicart_list ul').append(data.tpl);
					    } 
						$('.spxq_tc').show(); 
						$('.tNum').text(data.count);
						$('.cart_num').text(data.sum);
						$('.tSum').text("¥"+data.total);
					 }
					 else{
					    openerror(data);
					 
					 }
                });
		   
		}   
		function orderCreate(){
		     var result = new Array(); 
			 //var ids=$(".caizhi .current");
                $(".caizhi .current").each(function () {
                        result.push($(this).attr("attr_id"));

                });

               if(result){
			       var id=result.sort(sortNum);
				}
				var id=result.join(",");
				var num=$("#num_ipt").val();
				var order_url="<?php echo url("order/create"); ?>";
		       $.post(order_url,{path:id,goodsid:goodsid,num:num},function(data){
                     
					 if(data.code){  
					     if (data.url) {
                            location.href=data.url;
                         }
					 }
					 else{
					    openerror(data);
					 }
                });
		}
		function addClect(){
		     
				var order_url="<?php echo url('collect/add'); ?>";
		        $.post(order_url,{id:goodsid},function(data){
                     
					 if(data.code){  
					     opensuccess(data);
					 }
					 else{
					     openerror(data);
					 }
                });
		} 
	$(".mask .alert_div .alert_close").click(function(){
			    $(this).parents(".mask").addClass("none");
			});
			$(".mask .alert_div .alert_btn").click(function(){
			    $(this).parents(".mask").addClass("none");
			});
			$(".tjpj").click(function(){
				  opensuccess();
			})
			function opensuccess(data){
			    $(".sucess_msg").text(data.msg);
				$(".alert_success").parents(".mask").removeClass("none"); 
			   setTimeout(function(){
                        if (data.url) {
                            location.href=data.url;
                        }
               },1000);
				
			}
			function openerror(data){
			    $(".error_msg").text(data.msg);
				$(".alert_error").parents(".mask").removeClass("none");
				setTimeout(function(){
                        if (data.url) {
                          location.href=data.url;
                        }
               },1000);
			}	
   </script>
   </div>
</body>
</html>
