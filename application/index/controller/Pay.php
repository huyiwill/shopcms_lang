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
use think\Request;
class Pay extends Home {

	public function index() {
		if(!is_login()) {
		    $this->redirect("User/login");
		}
		$this->meta_title = '在线充值';
	    $this->assign('meta_title',$this->meta_title);
		return $this->fetch();
	}
	public function lists(){
		 if(!is_login()) {
		    $this->redirect("User/login");
		}			
		$uid=is_login();	
		$map['uid']=$uid;//用户id
		$map['model']="account";//用户id
		$res=getLists("pay",$map,10,"id desc","");
		$this->assign('res', $res);
		$this->meta_title = '充值记录';
		$this->assign('meta_title',$this->meta_title);
		return $this->fetch();
	}     //余额支付
	public function usecount() {
	    if(!is_login() ) {
			$this->error( "您还没有登陆",url("User/login") );
		}
		if($_POST){
		//页面上通过表单选择在线支付类型，支付宝为alipay 财付通为tenpay
		        /* 支付设置 */
		
			$uid=is_login();
			$map["uid"]=$uid;
			$id=(int)input('id');
			if(!($id && is_numeric($id))){
				   $this->error('用户ID错误！');
			}
			$map["id"]=$id;	
			$info= db("order")->where($map)->find(); 
			if(!$info){
				$this->error( "订单不存在");
			} 
			if($info["status"]==1){
				$this->error( "订单已支付");
			} 
			$total_fee=$info['total_money'];
		
            $where["id"]=$uid;
			$ucenter= db("ucenterMember")->where($where)->find(); 
			$account=$ucenter["account"];
			
				 //余额支付
				if($account>=$total_fee){
				  $save["account"]=$account-$total_fee;
                  db("ucenterMember")->where($where)->update($save); 
                  $update["status"]=1;
                  $update["update_time"]=time();
				  $update["paytype"]=1;//余额支付
				 
                  db("order")->where($map)->update($update);
						//保存支付信息
					$where["out_trade_no"]=$info["order_sn"];
					$where["uid"]=is_login();
					$data["status"]=1;
					$data["paytype"]=1;//余额支付
					$data["update_time"]=time();
					db("pay")->where($where)->update($data);
                    //余额消费日志信息
					unset($data);		//
					
					$data["money"]=$total_fee;
					$data["type"]=0;//-
					$data["content"]="余额支付订单";
					$data["create_time"]=time();
					$data["uid"]=$uid;
					$url=url('pay/over?id='.$id);
					//db("accountLog")->insertGetId($data);
				    $this->success("支付成功",$url);
				} else{
				    $this->error("余额不足");
				}
				
		}
	}	
	public function over($id) {
		   if(!is_login()) {
		      $this->redirect("User/login");
		   }	 
            $uid=is_login();
			$map['uid']=$uid;//用户id
			$map['id']=(int)safe_replace($id);//用户id
            $info=db('pay')->where($map)->find();

			$this->assign('info', $info);
		  return $this->fetch();
	  }
      public function  failure() {	
		  
		  return $this->fetch();

	  }	
}
