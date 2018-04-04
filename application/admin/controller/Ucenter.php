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

class Ucenter extends Admin{
    public function index(){     
         if($_POST){
			foreach ($_POST as $key=>$value){
				if($value){
					$map[$key]  = array('like', '%'.$value.'%');
				 }
			}
        }
		$map=isset($map)?$map:'';
		$res=getLists('UcenterMember',$map,10,'id desc',"");;
	    $this->assign('res', $res);
		$this->meta_title="配置管理";
		$this->assign('meta_title', $this->meta_title);
	    return $this->fetch(); 
	}
	

  
	public function edit($id=""){   
	    if($_POST){
		   $UcenterMember=model("UcenterMember");
           $res=$UcenterMember->validate(true)->allowField(true)->save($_POST,['id' => $_POST['id']]);
	       if($res){
			  addUserLog("edit_ucenterMember",session_uid());
		      $this->success("更新成功！",'index');
		   }else{
			   $error=$UcenterMember->getError();
			   $this->error($error?$error:"更新失败");
		   } 
	  }
	  else{
		 $map['id']=$id;
		 $info=db("UcenterMember")->where($map)->find();
	     $this->assign('info', $info);
		 $this->meta_title="编辑-".$info["username"];
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch();
	   }
	}
	public function add($id=""){  
	   if($_POST){
		   $UcenterMember=model("UcenterMember");
        // 过滤post数组中的非数据表字段数据
           $res=$UcenterMember->validate(true)->allowField(true)->save($_POST);
	   if($res){
		     addUserLog("add_ucenterMember",session_uid());
		     $this->success("新增成功！",'index');
		}else{
			 $error=$UcenterMember->getError();
			 $this->error($error?$error:"新增失败");
		} 
	  }
	  else{
		
		 $this->meta_title="新增配置";
		 $this->assign('meta_title', $this->meta_title);
	     return $this->fetch("edit");
	  }
	}
	public function encrypt($password=""){  
	     $key=config('database.key');
	     return ucenter_md5($password, $key);
	}
    public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		if(!$map["id"]){
			 $this->error("未选择数据！");
		}
		
		$res=db("UcenterMember")->where($map)->delete();
		if($res){
		   addUserLog("del_ucenterMember",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}
    public function word(){ 
		include(ROOT_PATH.'extend/PHPWord/PHPWord.php'); 	
		include(ROOT_PATH.'extend/PHPWord/PHPWord/IOFactory.php');
		$PHPWord = new \PHPWord();	
		foreach ($_REQUEST as $key=>$value){
					if($value){
						$value=safe_replace($value);
						$map[$key]  = array('like', '%'.$value.'%');
					}
			}
			if (isset($map['start_time']) ) {
				  unset($map['start_time']);
				  $map['update_time'] = array('egt',strtotime($_POST['start_time']));
			}
			if (isset($map['end_time']) ) {
				unset($map['end_time']);
				$map['update_time'] = array('elt',strtotime($_POST['end_time']));
			} 
			if (isset($map['send_time1']) ) {
				unset($map['send_time1']);
				$map['send_time'] = array('egt',strtotime($_POST['send_time1']));
			}
			if (isset($map['send_time2']) ) {
				unset($map['send_time2']);
				$map['send_time'] = array('elt',strtotime($_POST['send_time2']));
			}
			if (isset($map['confirm_time1']) ) {
				unset($map['confirm_time1']);
				$map['confirm_time'] = array('egt',strtotime($_POST['confirm_time1']));
			}
			if (isset($map['confirm_time2']) ) {
				unset($map['confirm_time2']);
				$map['confirm_time'] = array('elt',strtotime($_POST['confirm_time2']));
			}
			if (input("id")) {
				  unset($map);
				  $map['id'] =input("id");
		}
		$map=isset($map)?$map:'';
		$list  = db("UcenterMember")->where($map)->select();
		$num=0;
	    foreach($list as $k=>$v) { // Loop through cells
		   $section = $PHPWord->createSection();
		   $header = $section->createHeader(); $num=$num+1;
		   $header->addPreserveText("本订单由yershop开源网店系统提供技术支持" );
		     $fontStyle = array('color'=>'000000',  'size'=>14, 'bold'=>true);
             $section->addText( "订单号：".$v["order_sn"],$fontStyle); 
			 $section->addTextBreak();
			 $fontStyle = array('color'=>'000000', 'size'=>10, 'bold'=>false);
             $data=db("sales")->where('order_sn=\''.$v['order_sn'].'\'')->select();
			 $table = $section->addTable();
			 $table->addRow(400);
			 $cell = $table->addCell(4000); $cell->addText('名称');
			 $cell = $table->addCell(2000); $cell->addText('规格');
			 $cell = $table->addCell(1000); $cell->addText('数量');
			 $cell = $table->addCell(2000);$cell->addText('单价');
			 $cell = $table->addCell(2000);$cell->addText('小计');
             foreach($data as $n=> $val){
                 $val['specifications']=str_replace("&nbsp;","",$val['specifications']);
                 //$text="{$val["title"]} {$val['specifications']} 数量{$val['num']} 单价{$val['price']} 小计{$val['total']}";
				 $table->addRow(400);
				 $cell = $table->addCell(4000); $cell->addText($val["title"]);
				 $cell = $table->addCell(2000); $cell->addText($val['specifications']);
				 $cell = $table->addCell(1000); $cell->addText($val['num']);
				 $cell = $table->addCell(2000);$cell->addText($val['price']);
				 $cell = $table->addCell(2000);$cell->addText($val['total']);
				  //$section->addText($text, $fontStyle);
				 $section->addTextBreak();
		       }  
			   $fontStyle = array('color'=>'000000', 'align'=>'right', 'size'=>10);
			   $paragraphStyle = array('align'=>'right');
			   $section->addText("总金额：".$v["total_money"], $fontStyle,$paragraphStyle);
			   $section->addTextBreak();
			   $section->addText("下单时间：".date("Y-m-d y:i:s",$v["update_time"]), $fontStyle,$paragraphStyle);
			   $section->addTextBreak(); 
               $section->addText("收件人：".$v["username"], $fontStyle,$paragraphStyle);
			   $section->addTextBreak();
               $section->addText("联系方式：".$v["mobile"], $fontStyle,$paragraphStyle);
			   $section->addTextBreak();
               $section->addText("收件地址：".$v["address"], $fontStyle,$paragraphStyle);
			   $section->addTextBreak();
               $section->addText("支付方式：".$this->parsePaytype($v["paytype"]), $fontStyle,$paragraphStyle);
	   }
		// Save File
	    $objWriter = \PHPWord_IOFactory::createWriter($PHPWord, 'Word2007');
		$savename=date("Ymd-his",time());
		$name=ROOT_PATH.$savename.'.docx';
	    $objWriter->save($name);
		header('pragma:public');
        header('Content-type:application/vnd.ms-excel;charset=utf-8;name="'.$savename.'.docx"');
        header("Content-Disposition:attachment;filename=$savename.docx");//attachment新窗口打印inline本窗口打印
		if(is_file($name)){ 
			$objWriter->save('php://output');        
        }
	}
	public function out(){  
		if($_POST){  
			$xlsName  = "UcenterMember";      
			$xlsCell  = array(
				array('id','编号'),
				array('order_sn','订单编号'),
				array('total_money','总金额'),
				array('saleslist','订单内容'),
				array('username','联系人'),
				array('mobile','联系方式'), 
				array('address','地址'), 
				array('status','订单状态'),
				array('score_money','积分抵消金额'),
				array('express','快递名称'), 
				array('express_code','快递单号'),
				array('update_time','支付完成时间'),
				array('send_time','发货时间'), 
				array('confirm_time','确认时间'), 
				array('uid','用户uid')
			);  
		
			foreach ($_REQUEST as $key=>$value){
					if($value){
						$value=safe_replace($value);
						$map[$key]  = array('like', '%'.$value.'%');
					 }
			}
			if (isset($map['start_time']) ) {
				  unset($map['start_time']);
				  $map['update_time'] = array('egt',strtotime($_POST['start_time']));
			}
			if (isset($map['end_time']) ) {
				unset($map['end_time']);
				$map['update_time'] = array('elt',strtotime($_POST['end_time']));
			} 
			if (isset($map['send_time1']) ) {
				unset($map['send_time1']);
				$map['send_time'] = array('egt',strtotime($_POST['send_time1']));
			}
			if (isset($map['send_time2']) ) {
				unset($map['send_time2']);
				$map['send_time'] = array('elt',strtotime($_POST['send_time2']));
			}
			if (isset($map['confirm_time1']) ) {
				unset($map['confirm_time1']);
				$map['confirm_time'] = array('egt',strtotime($_POST['confirm_time1']));
			}
			if (isset($map['confirm_time2']) ) {
				unset($map['confirm_time2']);
				$map['confirm_time'] = array('elt',strtotime($_POST['confirm_time2']));
			}
			$map=isset($map)?$map:'';
			$xlsModel = db($xlsName);
			$xlsData  = $xlsModel->where($map)->select(); 
			foreach($xlsData as &$val){
				  $val["update_time"]=isset($val["update_time"])?date("Y-m-d H:i:s",$val["update_time"]):"";
				  $val["send_time"]=isset($val["send_time"])?date("Y-m-d H:i:s",$val["send_time"]):""; 
				  $val["confirm_time"]=isset($val["confirm_time"])?date("Y-m-d H:i:s",$val["confirm_time"]):"";
				  $val["status"]=isset($val["status"])?$this->parse($val["status"]):"";
				  $val["paytype"]=isset($val["paytype"])?$this->parsePaytype($val["paytype"]):"";
				 
			}      
			if(!$xlsData){               
				 $this->error('无数据');
			}
			exportExcel($xlsName,$xlsCell,$xlsData); 
		}
		else{
		   $this->meta_title="导出excel订单";
		   $this->assign('meta_title', $this->meta_title);
	       return $this->fetch();
		
		}
	}
}
