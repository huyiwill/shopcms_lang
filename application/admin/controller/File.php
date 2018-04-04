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
/**
 * 文件控制器
 * 主要用于下载模型的文件上传和下载
 */
class File extends Admin {
     public function add(){
		$img = input('img');
		if(empty($img)){
			return false;
		}
		// 获取图片
		list($type, $data) = explode(',', $img);

		// 判断类型
		if(strstr($type,'image/jpeg')!=='')
		{
			$ext = '.jpg';
		}elseif(strstr($type,'image/gif')!=='')
		{
			$ext = '.gif';
		}elseif(strstr($type,'image/png')!=='')
		{
			$ext = '.png';
		}
		$userinfo = session('mam_spo_uinfo');
		$uid = $userinfo['id'];
		$model =db('picture');
		if(!empty($r)){
			$data = array('img'=>'','msg'=>'对不起！亲！您已经传过一张照片了！');
			echo json_encode($data);	
			exit;
		}else{
		// 生成的文件名
		$di="uploads/Picture/".date("Y-m-d",time());
		if (!file_exists($di)){ mkdir ($di);} 
		$photo = $di."/".time().$ext;
		// 生成文件
		file_put_contents($photo, base64_decode($data), true);
		$data2["path"]="/".$photo;
		$data2["status"]=1;
		$data2["create_time"]=time();
        $id=db('picture')->add($data2);
		// 返回
		header('content-type:application/json;charset=utf-8');
		$data = array('src'=>$photo,'msg'=>'图片上传成功','id'=>$id);
		echo json_encode($data);		
		}
		exit;
	}		
    /* 文件上传 */
    public function upload(){
		$return  = array('status' => 1, 'info' => '上传成功', 'data' => '');
		/* 调用文件上传组件上传文件 */
		$File = D('File');
		$file_driver = C('DOWNLOAD_UPLOAD_DRIVER');
		$info = $File->upload(
			$_FILES,
			C('DOWNLOAD_UPLOAD'),
			C('DOWNLOAD_UPLOAD_DRIVER'),
			C("UPLOAD_{$file_driver}_CONFIG")
		);

        /* 记录附件信息 */
        if($info){
            $return['data'] = think_encrypt(json_encode($info['download']));
            $return['info'] = $info['download']['name'];
        } else {
            $return['status'] = 0;
            $return['info']   = $File->getError();
        }

        /* 返回JSON数据 */
        $this->ajaxReturn($return);
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
        $pic_driver = config('PICTURE_UPLOAD_DRIVER');
        $info = $Picture->upload(
            $_FILES,
            config('PICTURE_UPLOAD'),
            config('PICTURE_UPLOAD_DRIVER'),
            config("UPLOAD_{$pic_driver}_CONFIG")
        ); //TODO:上传到远程服务器

        /* 记录图片信息 */
        if($info){
            $return["path"]=site_url().substr($info["path"],1);
			$return['status'] = 1;
			$return['id'] = $info["id"];
           
        } else {
            $return['status'] = 0;
            $return['info']   = "上传失败";
        }
        /* 返回JSON数据 */
        exit(json_encode($return));
    }
}
