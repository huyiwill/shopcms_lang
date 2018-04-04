<?php
// +----------------------------------------------------------------------
// | yershop网店管理系统
// +----------------------------------------------------------------------
// | Copyright (c) 2018 http://www.yershop.com All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：yershop网店管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用yershop网店管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.yershop.com
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;
/**
 * 后台Au控制器
 */
class Au extends Admin{

     /* Au查询首页 */
	public function index(){     
        if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
        $res=getLists('Au',$map,10,'id desc',"");
	    $this->assign('res', $res);
		$this->meta_title="Au管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}


    /* 编辑Au */
	public function edit($id){   
	    if($_POST){
		   $Au = new \app\admin\model\Au;
           $res=$Au->allowField(true)->validate(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			   addUserLog("edit_Au",session_uid());
		      $this->success("更新成功！",cookie("__forward__"));
		   }else{
			  $error=$Au->getError()?$Au->getError():"更新失败！";
			  $this->error($error);
		   } 
	   }
	   else{
		 $map['id']=$id;
		 $info=db("Au")->where($map)->find();
	     $this->assign('info', $info);
		
		   cookie("__forward__",input('server.HTTP_REFERER'));
		 $this->meta_title="编辑Au";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
	 /* 增加Au */
	public function add($id=""){  
	   if($_POST){
		  $Au = new \app\admin\model\Au;
            // 过滤post数组中的非数据表字段数据
          $res=$Au->validate(true)->allowField(true)->save($_POST);
	      if($res){
			  addUserLog("add_Au",session_uid());
		      $this->success("新增成功！",cookie("__forward__"));
		  }else{
			  $error=$Au->getError()?$Au->getError():"新增失败！";
			  $this->error($error);
		  } 
	 }
	  else{
		
		  $this->meta_title="新增Au";
		    cookie("__forward__",input('server.HTTP_REFERER'));
		  $this->assign('meta_title', $this->meta_title);
	      return $this->fetch("au/edit");
	  }
	}
	 /* 删除Au*/
	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Au")->where($map)->delete();
		if($res){
		   addUserLog("del_Au",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
	
}
