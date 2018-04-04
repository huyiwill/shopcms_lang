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
class Cate extends Admin{ 
   
    public function index(){     
		$list=$this->getCate();
	    $this->assign('list', $list);
		$this->meta_title="文章分类管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}
	public function edit($id){   
	    if($_POST){
		   $Cate =model("Cate");
           $res=$Cate->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
		       $this->success("更新成功！", cookie("__forward__"));
		   }else{
			   $error=$Cate->getError();
			   $this->error($error?$error:"更新失败");
		   } 
	  }
	  else{
		 $map['id']=$id;
		 $info=db("Cate")->where($map)->find();
	     $this->assign('info', $info);
		 unset($map);
	     cookie("__forward__",input('server.HTTP_REFERER'));
	     $map['pid']=0;
         $field = 'id,pid,title,sort';
		 $list=db( 'Cate' )->where($map)->field($field)->order("id asc")->select();
	     $this->assign('list', $list);
		 $this->meta_title="编辑分类-".$info["title"];
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
    public function add($pid=""){  
	    if($_POST){
		   $Cate =model("Cate");
           // 过滤post数组中的非数据表字段数据
           $res=$Cate->validate(true)->allowField(true)->save($_POST);
	       if($res){
		       $this->success("新增成功！", cookie("__forward__"));
		  }else{
			   $error=$Cate->getError();
			   $this->error($error?$error:"新增失败");
		  } 
	   }
	  else{
		 if($pid){
             $info['pid']=$pid;
			 $this->assign('info', $info);
         }
         $map['pid']=0;
         $field = 'id,pid,title,sort';
		 $list=db( 'Cate' )->where($map)->field($field)->order("id asc")->select();
	     cookie("__forward__",input('server.HTTP_REFERER'));
		 $this->assign('list', $list);
		 $this->meta_title="新增文章分类";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch("cate/edit");
	  }
	}
	 /**文章分类菜单调用**/
    public function getCate(){
	    
		$field = 'id,pid,title,status,sort';
		$Cate =db( 'Cate' )->field($field)->order('id asc')->select( );
		$list = $this->unlimitedForLevel($Cate);
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
	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Cate")->where($map)->delete();
		if($res){
		   $this->success("删除成功！");
		}else{
			 $this->success("删除失败！");
		}
	}
}
