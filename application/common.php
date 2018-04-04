<?php
// +----------------------------------------------------------------------
// | Yershop 开源网店系统
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.yershop.com All rights reserved.
// +----------------------------------------------------------------------
use think\Db;
use think\AjaxPage;
 /**
 * 配置读取函数，ot内置函数
 * @param string $name   传入配置英文名称
 * @return string 配置值
 */
function C($name=''){
	 $map['name']=$name; 
     $info =db('config')->where($map)->find();
	 if($info["type"]&&$info["type"]=="picture"){ 
		 $cover_id=$info["value"];
	     $info["value"]=get_cover_path($cover_id); 
	 }
     return  $info["value"];
}
 function check_verify($verify) {
	  $verify_code=session('verify');
      if($verify_code!=$verify){
	     return false;
	  }
	  return true;
    }
/**
 * 权限判断当前id是否在数组里
 * @param int $id   传入id
 * @param array $ids 传入数组
 * @return bool
 */
function is_checked($id ,$ids){
    $arr=explode(",",$ids);
    if(in_array($id,$arr)){
	  return "checked"; 
    }
}
/**
 * 商品图片列表
 * @param int $id   传入的商品id
 * @return array
 */
function get_pictures($id){
	$map["id"]=$id;
    $info =db('goods')->where($map)->find();
    $covers=explode(",",$info['covers']);
	array_push($covers,$info["cover_id"]);
	unset($map);
	$map["goods_id"]=$id;
	$array=array();
	$list=db('sku')->where($map)->select();
	foreach ($list as $k => $v ) {
				 array_push($covers,$v["cover_id"]);
	}
    foreach ($covers as $k => $v ) {
				if($v){
					$array[]=$v;
				};
	}
	krsort($array);
	return $array?$array:"";
}
// 判断是否是在微信浏览器里
function isWeixinBrowser() {
	$agent = $_SERVER ['HTTP_USER_AGENT'];
	if (! strpos ( $agent, "icroMessenger" )) {
		return false;
	}
	return true;
}
function ucenter_md5($str, $key = 'ThinkUCenter'){
	return  md5(sha1($str) . $key);
}
/**
 * 时间戳转换普通时间显示
 * @param int $time   传入的时间戳
 * @return string 
 */
function time_format($time){
	  return $time?date('Y-m-d H:i:s',$time):''; 
}

/**
 * 地址解析函数，链接url带http返回原值，否则使用url函数解析
 * @param string $url   传入字符串
 * @return string
 */
function get_url($url){
	if(strpos($url,"http")!==false){
		return $url;
	}
    else{
	   return url($url);
    }
}
function addUserLog($title,$uid) {
        $data ['uid'] =$uid;  
		$data ['create_time'] = time ();
		$data ['update_time'] = time ();
		$data ['title'] = $title;
		db ( 'UserLog' )->insert( $data );
}

function data_auth_sign($data) {
    //数据类型检测
    if(!is_array($data)){
        $data = (array)$data;
    }
    ksort($data); //排序
    $code = http_build_query($data); //url编码并生成query字符串
    $sign = sha1($code); //生成签名
    return $sign;
}
function get_goods_title($id){
    $info =db('goods')->where("id='$id'")->find();
    return $info['title'];
}
function get_attr_title($id){
          $info =db('Attributes')->where("id='$id'")->find();
          return $info['title'];
}
function get_specs_title($id){
          $info =db('specs')->where("id='$id'")->find();
          return $info['title'];
}
/**
 * 获取模型数据
 * @param int $id   传入id
 * @param string $field   输出字段
 * @return string 配置值
 */
function get_models($id,$field){
	      $map['id']=$id;
          $info =db('models')->where($map)->find();
          return $info[$field];
}		

// 应用公共文件
function session_uid(){
    $user = session('user_auth');
    if (empty($user)) {
        return 0;
    } else {
        return session('user_auth_sign') == data_auth_sign($user) ? $user['uid'] : 0;
    }
}
// 应用公共文件
function is_login(){
    $user = session('user_auth');
    if (empty($user)) {
        return 0;
    } else {
        return session('user_auth_sign') == data_auth_sign($user) ? $user['uid'] : 0;
    }
}
//字符过滤
function safe_replace($string) {
    if(is_array($string)){ 
	   $string=implode('，',$string);
       $string=htmlspecialchars(str_shuffle($string));
	} else{
	    $string=htmlspecialchars($string);
	}
	$string = str_replace('%20','',$string);
    $string = str_replace('%27','',$string);
    $string = str_replace('%2527','',$string);
    $string = str_replace('*','',$string);
    $string = str_replace('"','&quot;',$string);
    $string = str_replace("'",'',$string);
    $string = str_replace('"','',$string);
    $string = str_replace(';','',$string);
    $string = str_replace('<','&lt;',$string);
    $string = str_replace('>','&gt;',$string);
    $string = str_replace("{",'',$string);
    $string = str_replace('}','',$string);
	return $string;
}
//分页函数
function getLists($model,$map="",$num="10",$listsort="id desc",$field=""){ 
		 $res["list"]=db($model)->where($map)->field($field)->order($listsort)->paginate($num);
		 $res["data"]=db($model)->where($map)->field($field)->order($listsort)->limit($num)->select();
		 $res["page"]= $res["list"]->render();
		 $res["total"]=db($model)->where($map)->field($field)->count();
		 $res["count"]= ceil($res["total"]/$num);
		 return $res;
}
//查询函数	
function lists($model,$map="",$num="10",$listsort="id desc",$field=""){ 
		 $data=db($model)->where($map)->field($field)->order($listsort)->limit($num)->select();
		 return $data;
}
function U($url){ 
		  return url($url);
	}	
function site_url(){
	$INSTALL_PATH = str_replace('\\','/',dirname($_SERVER['SCRIPT_NAME']));
    if($INSTALL_PATH==="/"){
          $INSTALL_PATH="/";		
    }else{
        $INSTALL_PATH= '/'. trim($INSTALL_PATH,'/');
    }
     return  "http://".$_SERVER['HTTP_HOST'].$INSTALL_PATH;
}
function root_url(){
	$INSTALL_PATH = str_replace('\\','/',dirname($_SERVER['SCRIPT_NAME']));
    if($INSTALL_PATH==="/"){
          $INSTALL_PATH="/";		
    }else{
        $INSTALL_PATH= '/'. trim($INSTALL_PATH,'/').'/';
    }
     return  "http://".$_SERVER['HTTP_HOST'];
}
function getAjaxLists($model,$map="",$num="10",$listsort="id desc",$field="",$page=""){ 
            $res["list"]=db($model)->where($map)->field($field)->order($listsort)->page($page,$num)->select();
		    $res["data"]=db($model)->where($map)->field($field)->order($listsort)->paginate($num);
		    $res["page"]= $res["data"]->render();
		   // 产生分页信息，AJAX的连接在此处生成
		  return $res;
}
function list_to_tree($list, $pk='id', $pid = 'pid', $child = '_child', $root = 0) {
    // 创建Tree
    $tree = array();
    if(is_array($list)) {
        // 创建基于主键的数组引用
        $refer = array();
        foreach ($list as $key => $data) {
            $refer[$data[$pk]] =& $list[$key];
        }
        foreach ($list as $key => $data) {
            // 判断是否存在parent
            $parentId =  $data[$pid];
            if ($root == $parentId) {
                $tree[] =& $list[$key];
            }else{
                if (isset($refer[$parentId])) {
                    $parent =& $refer[$parentId];
                    $parent[$child][] =& $list[$key];
                }
            }
        }
    }
    return $tree;
}
function get_goods($id,$field){
    $goods=db("goods");
	$map['id']=$id;
	$info=$goods->where($map)->field($field)->find();
    return $info[$field];  
}
function get_category($id,$field){
    $goods=db("category");
	$map['id']=$id;
	$info=$goods->where($map)->field($field)->find();
    return $info[$field];  
}
function get_cover_path($id){
	
    $info = db('attachment')->where(array('id'=>$id))->find();
	$path=$info["path"];
    return site_url().$path;
}
function get_path($id){
     $cover_id= get_goods($id,"cover_id");
     return get_cover($cover_id,'path');//商品图片
}
function get_cover($cover_id, $field = null){
    if(empty($cover_id)){
        return false;
    }
    $picture = db('attachment')->where(array('id'=>$cover_id))->find();
    if($field == 'path'){
        if(!empty($picture['url'])){
            $picture['path'] = $picture['url'];
        }else{
            $picture['path'] =$picture['path'];
        }
    }
    return empty($field) ?site_url().$picture : site_url().$picture[$field];
}  

function get_cover_id(){
	return ;
}
function get_goods_cover($id){
    $cover_id=get_goods($id,'cover_id');
    return get_cover($cover_id,"path");  
}

function get_username($uid=null){
    if(!($uid && is_numeric($uid))){ //获取当前登录用户名
        return session('user_auth.username');
    }else{
	   $map['id']=$uid;
	   $info=db("UcenterMember")->where($map)->find();
       return $info['username']; 
	}
}

/**
* 字符串截取函数
* @param string $str 传入的字符串
* @param  int $len   截取长度
* @return string     
*/
function substr_cn($str, $len=29) {  
        $str=htmlspecialchars($str);
        $start=0;
        $tmpstr = "";  
        $strlen = $start + $len;  
        for($i = 0; $i < $strlen; $i++){  
            if(ord(substr($str, $i, 1)) > 127){  
                $tmpstr.=substr($str, $i, 3);  
                $i+=2;  
            }else  
                $tmpstr.= substr($str, $i, 1);  
        }  
        return htmlspecialchars($tmpstr)."..";  
 }

	function getParent($id = 0){
	    
	      $data= db("category")->field("id,pid")->select();
		
		$arr = array( ); 
		$temp = array();
		   foreach ( $data as $key => $v ) {
		   //判断，如果$v['pid'] == $pid的则压入数组Child
		       if ($v['id'] == $id&&$v['pid']!=0) {
					//递归执行
					  $temp[] = $v['pid']; 
                      $temp = array_merge($temp,getParent($v['pid'],$data));				
		       }
		   }
	
		return $temp;
	}
	function getChild($id){
	    $data= db("category")->field("id,pid")->select();
		
		$arr = array( ); 
		$temp = array();
		   foreach ( $data as $key => $v ) {
		   //判断，如果$v['pid'] == $pid的则压入数组Child
		       if ($v['pid'] == $id) {
					//递归执行
					  $temp[] = $v['id']; 
                      $temp = array_merge($temp,getChild($v['id'],$data));				
		       }
		   }
	
		return $temp;
    }
	/**
 * 标签库解析广告位标签
 * @param int $place   传入广告的位置
 * @return string
 */
function  parseAd($place){
	$map['place']=$place;
	$list=db("ad")->where($map)->select();
    return $list;  
}
/**
 * 标签库解析推荐位标签
 * @param id $position   传入推荐位
 * @return string
 */	
function  parsePos($pos){
   
	$map['position']=$pos;
	$list=db("document")->where($map)->select();
    return $list;  
}
/**
 * 标签库解析知道分类下位置标签
 * @param id $id   传入分类的id
 * @return string
 */
function  parseCate($id,$order,$limit){
	$Category=new \app\index\model\Category;
	$ids=$Category->getChildrenId($id);	
    $map['category_id']=array("in",$ids);
	$list=db("document")->where($map)->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析知道分类下位置标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseMix($ids,$order,$limit){
    $map['category_id']=array("in",$ids);
	$list=db("document")->where($map)->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析知道幻灯片位置标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseSlide($place,$order,$limit){
    $map['place']=$place;
	$list=db("slide")->where($map)->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析文章位置标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseRead($model_id,$order,$limit){
    $map['model_id']=$model_id;
	$list=db("document")->where($map)->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析友情链接标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseLink($order,$limit){
   
	$list=db("friendlink")->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 标签库解析导航位置标签
 * @param string $ids   传入分类的id
 * @return string
 */
function  parseChannel($order,$limit){
   
	$list=db("Channel")->order($order)->limit($limit)->select();
    return $list;  
}
/**
 * 解析指定分类下分类标签
 * @param id $id   传入分类的id
 * @return string
 */
function  parseHot($id){
	$Category=new \app\index\model\Category;
	$ids=$Category->getChildrenId($id);	
	$map['id']=array("in",$ids);
	$list=db("category")->where($map)->limit(9)->select();
	$html="";
	 foreach ($list as $key=>$val) {
		 if($id!=$val['id']){
		 $url=url('Goods/lists?id='.$val['id']);
		 $html .="<span><a href=".$url." title=".$val["title"].">".$val["title"]."</a></span>";//标识号
                 
		   }
		 }
    return $html; 
	
}