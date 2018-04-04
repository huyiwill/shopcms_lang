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
use think\Config;
use think\Upload;
class Uploads extends Admin{

	public $uploader = null;
     public function picture(){
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
        $id=db('picture')->insertGetId($data2);
		// 返回
		header('content-type:application/json;charset=utf-8');
		$data = array('src'=>site_url()."/".$photo,'msg'=>'图片上传成功','id'=>$id);
		echo json_encode($data);		
		}
		exit;
	}
	/* 上传图片 */
	public function upload(){
		session('upload_error', null);
		/* 上传配置 */
		$setting = config('EDITOR_UPLOAD');

		/* 调用文件上传组件上传文件 */
		$this->uploader = new Upload($setting, 'Local');
			//addUserLog (  var_export($_FILES, true ), 1);
		$info= $this->uploader->upload($_FILES);
		
		if($info){
			
			$EDITOR_UPLOAD=config('EDITOR_UPLOAD');
			$url = $EDITOR_UPLOAD['rootPath'].$info['imgFile']['savepath'].$info['imgFile']['savename'];
			$url = str_replace('./', '/', $url);
			$info['fullpath'] =INSTALL_PATH.$url;
		}
		//session('upload_error', $this->uploader->getError());
		return $info;
	}

	//keditor编辑器上传图片处理
	public function ke_upimg(){
		/* 返回标准数据 */
		$return  = array('error' => 0, 'info' => '上传成功', 'data' => '');
		$img = $this->upload();
		/* 记录附件信息 */
		if($img){
			$return['url'] = $img['fullpath'];
			unset($return['info'], $return['data']);
		} else {
			$return['error'] = 1;
			$return['message']   = session('upload_error');
		}

		/* 返回JSON数据 */
		exit(json_encode($return));
	}

	

}
