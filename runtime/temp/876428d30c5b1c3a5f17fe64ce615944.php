<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:60:"E:\project\shop03/application/admin\view\category\index.html";i:1522308934;s:59:"E:\project\shop03/application/admin\view\public\header.html";i:1522829166;s:59:"E:\project\shop03/application/admin\view\public\dialog.html";i:1522308934;s:58:"E:\project\shop03/application/admin\view\public\color.html";i:1522308934;s:59:"E:\project\shop03/application/admin\view\public\footer.html";i:1522308934;}*/ ?>
 <!-- 头部 -->
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>琅琊阁后台管理</title>
  <link rel="stylesheet" href="__COMMON__/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="__CSS__/style.css"/>
  <script type="text/javascript" src="__COMMON__/jquery.min.js"></script>

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
    <li><a href="<?php echo url('index/index'); ?>">首页 </a></li>
    <?php if(isset($group)): ?>
    <!-- 欢迎语 -->
    <?php if(is_array($group) || $group instanceof \think\Collection || $group instanceof \think\Paginator): $i = 0; $__LIST__ = $group;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

    <li>
      <a href="<?php echo get_group_url($vo['id']); ?>"><?php echo (isset($vo['title']) && ($vo['title'] !== '')?$vo['title']:""); ?> </a>
    </li>

    <?php endforeach; endif; else: echo "" ;endif; ?>

    <!--<li><a href="<?php echo site_url(); ?>" target="_blank">前台</a></li>-->
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

  <script type="text/javascript" src="__JS__/proTree.js"></script>
  <script type="text/javascript">
    var oDiv3 = document.getElementById('user_icon');
    var oDiv4 = document.getElementById('down_menu');
    var timer2 = null;
    oDiv3.onmouseover = oDiv4.onmouseover = function(){
      oDiv4.style.display = 'block';
      clearTimeout(timer2);
    }
    oDiv3.onmouseout = oDiv4.onmouseout = function(){
      //寮€瀹氭椂鍣�
      timer2 = setTimeout(function(){
        oDiv4.style.display = 'none';
      }, 300);
    }
    $(".innerUl").ProTree({
      arr         : <?php echo $sidebar; ?>,
      simIcon     : "fa fa-file-o",//单个标题字体图标 不传默认glyphicon-file
      mouIconOpen : "fa fa-folder-open-o",//含多个标题的打开字体图标  不传默认glyphicon-folder-open
      mouIconClose: "fa fa-folder-o",//含多个标题的关闭的字体图标  不传默认glyphicon-folder-close
      callback    : function(id, name, url){
        window.location.href = url;
      }
    });
    var upload_url = "<?php echo url('uploads/picture'); ?>";
    var oss_path = "__COMMON__/plupload";
    var site_path = "<?php echo site_url(''); ?>";
    var upload_type = "<?php echo C('upload_type'); ?>";
    var get_url = "<?php echo url('Attachment/get'); ?>";
    if(upload_type == 1){
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
				<div class="edit_title"><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?></div>
				<div class="articlelist">
					<div class="edit">
						<div class="edit_left ">
								<a href="<?php echo U('add'); ?>" class="add cur">新增</a>
								<a  data-url="<?php echo U('del'); ?>" class="delete cur">删除</a>
						</div>
						<div class="search_right">
							
						</div>
					</div>
					<div class="article_table">
						<div class="article_table_header article_table_tr">
							<!--加class往后面加，不要加在已有class前面-->
							<div class="article_folder article_table_th" w_percent="18">折叠</div>
								<div class="article_id article_table_th" w_percent="18">id</div>
							<div class="article_name article_table_th" w_percent="50">名称</div>
							<div class="article_sort article_table_th" w_percent="10">排序</div>
							<div class="article_deploy article_table_th" w_percent="10">状态</div>
							<div class="list_opr article_table_th" w_percent="22">操作</div>
						</div>
						 <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
						<div class="first_level_group opened">
							<div class="first_level article_table_tr">
								<div class="article_folder">
										<span class="folder_icon"></span>
								</div>
								<div class="article_id">
									<?php echo $vo['id']; ?>
								</div>
								<div class="article_name">
								<span><?php echo $vo['title']; ?></span>
									 <a href="<?php echo url('add?pid='.$vo['id']); ?>" class="add_article"></a>
								</div>
								<div class="article_sort">
									<?php echo $vo['sort']; ?>
								</div>
								<div class="article_deploy"><?php echo $vo['status']; ?></div>
								<div class="list_opr">
									<span class="opr_box">
										 <a href="<?php echo url('edit?id='.$vo['id']); ?>" class="edit_btn cur">编辑</a>
									 <a data-url="<?php echo url('del?id='.$vo['id']); ?>" class="del_btn cur">删除</a>
									</span>
								</div>
							</div> 
							 <?php if(is_array($vo['child']) || $vo['child'] instanceof \think\Collection || $vo['child'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
							<div class="second_level_group opened">
								<div class="second_level article_table_tr">
									<div class="article_folder">
										<span class="folder_icon"></span>
									</div>
									<div class="article_id">
									<?php echo $vo1['id']; ?>
								   </div>
									<div class="article_name">
									<span><?php echo $vo1['title']; ?></span>
									 	 <a href="<?php echo url('add?pid='.$vo1['id']); ?>" class="add_article"></a>
								   </div>
								   <div class="article_sort">
									<?php echo $vo1['sort']; ?>
								   </div>
								   <div class="article_deploy"><?php echo $vo1['status']; ?></div>
									<div class="list_opr">
										<span class="opr_box">
										 <a href="<?php echo url('edit?id='.$vo1['id']); ?>" class="edit_btn cur">编辑</a>
									      <a data-url="<?php echo url('del?id='.$vo1['id']); ?>" class="del_btn cur">删除</a>
										</span>
									</div>
								</div>
								<?php if(!(empty($vo1['child']) || (($vo1['child'] instanceof \think\Collection || $vo1['child'] instanceof \think\Paginator ) && $vo1['child']->isEmpty()))): if(is_array($vo1['child']) || $vo1['child'] instanceof \think\Collection || $vo1['child'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo1['child'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i;?>
								<div class="third_level article_table_tr">
									<div class="article_folder">
									    <span class="folder_icon"></span>
									</div>
									<div class="article_id">
									 <?php echo $vo2['id']; ?>
								   </div>
									<div class="article_name">
									  <span><?php echo $vo2['title']; ?></span>
									   	 <a href="<?php echo url('add?pid='.$vo2['id']); ?>" class="add_article"></a>
								    </div>
								    <div class="article_sort">
									    <?php echo $vo2['sort']; ?>
								    </div>
								    <div class="article_deploy"><?php echo $vo2['status']; ?></div>
									<div class="list_opr">
										<span class="opr_box">
										 <a href="<?php echo url('edit?id='.$vo2['id']); ?>" class="edit_btn cur">编辑</a>
									 <a data-url="<?php echo url('del?id='.$vo2['id']); ?>" class="del_btn cur">删除</a>
										</span>
									</div>
								</div>
								
							<?php endforeach; endif; else: echo "" ;endif; endif; ?>
								</div><?php endforeach; endif; else: echo "" ;endif; ?>
							</div>
							<?php endforeach; endif; else: echo "" ;endif; ?>
				</div>	</div>	</div>	</div>	</div>
		</div>
		<script>
			$(function(){
				initPage();
				window.onresize=function(){
					initPage();
				}
				bindEvent();
			});
			
			function initPage(){
				
				$(".nav_tree").css("min-height",($(window).height() - 86) + 'px');
				$(".content").css("min-height",($(window).height() - 86) + 'px');
				$(".nav_tree").attr("min-height",$(window).height() - 86);
				$(".content").attr("min-height",$(window).height() - 86);
				$(".articlelist").attr("min-height",$(window).height() - 86);
				$(".articlelist").css("min-height",($(window).height() - 86) + 'px');
				
				var currentRightHeight = $(".content").height();
				var currentNavHeight = $(".nav_tree").height();
				if(currentRightHeight < currentNavHeight){
					$(".articlelist").css("min-height",currentNavHeight + 'px');
					$(".articlelist").attr("min-height",currentNavHeight);
				}else{
					$(".nav_tree").css("min-height",currentRightHeight + 'px');
				}
				
				
			}
			
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
				$(".close_tips").click(function(){
					$(".tips_msg").hide();
					calculateHeight();
				});
				
				
				/****树形菜单展开**/
				$(".first_level .folder_icon").click(function(){
					var parent= $(this).parents(".first_level_group").first();
					if(parent.hasClass("closed")){
						parent.removeClass("closed").addClass("opened");
					}else if(parent.hasClass("opened")){
						parent.removeClass("opened").addClass("closed");
						parent.find(".second_level_group").removeClass("opened").addClass("closed");
					}
					calculateHeight();
				});
				$(".second_level .folder_icon").click(function(){
					var parent= $(this).parents(".second_level_group").first();
					if(parent.hasClass("closed")){
						parent.removeClass("closed").addClass("opened");
					}else if(parent.hasClass("opened")){
						parent.removeClass("opened").addClass("closed");
					}
					calculateHeight();
				});
			}
			
			function calculateHeight(){
				var realHeight = $(".articlelist .edit").outerHeight() + $(".article_table").outerHeight();
				var realLeftHeight = $(".user_info_detail").outerHeight() + $(".nav_tree_list").outerHeight();
				var currentNavHeight = $(".nav_tree").height();
				if(realHeight > $(".articlelist").attr("min-height")){
					if(realHeight > currentNavHeight){
						$(".nav_tree").css("min-height",realHeight + 'px');
					    $(".articlelist").css("min-height",realHeight + 'px');
					}else{
						if(realLeftHeight > realHeight){
							$(".articlelist").css("min-height",realLeftHeight + 'px');
							$(".nav_tree").css("min-height",realLeftHeight + 'px');
						}else{
							$(".nav_tree").css("min-height",realHeight + 'px');
						    $(".articlelist").css("min-height",realHeight + 'px');
						}
					}
				}else{
					if(currentNavHeight >= $(".articlelist").attr("min-height")){
						if(realLeftHeight >= $(".articlelist").attr("min-height")){
							$(".articlelist").css("min-height",realLeftHeight + 'px');
							$(".nav_tree").css("min-height",realLeftHeight + 'px');
						}else{
							$(".nav_tree").css("min-height",$(".articlelist").attr("min-height") + 'px');
							$(".articlelist").css("min-height",$(".articlelist").attr("min-height")  + 'px');
						}
						
					}else{
						$(".nav_tree").css("min-height",$(".articlelist").attr("min-height") + 'px');
						$(".articlelist").css("min-height",$(".articlelist").attr("min-height")  + 'px');
					}
				}
			}
			
			
	
		</script>
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
