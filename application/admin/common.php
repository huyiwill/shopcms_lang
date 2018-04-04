<?php
// +----------------------------------------------------------------------
// | Yershop 开源网店系统
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.yershop.com All rights reserved.
// +----------------------------------------------------------------------
use think\Db;
use think\AjaxPage;
/**
 * 判断是否菜单显示
 * @param int $id   传入要比较的id
 * @param int $pid 传入当前id
 * @return bool
 */
function in_checked($pid,$id){
	if($pid==$id){
		return true; 
	}
    $arr=getParent($pid);
    if(in_array($id,$arr)){
	  return true; 
   }else{
	  return false;  
   }
}
/**
 * 切换风格
 * @return string 
 */
function getStyle(){
    $ISDES=C('ISDES');	
    if($ISDES){ 
	     $msg="v3风格";
     }else{
		 $msg="v2风格";	
     }
	 return $msg;
}



/**
 * 获取配置分组
 * @return array 
 */
function get_config_group(){
   $type   = C("GROUP");
	$type=explode("|",$type);
    return $type;
}
/**
 * 获取属性类型信息
 * @return string  
 */
function get_config_type($type=""){
    // TODO 可以加入系统配置
     $data= array(
        'text'    => '字符串',
        'textarea'  => '文本框',
        'date'      => '日期',
		'select'     => '枚举',
        'picture'   => '上传图片',
		'color'     => '拾色器',
       
    );
    return $type?$data[$type]:$data;
}
/**
 * 获取属性类型信息
 * @return string  
 */
function get_attribute_type($type=''){
    // TODO 可以加入系统配置
    static $_type = array(
        'num'       =>  array('数字','int(10) UNSIGNED NOT NULL'),
        'string'    =>  array('字符串','varchar(255) NOT NULL'),
        'textarea'  =>  array('文本框','text NOT NULL'),
        'date'      =>  array('日期','int(10) NOT NULL'),
        'datetime'  =>  array('时间','int(10) NOT NULL'),
        'bool'      =>  array('布尔','tinyint(2) NOT NULL'),
        'select'    =>  array('枚举','char(50) NOT NULL'),
        'radio'     =>  array('单选','char(10) NOT NULL'),
        'checkbox'  =>  array('多选','varchar(100) NOT NULL'),
        'editor'    =>  array('编辑器','text NOT NULL'),
        'picture'   =>  array('上传图片','int(10) UNSIGNED NOT NULL'),
        'file'      =>  array('上传附件','int(10) UNSIGNED NOT NULL'),
        'pictures'   =>  array('上传多图','varchar(255) NOT NULL'),
    );
    return $type?$_type[$type][0]:$_type;
}
/**
 * 模块的生成url
 * @param int $id   传入的模块id
 * @return string 
 */
function get_moude_url($id){
	 $map['id']=$id;
            // 查找当前子菜单
    $info =Db::name('Module')->where($map)->find();
	$url=$info["url"];
    switch ($url) {
        case 'http://' === substr($url, 0, 7):
        case '#' === substr($url, 0, 1):
            break;        
        default:
            $url =url($url,array('module_id'=>$id));
            break;
    }
    return  $url;
}
/**
 * excel导出
 * @param string $expTitle 导出保存的文件名称
 * @param array  $expCellName 单元格格式
 * @param object $expTableData 查询的数据
 */
function exportExcel($expTitle,$expCellName,$expTableData){
        $xlsTitle = iconv('utf-8', 'gb2312', $expTitle);//文件名称
        $fileName ="yershop".date('YmdHis');//or $xlsTitle 文件名称可根据自己情况设定
        $cellNum = count($expCellName);
        $dataNum = count($expTableData);
        //vendor("PHPExcel.PHPMailerAutoload");
		include(ROOT_PATH.'extend/PHPExcel.php');
        $objPHPExcel = new \PHPExcel();
        $cellName = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ');
        
        $objPHPExcel->getActiveSheet(0)->mergeCells('A1:'.$cellName[$cellNum-1].'1');//合并单元格
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1', $expTitle.'  Export time:'.date('Y-m-d H:i:s'));  
        for($i=0;$i<$cellNum;$i++){
            $objPHPExcel->setActiveSheetIndex(0)->setCellValue($cellName[$i].'2', $expCellName[$i][1]); 
        } 
          // Miscellaneous glyphs, UTF-8   
        for($i=0;$i<$dataNum;$i++){
          for($j=0;$j<$cellNum;$j++){
            $objPHPExcel->getActiveSheet(0)->setCellValue($cellName[$j].($i+3), $expTableData[$i][$expCellName[$j][0]]);
          }             
        }  
        header('pragma:public');
        header('Content-type:application/vnd.ms-excel;charset=utf-8;name="'.$xlsTitle.'.xls"');
        header("Content-Disposition:attachment;filename=$fileName.xls");//attachment新窗口打印inline本窗口打印
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');  
        $objWriter->save('php://output'); 
        exit;   
    }
 /**
 * 分组的生成url	
 * @param int $id   传入的模块id
 * @return string 
 */
function get_group_url($id){
	 $where["id"]=$id; 
	 $info =Db::name('group')->where($where)->order("sort desc")->find();
	 if($info["url"]){
		 $map['url']=$info["url"];   
	 }else{
	   $map['group_id']=$id; 
	   $map['pid']=array("gt",0);
	  }
	  unset($info);
            // 查找当前子菜单
      $info =Db::name('Module')->where($map)->order("sort desc")->find();
	  $url=$info["url"];
	
    switch ($url) {
        case 'http://' === substr($url, 0, 7):
        case '#' === substr($url, 0, 1):
            break;        
        default:
            $url =url($url,array('module_id'=>$info["id"],'group_id'=>$id));
            break;
    }
    return  $url;
}
 /**
 * 获取分组的函数	
 * @param int $id   传入的id
 * @param mixed $field  输出的字段 
 * @return string 
 */
function get_group($id,$field){
	 $map['id']=$id; 
     $info =Db::name('group')->field($field)->where($map)->find();
    return  $info[$field];
}
 /**
 * 获取模块的父id列表	
 * @param int $id   传入的id
 * @return object 
 */
function getModuleParent($id = 0){
	    $data= Db::name("module")->field("id,pid")->select();
		$arr = array( ); 
		$temp = array();
		   foreach ( $data as $key => $v ) {
		   //判断，如果$v['pid'] == $pid的则压入数组Child
		       if ($v['id'] == $id&&$v['pid']!=0) {
					//递归执行
					  $temp[] = $v['pid']; 
                      $temp = array_merge($temp,getModuleParent($v['pid'],$data));				
		       }
		   }
		return $temp;
	}
/**
 * 无限分类循环的html格式输出	
 * @param object $data  传入的数据对象
 * @param int $pid  传入的id
 * @param string $html  组合的html格式
 * @param int $level  循环的等级
 * @return string 
 */
 function getHtmlList($data,$pid=0,$html="|——",$level=0){
        $temp = array();
        foreach ($data as $k => $v) {
            if($v['pid'] == $pid&&$level<2){
                $str = str_repeat($html, $level);
                $v['html'] = $str;
                $temp[] = $v;
                $temp = array_merge($temp,getHtmlList($data,$v['id'],'|——',$level+1));
            }
        }
        return $temp;
 }
 /**
 * 无限分类循环的html格式输出	
 * @param object $data  传入的数据对象
 * @param int $pid  传入的id
 * @param string $html  组合的html格式
 * @param int $level  循环的等级
 * @return string 
 */
 function getSort($data,$pid=0,$html="|——",$level=0){
        $temp = array();
		//$field="id,number,level,pid,username";
		/* 查询条件初始化 */
		//$data=M("UcenterMember")->where($condition)->field($field)->order("id asc")->select();
        foreach ($data as $k => $v) {
            if($v['pid'] == $pid){
                $str = str_repeat($html, $level);
                $v['html'] = $str;
                $temp[] = $v;
                $temp = array_merge($temp,getSort($data,$v['id'],'|——',$level+1));
            }
        }
        return $temp;
 }	
 /**
 * 分析枚举类型配置值 格式 a:名称1,b:名称2	
 * @param string $string  组合的字符串
 * @return string 
 */
function parse_config_attr($string) {
    $array = preg_split('/[,;\r\n]+/', trim($string, ",;\r\n"));
    if(strpos($string,':')){
        $value  =   array();
        foreach ($array as $val) {
            list($k, $v) = explode(':', $val);
            $value[$k]   = $v;
        }
    }else{
        $value  =   $array;
    }
    return $value;
}