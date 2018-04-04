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
 * 前台公共控制器
 * 为防止多分组Controller名称冲突，公共Controller名称统一使用分组名称
 */
class Sina extends Home{
     protected function _initialize(){
	 
	 }
	//微信认证链接
       public function index(){        
			$url="https://api.weibo.com/oauth2/authorize?client_id=Y57556765&response_type=code&redirect_uri=http://demo.yershop.com/";
            //  echo $url;
			$appid=C('SINAAPPID');//申请应用时分配的AppKey
            $secret=C('SINASECRET');//申请应用时分配的secret
			$callback_url=root_url().url('callback');//回调地址
			define( "WB_AKEY" , C('SINAAPPID') );
            define( "WB_SKEY" , C('SINASECRET'));
            define( "WB_CALLBACK_URL" , $callback_url );
			include(ROOT_PATH.'extend/Sina/saetv2.ex.class.php');
			$o = new \SaeTOAuthV2($appid , $secret );
			$code_url = $o->getAuthorizeURL( $callback_url ); 
			header('Location: '.$code_url);
			exit;
      }
    //用户同意授权链接获取code
       public function callback(){        
            $appid=C('SINAAPPID');//申请应用时分配的AppKey
            $secret=C('SINASECRET');//申请应用时分配的secret
			$callback_url=root_url().url('callback');//回调地址
			define( "WB_AKEY" , C('SINAAPPID') );
            define( "WB_SKEY" , C('SINASECRET'));
            define( "WB_CALLBACK_URL" , $callback_url );	
			include(ROOT_PATH.'extend/Sina/saetv2.ex.class.php');
			$appid="";//申请应用时分配的AppKey
            $secret="";//申请应用时分配的secret
			$callback_url="";//回调地址
			$SaeTOAuthV2 = new \SaeTOAuthV2( $appid , $secret );
			if (isset($_REQUEST['code'])) {
				$keys = array();
				$keys['code'] = $_REQUEST['code'];
				$keys['redirect_uri'] = $callback_url;
				try {
					$access_token =$SaeTOAuthV2->getAccessToken( 'code', $keys ) ;
				} catch (OAuthException $e) {
				}
			}
			if ($token) {
				session("access_token",$token['access_token']);
				$SaeTOAuthV2 = new \SaeTOAuthV2($appid,$secret,$token['access_token']);  
				$user =$SaeTOAuthV2->get_uid();  
				$openid = $user['uid'];  
				$arr=$SaeTOAuthV2->show_user_by_id($uid); //微博sdk方法获取用户的信息 
				$uid= $this->get_uid_by_ucenter($openid,$appid,$arr["screen_name"]);
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
	   }
	  // 自动初始化用户
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
