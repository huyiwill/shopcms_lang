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
namespace app\index\Controller;
use think\Controller;
use think\Db;
/**
 * 收藏模型控制器
 * 收藏模型列表和详情
 */
class Collect extends Home {
	public function index(){
		if(!session_uid() ) {
			$this->error( "您还没有登陆",url("User/login") );
		}
		
		$uid=session_uid();
		$this->meta_title = '我的收藏';
        $map['uid']=$uid;//用户id
		$res=getLists("collect",$map,"24","id desc");
		$this->assign('res', $res);
		return $this->fetch();
		
	}
      //增加收藏
    public function add(){
		if(!session_uid() ) {
			$this->error( "您还没有登陆",url("User/login") );
		}
		$id=(int)input('id'); // 用intval过滤$_POST['id']
		if(!($id && is_numeric($id))){
			$this->error('ID错误！');
		}   
		$data["goods_id"] = $id;
		$data["uid"]=session_uid();
		$info=db("collect")->where($data)->find();
		if($info){
		   $this->error( "已收藏过" ); 
		}
		else{	
		   $res=db("collect")->insert($data);
		   if($res){
                   $map["id"] = $id;
				   db("goods")->where($map)->setInc("collect");
				  $this->success("收藏成功");
		   }else{
			    $this->error("收藏失败");
		   } 
	   }   
   }
   public function delete(){
	   if(!session_uid() ) {
			$this->error( "您还没有登陆",url("User/login") );
	   }
	   $id=(int)input('id'); // 用intval过滤$_POST['id']
	   $id=safe_replace($id);//过滤
	   $map["id"]=array("in",$id); 
	   $map["uid"]=session_uid();
	   $res=db("collect")->where($map)->delete();
	   if($res){
		  $this->success("删除成功");
	   }else{
		  $this->error("删除失败");
	   }
   }
}

