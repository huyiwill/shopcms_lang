<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:57:"E:\project\shop03/application/admin\view\login\index.html";i:1522829977;}*/ ?>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
<meta charset="utf-8">
<link type="text/css" href="__CSS__/login.css" rel="stylesheet">
<title>琅琊阁后台登录</title>
</head>
<body>
       <div class="banner">
		 	<img src="__IMG__/banner.png" class="logo_img"/>
		 </div>
	<div class="content">
	   
		<div class="login">
	           <div class="tit">管理员登录</div>
			   <div class="frm">
			    <form class="am-form tpl-form-line-form" id="register_form"  action="<?php echo url('login/index'); ?>" >
				   <div class="ipt">用户名：<input type="text" name="username" value="huyi" placeholder="管理员帐号"/> </div>
			       <div class="ipt pwd">
				  密码： <input type="text" value="huyi123" name="password" " placeholder="密码"/>
				   </div>
				
				    <div class="btn"> <a  class="submit" >登录</a> </div>
					<div class="warn"></div>
			     </form> 
			   </div>
			   
	   </div>
	   
	</div>	
		<script type="text/javascript" src="__JS__/jquery.min.js" ></script>
		<script type="text/javascript">
		

		
		$(".submit").click(function(){
    		var self = $("form");
    		$.post(self.attr("action"),self.serialize(),success,"json");
    		return false;
         });
    		function success(data){
    			if(data.status){
    				window.location.href =data.url;
    			} else {
				    $(".warn").html(data.msg);
    				//刷新验证码
    				//$(".reloadverify").click();
    			}
    		}
    	
	</script>				
</body>
</html>
