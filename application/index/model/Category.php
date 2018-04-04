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
 * 分类模型
 */
class Category extends Model{
	/**商品分类垂直菜单调用**/
    public function info($where){
		$field = 'id,pid,title,model_id';
		$data =Db::name('category')->order('sort desc')->field($field)->where($where)->find( );
		return $data;
	}

    public function getTree($id = 0, $field = true){
        /* 获取当前分类信息 */
        if($id){
            $info = $this->info($id);
            $id   = $info['id'];
        }

        /* 获取所有商品分类 */
        $map  = array('status' => 1,'type'=>2);
        $list =Db::name('category')->field($field)->where($map)->order('sort desc')->select();
        $list = list_to_tree($list, $pk = 'id', $pid = 'pid', $child = '_', $root = $id);
        
        /* 获取返回数据 */
        if(isset($info)){ //指定分类则返回当前分类极其子分类
            $info['_'] = $list;
        } else { //否则返回所有分类
            $info = $list;
        }

        return $info;
    }
   public function makeTree(){
        $category =$this->getTree ();
        foreach ( $category as $k => $v ) {
			$cid=getChild($v["id"]);;
			$arr=array();
			array_push($cid,$v['id']);
			array_push($arr,$v['id']);
		   
			/**子分类**/
			$category [$k] ['child']= array ();    
			$condition['pid'] = array('in',$arr);
			$category [$k] ['child']= Db::name('category')->where($condition)->limit(10)->order("id desc")->select();    
		   
		   	/**品牌**/
			$category [$k] ['brand']= array ();    
			$condition2['category_id'] = array('in',$cid);
			$category [$k] ['brand']= Db::name('brand')->where($condition2)->limit(10)->order("id desc")->select();  
			
		   /**分类商品**/
			$category [$k] ['doc'] = array ( );
			$map['category_id']=array("in",$cid);
			$map['status']=1;
			$category [$k]['item'] =Db::name('goods')->where($map)->order("id desc")->limit(8)->select();   
			
		   /**广告**/
			$category [$k] ['ad']= array ();    
			$condition3['category_id'] = array('in',$cid);
            $condition3['status']=1;
			$category [$k] ['ad']=Db::name('ad')->where($condition3)->order("id desc")->select();
        }
        return $category;

      }
	
    /**
     * 获取指定分类的同级分类
     * @param  integer $id    分类ID
     * @param  boolean $field 查询字段
     * @return array
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>         
     */
    public function searchInfo($cate_id){
		$field = 'id,category_id,title,price,comments,view,sales,attributes,baoyou,has,cover_id';
        $cate_ids=$this->getChildrenId($cate_id);	
		$map['category_id']=array("in",$cate_ids);
		
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
		//品牌
		$info["brand_id"]=input('brand_id')?input('brand_id'):0;
		$map['baoyou']=safe_replace($info["baoyou"]);
		//有货
         $brands=safe_replace(input('brand_id'));
        if($info["brand_id"]){
		  $brands=safe_replace(input('brand_id'));
		  $map['brand_id']=array("in",$brands);
          
		 } 
		//属性查询
		$str=input('attrs');
	    if($str){
			$ids=array();
			$notins=array();
			$info["attrs"]=$str;
			$list=Db::name('goods')->where($map)->field($field)->select();
			foreach($list as $n=>$v){
			   $attributes=$v["attributes"];
		       if(strpos($attributes,$str)){
				  
			   }
			   else{
				   $notins[]=$v["id"]; 
			   }
		   } 
		   if($ids){
			    $map['id']=array("in",$ids);  
				//addUserLog("ids".var_export($ids,true),5) ;
		   }
		   if($notins){
			    $map['id']=array("not in",$notins);
				//addUserLog("ins".var_export($notins,true),5) ;
		   }
		}
	    //排序类型
	    $order=input('order')?input('order'):3;
		//价格排序方式
	    $range=input('range')?input('range'):"up";	
		if(!($order && is_numeric($order)&&$order<6)){
		    $this->error('排序错误！');
		}
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
		$info["order"]=$order;
		$info["range"]=$range; 
		$page=input('page')?input('page'):1;
		 if(!($page && is_numeric($page))){
		   $this->error('分类ID错误！');
		}	
		$info["data"]=getLists('goods',$map,12,$orderString,$field);
		$info["page"]=$info["data"]["list"]?$page:0;
		return $info;
    }

    /**
     * 获取指定分类子分类ID
     * @param  string $cate 分类ID
     * @return string       id列表
 
     */
      public function getChildrenId($id){
      
	    $cid=getChild($id);//	dump($catelist);
		if($cid){
			krsort($cid);
		}
		array_push($cid,$id);
		return $cid;
     }
	/**
     * 获取指定分类父分类ID
     * @param  string $cate 分类ID
     * @return string       id列表
 
     */
	 public function getParentId($id){
      
	    $cid=getParent($id);//	dump($catelist);
		if($cid){
			krsort($cid);
		}
		return $cid;
    }
	//动态获取指定分类商品
    public function getDatalist($cateid){     
        /**分类列表文档**/
        $ids = $this->getChildrenId($cateid);    		
		$map['category_id']=array("in",$ids);   
		$map['status']=1;   
		$list=Db::name( 'goods' )->where($map)->limit(8)->order("id desc")->select();         
		if($list){
			foreach ($list as $k => $v ) {
			   /**重组数据**/
				$id=$v["id"];
				$item[$id]["id"] =$id;    
				$item[$id]['url'] =url('goods/detail?id='.$id);
				$item[$id]['pic'] =get_cover( $v["cover_id"], "path" );
				$item[$id]['title'] =$v["title"];
				$item[$id]['price'] =$v["price"];
			}
            return $item;
	    }
     }
		/**商品分类垂直菜单调用**/
    public function getCategory(){
		$field = 'id,pid,title';
	
		$condition['status']=1;
	   
		$category = $this->field($field)->order('sort desc')->where($condition)->select( );
		$list = $this->unlimitedForLevel($category);
		return $list;
	}


    public function unlimitedForLevel($cate,$name = 'child',$pid = 0){
		$arr = array( );
		   foreach ( $cate as $key => $v ) {
		   //判断，如果$v['pid'] == $pid的则压入数组Child
		       if ($v['pid'] == $pid) {
					//递归执行
					$v[$name] = self::unlimitedForLevel($cate,$name,$v['id']);
					$arr[] = $v;
		       }
		   }
		return $arr;
	}

   public function getfooter(){     	
		
		$map['pid']=0;
		
        $list=Db::name( "cate" )->where($map)->order( "sort asc,id asc" )->select( );
		   foreach( $list as $n=> $val ){
			   $list[$n]['ids']=Db::name( "cate" )->where('pid=\''.$val['id'].'\'')->select( );
		   }
       return $list;
     }


}
