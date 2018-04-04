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
use think\Db;
/**
 * 地址模型控制器
 */
class Help extends Home {

	 /* 取消订单 */
	public function index(){
		$id=(int)input('id'); 	
        if(!($id && is_numeric($id))){
		       $this->error('ID错误！');
		}else{
		     $map["id"]=$id;
		}			
		$info=db("cate")->where($map)->find();
		 if(!$info){
			   $this->error( "无对应分类" );
		}
		$this->assign('info', $info);
		unset($map);
	    $map['status']=1;
		$map['category_id']=$id;//用户id
		$res=getLists("document",$map,10,"id desc","");
		$this->assign('res', $res);
		$this->meta_title = '帮助中心';
		$this->assign('meta_title',$this->meta_title);
		$list=db("document")->order("id desc")->limit(5)->select();
		$this->assign('list', $list);
		return $this->fetch();
	}


   public  function detail($id = null, $pid = 0){
        
		   $id=(int)input('id'); 	
           if(!($id && is_numeric($id))){
		       $this->error('ID错误！');
		   }else{
		      $map["id"]=$id;
		   }	
		   $info=db("document")->where($map)->find();
		   if(!$info){
			   $this->error( "无对应文章" );
		   }
           $this->assign('info', $info);
		  $list=db("document")->order("id desc")->limit(5)->select();
		$this->assign('list', $list);
           $this->meta_title =$info["title"];
		   $this->assign('meta_title',$this->meta_title);
           return $this->fetch();
         
   }

   
}
