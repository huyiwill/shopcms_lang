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
namespace app\common\taglib;
use think\template\TagLib;
use  think\Db;

class By extends TagLib {

 /**
     * 定义标签列表
     */
    protected $tags   =  [
        // 标签定义： attr 属性列表 close 是否闭合（0 或者1 默认1） alias 标签别名 level 嵌套层次
        'ad'     => ['attr' => 'place,name', 'close' => 1], //闭合标签，默认为不闭合
		'pos'     => ['attr' =>'position,name', 'close' => 1],
		'cate'     => ['attr' =>'cate_id,name,order,limit', 'close' => 1],
        'mix'     => ['attr' =>'cate_id,name,order,limit', 'close' => 1],
		'slide'     => ['attr' =>'place,name,order,limit', 'close' => 1],
		'read'     => ['attr' =>'model_id,name,order,limit', 'close' => 1],
		'link'     => ['attr' =>'name,order,limit', 'close' => 1],
		'channel'     => ['attr' =>'name,order,limit', 'close' => 1],
    ];

    /**
     * 广告位列表
     */
    public function tagAd($tag, $content)
    {
        $place  = $tag['place'];
        $name   = $tag['name'];
        $parse = '<?php ';
       
        $parse .= '$__LIST__= parseAd(' . $place . ');';
        $parse .= ' ?>';
        $parse .= '{volist name="__LIST__" id="'. $name .'"}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }
     /* 推荐位列表 */
    public function tagPos($tag, $content){
        $position = $tag['position'];
        $name   = $tag['name'];
        $parse = '<?php ';
       
        $parse .= '$__LIST__= parsePos(' . $position  . ');';
        $parse .= ' ?>';
        $parse .= '{volist name="__LIST__" id="'. $name .'"}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }
	 /*指定分类及子类 */
    public function tagCate($tag, $content){
        $cate_id = $tag['cate_id'];
		$order="'". $tag['order']."'";
		$limit= $tag['limit'];
        $name   = $tag['name'];
        $parse = '<?php ';
        $parse .= '$__LIST__= parseCate(' . $cate_id  . ',' . $order  . ',' . $limit  . ');';
        $parse .= ' ?>';
        $parse .= '{volist name="__LIST__" id="'. $name .'"}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }
   /* 多个栏目调用 */
    public function tagMix($tag, $content){
        $cate_id = $tag['cate_id'];
		$order="'". $tag['order']."'";
        $name   = $tag['name'];
		$limit= $tag['limit'];
        $parse = '<?php ';
        $parse .= '$__LIST__= parseMix(' . $cate_id  . ',' . $order  .  ',' . $limit  .');';
        $parse .= ' ?>';
        $parse .= '{volist name="__LIST__" id="'. $name .'"}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }
	 /*幻灯片*/
    public function tagSlide($tag, $content){
        $place = $tag['place'];
		$order="'". $tag['order']."'";
		$limit= $tag['limit'];
        $name   = $tag['name'];
        $parse = '<?php ';
        $parse .= '$__LIST__= parseSlide(' . $place  . ',' . $order  . ',' . $limit  . ');';
        $parse .= ' ?>';
        $parse .= '{volist name="__LIST__" id="'. $name .'"}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }
   /*文章*/
    public function tagRead($tag, $content){
        $model_id = $tag['model_id'];
		$order="'". $tag['order']."'";
		$limit= $tag['limit'];
        $name   = $tag['name'];
        $parse = '<?php ';
        $parse .= '$__LIST__= parseRead(' . $model_id  . ',' . $order  . ',' . $limit  . ');';
        $parse .= ' ?>';
        $parse .= '{volist name="__LIST__" id="'. $name .'"}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }
	  /*友情链接*/
    public function tagLink($tag, $content){
		$order="'". $tag['order']."'";
		$limit= $tag['limit'];
        $name   = $tag['name'];
        $parse = '<?php ';
        $parse .= '$__LIST__= parseLink(' . $order  . ',' . $limit  . ');';
        $parse .= ' ?>';
        $parse .= '{volist name="__LIST__" id="'. $name .'"}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }
	  /*导航*/
    public function tagChannel($tag, $content){
		$order="'". $tag['order']."'";
		$limit= $tag['limit'];
        $name   = $tag['name'];
        $parse = '<?php ';
        $parse .= '$__LIST__= parseChannel(' . $order  . ',' . $limit  . ');';
        $parse .= ' ?>';
        $parse .= '{volist name="__LIST__" id="'. $name .'"}';
        $parse .= $content;
        $parse .= '{/volist}';
        return $parse;
    }
}