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
/**
 * 文档基础模型
 */
class Specs extends Model{
     public function getlist($id){
	   $info=db("category")->find($id);
	   $map["model_id"]=$info["model_id"];
	   $map["pid"]=0;  
	   $data=db("specs")->where($map)->select();
	   foreach($data as  $n=>$val){
                  $where["pid"]=$val['id'];
				  $data[$n]["data"]=db("specs")->where($where)->select();
             					
	   }
		return $data;
   }
  public function updates(){
	    $Specs = new \app\admin\model\Specs;
        /* 添加或新增属性 */
        if(!$_POST['id']){ //新增属性
                //新增表字段
		   $res=$Specs->validate(true)->allowField(true)->save($_POST);
		   $error=$Specs->getError();
		   $id=$Specs->getLastInsID();
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
							 if(!db('Specs')->where($data)->find()){
								 $data["model_id"]=$_POST["model_id"];
								 db('Specs')->insert($data); 
							 }else{ 
								 $save["model_id"]=$_POST["model_id"];
								 db('Specs')->where($data)->update($save);  
							 }
		                  }
					 } 
			 }else{
			   return false;
			 }
        } else { 
				//更新数据
				   $res=$Specs->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
		           $error=$Specs->getError();
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
							 //判断同一个属性同一个pid是否存在
							 if(!db('Specs')->where($data)->find()){
								$data["model_id"]=$_POST["model_id"];
								db('Specs')->insert($data); 
							 }else{
								 //批量更换模型
								 $save["model_id"]=$_POST["model_id"];
								 db('Specs')->where($data)->update($save); 
								 
							 }
		                  }
					 }   
					   
				   }	
				
        }
        return $_POST;

    }  
   
}
