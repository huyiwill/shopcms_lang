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

class Home  extends Controller
{
	
	 protected function _initialize(){
        /* 读取站点配置 */
       
        if(!C('WEB_SITE_CLOSE')){
           $this->error('站点已经关闭，请稍后访问~');
        }
	    //$this->error("站点已关闭");
		$category=model("category")->getCategory() ;
		$this->assign('category', $category);
		$cartlist=session('cart');
		$sum = 0;$price = 0.00;
		if($cartlist){
		    foreach ($cartlist as $item) {		
		         $sum += $item['num'];
				 $price += $item['num'] * $item['price'];
		    }
		}	/**购物车调用**/
		if( is_login( ) ){
			$uid=is_login();
		    $UcenterMember=db("UcenterMember")->find($uid);
            $this->assign( 'UcenterMember',$UcenterMember );
		
		}

	
       $config['theme_color']=C('PC-COLOR');
       $this->assign ( 'config',$config );
	   $this->assign( 'cartlist',$cartlist );
	   $cart["total_num"]=$sum;
	   $cart["total_money"]=$price;
	   $cart["total_count"]=count($cartlist);
       $this->assign( 'cart',$cart);
	   $channel=model("channel")->getList();
	   $this->assign( 'channel',$channel);
	   
        /* 热门搜索 */
		$str=db( 'config' )->where( 'name="REKEWORD"' )->find();	
		$hotsearch=explode("|",$str['value']);
		$this->assign( 'hotsearch' , $hotsearch );

	   $footer=model("category")->getfooter() ;
	   $this->assign( 'footer',$footer );

    }
function GetRandStr($len) 
{ 
    $chars = array( 
        "a", "b", "c", "d", "e", "f",  "0", "1", "2",  
        "3", "4", "5", "6", "7", "8", "9" 
    ); 
    $charsLen = count($chars) - 1; 
    shuffle($chars);   
    $output = ""; 
    for ($i=0; $i<$len; $i++) 
    { 
        $output .= $chars[mt_rand(0, $charsLen)]; 
    }  
    return $output;  
} 
 
}