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
namespace app\install\controller;
use think\Controller;
use think\Db;
use think\Storage;
class Index extends Controller{
	//安装首页
	public function index(){
		if(is_file(ROOT_PATH.'data/install.lock')){
			$this->error('已经成功安装了Yershop，请不要重复安装!');
		}
		
		return $this->fetch();
	}
	//安装完成
	public function complete(){
		$step = session('step');

		if(!$step){
			$this->redirect('index');
		} elseif($step != 3) {
		   $this->redirect("Install/step{$step}");
		}
		 $config= session('db_config');
		//动态定义连接信息
        unset($config['params']);
        $db=Db::connect($config);
		//注册管理员帐号
		$key=build_api_token();
		$admin = session('admin_info');
		insert_member($db,$config['prefix'], $admin, $key);
         
		//创建配置文件
		$conf=create_database($config, $key);
		session('config_file',$config);
		
		$this->assign('INSTALL_PATH',INSTALL_PATH);
        file_put_contents(ROOT_PATH  . 'data/install.lock',"yershop".date("Y-m-d h:i:s",time()));
		
		$this->assign('info',"管理员创建成功");
		session('step', null);
		session('error', null);
		return $this->fetch();
	}
}
