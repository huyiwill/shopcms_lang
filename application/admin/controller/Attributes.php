<?php
// +----------------------------------------------------------------------
// | yershop网店管理系统
// +----------------------------------------------------------------------
// | Copyright (c) 2017 http://www.yershop.com All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：yershop网店管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用yershop网店管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.yershop.com
namespace app\admin\controller;
use think\Controller;
use think\Db;

class Attributes extends Admin{

    public function index(){     
        if($_POST){
			foreach ($_POST as $key=>$value){
				if($value!=""){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
		if(input('pid')){
            $map['pid']=input('pid');
        }else{
		    $map['pid']=0;
		}
		if(input('model_id')){
            $map['model_id']=input('model_id');
        }
		$res=getLists('Attributes',$map,10,'id desc',"");;
	    $this->assign('res', $res);
		$this->meta_title="属性配置管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}

   public function edit($id){   
	    if($_POST){
		   $Attributes =new \app\admin\model\Attributes;
           $res=$Attributes->updates();
	       if($res){
		      $this->success("更新成功！",cookie("__forward__"));
		   }else{
			  $error=$Attributes->getError()?$Attributes->getError():"更新失败！";
			  $this->error($error);
		   } 
	  }
	  else{
		    $map['id']=$id;
            /* 获取数据 */
             $info=db('Attributes')->where($map)->find($id);       
             $typelist =db('models')->select();
		     $this->assign('typelist',$typelist);
		     unset($map);
			  cookie("__forward__",input('server.HTTP_REFERER'));
			 $map['pid']  = 0;
             $list=db('Attributes')->where($map)->select();
		     $this->assign('list',$list);
			 $this->assign('info', $info);
		     $this->meta_title="编辑属性";
		     $this->assign('meta_title', $this->meta_title);
	         return $this->fetch();
	   }
	}

    public function add($id=""){  
	    if($_POST){
		   $Attributes =new \app\admin\model\Attributes;
           $res=$Attributes->updates();
	       if($res){
		      $this->success("更新成功！",cookie("__forward__"));
		   }else{
			  $error=$Attributes->getError()?$Attributes->getError():"新增失败！";
			  $this->error($error);
		   } 
	   }
	  else{
		    $typelist =db('models')->select();
		    $this->assign('typelist',$typelist);
			 cookie("__forward__",input('server.HTTP_REFERER'));
		    $map['pid']  = 0;
			$list=db('Attributes')->where($map)->select();
		    $this->assign('list',$list);
			$this->meta_title="新增属性";
		    $this->assign('meta_title', $this->meta_title);
	        return $this->fetch("attributes/edit");
	  }
	}

	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Attributes")->where($map)->delete();
		if($res){
		   $this->success("删除成功！");
		}else{
			 $this->success("删除失败！");
		}
	}
}