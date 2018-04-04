<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:57:"E:\project\shop03/application/admin\view\index\index.html";i:1522828203;s:59:"E:\project\shop03/application/admin\view\public\dialog.html";i:1522308934;s:58:"E:\project\shop03/application/admin\view\public\color.html";i:1522308934;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?>|琅琊阁后台管理</title>
		<link rel="stylesheet" href="__CSS__/style.css" />
	    <link rel="stylesheet" href="__COMMON__/font-awesome/css/font-awesome.min.css">
		<script type="text/javascript" src="__JS__/jquery.min.js" ></script>
	</head>

	<!-- 自定义弹窗-->
    <script>
	var dialog_style ="<?php echo C('DIALOG_STYLE'); ?>";
	var index_url="<?php echo url('index/index'); ?>";
	$(".logo").click(function(){
	   location.href=index_url;
	});
</script>
  <!--引入改进型easydialog弹窗 -->	
<?php if(C('DIALOG_STYLE') == '1'): ?>	
	<link rel="stylesheet" href="__CSS__/global.css">
	<link rel="stylesheet" href="__CSS__/animate.css">
	<link rel="stylesheet" href="__CSS__/dialog.css">
	<style>
		.div-testDialog{
			width: 500px;
			height: auto;
			margin: 50px auto;
		}

		.div-testDialog button{
			margin:  10px;
		}
		@media screen and ( max-width: 460px){
			.div-testDialog{
				width: 90%;
			}
		}
   </style>
<script src="__JS__/dialog.js"></script>	
<?php endif; ?>
	<!-- 换肤功能 -->
	
<style>
.top{
	width: 100%;
	
	color: #ffffff;
    background-color: <?php echo C('COLOR'); ?>;
    z-index:99;overflow:hidden;
    
}

.nav_tree_list .menue .c_menue_item a{
	text-decoration: none;
	color:#000000;
}
.main .fa{color: <?php echo C('COLOR'); ?>;}
.nav_tree_list .menue .c_menue_item.checked{
	color: <?php echo C('btn'); ?>;	background-color:#FFF;
}
.nav_tree_list .menue .c_menue_item:hover a{
	color: <?php echo C('COLOR'); ?>;
}
.list_table tr:hover{ background-color:#F2F2F2;}
.nav_tree_list .menue .c_menue_item.checked a{
  color: <?php echo C('COLOR'); ?>;
 }
 .nav_tree_list .menue .c_menue_item.checked a:hover{
  color:<?php echo C('COLOR'); ?>;
 }
.nav_tree_list .menue .c_menue_item:hover{
	color:<?php echo C('COLOR'); ?>;
	background-color:#FFF;
	
}
.down{background-color:#f2f2f2;}
.p_menue{
		background-color:#F2F2F2;;
		color:#000;
}
.alert-success {
    background-color: #dff0d8;
    border-color: #d6e9c6;
    color: #3c763d;
}
.alert {
    padding: 10px 0;
    border: 1px solid transparent;
    border-radius: 4px;margin:20px 0;
}
.edit_tab{
	border-bottom: 1px solid #dedede; margin-left: 20px;	
}
.edit_tab .tab_option.on{
	 
       background-color: ;
    color: #000;height: 39px;
    border-left: 1px solid #ddd;
    border-right: 1px solid #ddd;
    border-top: 1px solid #348fd5;
    border-bottom: 1px solid #fff;
    z-index: 2;
}

.page .active{
	border:1px solid <?php echo C('COLOR'); ?>;
	background-color:<?php echo C('COLOR'); ?>;
	color: #ffffff;
}
.edit_btn{

	color:#4aa6fc;
}
 .edit_btn:hover{

	color:#2987e6;
}
.del_btn{
	
	color:#dd514c;
}
.list_table tr th {
    color: #000;
    background-color:#F2F2F2;height:30px;
}
.article_table .article_table_header{
      color: #000;
    background-color:#fdfdfd;height:36px;
}

.edit_title{
	    color: #337ab7;
   
}
.edit_title .title{
	
   display:inline-block;
   font-size: 20px;
    
}

.upload_btn_group .upload_btn{
	background-color: <?php echo C('COLOR'); ?>;
}
.edit_left .add{
	border:1px solid #3f9e43;	
    color: #FFF;
	background-color:#3f9e43;	
}
.edit_left .blue{
	border:1px solid #2987e6;	
    color: #FFF;
	background-color:#2987e6;	
}

.edit_left .delete{
		border:1px solid <?php echo C('BTN'); ?>;	
		color: #FFF;
		background-color:<?php echo C('BTN'); ?>;	
}

.confirm_btn{
	    color: #fff;
    background-color: #29B87E;
    border-color: #3f9e43;
}
.confirm_btn:hover{
	background-color:#10926B;
}
.content .fa{color:<?php echo C('COLOR'); ?>}
.cancel_btn{
border:1px solid <?php echo C('BTN'); ?>;
	    color: #fff;
    background-color: <?php echo C('BTN'); ?>;
    border-color: #dedede;
}
.cancel_btn:hover{
    background-color: <?php echo C('BTN'); ?>;
}
.error{
	background-color:#dd514c;
}
.search{
    padding:5px 0;
    border-top: 0px solid #F2f2f2;
	
	
}
.search input,.search select{
    border: 1px solid #e6dede;		
	height: 30px;background-color: #fff;
    background-image: none;
}
.search .end{
   margin-right:0px;
 }
 .search .search_btn{
	color:#111;
	width:55px;   
	
	display:inline-block;
	cursor:pointer;
	
	background-color: #fff;
}
input, textarea {
    outline: none;
}
.innerUl .menuUl li {
     display: block;
    line-height: 26px;
    font-size: 14px;
    text-decoration: none;
    color: #444;
}.innerUl .menuUl li.active {
    background: #f2f2f2;
    color: #1278f6;
}
.innerUl .menuUl li i{
  display: 
}
.innerUl .menuUl li span:hover{
  color:#04c
}
.innerUls ul {
    margin-left: 20px;background: #Fff;
    /* border: 1px solid blue; */
}
.innerUls .menuUl li {
     display: block;
    line-height: 26px;
    font-size: 14px;
    text-decoration: none;
    
}

.innerUls .menuUl li i{
  display: 
}
.innerUls .menuUl li span{
   line-height: 34px;
}
.innerUls .menuUl li span:hover{
  color:#04c
}
.nav_tree_two{ background: #fff;}
.innerUls .menuUl li.active {
    background: #fff;
    color: #444;
}
.innerUls .menuUl li.active span:nth-child(1){
    color: #04c;
}
.edit_top .add {
    border: 1px solid #3f9e43;
    color: #FFF;
    background-color: #3f9e43;
}
.edit_top a {
    display: inline-block;
    margin-right: 5px;
    padding: 4px 10px;
    font-size: 12px;
    line-height: 18px;
    color: #edffd1;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    border: 0 none;
}
.edit_top .delete {
    border: 1px solid #db2a2f;
    color: #FFF;
    background-color: #db2a2f;
}
.innerUls .menuUl li span:hover {
    text-decoration: none;
    cursor: pointer;
}
</style>
	

	<body>
		<div class="top"  style="margin:0 auto;">
			<div class="logo"></div>
			<ul class="main_links">
			<li><a href="<?php echo url('index/index'); ?>">首页 </a></li>  <?php if(isset($group)): ?>    
                        <!-- 欢迎语 -->
						   <?php if(is_array($group) || $group instanceof \think\Collection || $group instanceof \think\Paginator): $i = 0; $__LIST__ = $group;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                            <li><a href="<?php echo get_group_url($vo['id']); ?>"><?php echo (isset($vo['title']) && ($vo['title'] !== '')?$vo['title']:""); ?> </a></li>
							<?php endforeach; endif; else: echo "" ;endif; endif; ?>
			<li><a href="<?php echo site_url(); ?>" target="_blank">前台 </a></li>

			</ul>	
		<div class="user_info">
			
				<a href="<?php echo url('login/logout'); ?>" id="user_icon"><i class="fa fa-user"></i></a>
				
			</div>
			<div class="down_menu" id="down_menu">
				<ul>
				<li><a href="<?php echo url('ucenter/edit',array('id'=>is_login())); ?>">修改资料</a></li>
				<li><a href="<?php echo url('login/logout'); ?>">退出登录</a></li>
				</ul>
			</div>
		<script>	
		var oDiv3 = document.getElementById('user_icon');
		var oDiv4 = document.getElementById('down_menu');
		var timer2 = null;
		oDiv3.onmouseover = oDiv4.onmouseover = function (){	
			oDiv4.style.display = 'block';
			clearTimeout(timer2);
		}
		oDiv3.onmouseout = oDiv4.onmouseout = function (){
			//寮€瀹氭椂鍣�
			timer2 = setTimeout(function () { 
			oDiv4.style.display = 'none'; },300);
		}
	</script>	

		</div>
	<div class="blocks" >
			
	<div class="warp">
			<div class="bg"></div>
				<div class="show_info">
					<div class="calc_goods_cate show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text category">
							<span class="text_title">总分类数</span>
							<span class="num"><?php echo (isset($info['category']) && ($info['category'] !== '')?$info['category']:"0"); ?></span>
						</div>
					</div>
					
					  <div class="imgs_tnums show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text pics">
							<span class="text_title">总图片数</span>
							<span class="num"><?php echo (isset($info['category']) && ($info['category'] !== '')?$info['category']:"0"); ?></span>
						</div>
					</div>
					
					<div class="ads_nums show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text ad">
							<span class="text_title">广告个数</span>
							<span class="num"><?php echo (isset($info['ad']) && ($info['ad'] !== '')?$info['ad']:"0"); ?></span>
						</div>
					</div>
					<div class="goods_quantity show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text log">
							<span class="text_title">日志个数</span>
							<span class="num"><?php echo (isset($info['log']) && ($info['log'] !== '')?$info['log']:"0"); ?></span>
						</div>
					</div>
					<div class="user_amount show_info_div left">
						<div class="left_img">
							<div></div>
						</div>
						<div class="right_text user">
							<span class="text_title">用户量</span>
							<span class="num"><?php echo (isset($info['user']) && ($info['user'] !== '')?$info['user']:"0"); ?></span>
						</div>
					</div>
				</div>
			  
				 
			</div>
		</div>
		
		
			<div class="container"> 

	<div class="item">

		
			<div class="tit computer"><img class="icon-computer" src="__IMG__/com.png">系统信息</div>
			
							<table>
					<tbody>

						<th>服务器操作系统</th>
						<td><?php echo PHP_OS; ?></td>
					</tr>
					
					<tr>
						<th>服务器解译引擎</th>
						<td><?php echo $_SERVER['SERVER_SOFTWARE']; ?></td>
					</tr>
					<tr>
						<th>应用部署目录 </th>
												<td><?php echo getcwd(); ?></td>
					</tr>
					<tr>
						<th>上传限制</th>
						<td><?php echo ini_get('upload_max_filesize'); ?></td>
					</tr>
					
				</tbody></table>
	
</div>

	</div>
<div class="footer"><p> Powered by <a href="http://www.yershop.com/" style="color:blue" target="_blank">yershop</a>  @武汉贝云网络科技有限公司 </p></div>

