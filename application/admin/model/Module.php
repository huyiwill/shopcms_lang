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
namespace app\admin\model;
use think\Model;
use think\Db;
/**
 * 分类模型
 */
class Module extends Model{

 
    public function getTree($id = 0, $field = true){
        /* 获取当前分类信息 */
        if($id){
            $info = $this->info($id);
            $id   = $info['id'];
        }

        /* 获取所有商品分类 */
        $map  = array('status' => 1,'ismenu'=> 1);
        $list = $this->field($field)->where($map)->order('sort desc')->select();
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
        $category = $this->getTree ();
        foreach ( $category as $k => $v ) {
			$cid=array();
			$arr=array();
			array_push($cid,$v['id']);
			array_push($arr,$v['id']);
              foreach ( $v ['_'] as $ks => $vs ) {
                  array_push($cid,$vs['id']);
                     foreach ( $vs ['_'] as $kgs => $vgs ) {
                        array_push($cid,$vgs['id']);
                     }
             }
			/**分类商品**/
			$category [$k] ['doc'] = array ( );
			$map['category_id']=array("in",$cid);
			$map['status']=1;
			$category [$k]['doc'] =Db::name('Document')->where($map)->order("id desc")->limit(6)->select();
		   
			/**子分类**/
			$category [$k] ['child']= array ();    
			$condition['pid'] = array('in',$arr);
			$condition['ismenu'] = 1;	
			$condition['status']=1;
			$category [$k] ['child']= $this->where($condition)->limit(10)->order("id desc")->select();    
		   
			/**品牌**/
			$category [$k] ['brand']= array ();    
			$condition2['ypid'] = array('in',$cid);
            $condition2['status']=1;
			$category [$k] ['brand']=Db::name('brand')->where($condition2)->order("id desc")->select();
		   
		   /**广告**/
			$category [$k] ['ad']= array ();    
			$condition3['ypid'] = array('in',$cid);
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
    public function getSameLevel($id, $field = true){
        $info = $this->info($id, 'pid');
        $map = array('pid' => $info['pid'], 'status' => 1);
        return $this->field($field)->where($map)->order('sort')->select();
    }

    /**
     * 更新分类信息
     * @return boolean 更新状态
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>
     */


    /**
     * 获取指定分类子分类ID
     * @param  string $cate 分类ID
     * @return string       id列表
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>
     */
    public function getChildrenId($id){
      
	   $field = 'id,name,pid,title,link_id';
	   $category =$this->getTree( $id, $field );     
	   $ids = array();
       $ids[]='in';array_push($ids,$id);
       foreach ($category['_'] as $key => $value) {
              $ids[] = $value['id'];       
	          $id=$value['id'];   
	          $list=$this->where("status='1'and ismenu='1' and  pid='$id' ")->select();
      
	            foreach ($list as $key => $v){     
			      array_push($ids,$v['id']);
	           }
       }
       $ids[]=$id;
       
	   return implode(',', $ids);
    }
	//动态获取指定分类商品
    public function getDatalist($cateid){     
        /**分类列表文档**/
        $ids = $this->getChildrenId($cateid);    		
		$map['category_id']=array("in",$ids);   
		$map['status']=1;   
		$list=Db::name( 'Document' )->where($map)->limit(10)->order("id desc")->select();         
		foreach ($list as $k => $v ) {
		   /**重组数据**/
			$id=$v["id"];
			$item[$id]["id"] =$id;    
		    $item[$id]['url'] =U('Article/detail?id='.$id);
            $item[$id]['pic'] =get_cover( $v["cover_id"], "path" );
			$item[$id]['title'] =$v["title"];
			$item[$id]['price'] =$v["price"];
        }
       return $item;
     }
		/**商品分类垂直菜单调用**/
    public function getCategory(){
		$field = 'id,name,pid,title';
		$condition['display']=1;
		$condition['status']=1;
		$condition['ismenu']=1;
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
		$map['ismenu']=2;
		$map['pid']=0;
		$map['status']=1;
        $list=$this->where($map)->order( "id asc" )->select( );
		   foreach( $list as $n=> $val ){
			   $list[$n]['id']=$this->where('pid=\''.$val['id'].'\'')->select( );
		   }
       return $list;
     }


}
