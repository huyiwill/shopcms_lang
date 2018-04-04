<?php
// +----------------------------------------------------------------------
// | Yershop 开源网店系统
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.yershop.com All rights reserved.
// +----------------------------------------------------------------------
namespace app\admin\validate;
use think\Validate;
use think\Db;

class Document extends Validate{
  protected $rule = [
        'title'  =>  'require|max:225',
		
		
        
    ];

    protected $message = [
        'title.require'  =>  '标题必须',
        'content.require'  =>  '内容必须',
		
    ];

    protected $scene = [
        'add'   =>  ['title','content'],
        'edit'  =>  ['title','content'],
    ];   
	
}
