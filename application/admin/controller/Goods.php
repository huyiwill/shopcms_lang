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

class Goods extends Admin{
	
    public function index(){     
        if($_POST){
			foreach ($_POST as $key=>$value){
				if($value!=""){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$pid=input('pid');
		$this->assign('pid',$pid?$pid:75); 
		if($pid){
			$Category=model("Category");
            //当前id及子类列表
			$cate_ids  = $Category->getChildrenId($pid);
			$map["category_id"]=array("in",$cate_ids);
			
        }
		$map=isset($map)?$map:'';
		$res=getLists('Goods',$map,10,'id desc',"");;
	    $this->assign('res', $res);
		$this->meta_title="商品管理";
		$this->assign('meta_title', $this->meta_title);
		//侧栏
		$sidebar=db("category")->field("id,title,pid")->select();
		foreach ($sidebar as & $value){
            $value["name"]  =   $value['title'];
			$value["url"]  =url('goods/index',array('pid'=>$value["id"]));
        } 
		
        $this->assign('sidebars', json_encode( $sidebar));
	    return $this->fetch(); 
	}

   public function edit($id){   
	    if($_POST){
		   $Goods =new \app\admin\model\Goods;
           $res=$Goods->updates();
	       if($res){
		        $this->success("更新成功！",cookie("__forward__"));
		   }else{
			    $error=$Goods->getError();
			    $this->error($error?$error:"更新失败！");
		   } 
	  }
	  else{
		  
		    cookie("__forward__",input('server.HTTP_REFERER'));
		    $map['id']=$id;
            /* 获取数据 */
            $info=db('Goods')->where($map)->find($id);       
            if($info["category_id"]){ 
				$pid=$info["category_id"];
				$ids=model("Category")->getParentId($pid);
				array_push($ids,$pid);
				$this->assign("ids",$ids);
				    //品牌列表
                $brandlist=model("Brand")->getlist($ids);
			    $this->assign('brandlist',$brandlist);
				//基本属性列表
				$list=model("Attributes")->getlist($pid,0);
			    $this->assign('list',$list);
          }
		 
           
		    $this->assign("pid",$pid);   //左侧分类
			$this->assign('info', $info);
		    $this->meta_title="编辑商品";
		    $this->assign('meta_title', $this->meta_title);
			//sku列表
			$where["goods_id"]=$id;
            $sku=db("sku")->where($where)->field("path,title,num,price,code,upc")->select();
			$this->assign('sku',json_encode($sku));
			//规格列表
            $specslist=model("specs")->getlist($pid);
			$this->assign('specslist',$specslist);
	        return $this->fetch();
	   }
	}
    public function add($id=""){  
	    if($_POST){
		   $Goods =new \app\admin\model\Goods;
           // 过滤post数组中的非数据表字段数据
           $res=$Goods->updates();
	         if($res){
                 $this->success('新增成功',cookie("__forward__"));
		    }else{
			    $error=$Goods->getError();
			    $this->error($error?$error:"新增失败！");
		    } 
	    }
	    else{
			
			cookie("__forward__",input('server.HTTP_REFERER'));
		    $pid=input('pid');
		    $this->assign('pid',$pid); 
			$info["category_id"]=$pid;
			$this->assign('info',$info); 
			$ids=model("Category")->getParentId($pid);
		    array_push($ids,$pid);
			$this->assign("ids",$ids);
				   //品牌列表
            $brandlist=model("Brand")->getlist($ids);
			$this->assign('brandlist',$brandlist);
			
              //规格列表
            $specslist=model("specs")->getlist($pid);
			$this->assign('specslist',$specslist);
		  
			//基本属性列表
			$list=model("Attributes")->getlist($pid,0);
			$this->assign('list',$list);
			
			$this->meta_title="新增商品";
		    $this->assign('meta_title', $this->meta_title);
	        return $this->fetch();
	  }
	}

    public function change(){   
		$map['id']=input("id");
	     if(input("status")){
			  $data["status"]=input("status");
		}else{
			   $data["status"]=0;
		}	
            /* 获取数据 */
        $res=db('Goods')->where($map)->update($data);  
		if($res){
		   $this->success("操作成功！");
		}else{
			 $this->success("操作失败！");
		}     
	}

    public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		
		$res=db("Goods")->where($map)->delete();
		if($res){
		   $this->success("删除成功！");
		}else{
			 $this->success("删除失败！");
		}
	}



}