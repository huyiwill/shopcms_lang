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
namespace app\admin\model;
use think\Model;
use think\Db;
class UcenterMember extends Model{
    
  


    public function login($uid){
        /* 检测是否在当前应用注册 */
		$map['id'] = $uid;
        $user =Db::name("ucenterMember")->where($map)->find();
        /* 登录用户 */
        $this->autoLogin($user);
 
     
        return true;
    }

    /**
     * 注销当前用户
     * @return void
     */
    public function logout(){
        session("user_auth", null);
       
        session("user_auth_sign", null);
		cookie('password',null);
		cookie('username',null);

    }

 

    /**
     * 自动登录用户
     * @param  integer $user 用户信息数组
     */
    private function autoLogin($user){
        /* 更新登录信息 */
        $data = array(
            
           
            "last_login_time" => time(),
            "last_login_ip"   =>0,
        );
		 $map['id'] = $user["id"];
         Db::name("ucenterMember")->where($map)->update($data);

        /* 记录登录SESSION和COOKIES */
        $auth = array(
            "uid"             => $user["id"],
            "username"        =>$user["username"],
            "last_login_time" => $data["last_login_time"],
        );
        session("user_auth", $auth);
        session("uid", $auth["uid"]);
        session("user_auth_sign", data_auth_sign($auth));

    }
}
