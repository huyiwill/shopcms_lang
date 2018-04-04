<?php
// +----------------------------------------------------------------------
// | 贝云cms内容管理系统 [ 简单 高效 卓越 ]
// +----------------------------------------------------------------------
// | Copyright (c) 2017 http://www.bycms.cn All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：贝云cms内容管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用贝云cms内容管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.bycms.cn
// +----------------------------------------------------------------------
namespace app\common\model;
use think\Model;
/**
 * 文档基础模型
 */
class Code extends Model{
    public function updates(){
           $model =input("model"); 
		   if(!$model){
				 $this->error="模型英文名不能为空";
			     return false;
		   }
		   $title=input("title"); 
		   if(!$title){
				 $this->error="名称不能为空";
			     return false;
		   } 
		   $space=input("space");  
		   if(!$space){
				 $this->error="命名空间不能为空";
			     return false;
		   } 
		  
		   if(!isset($_POST['arr'])){
				 $this->error="未选择生成的文件";
			     return false;
		   } 
           $array=$_POST['arr']; 
		   if(in_array("1",$array)){
			   $file = file_get_contents(ROOT_PATH . 'data\tpl\\'.strtolower($space).'\controller.tpl');
			   $file = str_replace('[MODEL]', $model, $file);
			   $file = str_replace('[model]', strtolower($model), $file); 
			   $file = str_replace('[TITLE]', $title, $file); 
			   $file = str_replace('[SPACE]', strtolower($space), $file); 
			   if(file_put_contents(ROOT_PATH . '\application\\'.strtolower($space).'\controller\\'.$model.'.php', $file)){
					session('false', true);
				}
				else {
					$this->error="控制器文件创建失败";
					return false;
				} 
			     
		   }
		   
		     if(in_array("2",$array)){
				   $file = file_get_contents(ROOT_PATH . 'data\tpl\\'.strtolower($space).'\model.tpl');
				   $file = str_replace('[MODEL]', $model, $file); 
				   $file = str_replace('[TITLE]', $title, $file); 
				   $file = str_replace('[SPACE]', strtolower($space), $file); 
				   if(file_put_contents(ROOT_PATH . '\application\\'.strtolower($space).'\model\\'.$model.'.php', $file)){
						session('false', true);
					} else {
						 $this->error="模型文件创建失败";
						 return false;
					} 
			}
                
			if(in_array("3",$array)){
					$file = file_get_contents(ROOT_PATH . 'data\tpl\\'.strtolower($space).'\validate.tpl');
					$file = str_replace('[MODEL]', $model, $file);
					$file = str_replace('[TITLE]', $title, $file); 
					$file = str_replace('[SPACE]', strtolower($space), $file); 
					if(file_put_contents(ROOT_PATH . '\application\\'.strtolower($space).'\validate\\'.$model.'.php', $file)){
						session('false', true);
					} 
					else {
						 $this->error="验证器文件创建失败";
						 return false;
					}
			}
            if(in_array("4",$array)||in_array("5",$array)){
				$dir=ROOT_PATH . '\application\\'.strtolower($space).'\view\\'.strtolower($model);
				if (!file_exists(ROOT_PATH . '\application\\'.strtolower($space).'\view\\'.$dir)){
					  mkdir ($dir,0777,true);
				 } else {
					 $this->error="视图文件夹创建失败";
					 return false;
				 }
			}
            
			if(in_array("5",$array)){
				$file = file_get_contents(ROOT_PATH . 'data\tpl\\'.strtolower($space).'\index.tpl');
				if(file_put_contents(ROOT_PATH . '\application\\'.strtolower($space).'\view\\'.strtolower($model).'\index.html', $file)){
					session('false', true);
				} else {
					 $this->error="视图首页文件创建失败";
					 return false;
				}
			}
            
			if(in_array("5",$array)){
				$file = file_get_contents(ROOT_PATH . 'data\tpl\\'.strtolower($space).'\edit.tpl');
				$file = str_replace('[MODEL]', $model, $file);
				if(file_put_contents(ROOT_PATH . '\application\\'.strtolower($space).'\view\\'.strtolower($model).'\edit.html', $file)){
					session('false', true);
				} else {
					 $this->error="视图编辑文件创建失败";
					 return false;
				}
			}
			return true;
			
	 }
   
}
