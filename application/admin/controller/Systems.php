<?php
// +----------------------------------------------------------------------
// | 贝云cms内容管理系统 
// +----------------------------------------------------------------------
// | Copyright (c) 2017 http://www.bycms.cn All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：贝云cms内容管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用贝云cms内容管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.bycms.cn
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Systems extends Admin{

	//系统配置
	public function index(){   
	    if($_POST){
			$res=array();
            foreach ($_POST as $key => $value) {
                $map = array("name" => $key);
				$res=+1;
                db('Config')->where($map)->setField('value', $value);
            }
         
	       if($res){
			     addUserLog("edit_config",session_uid());
		         $this->success("更新成功！");
		   }else{
			   $this->error("更新失败！");
		   } 
	  }
	  else{
		$group  =  input('group');
        $map['group']=$group?$group:0;
		$type   = C("GROUP");
		$type=explode("|",$type);
        $list   = db("Config")->where($map)->select();
        cookie("__forward__",input('server.HTTP_REFERER'));
        $this->assign('list',$list);
        $this->assign('type',$group);//dump($type);
		$this->assign('groups',$type);
        $this->meta_title = '系统设置';
       
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch();
	   }
	}
   
	
}
