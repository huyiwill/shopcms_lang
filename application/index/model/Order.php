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
use think\Db;
/**
 * 文档基础模型
 */
class Order extends Model{

    public function getPageList($num,$order){
       
	     if($_REQUEST){
			foreach ($_REQUEST as $key=>$value){
				if($value){
					$value=safe_replace($value);
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		if (isset($map['start_time']) ) {
			  unset($map['start_time']);
              $map['create_time'] = array('egt',strtotime($_POST['start_time']));
        }
        if (isset($map['end_time']) ) {
			unset($map['end_time']);
            $map['create_time'] = array('elt',strtotime($_POST['end_time']));
        }
		if(input('status')){
		   $map['status'] = input('status');
		}
		if (isset($map['page']) ) {
				unset($map['page']);
        } 
	
		$map["uid"]=is_login();
		$p=input("page")?input("page"):1;
		$p=safe_replace($p);
        $res["list"]= db("order")->where($map)->limit($num)->page($p)->order($order)->select();
		foreach($res["list"] as $n=> $val){
                $res["list"][$n]['sales']=db("sales")->where('order_sn=\''.$val['order_sn'].'\'')->select();
		}
		$list = db("order")->where($map)->order($order)->paginate($num);
		$res["page"] = $list->render();
		$res["info"] = $map;
		return $res;
    }


}
