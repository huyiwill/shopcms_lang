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
namespace app\index\model;
use think\Model;

/**
 * 优惠券模型
 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
 */
class Address extends Model{

    protected $auto = ['province','city','area',"uid"];
    protected $insert = ['province','city','area',"uid"];  
    protected $update = ['province','city','area',"uid"];  
     protected function setProvinceAttr()
    {
		 $id=safe_replace(input('province'));
         $map["id"]=$id;
		 $info=db("area")->where($map)->find();
        return $info['title'];
    }
  protected function setCityAttr()
    {
       $id=safe_replace(input('city'));
         $map["id"]=$id;
		 $info=db("area")->where($map)->find();
        return $info['title'];
    } 
	protected function setAreaAttr()
   {
       $id=safe_replace(input('area'));
         $map["id"]=$id;
		 $info=db("area")->where($map)->find();
        return $info['title'];
    }
protected function setUidAttr()
    {
		
		return is_login();
		
    }
    
}
