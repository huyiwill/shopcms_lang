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
class Config extends Admin{
    public function index(){     
         if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
		$res=getLists('Config',$map,10,'id desc',"");;
	    $this->assign('res', $res);
		$this->meta_title="配置管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	} 

	//系统配置
	public function systems($config =""){   
	    if($_POST){
		   if($config && is_array($config)){
            $Config =Db::name('Config');
			$res=array();
            foreach ($config as $name => $value) {
                $map = array('name' => $name);
				$res[]=$value;
                $Config->where($map)->setField('value', $value);
            }
           }
	       if($res){
			     addUserLog("edit_config",session_uid());
		      $this->success("更新成功！");
		   }else{
			   $this->error("更新失败！",'index');
		   } 
	  }
	  else{
		$group  =  input('group');
        $map['group']=$group?$group:0;
		$type   = C("GROUP");
		$type=explode("|",$type);
        $list   = Db::name("Config")->where($map)->select();
       
        $this->assign('list',$list);
        $this->assign('type',$group);//dump($type);
		$this->assign('groups',$type);
        $this->meta_title = '系统设置';
       
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch();
	   }
	}
  
	public function edit($id){   
	    if($_POST){
		   $config =model("Config");
           $res=$config->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			     addUserLog("edit_config",session_uid());
		      $this->success("更新成功！",'index');
		   }else{
			    $error=$config->getError();
			    $this->error($error?$error:"更新失败！");
		   } 
	  }
	  else{
		 $group  =  input('group');
         $map['group']=$group?$group:0;
		 $type   = C("GROUP");
		 $type=explode(",",$type);
         $list   = Db::name("Config")->where($map)->select();
         $this->assign('list',$list);
		 $map2['id']=$id;
		 $info=Db::name("config")->where($map2)->find();
	     $this->assign('info', $info);
		 $this->meta_title="编辑配置";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
    public function add($id=""){  
	  if($_POST){
		    $config =model("Config");
        // 过滤post数组中的非数据表字段数据
           $res=$config->validate(true)->allowField(true)->save($_POST);
	      if($res){
		     addUserLog("add_config",session_uid());
		     $this->success("新增成功！",'index');
		 }else{
			$error=$config->getError();
		    $this->error($error?$error:"新增失败！");
		} 
	}
	  else{
		$group  =  input('group');
        $map['group']=$group?$group:0;
		$type   = C("GROUP");
		$type=explode(",",$type);
        $list   = Db::name("Config")->where($map)->select();
      
         $this->assign('list',$list);
		 $this->meta_title="新增配置";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch("config/edit");
	  }
	}
	 public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		$res=Db::name("config")->where($map)->delete();
		if($res){
		   addUserLog("del_config",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->success("删除失败！");
		}
	}
	
}
