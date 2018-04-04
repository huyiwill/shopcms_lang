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
/*购物车*/
class Cart extends Home{
	//首页
	public function index() {
		  $meta_title = '我的购物车';
		  $this->assign('meta_title', $meta_title);
          $lists=lists("goods",'',"9","id desc");
		  $this->assign('lists',$lists);
	      return $this->fetch();
		
	}
	/*加入购物车*/
	public  function additem() {
		$data=model("cart")->additem() ;
	    return $data;
	}
    /*列表页加入购物车*/
    public  function addList() {
		$data=model("cart")->addList() ;
	    return $data;
	}
	/*购物车增加商品数量*/
    public  function incNum() {
		$data=model("cart")->incNum() ;
	    return $data;
	}
	public  function decNum() {
		$data=model("cart")->decNum() ;
	    return $data;
	}
    //删除单一商品
    public  function delItem() {
		$data=model("cart")->delItem() ;
	    return $data;
	}
    //删除多个商品
	public  function delCart() {
		$data=model("cart")->delCart() ;
	    return $data;
	}
    //查询
	public  function checkcart() {
		$data=model("cart")->checkcart() ;
	    return $data;
	}	
    //清空购物车
	public  function clear() {
		$data=model("cart")->clear() ;
	    return $data;
	}
}
