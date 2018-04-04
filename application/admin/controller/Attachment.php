<?php
// +----------------------------------------------------------------------
// | 贝云cms内容管理系统
// +----------------------------------------------------------------------
// | Copyright (c) 2017 http://www.bycms.cn All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：贝云cms内容管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用贝云cms内容管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.bycms.cn
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Db;
use think\File;
use think\Validate;

/**
 * 文件控制器
 * 主要用于下载模型的文件上传和下载
 */
class Attachment extends Admin {

    public function index(){ 
		
        if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
        $res=getLists('Attachment',$map,10,'id desc',"");
	    $this->assign('res', $res);
		$this->meta_title="附件资源管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}


    /* 编辑导航 */
	public function edit($id){   
	    if($_POST){
		   $Attachment = new \app\admin\model\Attachment;
           $res=$Attachment->allowField(true)->validate(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			   addUserLog("edit_Attachment",session_uid());
		      $this->success("更新成功！",cookie("__forward__"));
		   }else{
			  $error=$Attachment->getError()?$Attachment->getError():"更新失败！";
			  $this->error($error);
		   } 
	   }
	   else{
		 $map['id']=$id;
		 $info=db("Attachment")->where($map)->find();
	     $this->assign('info', $info);
		 cookie("__forward__",input('server.HTTP_REFERER'));
		 $this->meta_title="编辑导航";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
	 /* 增加导航 */
	public function add($id=""){  
	   if($_POST){
		  $Attachment = new \app\admin\model\Attachment;
            // 过滤post数组中的非数据表字段数据
          $res=$Attachment->validate(true)->allowField(true)->save($_POST);
	      if($res){
			  addUserLog("add_Attachment",session_uid());
		      $this->success("新增成功！",cookie("__forward__"));
		  }else{
			  $error=$Attachment->getError()?$Attachment->getError():"新增失败！";
			  $this->error($error);
		  } 
	 }
	  else{
		  $this->meta_title="新增导航";
		  cookie("__forward__",input('server.HTTP_REFERER'));
		  $this->assign('meta_title', $this->meta_title);
	      return $this->fetch("Attachment/edit");
	  }
	}
	 /* 删除导航*/
	public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		$res=db("Attachment")->where($map)->delete();
		if($res){
		   addUserLog("del_Attachment",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
	  /* 文件上传 */
    public function update(){
		$name=input("name")?input("name"):"file";
		$name="file";
		if ((($_FILES["file"]["type"] == "image/gif")
		|| ($_FILES["file"]["type"] == "image/jpeg")
		|| ($_FILES["file"]["type"] == "image/pjpeg")|| ($_FILES["file"]["type"] == "image/png"))
		){
		   $model="picture";//图片文件
		   $data["type"]=1;
		}
		else if(($_FILES["file"]["type"] == "video/mp4")){
		   $model="media";//媒体文件
		   $data["type"]=2;
		}
		else{
		   $model="attachment";//压缩文件等
		   $data["type"]=3;
		}
		$file = request()->file($name);
        if(!$name){
            $this->error('参数错误！');
        }
      // 移动到框架应用根目录/uploads/ 目录下
        $info =$file->validate(['size'=>300*1024*1024,'ext'=>'zip,rar,mp4,MP4,mp3,flv,jpg,png,gif,doc,pdf,excel,ppt'])->move(ROOT_PATH  . DS . 'public/uploads/'.$model);
        if($info){
            // 成功上传后 获取上传信息
              $path="public/uploads/".$model."/".$info->getSaveName();
              $data["path"]='/'.str_replace("\\","/",$path);
			  $data["oldname"]=$_FILES[$name]["name"];
			  $data["exts"]=$info->getExtension();
		      $data["status"]=1;
			  $data["size"]=$_FILES[$name]["size"];
		      $data["create_time"]=time();
			  $id=db('attachment')->insertGetId($data);
				// 返回
			header('content-type:application/json;charset=utf-8');
			$INSTALL_PATH = str_replace('\\','/',dirname($_SERVER['SCRIPT_NAME']));
			if($INSTALL_PATH==="/"){
				  $INSTALL_PATH="";		
			}else{
				$INSTALL_PATH= '/'. trim($INSTALL_PATH,'/').'';
			}
			$data = array('path'=>$INSTALL_PATH.$data["path"],'msg'=>'上传成功','id'=>$id,"status"=>200);
			echo json_encode($data);

        }else{
            // 上传失败获取错误信息
			$msg=$file->getError();
			$data = array('path'=>'','msg'=>$msg,"code"=>0);
            echo json_encode($data);
        }
    }
   
	
	public function insert($path){
            $data["path"]=$path;
			$exts=substr($path,-3);
			$data["exts"]=$exts;
            if ((($exts == "gif")
			|| ($exts == "jpg")
			|| ($exts == "jpeg")|| ($exts == "png"))
			){
			   $data["type"]=1;
			}
			else if(($exts == "mp4")){
			   $data["type"]=2;
			}
			else{
			   $data["type"]=3;
			}
		    $data["status"]=1;
		    $data["create_time"]=time();
			$id=db('attachment')->insertGetId($data);
		    // 返回
			header('content-type:application/json;charset=utf-8');
			$data = array('path'=>$data["path"],'msg'=>'上传成功','id'=>$id,"status"=>200);
			echo json_encode($data);
    }

	    /* 文件上传 */
    public function get(){
			$id= C('ACCESSID');
			$key=C('ACCESSKEY');
			
            if(C('upload_type')==1){
				$host=C('SERVERURL');
			}else{    
			    $host= url('Attachment/update');
			}
			$now = time();
			$expire = 30; //设置该policy超时时间是10s. 即这个policy过了这个有效时间，将不能访问
			$end = $now + $expire;
			$expiration =$this->gmt_iso8601($end);

			$dir = 'user-dir/';

			//最大文件大小.用户可以自己设置
			$condition = array(0=>'content-length-range', 1=>0, 2=>1048576000);
			$conditions[] = $condition; 

			//表示用户上传的数据,必须是以$dir开始, 不然上传会失败,这一步不是必须项,只是为了安全起见,防止用户通过policy上传到别人的目录
			$start = array(0=>'starts-with', 1=>'$key', 2=>$dir);
			$conditions[] = $start; 


			$arr = array('expiration'=>$expiration,'conditions'=>$conditions);
			//echo json_encode($arr);
			//return;
			$policy = json_encode($arr);
			$base64_policy = base64_encode($policy);
			$string_to_sign = $base64_policy;
			$signature = base64_encode(hash_hmac('sha1', $string_to_sign, $key, true));

			$response = array();
			$response['accessid'] = $id;
			$response['host'] = $host;
			$response['policy'] = $base64_policy;
			$response['signature'] = $signature;
			$response['expire'] = $end;
			//这个参数是设置用户上传指定的前缀
			$response['dir'] = $dir;
			
			echo json_encode($response);
    }
    public  function gmt_iso8601($time) {
        $dtStr = date("c", $time);
        $mydatetime = new \DateTime($dtStr);
        $expiration = $mydatetime->format(\DateTime::ISO8601);
        $pos = strpos($expiration, '+');
        $expiration = substr($expiration, 0, $pos);
        return $expiration."Z";
    }
 

    /* 下载文件 */
    public function download($id = null){
        if(empty($id) || !is_numeric($id)){
            $this->error('参数错误！');
        }

        $logic = D('Download', 'Logic');
        if(!$logic->download($id)){
            $this->error($logic->getError());
        }

    }

   public function uploadpicture(){
       
        /* 调用文件上传组件上传文件 */
		 $Picture= new \app\admin\model\Picture;
         $driver = config('PICTURE_UPLOAD_DRIVER');
         $info = $Picture->upload(
            $_FILES,
            config('PICTURE_UPLOAD'),
            config('PICTURE_UPLOAD_DRIVER'),
            config("UPLOAD_{$driver}_CONFIG")
        ); //TODO:上传到远程服务器
      addUserLog(var_export($info,true),1);
        /* 记录图片信息 */
        if($info){
            $return["path"]=site_url().$info["path"];
			$return['status'] = 1;
			$return['id'] = $info["id"];
           
        } else {
            $return['status'] = 0;
			$error=$Picture->getError()?$Picture->getError():"上传失败！";
            $return['info']   = $error;
        }
        /* 返回JSON数据 */
        exit(json_encode($return));
    }
}
