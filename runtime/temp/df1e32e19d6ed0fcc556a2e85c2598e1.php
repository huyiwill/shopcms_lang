<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:61:"E:\project\shop03/application/install\view\install\step3.html";i:1522308934;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>创建数据库-yershop开源网店系统</title>
	<link type="text/css" href="__CSS__/index.css" rel="stylesheet">
	<link type="text/css" href="__CSS__/style.css" rel="stylesheet">

	</head>
	<body>
		<div class="border">
			<div class="header">
				<span class="logo"></span>
				<span class="intro">安装向导</span>
			</div>
			<div class="install_steps">
				<div class="steps  active"><span class="num">1</span>安装协议
					<span class="arrow"></span>
				</div>
				<div class="steps  active"><span class="num">2</span>环境检测
					<span class="arrow"></span>
				</div>
				<div class="steps active"><span class="num">3</span>创建数据库
					<span class="arrow"></span>
				</div>
				<div class="steps  active"><span class="num">4</span>安装
					<span class="arrow"></span>
				</div>
				<div class="steps"><span class="num">5</span>完成
					<span class="arrow"></span>
				</div>
			</div>
			<div class="rule_title">yershop V3.0<span>安装协议</span></div>
			<div class="rules">
	
                
     <h1>安装</h1>
      <div id="ul-list" >
  
      </div>
	  <script type="text/javascript">
        var list   = document.getElementById('ul-list');
		
         function show_log(log, classname){
            var li = document.createElement('p'); 
            li.innerHTML = log;
            classname && li.setAttribute('class', classname);
            list.appendChild(li);
            document.scrollTop += 30;
        }
       
        
  
      function timer(){ 
	      var url="<?php echo $url; ?>";
	      window.setTimeout(window.location.href=url,18000);
	  }
    </script>
		<?php use think\Db;
	    $config= session('db_config');
		//动态定义连接信息
       
        $db=Db::connect($config);
		
		//创建数据表
		 create_db_tables($db,$config['prefix']);

		if(!session('error')){			
			   session('step', 3);
			   echo "<script type='text/javascript'>timer()</script>";
			  
		}
	
 ?> 			
			</div>
		    <div class="btn_group">
		    	
		    	<div class="agree"> 安装中</div>
		    	<div class="not_agree agree"><a  onclick="$('form').submit()">下一步</a</div>
		    </div>
		</div>
	</body>
</html>
