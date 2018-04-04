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

class Document extends Admin{
    public function index(){     
         if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
		$pid=input('pid');
        if($pid){
			$Category=model("Category");
            //当前id及子类列表
			$cate_ids  = $Category->getChildrenId($pid);
			$map["category_id"]=array("in",$cate_ids);
			
        }
		$res=getLists('Document',$map,10,'id desc',"");
	    $this->assign('res', $res);
		$this->meta_title="文章管理";
		$this->assign('meta_title', $this->meta_title);
		$sidebar=db("cate")->field("id,title,pid")->select();
		foreach ($sidebar as & $value){
            $value["name"]  =   $value['title'];
			$value["url"]  =url('document/index',array('pid'=>$value["id"]));
        }
        $this->assign('sidebar', json_encode( $sidebar));
		$pid=$pid?$pid:8;
		$this->assign("pid",$pid);
	    return $this->fetch(); 
	}

   public function edit($id){   
	    if($_POST){ 
		   $Document =model("Document");
           $res=$Document->validate(true)->allowField(true)->save($_POST,['id' => input('id')]);
	       if($res){
			   addUserLog("edit_document",session_uid());
		      $this->success("更新成功！",'index');
		   }else{
			   $error=$Document->getError();
			   $this->error($error?$error:"更新失败");
		   } 
	  }
	  else{
		     $map['id']=$id;
            /* 获取数据 */
			 $Document =db("Document");
             $info=$Document->find($id);       
             $sidebar=db("cate")->field("id,title,pid")->select();
		     foreach ($sidebar as & $value){
                $value["name"]  =   $value['title'];
			    $value["url"]  =url('document/index',array('pid'=>$value["id"]));
             } 
			 $this->assign('sidebar', json_encode( $sidebar));
		     $this->meta_title="编辑文章-".$info["title"];
		     $this->assign('meta_title', $this->meta_title);
			 $this->assign('info', $info);
	         return $this->fetch();
	   }
	}
    public function add($id=""){  
	    if($_POST){
		     $Document =model("Document");
           // 过滤post数组中的非数据表字段数据
             $res=$Document->validate(true)->allowField(true)->save($_POST);
	         if($res){
			     addUserLog("add_document",session_uid());
                 $this->success('新增成功','index');
		     }else{
			    $error=$Document->getError();
			    $this->error($error?$error:"新增失败");
		     } 
	   }
	   else{
            $sidebar=db("cate")->field("id,title,pid")->select();
		    foreach ($sidebar as & $value){
               $value["name"]  =   $value['title'];
			   $value["url"]  =url('document/index',array('pid'=>$value["id"]));
            }
			$this->assign('sidebar', json_encode( $sidebar));
			$this->meta_title="新增文章"; 
			$info['category_id']=input('pid');
			$this->assign('info', $info);
		    $this->assign('meta_title', $this->meta_title);
	        return $this->fetch('edit');
	  }
	}
    public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=Db::name("Document")->where($map)->delete();
		if($res){
			 addUserLog("del_document",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}

}