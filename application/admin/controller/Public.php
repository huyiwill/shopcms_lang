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
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Request;
use User\Api\UserApi;

/**
 * 后台首页控制器
 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
 */
class Public extends Controller {

    /**
     * 后台用户登录
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>
     */
  	public function login($username = "", $password = "", $verify = "",$type=1){
		
		if($_POST){ //登录验证
			 
              $username =safe_replace($username);//过滤

			  /* 检测验证码 */
			//if(!check_verify($verify)){
				//$this->error("验证码输入错误！");
			//}
			/* 调用UC登录接口登录 */
			//$user = new UserApi;
			$key=config('DATA_AUTH_KEY');
			
			$map = array();
		switch ($type) {
			case 1:
				$map['username'] = $username;
				break;
			case 2:
				$map['email'] = $username;
				break;
			case 3:
				$map['mobile'] = $username;
				break;
			case 4:
				$map['id'] = $username;
				break;
			default:
				return 0; //参数错误
		}
       $map["password"]=think_ucenter_md5($password, $key);
		/* 获取用户数据 */
		$user =Db::name('UcenterMember')->where($map)->find();
		if($user&& $user['status']){
			$uid = $user["id"];
            if(0 < $uid){ //UC登录成功
				 if(input('post.remember')){ 
					   Cookie::set('username',$username,2592000); // 指定cookie保存30天时间
					   Cookie::set('password',$password,2592000); // 指定cookie保存30天时间		 
				 }
				/* 登录用户 */
				$Member=new \app\admin\model\Member;
				if($Member->login($uid)){ //登录用户
					//TODO:跳转到登录前页面            
					 $url= session("url")?session("url"):url('index/index');
				     $data['url']=$url;
                     $data['status']=1;
				    return $data;
			       
				
				} else {
					$this->error("密码或账号错误");
				}
			  }

			} else { //登录失败
				$this->error("密码或账号错误");
			}

		} else {  	
		    $meta_title = '会员登录';	
		  ;
			 //显示登录表单
			  return $this->fetch("index/login");
		}
	}
    /* 退出登录 */
    public function logout(){
        if(is_login()){
           $Member=new \app\admin\model\Member;
		   $Member->logout();
            session('[destroy]');
            $this->success('退出成功！', U('login'));
        } else {
            $this->redirect('login');
        }
    }

}
