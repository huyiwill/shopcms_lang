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
/**
 * 地址模型控制器
 */
class Address extends Home {

	 /* 取消订单 */
	public function index(){
		
		if(!session_uid()) {
		    $this->redirect("User/login");
		}			
		$uid=session_uid();	
		$map['uid']=$uid;//用户id
		$res=getLists("address",$map,5,"id desc","");
		$this->assign('res', $res);
		$this->meta_title = '地址管理';
		$this->assign('meta_title',$this->meta_title);
		$area=new \app\index\model\Area;
		$list=$area->getArea();
	    $this->assign( 'list',$list);
		return $this->fetch();
	}


   public  function edit($id = null, $pid = 0){
           if ( !is_login() ) {
					$this->error( "您还没有登陆",U("User/login") );
		   }
           $uid=is_login();	
		   $map['uid']=$uid;//用户id
		   $id=(int)input('id'); 	
           if(!($id && is_numeric($id))){
		       $this->error('ID错误！');
		   }else{
		      $map["id"]=$id;
		   }	
		   $address=db("address")->where($map)->find();
		   if(!$address){
			   $this->error( "无对应的地址" );
		   }
           $this->assign('address', $address);
		   unset($map["id"]);
		   $res=getLists("address",$map,5,"id desc","");
		   $this->assign('res', $res);
           $this->meta_title = '编辑地址';
		   $this->assign('meta_title',$this->meta_title);
		   $area=new \app\index\model\Area;
		   $list=$area->getArea();
	       $this->assign( 'list',$list);
           return $this->fetch("address/index"); 
   }

    public  function change($pid = 0){

		   $pid=(int)input('pid'); 	
           if(!($pid && is_numeric($pid))){
		       $this->error('数据类型错误！');
		   }
		   $map["pid"]=$pid;
		   $list=db("area")->where($map)->select();
		   return $list;
         
   }
   
	public  function del() {
		
		if ( !is_login() ) {
			$this->error( "您还没有登陆",U("User/login") );
		} 
		$id=(int)input("id");
		if(!($id && is_numeric($id))){
		       $this->error('用户ID错误！');
		 }
		$uid=is_login(); 
		if($id){
		   $map["uid"]=$uid;	
		   $map["id"]=$id;	
		   $info= db("address")->where($map)->find(); 
		   if(!$info){
			   $this->error( "地址不存在" );
		   }
		   $res=db("address")->where($map)->delete();
		   if($res){
				
				$url=url("address/index");
				$this->success("删除成功",$url);
			}
			else{ 
				
				$this->error("删除失败");
			}
        }
   }
   public  function set() {
		
		if ( !is_login() ) {
			$this->error( "您还没有登陆",U("User/login") );
		} 
		$id=(int)input("id");
		if(!($id && is_numeric($id))){
		       $this->error('用户ID错误！');
		 }
		$uid=is_login(); 
		if($id){
		   $map["uid"]=$uid;	
		   $map["id"]=$id;	
		   $info= db("address")->where($map)->find(); 
		   if(!$info){
			   $this->error( "地址不存在" );
		   }
		    db("address")->where(array("uid"=>$uid))->setField("status",0);
		   $res=db("address")->where($map)->setField("status",1);
		   if($res){
				$url=url("address/index");
				$this->success("设置成功",$url);
			}
			else{ 
				
				$this->error("设置失败");
			}
        }
   }
    public  function add() {
		
		if ( !is_login() ) {
			$this->error( "您还没有登陆",U("User/login") );
		} 
	
		$status=(int)input("status");
		$uid=is_login();	
	    $map['uid']=$uid;//用户id
        if($_POST){ //提交表单
		     $Address = model("Address");
			 $data=array();
            foreach($_POST as $key=>$val){
		       $data[$key]=safe_replace($val);
		    }
		     $res=$Address->validate(true)->allowField(true)->save($data);
			 $id= $Address->getLastInsID();
			
             if(false!==$res){
			    $address=db("address")->find($id);
               
				$result["id"]=$id;
				$result["html"]='<h4 class="f16">收货人信息<a onclick="updateAddress()" class="xg f12">[修改]</a></h4>
						<p class="info f12">'.$address['username'].'&nbsp;&nbsp;&nbsp;&nbsp'.$address['province'].'&nbsp;&nbsp;'.$address['city'].'&nbsp;&nbsp;'.$address['area'].'&nbsp;&nbsp;'.$address['address'].'<span class="icon"></span>
						<span class="num">'.$address['mobile'].'</span></p>';
				 $result["code"]=1;
				 return $result;
				
            } else {
                $error = $Address->getError();
                $this->error(empty($error) ? '未知错误！' : $error);
            }
        } 
	}

    public  function update() {
		
		if ( !is_login() ) {
			$this->error( "您还没有登陆",U("User/login") );
		} 
	
		$status=(int)input("status");
		$uid=is_login();	
	    $map['uid']=$uid;//用户id
		$id=(int)input('id'); 	
        if(!($id && is_numeric($id))){
		       $this->error('分类ID错误！');
		}
	    $map["id"]=$id;
			
		$address=db("address")->where($map)->find();
		if(!$address){
			   $this->error( "无对应的地址" );
		}
        if($_POST){ //提交表单
		     $Address = model("Address");
			  $data=array();
            foreach($_POST as $key=>$val){
		         $data[$key]=safe_replace($val);
		    }
		     $res=$Address->validate(true)->allowField(true)->save($data,$map);
             if(false!==$res){
				$id=$id?$id:$res;
			    $address=db("address")->find($id);
				if($status){
					db("address")->where(array("uid"=>$uid))->setField("status",0);
					db("address")->where($map)->setField("status",1);
				}
				$result["code"]=1;
				$result["id"]=$id;
				$result["html"]='<h4 class="f16">收货人信息<a onclick="updateAddress()" class="xg f12">[修改]</a></h4>
						<p class="info f12">'.$address['username'].'&nbsp;&nbsp;&nbsp;&nbsp'.$address['province'].'&nbsp;&nbsp;'.$address['city'].'&nbsp;&nbsp;'.$address['area'].'&nbsp;&nbsp;'.$address['address'].'<span class="icon"></span>
						<span class="num">'.$address['mobile'].'</span></p>';
				return $result;
				
            } else {
                $error = $Address->getError();
                $this->error(empty($error) ? '未知错误！' : $error);
            }
        } 
	}

   
}
