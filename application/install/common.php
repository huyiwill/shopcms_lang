<?php
// +----------------------------------------------------------------------
// | yershop网店管理系统
// +----------------------------------------------------------------------
// | Copyright (c) 2017 http://www.yershop.com All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：yershop网店管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用yershop网店管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.yershop.com
// +----------------------------------------------------------------------
use think\Db;
// 检测环境是否支持可写
/**
 * 创建数据库连接文件
 * @param  array $config 配置信息
 */
function create_database($db_config, $key){
	if(is_array($db_config)){
		//读取配置内容
		unset($db_config['params']);	
		$conf = file_get_contents(ROOT_PATH . 'data/database.tpl');
		//替换配置项
		foreach ($db_config as $name => $value) {
			$conf = str_replace("[{$name}]", $value, $conf);
		}
		$conf = str_replace('[KEY]', $key, $conf);
		    //创建数据库连接文件
			if(file_put_contents(APP_PATH . '/database.php', $conf)){
				show_log('数据库连接文件创建成功');
			} else {
				show_log('数据库连接文件创建失败！', 'error');
				session('error', true);
			}
			return '';
	}
}

/**
 * 创建数据表
 * @param  resource $db 数据库连接资源
 */
function create_db_tables($db, $prefix = ''){
	
	//读取SQL文件
	$sql = file_get_contents(ROOT_PATH . 'data/install.sql');
	$sql = str_replace("\r", "\n", $sql);
	$sql = explode(";\n", $sql);
	$orginal ="yershop_";
	$sql = str_replace(" `{$orginal}", " `{$prefix}", $sql);
	//开始安装
	show_log('开始安装数据库...');
	foreach ($sql as $value) {
		$value = trim($value);
		if(empty($value)) continue;
		if(substr($value, 0, 12) == 'CREATE TABLE') {
			$name = preg_replace("/^CREATE TABLE `(\w+)` .*/s", "\\1", $value);
			$msg  = "创建数据表{$name}";
			if(false !== $db->execute($value)){
				show_log($msg . '...成功');
			} else {
				show_log($msg . '...失败！', 'error');
				session('error', true);
			}
		} else {
			$db->execute($value);
		}
	}
}

function insert_member($db,$prefix, $admin, $key){

	show_log('开始注册管理员帐号...');
	$password = ucenter_md5($admin['password'], $key);
     $sql = "INSERT INTO `{$prefix}ucenter_member` VALUES " .
		   "('1', '{$admin['username']}', '{$password}', '{$admin['email']}', '0',0, '0', 0, 0, '0', '1','1',0,0,0,0,0,0,0,0)";
	
	//执行sql
	$db->execute($sql);
	show_log('管理员帐号注册完成！');
}
function show_log($msg, $class = ''){	

	echo "<script type='text/javascript'>show_log('{$msg}', '{$class}')</script>";
	flush();
	ob_flush();
}	
//创建客户端加密key
function build_api_token(){
	$str= '0123456789+-%$#!@^&<>|=-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	$str= str_shuffle($str);
	return "{".substr($str, 0, 40)."}";
}

