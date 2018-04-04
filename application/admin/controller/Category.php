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
class Category extends Admin{ 
    /*首页*/
    public function index(){     
		$list=$this->getCategory();
	    $this->assign('list', $list);
		$this->meta_title="商品分类管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}

	/*编辑*/
	public function edit($id){   
	    if($_POST){
		   $category =  new \app\admin\model\Category;
           $res=$category->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			    addUserLog("edit_category",session_uid());
		        $this->success("更新成功！",cookie("__forward__"));
		   }else{
			    $error=$category->getError();
			    $this->error($error?$error:"更新失败！");
		   } 
	  }
	  else{
		 $map['id']=$id;
		 $info=db("category")->where($map)->find();
	     $this->assign('info', $info);
		 cookie("__forward__",input('server.HTTP_REFERER'));
		 unset($map);
	     $map['status']=1;
         $field = 'id,pid,title,sort';
		 $list=db( 'category' )->where($map)->field($field)->order("id asc")->select();
	     $this->assign('list', getSort($list));
		 $typelist =db('models')->select();
		 $this->assign('typelist',$typelist);
		 $this->meta_title="编辑分类-".$info["title"];
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}

	/*增加*/
    public function add($pid=""){  
	    if($_POST){
		   $category =  new \app\admin\model\Category;
           // 过滤post数组中的非数据表字段数据
           $res=$category->validate(true)->allowField(true)->save($_POST);
	       if($res){
			 addUserLog("add_category",session_uid());
		      $this->success("新增成功！",cookie("__forward__"));
		  }else{
			 $error=$category->getError();
			 $this->error($error?$error:"新增失败！");
		  } 
	   }
	  else{
		 if($pid){
             $info['pid']=$pid;
			 $this->assign('info', $info);
         }
         $field = 'id,pid,title,sort';
		 $list=db( 'category' )->field($field)->order("id desc")->select();
	     $this->assign('list', getSort($list));
		 cookie("__forward__",input('server.HTTP_REFERER'));
		 $this->meta_title="新增商品分类";
		 $typelist =db('models')->select();
		 $this->assign('typelist',$typelist);
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch("category/edit");
	  }
	}
	 		/**商品分类菜单调用**/
    public function getCategory(){
	    
		$field = 'id,pid,title,status,sort';
		$category =db( 'category' )->field($field)->order('id asc')->select( );
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
	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("category")->where($map)->delete();
		if($res){
			addUserLog("del_category",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
}
