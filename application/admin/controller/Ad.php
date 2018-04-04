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

class Ad extends Admin{
	/**
	 *首页
	 * @param string $name   传入配置英文名称
	 * @return string 配置值
	 */
    public function index(){     
        if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
        $res=getLists('ad',$map,10,'id desc',"");
	    $this->assign('res', $res);
		$this->meta_title="广告管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}
     /* 编辑广告 */
	public function edit($id=""){   
	    if($_POST){
		   $Ad = new \app\admin\model\Ad;
           $res=$Ad->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			    addUserLog("edit_ad",session_uid());
		        $this->success("更新成功！",cookie("__forward__"));
		   }else{
			    $error=$Ad->getError();
			    $this->error($error?$error:"更新失败！");
		   } 
	  }
	  else{
		 $map['id']=$id;
		 $info=db("Ad")->where($map)->find();
	     $this->assign('info', $info);
		 unset($map);
		 $map['pid']=0;
	     $list =db('category')->where($map)->select(); 
            /* 获取模块信息 */
         $this->assign('list', $list); 
		 cookie("__forward__",input('server.HTTP_REFERER'));
		 $this->meta_title="编辑广告-".$info["title"];
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
     /* 增加广告 */
	public function add($id=""){  
	  if($_POST){
		  $Ad = new \app\admin\model\Ad;
            // 过滤post数组中的非数据表字段数据
          $res=$Ad->validate(true)->allowField(true)->save($_POST);
	      if($res){
			   addUserLog("add_ad",session_uid());
		       $this->success("新增成功！",cookie("__forward__"));
		  }else{
			  $error=$Ad->getError();
			  $this->error($error?$error:"新增失败！");
		  } 
	}
	  else{
		  $map['pid']=0;
	      $list =db('category')->where($map)->select(); 
	      $this->assign('list', $list);
		  $this->meta_title="新增广告"; 
		  cookie("__forward__",input('server.HTTP_REFERER'));
		  $this->assign('meta_title', $this->meta_title);
	      return $this->fetch("ad/edit");
	  }
	}
    /* 删除广告 */
	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Ad")->where($map)->delete();
		if($res){
		   addUserLog("del_ad",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
	
}
