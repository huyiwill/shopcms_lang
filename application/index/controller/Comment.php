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
namespace app\index\Controller;
use think\Controller;

/**
 * db
 */
class Comment extends Home {

    public function index() {
		if ( !session_uid() ) {
			$this->error( "您还没有登陆",url("User/login") );
		} 			
		$uid=session_uid();	
		
		$map['uid']=$uid;//用户id
		$res=getLists("comment",$map,5,"id desc","");
		$res["num"]=db("sales")->where('comment_status=1')->count();
		$this->assign('res', $res);
		$meta_title = '已评价商品';
		 $this->assign('meta_title', $meta_title);
	
		return $this->fetch();     
	   
    }
  public function write($id){
		if ( !session_uid() ) {
			$this->error( "您还没有登陆",url("User/login") );
		} 
		if(!is_numeric($id)){
		     $this->error('id错误！');
		}
		$map["id"]=(int)$id;
		
		$info=db('sales')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
		}
        $goods=db('goods')->find($info["goods_id"]);
		$cate=db('category')->find($goods["category_id"]);
		$types=db('types')->find($cate["types_id"]);
        $tags=explode("|",$types["tags"]);
		$this->assign('tags',$tags);

	    $this->assign("info",$info);
	    $this->meta_title ="申请售后";	
	    $this->assign('meta_title',$this->meta_title);
	    return $this->fetch();
		 
	   }
     //增加评论
    public function update() {
        if ( !session_uid() ) {
			$this->error( "您还没有登陆",url("User/login") );
		} 
        $id=input('goods_id'); 			
		if(!($id && is_numeric($id))){
		   $this->error('ID错误！');
		}
		$sales_id=(int)input('sales_id'); 			
		if(!($sales_id && is_numeric($sales_id))){
		   $this->error('ID错误！');
		}
		$uid=session_uid();
		$map["id"]=$sales_id;
		$map["goods_id"]=$id;
		$map["uid"]=$uid;
		$map['comment_status']=1;
		$info=db('sales')->where($map)->find();
		if(!$info){
		      $this->error('订单不存在！');
		}
		$Comment=model("Comment");
        $save=array();
        foreach($_POST as $key=>$val){
		      $save[$key]=safe_replace($val);
		 }
            // 过滤post数组中的非数据表字段数据
        $res=$Comment->validate(true)->allowField(true)->save($save);
	      if($res){
			   unset($map['comment_status']);
			    //已评价
               $data['comment_status']=2;
               db('sales')->where($map)->update($data);
               if(input('cover_id')){
				 //有图片的评价
			      $update['is_picture']=1;
				  unset($map);
				  $map["id"]=$res; 
				  $map["uid"]=$uid;
				  db('comment')->where($map)->update($data);
			   }
			   //增加评论
			   unset($map);
			   $map["id"]=$id;
			   db('goods')->where($map)->setInc("comments");
			   //创建标签
 				$tag=safe_replace(input('cover_id'));
				$tags=explode(",",$tag);
				foreach ($list as $k => $v ) {
				  $insert["title"]=$v;
				  $insert["goods_id"]=$id;
                  if(db('tags')->where($insert)->find()){
				      db('tags')->where($insert)->setInc('num');
				  }
				  else{
				      db('tags')->insert($insert);
				  }
				}

		      $this->success("新增成功！");
		  }else{
			  $error=$Comment->getError()?$Comment->getError():"新增失败！";
			  $this->error($error);
		  } 
	    
    }

    public  function lists() {  
        if ( !session_uid() ) {
			$this->error( "您还没有登陆",url("User/login") );
		}	
	    $uid=session_uid();
        $map['uid']=$uid; 
		$map['comment_status']=1;
		$res=getLists("sales",$map,10,"id desc","");
		$res["num"]=db("sales")->where('comment_status=2')->count();
		$this->assign('res', $res);
		$meta_title = '待评价商品';
	    $this->assign('meta_title', $meta_title);
	    return $this->fetch();    
    }
}
