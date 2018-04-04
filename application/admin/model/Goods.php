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
 * 文档基础模型
 */
class Goods extends Model{

    protected $auto = ["create_time","update_time","start_time","end_time","uid",'attributes','attrs','specs'];
    protected $insert = ['status' => 1];  
    protected $update = ["create_time","update_time","start_time","end_time","uid",'attributes','attrs','specs']; 
 
     protected function setCreateTimeAttr(){
		   $create_time  = input('create_time');
		   return $create_time?strtotime($create_time):time();
		
    }
   protected function setStartTimeAttr(){
		   $create_time  = input('create_time');
		   return $create_time?strtotime($create_time):time();
		
    } 
	protected function setEndTimeAttr(){
		   $create_time  = input('create_time');
		   return $create_time?strtotime($create_time):time();
		
    }
	protected function setUidAttr(){
		return is_login();
    }
    protected function setUpdateTimeAttr(){
		
		   $update_time  = input('update_time');
		   return $update_time?strtotime($update_time):time();
		
    }
    protected function setAttributesAttr()
    {   
       if(input('post.attributes/a')){ 
	       return implode(",",input('post.attributes/a'));
	   }
      
    }
   protected function setSpecsAttr()
    {   
       if(input('post.specs/a')){ 
	       return implode(",",input('post.specs/a'));
	   }
      
    }
    protected function setAttrsAttr()
    {     //addUserLog(var_export(input('post.attrs/a'),true),6);
       if(input('post.attrs/a')){ 
	       return implode(",",input('post.attrs/a'));
	   }
      
    }
	public function updates(){
	    $Goods = new \app\admin\model\Goods;
		
		$mapp['id']=$_POST['category_id'];
		$model_id=db("category")->where($mapp)->value("model_id");
		//
        /* 添加商品 */
        if(!$_POST['id']){
			//新增商品
		   $res=$Goods->validate(true)->allowField(true)->save($_POST);
		   $error=$Goods->getError();
		   $id=$Goods->getLastInsID();
		   
		   if($error){
		     $this->error=$error;
			 return false;
		   } 
		   /* 添加sku */
		    if(isset($_POST['nums'])){
				$num=count($_POST['nums']);
				for($i=0; $i<$num; $i++){
					$data["title"]=$_POST['titles'][$i];
					$data["price"]=$_POST['prices'][$i];
					$data["num"]=$_POST['nums'][$i];
					$data["goods_id"]=$id;
					$data["path"]=$_POST['path'][$i];;
					db("sku")->insert($data);
					
				}
			}else{
				    $data["title"]="无"; 
					$data["goods_id"]=$id;
					$data["price"]=$_POST['price'];
					$data["num"]=$_POST['num'];
					$data["path"]=$id;
					db("sku")->insert($data);
				
			}
        
        } else { 
				//更新数据
				   $res=$Goods->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
		           $error=$Goods->getError();
				   if(!$res){
					 $this->error=$error;
					 return false;
				   } 
				$id=$_POST['id']; 
				   /* 更新sku */
		    if(isset($_POST['nums'])){
				$num=count($_POST['nums']);
				for($i=0; $i<$num; $i++){
					$data["title"]=$_POST['titles'][$i];
					$data["price"]=$_POST['prices'][$i];
					$data["num"]=$_POST['nums'][$i];
					$where["goods_id"]=$id;
					$where["path"]=$_POST['path'][$i];;
					if(db("sku")->where($where)->find()){
					   db("sku")->where($where)->update($data);
					}else{
						$data["goods_id"]=$id;
						$data["path"]=$_POST['path'][$i];
						db("sku")->insert($data);
					}
					
				}
			}else{
				   
					$where["goods_id"]=$id;
					$data["price"]=$_POST['price'];
					$data["num"]=$_POST['num'];
					$data["path"]=$id;
					db("sku")->where($where)->update($data);
				
			}	
				
        }
        return $_POST;

    }
}
