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
class Attributes extends Model{

	//获取规格属性
	public function getlist($id,$type){
	   $info=db("category")->find($id);
	   $map["model_id"]=$info["model_id"];
	   $map["pid"]=0;  
	   $map["type"]=$type; 
	   $data=db("attributes")->where($map)->select();
	   foreach($data as  $n=>$val){
                  $where["pid"]=$val['id'];
				  $data[$n]["list"]=db("attributes")->where($where)->select();
				  
             					
	   }
		return $data;
   }
public function updates(){
	    $Attributes = new \app\admin\model\Attributes;
        /* 添加或新增属性 */
        if(!$_POST['id']){
			//新增属性
		   $res=$Attributes->validate(true)->allowField(true)->save($_POST);
		   $error=$Attributes->getError();
		   $id=$Attributes->getLastInsID();
		   if($error){
		     $this->error=$error;
			 return false;
		   }
             if($res){  
				  if($_POST["value"]){
						$arr=explode("、",$_POST["value"]); 
						 $save=array();
                          foreach($arr as $key=>$val){
		                     $data["title"]=$val;
							 $data["pid"]=$id;
							 if(!db('Attributes')->where($data)->find()){
								 $data["model_id"]=$_POST["model_id"];
								 db('Attributes')->insert($data); 
							 }else{
								 $save["model_id"]=$_POST["model_id"];
								 db('Attributes')->where($data)->update($save);  
							 }
		                  }
					 } 
			 }else{
			   return false;
			 }
        } else { 
				//更新数据
				   $res=$Attributes->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
		           $error=$Attributes->getError();
				   if(!$res){
					 $this->error=$error;
					 return false;
				   }else{
					 if($_POST["value"]){
						$arr=explode("、",$_POST["value"]); 
						 $save=array();
                          foreach($arr as $key=>$val){
		                     $data["title"]=$val;
							 $data["pid"]=$_POST["id"];
							 if(!db('Attributes')->where($data)->find()){
								$data["model_id"]=$_POST["model_id"];
								db('Attributes')->insert($data); 
							 }else{
								 $save["model_id"]=$_POST["model_id"];
								 db('Attributes')->where($data)->update($save); 
								 
							 }
		                  }
					 }   
					   
				   }	
				
        }
        return $_POST;

    }

}
