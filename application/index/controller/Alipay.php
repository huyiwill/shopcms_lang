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

class Alipay extends Home {
    /** 
	*支付宝支付初始化配置
	*/ 
	public function config() {
     
		 $alipay_config = array (
		
            //合作身份者ID，签约账号，以2088开头由16位纯数字组成的字符串，查看地址：https://b.alipay.com/order/pidAndKey.htm
			'partner'	=> C('alipaypartner'),

			//收款支付宝账号，以2088开头由16位纯数字组成的字符串，一般情况下收款账号就是签约账号，同上
			'seller_id'	=>C('alipaysellerid'),

			// MD5密钥，安全检验码，由数字和字母组成的32位字符串，查看地址：https://b.alipay.com/order/pidAndKey.htm
			'key'=>  C('alipaykey'),

			//签名方式
			'sign_type'=> strtoupper('MD5'),

			//字符编码格式 目前支持 gbk 或 utf-8
			'input_charset'=> strtolower('utf-8'),

			//ca证书路径地址，用于curl中ssl校验
			//请保证cacert.pem文件在当前文件夹目录中
			 'cacert'=> getcwd().'\\cacert.pem',

			//访问模式,根据自己的服务器是否支持ssl访问，若支持请选择https；若不支持请选择http
			'transport'   => 'http',

			// 支付类型 ，无需修改
			'payment_type'=> "1",
					
			// 产品类型，无需修改
			'service' => "create_direct_pay_by_user",

			// 防钓鱼时间戳  若要使用请调用类文件submit中的query_timestamp函数
			'anti_phishing_key' => "",
				
			// 客户端的IP地址 非局域网的外网IP地址，如：221.0.0.1
			'exter_invoke_ip' => "",
             //异步通知地址
            'notify_url' => root_url().url('alipay/notify_url'),
			
			//同步跳转
			'return_url' => root_url().url('alipay/return_url'),
			);

	       return $alipay_config;   
    }



	public function index() {
		if($_POST){
		//页面上通过表单选择在线支付类型，支付宝为alipay 财付通为tenpay
		        /* 支付设置 */
			include(ROOT_PATH.'extend/Alipay/lib/alipay_submit.class.php');
			$uid=session_uid(); 
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
			if($info["status"]){
			  $this->error( "已支付");
			}
			$total_fee=$info['total_money'];
		
			$paytype=input('paytype');
			if(!($paytype && is_numeric($paytype))){
		        $this->error('支付方式错误！');
		    }
				//不使用余额，货到付款
				if($paytype=="2"){
				  $update["status"]=1;
                  $update["ispay"]=1;
				  $update["paytype"]=5;
                  db("order")->where($map)->update($update); 
				 
					  //保存支付信息
					$where["out_trade_no"]=$info["order_sn"];
					$where["uid"]=is_login();
					$info=db("pay")->where($where)->find();
					if(!$info["status"]){
						$data["status"]=1; 
						$data["paytype"]=5;
						$data["update_time"]=time();
						db("pay")->where($where)->update($data);
					}
				    $url=url('pay/over?id='.$info["id"]);
				    $this->redirect($url);
				} 
			
			$out_trade_no=$info["order_sn"];//过滤 
			$body= C('SITENAME')."订单";//商品描述
			$subject=C('SITENAME')."订单-".$out_trade_no;//设置商品名称						
			//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

		    $alipay_config=$this->config();
//↑↑↑↑↑↑↑↑↑↑请在这里配置防钓鱼信息，如果没开通防钓鱼功能，为空即可 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
			$parameter = array(
					"service"       => $alipay_config['service'],
					"partner"       => $alipay_config['partner'],
					"seller_id"  => $alipay_config['seller_id'],
					"payment_type"	=> $alipay_config['payment_type'],
					"notify_url"	=>$alipay_config['notify_url'],
					"return_url"	=>$alipay_config['return_url'],
					"anti_phishing_key"=>$alipay_config['anti_phishing_key'],
					"exter_invoke_ip"=>$alipay_config['exter_invoke_ip'],
					"out_trade_no"	=> $out_trade_no,
					"subject"	=> $subject,
					"total_fee"	=>$total_fee,
					"body"	=> $body,
					"_input_charset"	=> trim(strtolower($alipay_config['input_charset']))
					//其他业务参数根据在线开发文档，添加参数.文档地址:https://doc.open.alipay.com/doc2/detail.htm?spm=a219a.7629140.0.0.kiX33I&treeId=62&articleId=103740&docType=1
					//如"参数名"=>"参数值"
			);
			//建立请求
			$alipaySubmit = new \AlipaySubmit($alipay_config);
			$html_text = $alipaySubmit->buildRequestForm($parameter,"get", "确认");
			echo $html_text;
		}
	
	 }

    public function return_url() {	
					//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

		include(ROOT_PATH.'extend/Alipay/lib/alipay_notify.class.php');

        $alipay_config=$this->config();

		   //计算得出通知验证结果
		$alipayNotify = new \AlipayNotify($alipay_config);
		$verify_result = $alipayNotify->verifyReturn();
		if($verify_result) {//验证成功
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//请在这里加上商户的业务逻辑程序代码
			  
			//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
			//获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表

			//商户订单号
			$out_trade_no = safe_replace($_GET['out_trade_no']);
                
			//支付宝交易号
			$trade_no =safe_replace($_GET['trade_no']);

			//交易状态
			$trade_status = $_GET['trade_status'];
            $uid=session_uid();
			$map['uid']=$uid;//用户id
			$map['out_trade_no']=safe_replace($out_trade_no);//用户id
            $info=db('pay')->where($map)->find();
			if($_GET['trade_status'] == 'TRADE_FINISHED' || $_GET['trade_status'] == 'TRADE_SUCCESS') {
				//判断该笔订单是否在商户网站中已经做过处理
					//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
					$this->meta_title = '支付成功';
		            $this->assign('meta_title',$this->meta_title);
					$this->assign('info',$info);
		            return $this->fetch("pay/over");
					//如果有做过处理，不执行商户的业务程序
			}
			else {
			  echo "trade_status=".$_GET['trade_status'];
			}
				
			echo "验证成功<br />";

			//——请根据您的业务逻辑来编写程序（以上代码仅作参考）——
			
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		}
			else {
				//验证失败
				//如要调试，请看alipay_notify.php页面的verifyReturn函数
				 $info["msg"] ="验证失败";
				 $this->assign('info',$info);
				 return $this->fetch("pay/failure");
			}
		

		}
	
	/**
		* 订单支付成功
		* @param type $money
		* @param type $param
		*/
	public function notify_url() {
	        
		include(ROOT_PATH.'extend/Alipay/lib/alipay_notify.class.php');
        $alipay_config=$this->config();
					//计算得出通知验证结果
		$alipayNotify = new \AlipayNotify($alipay_config);
		$verify_result = $alipayNotify->verifyNotify();

		if($verify_result) {//验证成功
			/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//请在这里加上商户的业务逻辑程序代

			
			//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
			
			//获取支付宝的通知返回参数，可参考技术文档中服务器异步通知参数列表
			
			//商户订单号
			$out_trade_no =safe_replace($_REQUEST['out_trade_no']);
            $map['out_trade_no']=safe_replace($out_trade_no);//用户id
			//支付宝交易号
			$trade_no = $_REQUEST['trade_no'];
               
			//交易状态
			$trade_status = $_REQUEST['trade_status'];
	        $payinfo =db("Pay")->field(true)->where($map)->find();

			if($_POST['trade_status'] == 'TRADE_FINISHED') {
				//判断该笔订单是否在商户网站中已经做过处理
					//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
					//请务必判断请求时的total_fee、seller_id与通知时获取的total_fee、seller_id为一致的
					//如果有做过处理，不执行商户的业务程序
					 if ($payinfo['status'] == 1) {
                        
                          echo "已经支付成功";		//请不要修改或删除
                    }	
				//注意：
				//退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知

				//调试用，写文本函数记录程序运行情况是否正常
				//logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");
			}
			else if ($_POST['trade_status'] == 'TRADE_SUCCESS') {
				//判断该笔订单是否在商户网站中已经做过处理
					//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
					//请务必判断请求时的total_fee、seller_id与通知时获取的total_fee、seller_id为一致的
					//如果有做过处理，不执行商户的业务程序
			
                if ($payinfo['status'] == 0) {
                        $data["update_time"]=time();
                        $data["status"]=1;
                         db("Pay")->where($map)->update($data);
						 $this->update($out_trade_no);
						
                }	
				//注意：
				//付款完成后，支付宝系统发送该交易状态通知

				//调试用，写文本函数记录程序运行情况是否正常
				//logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");
			}

			//——请根据您的业务逻辑来编写程序（以上代码仅作参考）——
				
			echo "success";		//请不要修改或删除
	
				/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			}
			else {
				//验证失败
				echo "fail";

				//调试用，写文本函数记录程序运行情况是否正常
				//logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");
			}
	  }
	public function update($out_trade_no){	
		   
            $map['out_trade_no']=safe_replace($out_trade_no);//用户id

	       $info =db("Pay")->field(true)->where($map)->find();
		   if(!$info){
			  return false; 
		   }
		  $model=$info["model"];
		  $uid=$info["uid"];
		  //$map["uid"]=is_login();
          $money=safe_replace($info["total_money"]);
		  $type=safe_replace($info["type"]);
		  $uid=safe_replace($info["uid"]);
		  $UcenterMember=db("UcenterMember"); 
		 
		  if($type=="1"&& $info['status'] =="1"){
			  //充值会员账户
		     $u["id"]=$uid;
		     $in=$UcenterMember->where($u)->find(); 
			 $save["account"]=$in["account"]+$info["total_money"];
			 $UcenterMember->where($u)->update($save);
			
			
		     $save2["uid"]=$uid;
             $save2["type"]=1;
			 $save2["money"]=$info["total_money"];;//充值后剩余金额
			 $save2["create_time"]=time();
			 $save2["content"]="充值";
			 $save2["total"]=$in["account"]+$info["total_money"];;//充值后剩余金额
             db("account_log")->insert($save2); 
			 //addMoneyLog($info["total_money"],$uid,1,"会员充值");
			
		  }
		  //购物车立即购买订单支付
		  if($type=="2"&& $info['status'] =="1"){
		     $map2["id"]=$info["order_id"];
		     $map2["uid"]=$uid;
			 $save2["status"]=1;//支付完成
			 $save2["ispay"]=2;//支付完成
			 $save2["paytype"]=4;//支付完成
			 $save2["update_time"]=time();
             $res=db($model)->where($map2)->update($save2);
			 //$openid=get_openid_by_uid($uid);	
			 //$re=sendTplorder($openid,$v["total_money"],$v["lists"]);//发送模板消息	 
			        
		  }
		 
		  return true;
    } 
	 //充值
	 public function add() {
	 	if($_POST){
            $alipay_config=$this->config();
			include(ROOT_PATH.'extend/Alipay/lib/alipay_submit.class.php');
			
			$pay_money=safe_replace(input('account'));
			if(!$pay_money){
			  $this->error('充值数额错误');
			}
			$uid=is_login();
            $out_trade_no=time().rand(12,57).$uid;//过滤 
				//保存支付信息
			$data["out_trade_no"]= $out_trade_no;
			$data["total_money"]=$pay_money;
			$data["uid"]=$uid;
			$data["type"]=1;//充值订单
			$data["model"]="account";
			db("pay")->insert($data);

			$body= C('SITENAME')."订单";//商品描述
			$subject=C('SITENAME')."订单-".$out_trade_no;//设置商品名称						
			//构造要请求的参数数组，无需改动
			$parameter = array(
					"service"       => $alipay_config['service'],
					"partner"       => $alipay_config['partner'],
					"seller_id"  => $alipay_config['seller_id'],
					"payment_type"	=> $alipay_config['payment_type'],
					"notify_url"	=>$alipay_config['notify_url'],
					"return_url"	=>$alipay_config['return_url'],
					"anti_phishing_key"=>$alipay_config['anti_phishing_key'],
					"exter_invoke_ip"=>$alipay_config['exter_invoke_ip'],
					"out_trade_no"	=> $out_trade_no,
					"subject"	=> $subject,
					"total_fee"	=> $pay_money,
					"body"	=> $body,
					"_input_charset"	=> trim(strtolower($alipay_config['input_charset']))
					//其他业务参数根据在线开发文档，添加参数.文档地址:https://doc.open.alipay.com/doc2/detail.htm?spm=a219a.7629140.0.0.kiX33I&treeId=62&articleId=103740&docType=1
					//如"参数名"=>"参数值"
			);
			//建立请求
			$alipaySubmit = new \AlipaySubmit($alipay_config);
			$html_text = $alipaySubmit->buildRequestForm($parameter,"get", "确认");
			echo $html_text;
		}
	 }
     
}