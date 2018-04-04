<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:54:"E:\project\shop03/application/admin\view\ad\index.html";i:1522308934;s:59:"E:\project\shop03/application/admin\view\public\header.html";i:1522308934;s:59:"E:\project\shop03/application/admin\view\public\dialog.html";i:1522308934;s:58:"E:\project\shop03/application/admin\view\public\color.html";i:1522308934;s:59:"E:\project\shop03/application/admin\view\public\footer.html";i:1522308934;}*/ ?>
 <!-- 头部 -->
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?>|琅琊阁后台管理</title>
    <link rel="stylesheet" href="__COMMON__/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="__CSS__/style.css" />
	<script type="text/javascript" src="__COMMON__/jquery.min.js" ></script>
   
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
	

	</head>
	<body>
		<div class="top header">
			<div class="logo"></div>
			<ul class="main_links">
		           	<li><a href="<?php echo url('index/index'); ?>" >首页 </a></li>
					<?php if(isset($group)): ?>    
                        <!-- 欢迎语 -->
						   <?php if(is_array($group) || $group instanceof \think\Collection || $group instanceof \think\Paginator): $i = 0; $__LIST__ = $group;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                            <li><a href="<?php echo get_group_url($vo['id']); ?>"><?php echo (isset($vo['title']) && ($vo['title'] !== '')?$vo['title']:""); ?> </a>
							
							</li>
					<?php endforeach; endif; else: echo "" ;endif; ?>  
							
			  <li><a href="<?php echo site_url(); ?>" target="_blank">前台</a></li>
                <?php endif; ?>
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
		
	</script>	

		</div>
	    <div class="main">
			<div class="nav_tree">
				<div class="innerUl">

		         </div>
	    </div>
		
	  <script type="text/javascript" src="__JS__/proTree.js" ></script>
	     <script type="text/javascript">
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
		   $(".innerUl").ProTree({
				arr:<?php echo $sidebar; ?>,
				simIcon: "fa fa-file-o",//单个标题字体图标 不传默认glyphicon-file
				mouIconOpen: "fa fa-folder-open-o",//含多个标题的打开字体图标  不传默认glyphicon-folder-open
				mouIconClose:"fa fa-folder-o",//含多个标题的关闭的字体图标  不传默认glyphicon-folder-close
				callback: function(id,name,url) {
					window.location.href =url;
				}
		   });
		    var upload_url = "<?php echo url('uploads/picture'); ?>";
		    var oss_path = "__COMMON__/plupload";
			var site_path = "<?php echo site_url(''); ?>";
		    var upload_type="<?php echo C('upload_type'); ?>";
			var get_url= "<?php echo url('Attachment/get'); ?>";
			if(upload_type==1){
				 var domain_url = "<?php echo C('SERVERURL'); ?>";
			}else{    
			  var domain_url = "<?php echo url('Attachment/update'); ?>";
			}
	        var insert_url = "<?php echo url('Attachment/insert'); ?>";
       </script>			
 	   <script type="text/javascript" src="__COMMON__/plupload/lib/plupload-2.1.2/js/plupload.full.min.js"></script>    
                                   <script type="text/javascript" src="__COMMON__/plupload/upload.js"></script> 
								   <script type="text/javascript" src="__COMMON__/laydate/laydate.js"></script> 
<!-- 头部 --> 
	
			<div class="content">
				 <div class="tips_msg none"><span class="tips">保存成功</span><span class="close_tips"></span></div>
				 <div class="edit_title"><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?></div>
	             <div class="search">
					<form class="search-form"  action="<?php echo url(); ?>" method="post">
					  <div class="group">
					       名称：<input type="text" name="title" class="search_ipt" value="<?php echo input('title'); ?>"/>
					  </div>
						  <div class="group">
					     链接：<input type="text" name="url"  class="search_ipt" value="<?php echo input('url'); ?>"/>
					  </div>
					     <div class="group">
					     创建时间：<input type="text"  name="start_time" id="start_time" class="laydate-icon input_box search_ipt" value="<?php echo input('start_time'); ?>"/> 
					  </div>
						<script>
							laydate({
							elem: '#start_time',
							format: 'YYYY-MM-DD hh:mm:ss', 
							min: laydate.now(), //设定最小日期为当前日期//目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
							event: 'focus' //响应事件。如果没有传入event，则按照默认的click
							});
						</script>
							 <div class="group">
								 结束时间：<input type="text"  name="end_time" id="end_time" class="laydate-icon input_box search_ipt end" value="<?php echo input('end_time'); ?>"/><input type="button" class="search_btn"value="搜索" onclick="$('.search-form').submit()">
							  </div>
						<script>
							laydate({
							  elem: '#end_time',
							  format: 'YYYY-MM-DD hh:mm:ss', 
							  min: laydate.now(), //设定最小日期为当前日期//目标元素。由于laydate.js封装了一个轻量级的选择器引擎，因此elem还允许你传入class、tag但必须按照这种方式 '#id .class'
							  event: 'focus' //响应事件。如果没有传入event，则按照默认的click
							});
						</script>
					
					</form>
				 </div>

				  <div class="table">
					 <div class="edit">
						<div class="edit_left ">
							<a href="<?php echo U('add'); ?>" class="add cur">新增</a>
							<a data-url="<?php echo U('del'); ?>" class="delete cur">删除</a>
						</div>
						<div class="search_right">
							<input type="text" value="<?php echo input('title'); ?>"/>
							<div class="search_btn"></div>
						</div>
					</div>
					<table class="list_table">
					    <tr>
						    <th> <input class="checkbox check-all" type="checkbox"></th>	
						    <th class="">图片</th>
						    <th>id</th><th class="">名称</th>
							<th class="">链接</th>
							<th class="">排序</th>
							<th class="">位置</th>
							<th class="">状态</th>
							<th class="">操作</th>
				          </tr>
				          <?php if(is_array($res['list']) || $res['list'] instanceof \think\Collection || $res['list'] instanceof \think\Paginator): $i = 0; $__LIST__ = $res['list'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
                                 <tr class="even gradeC">
                                         <td> <input class="ids row-selected" type="checkbox" name="id[]" value="<?php echo $vo['id']; ?>"></td>
									     <td><?php echo $vo['id']; ?> </td>	
										 <td>  <img src="<?php echo get_cover_path($vo['cover_id']); ?>" class="table-img" alt=""> </td>
										 <td><a href="<?php echo U('auth/edit?id='.$vo['id']); ?>"><?php echo (isset($vo['title']) && ($vo['title'] !== '')?$vo['title']:''); ?></a> </td>
										 <td><?php echo (isset($vo['url']) && ($vo['url'] !== '')?$vo['url']:''); ?></td>
										 <td><?php echo (isset($vo['sort']) && ($vo['sort'] !== '')?$vo['sort']:'0'); ?></td>
										 <td><?php echo (isset($vo['place']) && ($vo['place'] !== '')?$vo['place']:'0'); ?></td>
										 <td><?php if($vo['status'] == '1'): ?>
												正常</a>
											<?php else: ?>
											已禁用
											<?php endif; ?></td>
			                            <td class="list_opr">
		
                                        <span class="opr_box">
									       <a href="<?php echo url('edit?id='.$vo['id']); ?>" class="edit_btn cur">编辑</a>
									       <a data-url="<?php echo url('del?id='.$vo['id']); ?>" class="del_btn cur">删除</a>
                                        </span>          
                                       </td>
                               </tr>
											
					      <?php endforeach; endif; else: echo "" ;endif; ?>
					</table>
					<!--分页-->
					<ul class="pagination">
						  <?php echo $res['page']; ?>
					</ul>
				</div>
			
			</div>
		</div>
	   <script src="__JS__/style.js"></script> 
	<!-- 尾部 -->
	
<script src="__JS__/common.js"></script>  

<script>
var html='<footer style=""><p> Powered by <a href="http://www.yershop.com/" target="_blank">yershop V3.0</a> </p></footer>';
$(".nav_tree").css({"height":"100%"});
$(".content").append(html);
var sid="<?php echo input('module_id')?input('module_id'):$now['id']; ?>";var obj=$("span#"+sid);$(obj).parents("li").eq(0).addClass("active");
</script>
</body>
</html>
    <!-- 尾部 --> 
