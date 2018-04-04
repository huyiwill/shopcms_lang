<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:61:"E:\project\shop03/application/install\view\install\step1.html";i:1522308934;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>环境检测-yershop开源网店系统</title>
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
				<div class="steps"><span class="num">3</span>创建数据库
					<span class="arrow"></span>
				</div>
				<div class="steps"><span class="num">4</span>安装
					<span class="arrow"></span>
				</div>
				<div class="steps"><span class="num">5</span>完成
					<span class="arrow"></span>
				</div>
			</div>
			<div class="rule_title">yershop V3.0<span>安装协议</span></div>
			<div class="rules">
			 <h1 style="text-align:center;">环境检测</h1>
       <table class="table">
        <caption><h2>运行环境检查</h2></caption>
        <thead>
            <tr>
                <th>项目</th>
                <th>所需配置</th>
                <th>当前配置</th>
            </tr>
        </thead>
        <tbody>
            <?php if(is_array($functions) || $functions instanceof \think\Collection || $functions instanceof \think\Paginator): $i = 0; $__LIST__ = $functions;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                <tr>
                    <td><?php echo $item[0]; ?></td>
                    <td><?php echo $item[1]; ?></td>
                    <td><i class="ico-<?php echo $item[4]; ?>">&nbsp;</i><?php echo $item[3]; ?></td>       
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
	<?php if(isset($files)): ?>
    <table class="table">
        <caption><h2>目录、文件权限检查</h2></caption>
        <thead>
            <tr>
                <th>目录/文件</th>
                <th>所需状态</th>
                <th>当前状态</th>
            </tr>
        </thead>
        <tbody>
            <?php if(is_array($files) || $files instanceof \think\Collection || $files instanceof \think\Paginator): $i = 0; $__LIST__ = $files;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                <tr>
                    <td><?php echo $item[3]; ?></td>
                    <td><i class="ico-success">&nbsp;</i>可写</td>
                    <td><i class="ico-<?php echo $item[2]; ?>">&nbsp;</i><?php echo $item[1]; ?></td>   
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
	<?php endif; ?>
    <table class="table">
        <caption><h2>函数依赖性检查</h2></caption>
        <thead>
            <tr>
                <th>函数名称</th>
                <th>检查结果</th>
            </tr>
        </thead>
        <tbody>
            <?php if(is_array($func) || $func instanceof \think\Collection || $func instanceof \think\Paginator): $i = 0; $__LIST__ = $func;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($i % 2 );++$i;?>
                <tr>
                    <td><?php echo $item[0]; ?>()</td>
                    <td><i class="ico-<?php echo $item[2]; ?>">&nbsp;</i><?php echo $item[1]; ?></td>
                </tr>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
			</div>
		    <div class="btn_group">
		    	
		    	<div class="agree">   <a  href="<?php echo url('index/index'); ?>">上一步</a></div>
		    	<div class="not_agree agree"><a  href="<?php echo url('Install/step2'); ?>">下一步</a</div>
		    </div>
		</div>
	</body>
</html>
