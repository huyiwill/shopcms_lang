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
namespace app\index\controller;
use think\Controller;

class Index extends Home{
    public function index(){ 
		 
         
		$meta_title="首页";  
		$this->assign('meta_title', $meta_title);
		//幻灯片
	    $slidelist=lists("slide","","10","id desc");
	    $this->assign('slidelist',$slidelist);
		$tree=model("category")->maketree(0,1 ) ;
		$this->assign ( 'tree', $tree );
	    return $this->fetch();
	}
	
    public function getGoodlist($id=''){

         $id=(int)input( 'id'); // 用intval过滤$_POST['id']; 
		 if(!($id && is_numeric($id))){
		       $this->error('分类ID错误！');
		 }
		 $data =model("category")->getDatalist( $id );
      
		// json_decode对JSON格式的字符串进行编码而json_encode对变量进行 JSON 编码
		return $data;

    }
}
