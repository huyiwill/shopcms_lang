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
 * 取消订单模型控制器
 * 文档模型列表和详情
 */
class Service extends Home{
 	 
	 
	 public function index() {
		 if(!is_login()) {
		    $this->redirect("User/login");
		}			
		$uid=is_login();	
		
		$map['uid']=$uid;//用户id
		$res=getLists("drawback",$map,5,"id desc","");
		$this->assign('res', $res);
		$meta_title = '退换货管理';
		 $this->assign('meta_title', $meta_title);
	
		return $this->fetch();     
	   
    }
	
	
      public function applyreturn(){
	
		if(!session_uid()) {
		    $this->redirect("User/login");
		}
        $id=input('id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$map["id"]=$id;
		$map["uid"]=session_uid();
		$info=db('sales')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
		}
	    $this->assign("info",$info);
		$type=explode("|",C('REFUND'));
		$this->assign('type',$type);
		
		$style=explode("|",C('REFUND_STYLE'));
		$this->assign('style',$style);
		
	    $this->meta_title ="申请售后";	
	    $this->assign('meta_title',$this->meta_title);
		unset($map);
		$map["sales_id"]=$id;
		$draw=db("drawback")->where($map)->find();
		$where["id"]=$id;
		$where["draw_id"]=$draw["id"];
		if($draw&&$draw["status"]==0){
			   $this->redirect( "order/index",$where );
		 }
		if($draw["status"]==1){
			   $this->redirect( "service/handlereturn",$where );
		 }
		 if($draw["status"]==2){
			   $this->redirect( "service/handlereturn",$where );
		 }
		 if($draw["status"]==3){
			 $this->redirect( "service/handlereturn",$where );
		 }
		 if($draw["status"]==4){
			   $this->redirect( "service/handleexpress",$where );
		 }
		 if($draw["status"]==5){
			   $this->redirect( "service/handleexpress",$where );
		 }
		 if($draw["status"]==6){
			   $this->redirect( "service/complete" ,$where );
		 }
	     return $this->fetch();
		 
	   }
	   
	 public function handlereturn(){
	    if(!session_uid()) {
		    $this->redirect("User/login");
		}	
		$id=input('id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$map["id"]=$id;
		$map["uid"]=session_uid();
		$info=db('sales')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
        }
		$type=explode("|",C('REFUND'));
		$this->assign('type',$type);
		
		$style=explode("|",C('REFUND_STYLE'));
		$this->assign('style',$style);
	    $this->meta_title ="申请售后";	
	    $this->assign('meta_title',$this->meta_title);
		unset($map);
		$map["sales_id"]=$id;
		$draw=db("drawback")->where($map)->find();
		$this->assign("draw",$draw);
		$where["id"]=$id;
		$where["draw_id"]=$draw["id"];
		//去退货
		$info["url1"]=url( "service/handleexpress",$where );
		//修改退款申请
		$info["url2"]=url( "service/modify",$where );
		
		$this->assign("info",$info);
		return $this->fetch();
		 
    }
	//修改退货申请
	 public function modify(){
	    if(!session_uid()) {
		    $this->redirect("User/login");
		}	
		$id=input('id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$map["id"]=$id;
		$map["uid"]=session_uid();
		$info=db('sales')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
        }
		$type=explode("|",C('REFUND'));
		$this->assign('type',$type);
		
		$style=explode("|",C('REFUND_STYLE'));
		$this->assign('style',$style);
		
	    $this->meta_title ="修改退货申请";	
	    $this->assign('meta_title',$this->meta_title);
		unset($map);
		$map["sales_id"]=$id;
		$draw=db("drawback")->where($map)->find();
		$this->assign("draw",$draw);
		$where["id"]=$id;
		$where["draw_id"]=$draw["id"];
		//去退货
		$info["url1"]=url( "service/handlereturn",$where );
		//修改退款申请
		$info["url2"]=url( "service/modify",$where );
		
		$this->assign("info",$info);
		return $this->fetch();
		 
    }
	//处理物流
	public function handleexpress(){
	   	if(!session_uid()) {
		    $this->redirect("User/login");
		}
		$id=input('id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$map["id"]=$id;
		$map["uid"]=session_uid();
		$info=db('sales')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
		}
	
		$type=explode("|",C('REFUND'));
		$this->assign('type',$type);
	    $this->meta_title ="填写物流信息";	
	    $this->assign('meta_title',$this->meta_title);
		unset($map);
		$map["sales_id"]=$id;
		$draw=db("drawback")->where($map)->find();
		$this->assign("draw",$draw);
		$where["id"]=$id;
		$where["draw_id"]=$draw["id"];
		
		//修改快递信息
		$info["url2"]=url( "service/modifyexperess",$where );
		$this->assign("info",$info);
		return $this->fetch();
		 
    }
		//修改物流信息
	 public function modifyexperess(){
	    if(!session_uid()) {
		    $this->redirect("User/login");
		}	
		$id=input('id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$map["id"]=$id;
		$map["uid"]=session_uid();
		$info=db('sales')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
        }
		$type=explode("|",C('REFUND'));
		$this->assign('type',$type);
		
		$style=explode("|",C('REFUND_STYLE'));
		$this->assign('style',$style);
		
	    $this->meta_title ="修改物流信息";	
	    $this->assign('meta_title',$this->meta_title);
		unset($map);
		$map["sales_id"]=$id;
		$map["status"]=5;
		$draw=db("drawback")->where($map)->find();
		if(!$draw){
		      $this->error('不支持的操作！');
        }
		$this->assign("draw",$draw);
	
		$this->assign("info",$info);
		return $this->fetch();
		 
    }
  
    public function complete(){
	    	
		if(!session_uid()) {
		    $this->redirect("User/login");
		}	
		$id=input('id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$map["id"]=$id;
		$map["uid"]=session_uid();
		$info=db('sales')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
        }
		$type=explode("|",C('REFUND'));
		$this->assign('type',$type);
		
		$style=explode("|",C('REFUND_STYLE'));
		$this->assign('style',$style);
		
	    $this->meta_title ="处理完成";	
	    $this->assign('meta_title',$this->meta_title);
		unset($map);
		$map["sales_id"]=$id;
		$draw=db("drawback")->where($map)->find();
		$this->assign("draw",$draw);
		$this->assign("info",$info);
		return $this->fetch();
	
		 
    } 
  
	//申请退货
	 public function  submitRefund(){
	       if(!session_uid()) {
		    $this->redirect("User/login");
		}	
		   $uid=session_uid();	
		   $map['uid']=$uid;//用户id
		   $user=db("ucenterMember")->where($map)->find();
		   if($user["alipay"]){
		     $this->error('请完善支付宝账号！');
		   }
		   $id=input('id'); 	
           if(!($id && is_numeric($id))){
		       $this->error('分类ID错误！');
		   }
		   $map["id"]=$id;
		   $info=db("sales")->where($map)->find();
		   if(!$info){
			   $this->error( "无对应的订单" );
		   }else{
			   $save["status"]=4;
			   db("sales")->where($map)->update($save);
		   }
		  $money=$info["price"]*$info["num"];
		  $post_money=safe_replace(input("money"));
		  if($post_money>$money){
			    $this->error( "超出退货金额" ); 
		  }
		  $data["style"]=safe_replace(input("style"));
		  $data["cover_id"]=safe_replace(input("cover_id"));
		  $data["sales_id"]=safe_replace(input("id"));
		  $data["description"]=safe_replace(input("description"));
		  $data["type"]=safe_replace(input("type"));
		  $data["goods_id"]=$info["goods_id"]; 
		  $data["status"]=1;
          $data["sku_id"]=$info["sku_id"];
		  $data["uid"]=$uid;
		  $data["create_time"]=time();
		  $Drawback = new \app\index\model\Drawback;
		  $res=$Drawback->allowField(true)->insertGetId($data);
		  $where["id"]=$id;
		  $where["draw_id"]=$res;
		  //去退货
		  $url=url( "service/handlereturn",$where );
    	  if($res){
		      $this->success("申请成功,请等待回复！",$url);
		   }else{
			    $error="申请 失败！";
			    $this->error($error);
		   } 
		 
	 }  
	  
	 public function handlehuowu(){
	     
		   return $this->fetch();
		 
	   }
	 
     
}
