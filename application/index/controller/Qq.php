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
 * 前台qq登陆控制器
 * 为防止多分组Controller名称冲突，公共Controller名称统一使用分组名称
 */
class Qq extends Home{

	//qq认证链接
    public function index(){  
	    $app_id =  C('QQKEY'); 
      //应用的APPKEY 
     $app_secret = C('QQSECRET'); 
   //【成功授权】后的回调地址，即此地址在腾讯的信息中有储存 
    $code_url=root_url().url('callback');//回调地址
    //state参数用于防止CSRF攻击，成功授权后回调时会原样带回 
     session('state', md5(uniqid(rand(), TRUE))); 
    //拼接URL 
    $url = "https://graph.qq.com/oauth2.0/authorize?response_type=code&client_id="
     . $app_id . "&redirect_uri=" . urlencode($code_url) . "&state="
     .session('state'); 
     header('Location: '.$url);
	 exit;
	}
      //用户同意授权链接获取code
   public function callback(){ 
    $app_id =  C('QQKEY'); 
      //应用的APPKEY 
     $app_secret = C('QQSECRET'); 
	   if($_REQUEST['state'] == session('state' )) { 
    //拼接URL 
    $url= "https://graph.qq.com/oauth2.0/token?grant_type=authorization_code&"
     . "client_id=" . $app_id . "&redirect_uri=" . urlencode($my_url) 
     . "&client_secret=" . $app_secret . "&code=" . $code; 
    $result = file_get_contents($url); 
    if (strpos($result, "callback") !== false){ 
        $lpos = strpos($result, "("); 
        $rpos = strrpos($result, ")"); 
        $result = substr($result, $lpos + 1, $rpos - $lpos -1); 
        $msg = json_decode($result); 
        if (isset($msg->error)) { 
           $this->error( $msg->error);
           exit; 
        } 
    } 
    $params = array(); 
    parse_str($result, $params);//把传回来的数据参数变量化 
    $access_token_url = "https://graph.qq.com/oauth2.0/me?access_token=".$params['access_token']; 
    $str = file_get_contents($access_token_url); 
    if (strpos($str, "callback") !== false) { 
     $lpos = strpos($str, "("); 
     $rpos = strrpos($str, ")"); 
     $str = substr($str, $lpos + 1, $rpos - $lpos -1); 
    } 
    $user = json_decode($str);//存放返回的数据 client_id ，openid 
    if (isset($user->error)) { 
       $this->error( $user->error); 
       exit; 
    }
    $get_user_info_url = "https://graph.qq.com/user/get_user_info?access_token={$params['access_token']}&oauth_consumer_key={$app_id}&openid={$user->openid}&format=json"; 
      
    $arr = file_get_contents($get_user_info_url);//此为获取到的user信息 
    } 
    else
    { 
     echo("The state does not match. You may be a victim of CSRF."); 
    } 
	$uid= $this->get_uid_by_ucenter($openid,$appid,$arr["nickname"]);
		if(0 < $uid){ //UC登录成功
						/* 登录用户 */
			        $Member=new \app\index\model\Member;
					if($Member->login($uid)){ 
							//登录用户，记录日志
						 $url= session("url");
						 session("url".null);
						 $url=$url?$url:url('index/index');
                         Header("Location:". $url);
						 exit;
					}
	     }

	  }

     // 自动初始化微信用户
     public function get_uid_by_ucenter($openid,$appid,$nickname) {
		
		$info ['openid'] = $openid;
		$info ['appid'] =  $appid;
		$res = Db::name ( 'thirdLogin' )->where ( $info )->find ();
		if ($res){
			return $res ['uid'];
		}
		else {
			 $data2["username"]=$nickname;//用户名
		     $data2["password"]=md5(sha1("123456").config("datebase.key"));//密码
			 $data2["email"]="1213@qq.com";//密码
			 $data2["status"]=1;
			 $data2["reg_time"]=time();
			 $uid=Db::name ( 'UcenterMember' )->insertGetId($data2);
			 //写入用户
             $info["uid"]=$uid;
			 $info["access_token"]=session("access_token");
			 $info["refresh_token"]=session("refresh_token");
			 $info["create_time"]=time();
             $res=Db::name ( 'thirdLogin' )->insertGetId($info);
			return $res?$uid:0;
		}
	}
}
