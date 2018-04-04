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
/**
 * 文档模型控制器
 * 文档模型列表和详情
 */
class Search extends Home {
	public function index(){
		$keyword= input('keyword');//获取搜索内容
		$keyword=safe_replace($keyword);//过滤
		
		$map['title']  = array('like','%'.$keyword.'%');
        
	
		//排序类型
	    $order=input('order')?input('order'):3;
		//价格排序方式
	    $range=input('range')?input('range'):"up";	
		if(!($order && is_numeric($order)&&$order<6)){
		    $this->error('排序错误！');
		}
		if (input('start_price')) {
			$start_price=safe_replace(input('start_price'));
            $map['price'][] = array('egt',$start_price);
            $info['start_price']=$_GET['start_price'];
        }
        if (input('end_price')) {
			$end_price=safe_replace(input('end_price'));
            $map['price'][] = array('elt',$end_price);
            $info['end_price']=$_GET['end_price'];
        }
		
		//包邮
	    $info["baoyou"]=input('baoyou')?input('baoyou'):0;
		$map['baoyou']=safe_replace($info["baoyou"]);
		//有货
	    $info["has"]=input('has')?input('has'):1;
		$map['has']=safe_replace($info["has"]);
		if($order<=4){
		 switch ($order){
               case 1:
                    $orderString="view asc";
                break;  
               case 2:
                    $orderString="sales desc";
               break;
			   case 3:
                    $orderString="id desc";
                break;  
               case 4:
                    $orderString="comments desc";
               break;

              default:
         }
        }
		else{
		   switch ($range){
               case "up":
                    $orderString="price asc";
                break;  
			    case "down":
                    $orderString="price desc";
                break;  
              default: 
           }
		
		}
		$page=input('page')?input('page'):1;
		 if(!($page && is_numeric($page))){
		   $this->error('分类ID错误！');
		}
		$info["order"]=$order;
		$info["range"]=$range;
        $info["page"]=$page;
		$info["title"]=$keyword;
		$this->assign("info",$info);
		
		$res=getLists('goods',$map,24,"id desc","");
		$this->assign("res",$res);
		//商品精选
		$field = 'id,title,price,cover_id,view,comments';
	    $view_list=lists('goods','',6,"view desc",$field);
		$this->assign("view_list",$view_list);
	

		$this->meta_title =$keyword;	
		$this->assign('meta_title',$this->meta_title);
		return $this->fetch();
	}

}
