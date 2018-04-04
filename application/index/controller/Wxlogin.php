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
namespace app\wap\Controller;
use think\Controller;
use think\Db;
/**
 * 前台公共控制器控制器
 * 微信登录
 */
class Wxlogin extends Home{

	//微信认证链接
       public function index(){
		    $code_url=root_url().url('callback');//回调地址
			$url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx23798bc8e1f701eb&redirect_uri="
			.$code_url."&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect";
			$url="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx23798bc8e1f701eb&redirect_uri="
			.$code_url."&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect"; 
			header('Location: '.$url);
			
        }
      //用户同意授权链接获取code
       public function callback(){        
           $code=$_GET['code'];
		   if (empty ( $code )) {
			    $this->error ( '获取code失败' );
		   }   
		   $appid="wx23798bc8e1f701eb" ;
		   $secret='';;
		   $state = 'a-zA-Z0-9';
		 
           $url ='https://api.weixin.qq.com/sns/oauth2/access_token?appid=' . $appid. '&secret=' . $secret . '&code=' . $code . '&grant_type=authorization_code'; 
	         $ch1 = curl_init ();
		     $timeout = 5;
		     curl_setopt ( $ch1, CURLOPT_URL, $url );
		     curl_setopt ( $ch1, CURLOPT_RETURNTRANSFER, 1 );
		     curl_setopt ( $ch1, CURLOPT_CONNECTTIMEOUT, $timeout );
		     curl_setopt ( $ch1, CURLOPT_SSL_VERIFYPEER, FALSE );
		     curl_setopt ( $ch1, CURLOPT_SSL_VERIFYHOST, false );
		     $res = curl_exec ( $ch1 );
		     curl_close ( $ch1 );
		     $access = json_decode ( $res, true );//取得access_token

		    if (empty ( $access ['access_token'] )) {
			   $this->error ( '获取access_token失败,请确认AppId和Secret配置是否正确,然后再重试。');
		    }else{
				$access_token=$access ['access_token'];
				$openid =$access['openid'];
				$access_token=$access ['access_token'];//dump($access);
			   // 拉取用户信息(需scope为 snsapi_userinfo)
                session('access',$access_token); //保存授权信息  
			    session('refresh_token ',$access["refresh_token"]); //保存授权信息   
				$refresh_token=$access["refresh_token"];
				//$re=$this->get_refresh_token($appid, $refresh_token); 
				$data= $this->get_user_info($access_token ,$access['openid']);
				
				$condition ['openid'] =$openid;
				$condition ['token'] = $appid;
                $uid= $this->get_uid_by_ucenter($openid,$appid,$data);
				if(0 < $uid){ //UC登录成功
						/* 登录用户 */
					$Member=new \app\wap\model\Member;
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
	   }
	 // 自动初始化微信用户
     public function get_uid_by_ucenter($openid,$appid,$data) {
		
		$info ['openid'] = $openid;
		//$info ['token'] =  $appid;
		$res = db ( 'syncLogin' )->where ( $info )->find ();
		if ($res){
			return $res ['uid'];
		}
		else {
			 $data2["username"]=$data["nickname"];//用户名
		    
			 $data2["headimgurl"]=$data["headimgurl"];;//密码
			 $res=db('UcenterMember')->where($data2 )->find();
             if($res){
			       return $res['id'];
		     } 
			 $data2["password"]=md5(sha1("123456").config("datebase.key"));//密码
			 //$data2["email"]="1213@qq.com";//密码
			 $data2["status"]=1;
			 $data2["reg_time"]=time();
			 $uid=db ( 'UcenterMember' )->insertGetId($data2);
			 //写入用户
             $info["uid"]=$uid;unset($info ['token']);
			 $info["access_token"]=session("access_token");
			 $info["refresh_token"]=session("refresh_token");
			 //$info["create_time"]=time();
             $res=db ( 'syncLogin' )->insertGetId($info);
			return $res?$uid:0;
		}
	}
	
 // 拉取用户信息(需scope为 snsapi_userinfo)
 
      public function get_user_info($access_token = '', $openid = ''){
             $url = "https://api.weixin.qq.com/sns/userinfo?access_token={$access_token}&openid={$openid}&lang=zh_CN";
             $ch1 = curl_init ();
		     $timeout = 5;
		     curl_setopt ( $ch1, CURLOPT_URL, $url );
		     curl_setopt ( $ch1, CURLOPT_RETURNTRANSFER, 1 );
		     curl_setopt ( $ch1, CURLOPT_CONNECTTIMEOUT, $timeout );
		     curl_setopt ( $ch1, CURLOPT_SSL_VERIFYPEER, FALSE );
		     curl_setopt ( $ch1, CURLOPT_SSL_VERIFYHOST, false );
		     $data = curl_exec ( $ch1 );
		     curl_close ( $ch1 );
		     $info = json_decode ( $data, true );//取得access_token
			return $info;          
    }
    public function get_refresh_token($appid= '', $r = ''){
            $url = "https://api.weixin.qq.com/sns/refresh_token?a?appid={$appid}&grant_type=refresh_token&refresh_token={$r}}";
             $ch1 = curl_init ();
		     $timeout = 5;
		     curl_setopt ( $ch1, CURLOPT_URL, $url );
		     curl_setopt ( $ch1, CURLOPT_RETURNTRANSFER, 1 );
		     curl_setopt ( $ch1, CURLOPT_CONNECTTIMEOUT, $timeout );
		     curl_setopt ( $ch1, CURLOPT_SSL_VERIFYPEER, FALSE );
		     curl_setopt ( $ch1, CURLOPT_SSL_VERIFYHOST, false );
		     $data = curl_exec ( $ch1 );
		     curl_close ( $ch1 );
		     $access = json_decode ( $data, true );//取得access_token
		
			return $access;          
    }
}
