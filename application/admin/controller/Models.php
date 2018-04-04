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
namespace app\admin\controller;
use think\Controller;
use think\Db;

class Models extends Admin{
    public function index(){     
         if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
		$res=getLists('Models',$map,10,'id desc',"");;
	    $this->assign('res', $res);
		$this->meta_title="模型管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}

   public function edit($id){   
	    if($_POST){
		   $Models =model("Models");
           $res=$Models->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
		      $this->success("更新成功！",cookie("__forward__"));
		   }else{
			  $error=$Models->getError();
			  $this->error($error?$error:"更新失败");
		   } 
	  }
	  else{
		     cookie("__forward__",input('server.HTTP_REFERER'));
		     $map['id']=$id;
            /* 获取数据 */
             $info=db('Models')->where($map)->find($id);       
			 $this->assign('info', $info);
		     $this->meta_title="编辑模型";
		     $this->assign('meta_title', $this->meta_title);
	         return $this->fetch();
	   }
	}
    public function add($id=""){  
	    if($_POST){
		   $Models =model("Models");
           // 过滤post数组中的非数据表字段数据
           $res=$Models->validate(true)->allowField(true)->save($_POST);
	       if($res){
		      $this->success("新增成功！",cookie("__forward__"));
		   }else{
			  $error=$Models->getError();
			  $this->error($error?$error:"新增失败");
		   } 
	   }
	  else{
		    cookie("__forward__",input('server.HTTP_REFERER'));
		    $this->meta_title="增加模型";
		    $this->assign('meta_title', $this->meta_title);
	        return $this->fetch("models/edit");
	  }
	}
	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Models")->where($map)->delete();
		if($res){
		   $this->success("删除成功！");
		}else{
			 $this->success("删除失败！");
		}
	}
}