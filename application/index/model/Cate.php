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
 * 优惠券模型
 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
 */
class Cart extends Model{
	/*
		添加商品
		param int $id sku主键
		string $name 商品名称
		float $price 商品价格
		int $num 购物数量
		*/
	public  function additem() {
		$num=input('post.num');
		$goodsid=input('post.goodsid'); // 用intval过滤$_POST['id']
        $path=input('post.path');
		if($path){
		    $map['path']=$path;
		}
		if($goodsid){
		    $map['goods_id']=$goodsid;
		}
		$info=Db::name("sku")->where($map)->find();
		if(!$info){
			$data["msg"]="sku不存在";
			$data["code"]=0;
			return $data;
		}
		$id=$info["id"];
		$price=$info["price"];
		$condition["id"]=$goodsid;
		$goods=Db::name("goods")->where($condition)->find();
		$cover_id=$goods["cover_id"];
		$arr=explode(',',$info['path']);$title="";
						   foreach($arr as $v){
						     $title.="&nbsp;".get_specs_title($v) ;
						   }
		$specifications=$title;
		$key="cart.".$id;
		$item =session($key);
		$carts = array();		
		//如果该商品已存在则直接加其数量
		if($item) {
			$array['id'] = $id;
			$array['goodsid'] = $goodsid;
			$array['price'] =$info["price"];
			$array['path'] = $path;
			$array['specifications'] = $specifications;
			$array['num'] = $item['num']+$num;
			$exsit=1;
			$tpl="";
		}
		else{
			$array['id'] = $id;
			$array['goodsid'] = $goodsid;
			$array['price'] = $info["price"];
			$array['num'] = $num;
			$array['path'] = $path;
			$array['specifications'] = $specifications;
			$exsit="0";
			$tpl="<li class='item{$id}'><a href=".url('Goods/detail?id='.$goodsid)."
			class='pic fl'><img src=".get_cover($cover_id,'path').">
			</a><a href=".url('Goods/detail?id='.$goodsid)." class='name fl'>
			{$info['title']}<br/>{$specifications}</a><div class='mcartRight'><span class='pro_price'>¥<em>
			{$price}</em>×<em class='item_num_{$id}'>{$array['num']}</em></span>
									<em><a onclick='cancel(this,{$id})'>删除</a></em>
								</div>
			</li>";
		}
		session($key,$array);
	//登录用户，处理详情页ajaxt提交的数据保存到数据库
		if(session_uid()){
			$uid=session_uid();
			$data['goods_id']=$goodsid;//商品id
			$data['sku_id']=$id;//skuid
			$data['uid']=$uid;//用户id
			$data['path']=$path;
			$list=Db::name("cart")->where($data)->find();
			if($list){
				$save['num']=$list["num"]+$num;
				Db::name("cart")->where($data)->update($save);
				$type="1";
				$num=$save["num"];
			}
			else{
				$data['price']=$price;//价格
			    $data['specifications']=$specifications;
				$data['num']=$num;
				Db::name("cart")->insert($data);
				$type="2";
			}
		
		}
	  
			$data['isin'] = $exsit;
			$data['total']=$this->getPrice(); /* 购物车中商品的总金额*/
			$data['status'] = 1;
			$data['tpl'] = $tpl;
			$data['price'] =$price;//当前商品价格
			$item= $this->getItem($id);  
			$data['specifications']=$specifications;//规格
			$data['num']=$item['num'];//当前商品数量
			$data['sum'] =$this->getNum();//总数量
			$data["count"]=$this->getCnt(); /*查询购物车中商品的种类 */
			$data['sku_id']=$id;//规格
			$data['msg'] = '已添加到购物车';
			return $data;
		
	}
 
    /*
    修改购物车中的商品数量
    int $id 商品主键
    int $num 某商品修改后的数量，即直接把某商品
    的数量改为$num
    */
    public function modNum($id,$num=1) {
        if (!isset(session('cart')[$id])) {
            return false;
        }
	    session('cart')[$id]['num'] = $num;
    }
 
    /*
    商品数量+1
    */
	public function incNum($id="",$num=1) {
		 $id=input('id');
		 $key='cart.'.$id;
		 $items=session($key);
         $array=array();  
		 $array['num']=$items["num"]+1;
		 $array['id']=$id;
		 $array['goodsid'] =$items["goodsid"];
		 $array['price'] =$items["price"];
		 $array['path'] =$items["path"];
		
		 $array['specifications'] =$items["specifications"];
         session($key,$array);
		if(session_uid()){
			$uid=session_uid();
			$cart=Db::name("cart");
			
			$data['sku_id']=safe_replace($id);//skuid
			$data['uid']=$uid;//用户id
			$list=Db::name("cart")->where($data)->find();
			if($list){
				$save['num']=$list["num"]+$num;
				$cart->where($data)->update($save);
				$type="1";
				$num=$save["num"];
			}
			
		}
		$count=$this->getCnt(); /*查询购物车中商品的种类 */
		$sum= $this->getNum();/* 查询购物车中商品的个数*/
		$price=$this->getPrice(); /* 购物车中商品的总金额*/
		$data['count'] =$count;
		$data['total'] =$price;
		$data['sum'] =  $sum;
		$data['status'] = 1;
		 return $data;


	}
 
    /*
    商品数量-1
    */
	public function decNum($id="",$num=1) {
		 $id=input('id');
		 $key='cart.'.$id;
		 $items=session($key);
         $array=array();
		 $array['id']=$id;  
		 $array['num']=$items["num"]-$num;
		 $array['goodsid'] =$items["goodsid"];
		 $array['price'] =$items["price"];
		 $array['path'] =$items["path"];
		 
		 $array['specifications'] =$items["specifications"];
		 if($array['num']>0){
           session($key,$array);
		 }
		 else{
		   session($key,null);
		 }
		if(session_uid()){
			$uid=session_uid();
			$data['sku_id']=safe_replace($id);//skuid
			$data['uid']=$uid;//用户id
			$list=Db::name("cart")->where($data)->find();
			if($list["num"]>$num){
				$save['num']=$list["num"]-$num;
				Db::name("cart")->where($data)->update($save);
			}else{
				Db::name("cart")->where($data)->delete();
			}
			
		}
		$count=$this->getCnt(); /*查询购物车中商品的种类 */
		$sum= $this->getNum();/* 查询购物车中商品的个数*/
		$price=$this->getPrice(); /* 购物车中商品的总金额*/
		$data['count'] =$count;
		$data['total'] =$price;
		$data['sum'] =  $sum;
		$data['status'] = 1;
		return $data;
	}

	public function delItem() {
		$id=input('id');
		$key="cart.{$id}";
		session($key,null);
		if(session_uid()){
			$uid=session_uid();
			$data['sku_id']=safe_replace($id);//skuid
			$data['uid']=$uid;//用户id
			Db::name("cart")->where($data)->delete();			
		}
		$count=$this->getCnt(); /*查询购物车中商品的种类 */
		$sum= $this->getNum();/* 查询购物车中商品的个数*/
		$price=$this->getPrice(); /* 购物车中商品的总金额*/
		$data['count'] =$count;
		$data['total'] =$price;
		$data['total']=$this->getPrice(); /* 购物车中商品的总金额*/
		$data['sum'] =  $sum;
		$data['status'] = 1;
		return $data;
	}
	public function delCart() {
	    $ids=safe_replace(input('id'));
        $list=explode(",",$ids);
        foreach ($list as $key=>$val) {
           $id=$val;
		   $key="cart.{$id}";
		   session($key,null);
		   if(session_uid()){
			 $uid=session_uid();
			 $data['sku_id']=$id;//skuid
			 $data['uid']=$uid;//用户id
			 Db::name("cart")->where($data)->delete();			
		  }
		}
		$count=$this->getCnt(); /*查询购物车中商品的种类 */
		$sum= $this->getNum();/* 查询购物车中商品的个数*/
		$price=$this->getPrice(); /* 购物车中商品的总金额*/
		$data['count'] =$count;
		$data['total'] =$price;
		$data['total']=$this->getPrice(); /* 购物车中商品的总金额*/
		//$Item=session('cart')[$id];
		//$data['num'] =session('cart')[$id]["num"];
		$data['sum'] =  $sum;
		$data['status'] = 1;
		return $data;
	}
    /*
    获取单个商品
    */
    public function getItem($id) {
		$item=session('cart');
        return $item[$id];
    }
 
    /*
    查询购物车中商品的种类
    */
    public function getCnt() {
		$item=session('cart');
        return count($item);
    }     
    /*
    查询购物车中商品的个数
    */
		/*
		查询购物车中商品的个数
		*/
	public function getNum(){
		if ($this->getCnt() == 0) {
			//种数为0，个数也为0
			return 0;
		}
		$sum = 0;
		$data = session('cart');
		foreach ($data as $item) {		
		    $sum += $item['num'];
		}
		return $sum;
	}
 
    /*
    购物车中商品的总金额
    */
    public function getPrice() {
        //数量为0，价钱为0
        if ($this->getCnt() == 0) {
            return 0;
        }
        $price = 0.00;
        $data = session('cart');
        foreach ($data as $item) {
            $price += $item['num'] * $item['price'];
        }
        return sprintf("%01.2f", $price);
    }
		/*
		清空购物车
		*/
	public function clear() {
		session('cart',null);
		$data['status'] = 1;
	    return $data;
	}
    public function checkcart() {
		
	    $cart = session('cart');
		$id=input('id');
		$ids=explode(",",$id);
		$sum = 0;$price = 0.00;
		 foreach ($cart as $item) {	
                 $id=$item['id'];
                 if(in_array($id,$ids)){				 
		            $sum += $item['num'];
                    $price += $item['num'] * $item['price'];
                 }
		   }
		$data['count'] =count($ids);
		$data['total'] =$price;
		$data['sum'] =  $sum;
		$data['status'] = 1;
		return $data;
	}
   public function get_data() {
		
	    $uid=session_uid();
		$map["uid"]=$uid;
		$list=Db::name('cart')->where($map)->select();
		$lists="";
		if($list){
				/*去重，拆分订单*/
				$list2= Db::name('cart')->where($map)->Distinct(true)->field('shop_id')->select();
				foreach($list2 as $k=> $val){
					$shop_id=$val['shop_id'];
					$data["uid"]=$uid;
					$data["shop_id"]=$val['shop_id'];
					$data["status"]=1;
					$info=Db::name("cart_shop")->where($data)->find();
					if($info){
						$cart_shop_id=$info["id"];
					}
					else{
						$cart_shop_id=Db::name("cart_shop")->insertGetId($data);
					}
					$where["shop_id"]=$val['shop_id'];
					$update["cart_shop_id"]=$cart_shop_id;
	                Db::name('cart')->where($where)->update($update);
	            }
				//购物车输出数据
				$lists=Db::name('cart_shop')->where("uid='$uid'and status=1")->select();
				foreach($lists as $n=> $val){
					$map["cart_shop_id"]=$val["id"];
				    $lists[$n]['n']= Db::name('cart')->where($map)->select();
						 foreach ($lists[$n]['n'] as &$v) {
						          $v['total'] = $v['price']*$v['num'];//计算价格
					    }
				} 
				

	        }
		return $lists;
	}
 
    
}
