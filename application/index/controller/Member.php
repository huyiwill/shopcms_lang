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
 * 会员模型控制器
 */
class Member extends Home {
    public function index(){
        if(!is_login()) {
		    $this->error( "您还没有登陆",U("User/login") );
		}		
        $uid=is_login(); 
		$map["uid"]=$uid;
        $info=db("member")->where($map)->find();
		$this->assign('info',$info);
		$this->meta_title ="个人中心";
		$this->assign('meta_title',$this->meta_title);
		return $this->fetch();
    }
   public function edit(){
        if(!is_login()) {
		    $this->error( "您还没有登陆",U("User/login") );
		}		
        
		$list=explode("|",C('STAR'));
		$this->assign('list',$list);
		$this->meta_title ="个人中心";
		$this->assign('meta_title',$this->meta_title);
		return $this->fetch();
    }
    public  function update() {
        if(!is_login()) {
			$this->error( "您还没有登陆",U("User/login") );
		}		
	    if($_POST){ //提交表单
		   $id=input('id'); 	
           if(!($id && is_numeric($id))){
		       $this->error('用户ID错误！');
		   }
		   $map["id"]=$id;
		   $info=db("UcenterMember")->where($map)->find();
		   if(!$info){
			   $this->error( "无对应的用户" );
		   }
		   $uid=is_login();
		   if($id!==$uid){
		      $this->error( "无权限" );
		   }
		   foreach($_POST as $key=>$val){
		      $data[$key]=safe_replace($val);
		    }
		    $field="mobile,username,birthday,star,sex,cover_id";
		    $res=db("UcenterMember")->where($map)->filed($field)->update($data);
            if(false !== $res){
                $this->success('更新成功！');
            } else {
               $error= $UcenterMember->getError();
                $this->error(empty($error) ? '未知错误！' : $error);
            }
        } 	    
    }
}
