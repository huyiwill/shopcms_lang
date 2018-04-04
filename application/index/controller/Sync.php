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
use think\Db;
use think\Session;
use think\ThinkOauth;
//登录地址
class Sync extends Home{
     /* ajax销售记录-所有记录 */
   public function index(){
        $type=input('type');
        empty($type) && $this->error('参数错误');
        //加载ThinkOauth类并实例化一个对象
        $sns  = \think\ThinkOauth::getInstance($type);
        //跳转到授权页面
        $this->redirect($sns->getRequestCodeURL());
    }

    //登陆后回调地址
    public function callback(){
        $code = input('code');
        $type= input('type');
        $sns  = \ThinkOauth::getInstance($type);

        //腾讯微博需传递的额外参数
        $extend = null;
        if($type == 'tencent'){
            $extend = array('openid' =>input('openid'), 'openkey' =>input('openkey'));
        }

        $token = $sns->getAccessToken($code , $extend);
        $user_info =model('SyncLogin')->$type($token); //获取传递回来的用户信息
        $condition = array(
            'openid' => $token['openid'],
            'type' => $type,
            'status' => 1,
        );
        $sync =model('sync_login')->where($condition)->find(); // 根据openid等参数查找同步登录表中的用户信息
        if($sync) {//曾经绑定过
            $info =model('UcenterMember')->find($sync['uid']); 
			//根据UID查找Ucenter中是否有此用户
            if($info){
                $syncdata ['access_token'] = $token['access_token'];
                $syncdata ['refresh_token'] = $token['refresh_token'];
               model('sync_login')->where( array('uid' =>$info ['id'] ) )->save($syncdata); //更新Token
                $Member=model('Member');                   
                if( $Member->login($info['id']) ){    
                    $this->redirect(url('Index/index'));
					
                }
				else{
                    $this->error($Member->getError());
                }
            }
			else{
                $condition = array(
                    'openid' => $token['openid'],
                    'type' => $type
                );
               model('sync_login')->where($condition)->delete();
            }
        } else { //没绑定过，去注册
            //$this->assign ( 'user', $user_info );
            //$this->assign ( 'token', $token );
           // $this->display(T('Addons://SyncLogin@./default/reg'));
            $User = new UserApi;
			$username=$user_info['name']."_".$user_info['nick'];
			$password=time();
			$email="xxxxx@qq.com";
			$uid = $User->register($username, $password, $email);
           if(0 < $uid){
				//TODO: 发送验证邮件
			  $data['uid'] = $uid;
              $data['openid'] = $token['openid'];
              $data['type'] = $type;
              $data['access_token'] = $token['access_token'];
              db('sync_login')->insert($data);
				 /* 登录用户 */
				$Member =model('Member');
				if($Member->login($uid)){ //登录用户
					//TODO:跳转到登录前页面
					$this->success('登录成功！',url('Index/index'));
				}
			} else { //注册失败，显示错误信息
				//$this->error($this->showRegError($uid));
				//echo $uid.$token['access_token'];
			}

        }
    }
}
