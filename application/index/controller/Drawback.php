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
 * 售后模型控制器
 */
class Drawback extends Home {

   public function update($id=""){  
	   if(!session_uid()) {
		    $this->redirect("User/login");
		}	
	    $id=(int)input('id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$status=input('status'); 			
		if($status!=1){
		   $this->error('状态错误！');
		}
		
		$map["id"]=$id;
		$map["uid"]=session_uid();
		$info=db('Drawback')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
		}
		$data=array();
        foreach($_POST as $key=>$val){
		      $data[$key]=safe_replace($val);
		}
        // 过滤post数组中的非数据表字段数据
       $res=model("Drawback")->allowField(true)->where($map)->update($data);
	   if($res){ 
		   $where["id"]=$info["sales_id"];
		   $where["draw_id"]=$id;
		   //去退货
		   $url=url( "service/handlereturn",$where );
		   $this->success("修改成功",$url);
		}else{
			 $this->error("修改失败！");
		} 
	  } 
	  public function addexpress($id=""){  
	   if(!session_uid()) {
		    $this->redirect("User/login");
		}	
	    $id=(int)input('id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$status=input('status'); 			
		if($status!=4){
		   $this->error('状态错误！');
		}
		
		$map["id"]=$id;
		$map["uid"]=session_uid();
		$info=db('Drawback')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
		}
      // 过滤post数组中的非数据表字段数据
	    $data=array();
        foreach($_POST as $key=>$val){
		      $data[$key]=safe_replace($val);
		}
       $res=model("Drawback")->allowField(true)->where($map)->update($data);
	   if($res){ 
		$where["id"]=$info["sales_id"];
		$where["draw_id"]=$id;
		//去退货
		$url=url( "service/handleexpress",$where );
		   $this->success("修改成功",$url);
		}else{
			 $this->error("修改失败！");
		} 
	  } 
	  
	 public function cancel($id=""){  
	    if(!session_uid()) {
		    $this->redirect("User/login");
		}	
	    $id=(int)input('id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$map["id"]=$id;
		$map["uid"]=session_uid();
		$info=db('Drawback')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
		}
	    $data["status"]=0;
        // 过滤post数组中的非数据表字段数据
        $res=model("Drawback")->where($map)->update($data);
	    if($res){
		   $url=url( "order/index");
		   $this->success("修改成功！",$url);
		}else{
			 $this->error("修改失败！");
		} 
	  } 
	
}
