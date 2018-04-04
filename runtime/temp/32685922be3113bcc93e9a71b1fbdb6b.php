<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:59:"E:\project\shop03/application/admin\view\systems\index.html";i:1522308934;s:59:"E:\project\shop03/application/admin\view\public\header.html";i:1522829166;s:59:"E:\project\shop03/application/admin\view\public\dialog.html";i:1522308934;s:58:"E:\project\shop03/application/admin\view\public\color.html";i:1522308934;s:59:"E:\project\shop03/application/admin\view\public\footer.html";i:1522308934;}*/ ?>
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

  <script type="text/javascript" src="__COMMON__/jquery.colorpicker.js"></script>		
			<div class="content">
			<div class="tips_msg none"><span class="tips">保存成功</span><span class="close_tips"></span></div>
				<div class="edit_title"><?php echo (isset($meta_title) && ($meta_title !== '')?$meta_title:""); ?></div>
				<div class="edit_box">
					
					<div class="edit_tab">
				<?php if(is_array($groups) || $groups instanceof \think\Collection || $groups instanceof \think\Paginator): if( count($groups)==0 ) : echo "" ;else: foreach($groups as $key=>$vo): ?>
			      <div class="tab_option <?php if($type == $key): ?>on<?php endif; ?>"><a href="<?php echo U('?group='.$key); ?>"><?php echo $vo; ?>配置</a></div>
		     	<?php endforeach; endif; else: echo "" ;endif; ?>
					</div>
					<div class="edit_content">
							 <form class="group-form"  action="<?php echo url(''); ?>" method="post">
						   	     <div class="edit_content_tab">
									 <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$config): $mod = ($i % 2 );++$i;switch($config['type']): case "text": ?>
											    <div class="form-group">
									                 <label><?php echo $config['title']; ?><span>(<?php echo $config['remark']; ?>)</span></label>
													 <div class="form-input">
									                     <input type="text" name="<?php echo $config['name']; ?>" value="<?php echo $config['value']; ?>">
													  </div>
								                 </div>
											
											<?php break; case "string": ?>
											    <div class="form-group">
									                 <label><?php echo $config['title']; ?><span>(<?php echo $config['remark']; ?>)</span></label>
													 <div class="form-input">
									                     <input type="text" name="<?php echo $config['name']; ?>" value="<?php echo $config['value']; ?>">
													 </div>
								                 </div>
											
											<?php break; case "textarea": ?>
											   <div class="form-group">
									                 <label><?php echo $config['title']; ?><span>(<?php echo $config['remark']; ?>)</span></label>
													 <div class="form-input">
									                    <textarea name="<?php echo $config['name']; ?>"/><?php echo $config['value']; ?></textarea>
													 </div>
								                 </div>
											
											<?php break; case "radio": ?>
										         <div class="form-group">
									                 <label><?php echo $config['title']; ?><span>(<?php echo $config['remark']; ?>)</span></label>
													 <div class="form-input">
									                   <input type="radio" name="<?php echo $config['name']; ?>" value="<?php echo $config['value']; ?>"/>
													 </div>
								                 </div>
											<?php break; case "select": ?>
											    <div class="form-group">
									                 <label><?php echo $config['title']; ?><span>(<?php echo $config['remark']; ?>)</span></label>
													 <div class="form-input">
									                    <select name="<?php echo $config['name']; ?>">
													        <?php $_result=parse_config_attr($config['extra']);if(is_array($_result) || $_result instanceof \think\Collection || $_result instanceof \think\Paginator): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
													        <option value="<?php echo $key; ?>" <?php if($config['value'] == $key): ?>selected<?php endif; ?>><?php echo $vo; ?></option>
												             <?php endforeach; endif; else: echo "" ;endif; ?>
												        </select>
													 </div>
								                 </div>
											<?php break; case "color": ?>
											     <div class="form-group">
									                 <label><?php echo $config['title']; ?><span>(<?php echo $config['remark']; ?>)</span></label>
													 	<div class="form-input">
									                        <input type="text" name="<?php echo $config['name']; ?>" value="<?php echo $config['value']; ?>" id="<?php echo $config['name']; ?>" style="color:<?php echo $config['value']; ?>"/>
													  </div>
								                  </div>
												  <script>
													$("#<?php echo $config['name']; ?>").colorpicker({
														fillcolor:true,
														success:function(o,color){
															$(o).css("color",color);
														}
													});
												 </script>
											<?php break; case "picture": ?>
										          <div class="form-group">
														<label>图片<span>(图片名称)</span></label> 
														<div id="<?php echo $config['name']; ?>" class="container">
															<div id="file_<?php echo $config['name']; ?>">你的浏览器不支持flash,Silverlight或者HTML5！</div>
															<input type="hidden" name="<?php echo $config['name']; ?>"  value="<?php echo $config['value']; ?>">
															
															<a id="select_<?php echo $config['name']; ?>" href="javascript:void(0);" class='btn'>选择文件</a>
															<a id="post_<?php echo $config['name']; ?>" href="javascript:void(0);" class='btn'>开始上传</a>
														</div>
				
													   <div class="uploader_preview">
															 <?php if(!(empty($config['value']) || (($config['value'] instanceof \think\Collection || $config['value'] instanceof \think\Paginator ) && $config['value']->isEmpty()))): ?>  
																  <div class="upload-pre-item"> 
																	<img class="<?php echo $config['name']; ?>" src="<?php echo get_path($config['value']); ?>"/>
																	</div>
															  <?php endif; ?>
														</div>

														<script type="text/javascript">  
															var field="<?php echo $config['name']; ?>";
															upload(field);
														</script>	
                                                  </div>
									       <?php break; case "video": ?>
											    <div class="form-group">
												      <label><?php echo $config['title']; ?><span>(<?php echo $config['remark']; ?>)</span></label>
												     <input type="hidden" name="<?php echo $config['name']; ?>"  value="<?php echo (isset($config['value']) && ($config['value'] !== '')?$config['value']:''); ?>">
													 <div id="<?php echo $config['name']; ?>" class="container">
														<div id="file_<?php echo $config['name']; ?>">你的浏览器不支持flash,Silverlight或者HTML5！</div>
														<input type="hidden" name="<?php echo $config['name']; ?>"  value="<?php echo (isset($config['value']) && ($config['value'] !== '')?$config['value']:''); ?>">
														<input type="text" name="file_path"  class="ipt" value="<?php echo get_path($config['value']); ?>">
														<a id="select_<?php echo $config['name']; ?>" href="javascript:void(0);" class='btn_upload'>选择文件</a>
														<a id="post_<?php echo $config['name']; ?>" href="javascript:void(0);" class='btn_upload'>开始上传</a>
													 </div>
							
													<video src="<?php echo get_cover_path($config['value']); ?>" controls="controls">
															  您的浏览器不支持 video 标签。
													</video>	
												    <script type="text/javascript">  
													var field="<?php echo $config['name']; ?>";
													uploadVideo(field);
												   </script> 	
											  </div>
							               <?php break; case "file": ?>
											    <div class="form-group">
												     <label><?php echo $config['title']; ?><span>(<?php echo $vo['remark']; ?>)</span></label> 
												     <input type="hidden" name="<?php echo $vo['name']; ?>"  value="<?php echo (isset($config['value']) && ($config['value'] !== '')?$config['value']:''); ?>">
													 <div id="<?php echo $vo['name']; ?>" class="container">
														<div id="file_<?php echo $vo['name']; ?>">你的浏览器不支持flash,Silverlight或者HTML5！</div>
														<input type="hidden" name="<?php echo $vo['name']; ?>"  value="<?php echo (isset($config['value']) && ($config['value'] !== '')?$config['value']:''); ?>">
														<input type="text" name="file_path"  class="ipt" value="<?php echo get_path($config['value']); ?>">
														<a id="select_<?php echo $vo['name']; ?>" href="javascript:void(0);" class='btn_upload'>选择文件</a>
														<a id="post_<?php echo $vo['name']; ?>" href="javascript:void(0);" class='btn_upload'>开始上传</a>
													 </div>
							
														
												    <script type="text/javascript">  
													var field="<?php echo $vo['name']; ?>";
													upload(field);
												   </script> 	
											  </div>
							                <?php break; endswitch; endforeach; endif; else: echo "" ;endif; ?>	
						</div>
						<div class="edit_content_tab none">
							
						</div>
						<div class="btn_group">
						    <input type="hidden" name="id" value="<?php echo (isset($info['id']) && ($info['id'] !== '')?$info['id']:""); ?>">
							<div class="confirm_btn">确认</div>
							<div class="cancel_btn">返回</div>
						</div></form> 
					</div>
				</div>
			</div>
		</div>
	<script>$("video").trigger('play');</script>
  
 <!-- 头部 -->
	
<script src="__JS__/common.js"></script>  

<script>
var html='<footer style=""><p> Powered by <a href="http://www.yershop.com/" target="_blank">yershop V3.0</a> </p></footer>';
$(".nav_tree").css({"height":"100%"});
$(".content").append(html);
var sid="<?php echo input('module_id')?input('module_id'):$now['id']; ?>";var obj=$("span#"+sid);$(obj).parents("li").eq(0).addClass("active");
</script>
</body>
</html>
<!-- 头部 --> 
