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
/**
 * 后台sql执行控制器
 */
class Sql extends Admin{
     /* sql执行查询首页 */
	public function index(){     
        if($_POST){
			
		   $Sql= model("Sql");
           $res=$Sql->updates();
	       if($res){
		      $this->success("执行成功！");
		   }else{
			  $error=$Sql->getError()?$Sql->getError():"执行失败";
			  $this->error($error);
		   } 

	  }
	  else{
		
		 $this->meta_title="sql执行语句";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	
   }
   
	
}
