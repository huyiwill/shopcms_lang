<?php
// +----------------------------------------------------------------------
// | OneThink [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013 http://www.onethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 麦当苗儿 <zuojiazi@vip.qq.com> <http://www.zjzit.cn>
// +----------------------------------------------------------------------
namespace Wap\Controller;

/**
 * 订单模型控制器
 * 文档模型列表和详情
 */


class OrderController extends HomeController {


    public function index(){
        if(!is_login()) {
		    $this->display('Order/empty');
		}	 
		else{
			$uid=is_login();	
			$info=M('follow')->where("uid='$uid'")->select();
			$this->assign('info',$info);//
			$info2=M('ucenter_member')->where("id='$uid'")->select();
			$this->assign('info2',$info2);// 
		    $member=M('member')->where("uid='$uid'")->find();
		    $this->assign('member', $member);
			$map['uid']=$uid;
			$map['status']=1;
			$count=M("UserCoupon")->where($map)->count();;
			$this->assign('count', $count);
			$this->meta_title = '我的订单';	
			$this->display();
		}

    }
	/**
	 * 生成订单信息
	 * 
	 */
    public function add() {
		if(!is_login()) {
		    $this->redirect("User/login" );
		}	
		 /* 发货仓 */	
		$place=explode("，",C('PLACE'));
		$this->assign( 'place',$place);
		$order=M("order");
        /* uid调用*/
		$uid=is_login();
		$score=get_score($uid);		  
		/* 积分兑换*/
		$ratio= $score/C('RATIO');
		$this->assign('ratio', $ratio);
		 $this->assign('score', $score);
		$tag=$this->ordersn();
		$info=$order->where("tag='$tag'")->find();
        if($info){
		   $order->where("tag='$tag'")->delete();
		}
        if(IS_POST){
		   $goodlist=M("shoplist");
            /* 立刻购买*/
           if($_POST["now"]){
               for($i=0;$i<count($_POST["id"]);$i++) {
					$id = htmlspecialchars($_POST ["id"] [$i]);
					$num = htmlspecialchars($_POST ["num"] [$i]);
                    if($num<1){
				       $this->error( "数量不能少于1");
			        }
                    if($num>200){
				       $this->error( "数量不能大于200");
			        }
					$goodprice=htmlspecialchars($_POST ["price"] [$i]);
					$goodlist->goodid = $id;
					$goodlist->status = 1;
					$goodlist->orderid ='';
					$goodlist->parameters =htmlspecialchars($_POST ["parameters"] [$i]);
					$goodlist->sort =htmlspecialchars($_POST ["sort"] [$i]);
					$goodlist->num = $num;
					$goodlist->uid=$uid;
					$goodlist->tag=$tag;//标识号必须相同
					$goodlist->create_time= NOW_TIME;
					$goodlist->price =$goodprice;
					$goodtotal=$num*$goodprice;
					$goodlist->total =$goodtotal;
					$goodlist->add();
                } 
             }
             else{
				   if(!$_POST["sort"]){
					   $this->error( "未选择商品");
					}
				foreach ($_POST["sort"] as $k=>$val) {
				//获取主键值和对应的其他规格
				$sort=$k;
				$id = htmlspecialchars($_POST ["id"] [$sort]);
				
				// echo $sort."_".$_POST["parameters"][$sort]."</br>";
				$num =htmlspecialchars($_POST ["num"] [$sort]);
				if($num<1){
					   $this->error( "无效数量");
					}
				$goodlist->goodid = $id;
				$goodlist->status = 1;
				$goodlist->orderid ='';
				$goodlist->parameters=htmlspecialchars($_POST ["parameters"] [$sort]);
				$goodlist->num = $num;
				$goodlist->uid=$uid;
				$goodlist->tag=$tag;//标识号必须相同
				$goodlist->create_time= NOW_TIME;
				$goodprice=htmlspecialchars($_POST ["price"] [$sort]);
				$goodlist->price =$goodprice;
				$goodtotal=$num*$goodprice;
				$goodlist->total =$goodtotal;
				$goodlist->sort =$sort;
				$goodlist->add();
	           }
              }
            }   
		$aid=get_m_addressid($uid);
        $addressid=I("addressid")?I("addressid"):$aid;	
        $list= M('address')->where("id='$addressid'")->find(); 
		$this->assign('list', $list);
	    $this->assign('addressid',$addressid);
		$paytype=I("paytype")?I("paytype"):2;
	    $paytype=safe_replace($paytype);//过滤 
		$this->assign('paytype',$paytype);
        $shippingway=I("shippingway")?I("shippingway"):1;
          $shippingway=safe_replace($shippingway);//过滤 
		  $this->assign('shippingway',$shippingway);
        //发票信息
	    $company=I("company");
		session("company",null);
		session("company",$company);
	    $this->assign('company',$company);
		$company=safe_replace($company);//过滤 
        $intype=I("intype");
        $intype=$intype?$intype:1;   		
        $intype=safe_replace($intype);//过滤 
		$this->assign('intype',$intype);	
        $incontent=I("incontent")?I("incontent"):1;	
        $incontent=safe_replace($incontent);//过滤 
		$this->assign('incontent',$incontent);	
		switch($intype){		
			case 1:$itype="个人";break; 
			case 2:$itype="单位";break;	
		}
		switch($incontent){		
			case 1:$icontent="明细";break;
			case 2: $icontent="无发票";break;	
		}		
        switch($shippingway){
			case 1:$method="快递"; break;
			case 2:$method="自营"; break;		
		}
        $this->assign('inputshippingway', $method);

        $invoiceHeader=$itype." ".session("company");
        $this->assign('invoiceHeader', $invoiceHeader);
        $invoice=$icontent;      
		$this->assign('invoice', $invoice);
        //优惠券红包
        $ucpid=I("ucpid");
		session("ucpid",null);
		session("ucpid",$ucpid);
        $this->assign('ucpid',session("ucpid"));
        $card=I("card");
        $this->assign('card',$card);
        $data= M("shoplist")->where("tag='$tag'")->select();
		$total='';$num='';
		foreach ($data as $k=>$val) {
			$total += $val['total'] ;
			$num+=$val['num'];
		}
		if($total<C('LOWWEST')){
		    $trans=C('SHIPMONEY');
	 
	    }
	    else{
		  $trans=0;
	   } 
	   $all=$total+$trans;	  
	   $shoplist= M('shoplist')->where("tag='$tag'")->select();
       $this->assign('shoplist',$shoplist);
	   /* 优惠券未使用*/
		$map['uid']=$uid;
		$map['status']=1;
		$map['start_time']=array('elt',time());
        $map['end_time']=array('egt',time());
		$number=M("UserCoupon")->where($map)->count();
	    $info=M("UserCoupon")->where($map)->find();
        if($all>$info['lowpayment']){
		   $this->assign('number', $number);
	 
	    }
       $this->assign('count',count( $shoplist));
       $this->assign('all', $all);
	   $this->assign('num',$num);
       $this->assign('tag',$tag);
	   $this->assign('total',$total);
	   $this->assign('trans',$trans);
       $this->meta_title = '填写订单';  
	   $this->display('Order/save');	   
    }
     //获取运费  输入值 商品总金额
     public function checkprice($id,$price){
        //获取配置信息里的基础运费和满免额度，满免则为0，不满免则为基础运费
			 $map['status']  =1 ;
			 $map['id']=$id;
			 $info=M('document')->where($map)->find();
			 if($info['price']!==$price){	 
			     return false;
			 } 
			 else{
			    return true;
			 }
    }

     //获取运费  输入值 商品总金额
     public function getyprice($p_price = 0){
        //获取配置信息里的基础运费和满免额度，满免则为0，不满免则为基础运费
		
            return 0;
        
    }
	//读取订单
    public function read(){
        if (!is_login() ) {
			 $this->redirect("User/login" );
		}
        /* uid调用*/
		$uid=is_login();
		$score=get_score($uid);		  
		/* 积分兑换*/
		$ratio= $score/C('RATIO');
        $this->assign('score', $score);
		$this->assign('ratio', $ratio);
        /* 支付订单号*/
        $tag=I("tag");
        $this->assign('tag',$tag);
		//地址
        $aid=get_m_addressid($uid);
        $addressid=I("addressid")?I("addressid"):$aid;	
        $list= M('address')->where("id='$addressid'")->find(); 
		$this->assign('list', $list);
	    $this->assign('addressid',$addressid);
       
		/* 支付方式*/
		$paytype=I("paytype");
	    $paytype=safe_replace($paytype);//过滤 
		$this->assign('paytype',$paytype);
	   
	   /* 运输方式*/
        $shippingway=I("shippingway");
        $shippingway=safe_replace($shippingway);//过滤 
		$this->assign('shippingway',$shippingway);
         switch($shippingway){
			case 1:$method="快递"; break;
			case 2:$method="自营"; break;		
		}
        $this->assign('inputshippingway', $method);

		//发票信息
	    $company=I("company");
		session("company",null);
		session("company",$company);
	    $this->assign('company',$company);
		$company=safe_replace($company);//过滤 
        $intype=I("intype");
        $intype=$intype;   		
        $intype=safe_replace($intype);//过滤 
		$this->assign('intype',$intype);
		
        $incontent=I("incontent");	
        $incontent=safe_replace($incontent);//过滤 
		$this->assign('incontent',$incontent);
		
		switch($intype){		
			case 1:$itype="个人";break; 
			case 2:$itype="单位";break;	
		}
		switch($incontent){		
			case 1:$icontent="明细";break;
			case 2: $icontent="无发票";break;	
		}		
       

        $invoiceHeader=$itype." ".session("company");
        $this->assign('invoiceHeader', $invoiceHeader);

        $invoice=$icontent;      
		$this->assign('invoice', $invoice);

       

        $card=I("card");
        $this->assign('card',$card);
        $shoplist= M("shoplist")->where("tag='$tag'")->select();
		$total='';$num='';
		foreach ($shoplist as $k=>$val) {
			$total += $val['total'] ;
			$num+=$val['num'];
		}
		if($total<C('LOWWEST')){
		    $trans=C('SHIPMONEY');
	 
	    }
	    else{
		 $trans=0;
	   } 
	   
	   $all=$total+$trans;	  
        
		//计算优惠券
		$ucpid=I('post.ucpid'); //用户优惠券id
		/* 标识正确性检测 */
		if($ucpid &&!is_numeric($ucpid)){
		   $this->error('文档ID错误！');
		}	
		//计算优惠券可使用的金额,home/common/function
		$info=M("UserCoupon")->where("id='$ucpid' and status='1' and uid='$uid'")->find();
		if($all>$info['lowpayment']){
			$data['coupon']=$info['code'];//优惠券代码
			$data['coupon_money']=$info['price'];;//优惠券金额
		   //减优惠券金额
		    $all=$all-$info['price'];
            session("ucpid",null);
		    session("ucpid",$ucpid);
		}
        $this->assign('ucpid',$ucpid);

		$this->assign('data',$data);
         /* 优惠券未使用*/
		$map['uid']=$uid;
		$map['status']=1;
		$map['start_time']=array('elt',time());
        $map['end_time']=array('egt',time());
		$number=M("UserCoupon")->where($map)->count();
	    $info=M("UserCoupon")->where($map)->find();
        if($all>$info['lowpayment']){
		   $this->assign('number', $number);
	 
	    }

	   $this->assign('count',count($shoplist));
       $this->assign('shoplist',$shoplist);
	  
       $this->assign('all', $all);
	   $this->assign('num',$num); 
	   $this->assign('total',$total);
	   $this->assign('trans',$trans);
       $this->meta_title = '填写订单';  
	   $this->display('Order/save');
  
  }
 	//开启积分计算金额		
   public function result(){
       if ( !is_login() ) {
		   $this->redirect("User/login" );
		}
        $uid=is_login();
		$score=get_score($uid);	 // 用intval过滤$_POST["score"];
			//读取配置，1000积分兑换1元
		$ratio= $score/C('RATIO');
        $tag=I('post.tag');
		
		
		$type=I('type');
		if($type){
			/* 标识正确性检测 */
			if(!is_numeric($type)){
			   $this->error('ID错误！');
			}
		}
		$tag=safe_replace($tag);//过滤
        $data= M("shoplist")->where("tag='$tag'")->select();
		$total='';$num='';
		foreach ($data as $k=>$val) {
			$total += $val['total'] ;
			$num+=$val['num'];
		}
		if($total<C('LOWWEST')){
		    $trans=C('SHIPMONEY');
	 
	    }
	    else{
		  $trans=0;
	   } 
	   $total=$total+$trans;	 
	   
	   
	   //计算优惠券可使用的金额,home/common/function
        $ucpid=session("ucpid");
		if($ucpid){
		   $info=M("UserCoupon")->where("id='$ucpid' and status='1' and uid='$uid'")->find();
		}
		
		if($type=='1'&&$ucpid){
		   //减优惠券金额
		    $data['money']=$total-$ratio-$info['price'];
          
		}
        else if($type=='2'&&$ucpid){
		   $data['money']=$total-$info['price'];
		}
		else if($type=='1'&&!$ucpid){
		   $data['money']=$total-$ratio;
		}
        else  if($type=='2'&&!$ucpid){
		   $data['money']=$total;
		}
		$this->ajaxReturn($data,'json');
		
   }
  public function save() {
		if ( !is_login() ) {
		    $this->error( "您还没有登陆",U("User/login") );
		}
		
		$order=D("order");
		
		//获取支付订单号
		$tag=I('post.tag');
		$tag=safe_replace($tag);//过滤
        $data['tag']=$tag;//支付订单号
        
		//防止重复提交
		if(M("order")->where("tag='$tag'")->find()){
            M("order")->where("tag='$tag'")->delete(); 
		 }
        //获取发货仓
		$place=I('post.place');
		$data['place']=safe_replace($place);//过滤

		//获取会员uid
		$uid=is_login();
		$data['uid']=$uid;
			
		//验证价格并清空购物车
		$list=M("shoplist")->where("tag='$tag'")->select();
		         //遍历
	    foreach($list as $k=>$val){
				    //获取购物清单数据表产品id，字段goodid				
			$id=$val["goodid"];		
			//提交的价格
			$goodprice=$val["price"];			
			$Document = D('Document');
			$info= $Document->detail($id);		
			//系统价格
			if($info['groupprice']){
				$string=$info['groupprice'].'、'.$info['price'];
				$array= explode('、',$string);			
				//验证，多个价格
				if (!in_array($goodprice,$array)) {
					  $this->error('商品价格与系统不符,商品id'.$val["goodid"].'商品价格'.$safeprice.'系统价格'.$string);
				}
			}		
			//验证，普通价格
			else if($goodprice!==$info['price']){
				$this->error('商品价格与系统不符,商品id'.$val["goodid"].'商品价格'.$safeprice.'系统价格'.$safe['price']);
			}
		   else{
			 #your code
			   addUserLog('价格正确', $uid)  ;//日志
		   }
					    //删除购物车中产品id
		  M("shopcart")->where("goodid='$id'and uid='$uid'")->delete();
	   }


		//订单号
		$data['orderid']=date('Ym',time()).time().$uid;//订单号


		//计算商品总额
		$total=$this->getPricetotal($tag);
		$data['total']=$total;


		//计算运费
		if ($total<C('LOWWEST')){
		     $trans=C('SHIPMONEY');
		}else{
		     $trans=0;
		}
		$data['ship_price']=$trans;//运费


		//计算积分
		if(I('post.score')){
			$uid=is_login();
		    $score=get_score($uid);	 // 用intval过滤$_POST["score"];
			//读取配置，1000积分兑换1元
			$ratio= $score/C('RATIO');
			M("member")->where("uid='$uid'")->setField('score',0);
		}else{
		    $ratio=0;
		}
		/*积分明细记录*/
        $content='购物-'.$data['orderid'];
		$result=addScoreLog($uid,$content,$score,2); 
        $data['score']=$score;
        $data['score_money']=$ratio;
		$title='消耗积分'.$score.'抵消金额'.$ratio;
		addUserLog($title, $uid)  ;//日志


		//计算优惠券
		$ucpid=I('post.ucpid',0,'intval'); 
		if($ucpid){
		   $info=M("UserCoupon")->where("id='$ucpid' and status='1' and uid='$uid'")->find();
		}	
		//判断优惠券是否可用
		$xfee=$total+$trans-$ratio;
		//计算优惠券可使用的金额,home/common/function
		if($ucpid&&$info['lowpayment']<$xfee){
			if(!is_numeric($ucpid)){
			   $this->error('ID错误！');
			}
			$decfee=$info['price'];
			$data['coupon']=$info['code'];//优惠券代码
			$data['coupon_money']=$decfee;//优惠券金额
             M("UserCoupon")->where("id='$ucpid' and uid='$uid'")->setField('status',2);//设置优惠券已用
		}
		
		
		//计算使用地址id
		$addressid=I('post.addressid'); 
		$addressid=safe_replace($addressid);//过滤
		if(!$addressid){
			   $this->error('地址不能为空！');
		}
		$data['addressid']=$addressid;
			
		//计算应付金额
		$all=$total+$trans-$ratio-$decfee; 
//		//满3999减100,满4999减200
//        if($all>3998&&$all<4999){
//		   $total_money=$all-100;
//           addUserLog('满3999减100', $uid)  ;//日志
//		}
//        else if($all>4998){
//		   $total_money=$all-200;
//           addUserLog('满4999减200', $uid)  ;//日志
//		}
//		else{
//		 $total_money=$all;
//		}
        $data['total_money']=$all;//应付金额		
       
		//创建时间
		$data['create_time']=NOW_TIME;
		//支付类型PayType，1-货到付款
		if($_POST["PayType"]=="1"){
			
			//创建订单
			$data['status']=1;
			$data['ispay']=-1;//货到付款
			$orderid=$order->add($data);
			M("shoplist")->where("tag='$tag'")->setField('orderid',$orderid);

			//保存货到付款支付数据
			$pay=M("pay");
			$pay->create();
			$pay->money=$all;
			$pay->ratio=$ratio;
			$pay->total=$total;
			$pay->out_trade_no=$tag;
			$pay->yunfee=$trans;
			$pay->coupon=$decfee;
			$pay->uid=$uid;
			$pay->addressid=$senderid;
			$pay->create_time=NOW_TIME;
			$pay->type=2;//货到付款
			$pay->status=2;
			$pay->add();
						
            //发送邮件
			$mail=get_email($uid);//获取会员邮箱
			$title="交易提醒";
			$content="您在<a href=\"".C('DAMAIN')."\" target='_blank'>".C('SITENAME').'</a>提交了订单，订单号'.$tag;
			if ( C('MAIL_PASSWORD')){
				    SendMail($mail,$title,$content);
			}
            //输出支付订单号和支付金额
            $info['total_money']=$all;
            $info['orderid']=$data['orderid'];
			$this->assign('info',$info);

            //保存日志
			addUserLog('货到付款订单已提交', $uid)  ;
			$this->meta_title = '提交成功';
			$this->display('Pay/success');
		}
		//支付类型PayType，2-在线支付
		if($_POST["PayType"]=="2")  {
	       
		    //创建订单
			$data['ispay']="1";
			$data['status']="-1";//待支付
			//根据订单id保存对应的费用数据
			$orderid=$order->add($data);
			M("shoplist")->where("tag='$tag'")->setField('orderid',$orderid);
		//发起支付时thinkpay会自动创建
		//      $pay=M("pay");
		//      $pay->create();
		//      $pay->money=$all;
		//      $pay->ratio=$ratio;
		//      $pay->total=$total;
		//      $pay->out_trade_no=$tag;
		//      $pay->yunfee=$trans;
		//      $pay->coupon=$deccode;
		//      $pay->uid=$uid;
		//      $pay->addressid=$senderid;
		//        $pay->create_time=NOW_TIME;
		//        $pay->type=1;//在线支付
		//      $pay->status=-1;//待支付
		//      $pay->add();



			//记录日志
			addUserLog('在线支付订单已提交', $uid)  ;
            /* 创建财付通支付链接*/
			$reqUrl=create_tencent_url($tag,$all);
			$this->assign('reqUrl',$reqUrl);

			$this->meta_title = '订单支付';
            $info['total_money']=$all;
            $info['tag']= $data['tag'];
			$info['orderid']=$data['orderid'];
			$param['order_id'] = $orderid;
            if(isWeixinBrowser()){
				$this->redirect('Pay/backPay', $param);
			}
            else{
				//输出支付订单号和支付金额
				$this->assign('info',$info);
				$this->assign('goodprice',$all);
				//支付页
				$this->display('Pay/index');
			}
		}
    }
   

	//全部订单		
   public function lists(){
       if ( !is_login() ) {
		   $this->redirect("User/login" );
		}
    
        $uid=is_login();
        $page = I('p')?I('p'):1;
        $uid=is_login();
		$map['uid']=$uid;
        $res= D('order')->cList('',$map,$page,5);
        $this->assign('page',$res['page']);
        $data = $res['list'];
	    $this->meta_title = '我的收藏';
	    if(IS_AJAX){		 
			   //AJAX刷新数据
            $this->ajaxReturn($data,'json');
			
       }else{
            $this->assign('list',$data);// 赋值数据集     		
            $this->display(); 
       }
	 
	
    }
	
	//已完成订单		
   public function hasover(){
       if ( !is_login() ) {
		    $this->redirect("User/login" );
		}
      
        $uid=is_login();
		$map['uid']=$uid;
		$map['status']=3;
		$list=D("order")->getLists($map);
	    $this->assign('list',$list);// 赋值数据集     
		$page=D("order")->getPage($map);
		$this->assign('page',$page);//  
	    $this->meta_title = '我的收藏';
	    $this->display();
	
    }
   //待支付订单
    public function on_pay(){
       if ( !is_login() ) {
		   $this->redirect("User/login" );
		}
     
        $uid=is_login();
		 //已完成订单		
		$map['uid']=$uid;
		$map['status']=-1;
		$map['ispay']=1;
        $page = I('p')?I('p'):1;
		$res= D('order')->cList('',$map,$page,5);
        $this->assign('page',$res['page']);
        $data = $res['list'];
	    $this->meta_title = '待支付订单';
	    if(IS_AJAX){		 
			   //AJAX刷新数据
            $this->ajaxReturn($data,'json');
			
       }else{
            $this->assign('list',$data);// 赋值数据集     		
            $this->display(); 
       }
	
    }
	 //待发货订单
   public function on_way(){
       if ( !is_login() ) {
		     $this->error( "您还没有登陆",U("User/login") );
		}
        if ( !is_login() ) {
			$this->error( "您还没有登陆",U("User/login") );
	    }
        $uid=is_login();		
		$map['uid']=$uid;
		$map['status']=1;
		$list=D("order")->getLists($map);
	    $this->assign('list',$list);// 赋值数据集     
		$page=D("order")->getPage($map);
		$this->assign('page',$page);//  
	    $this->meta_title = '我的收藏';
	    $this->display();
	
    }
    //待确认订单
    public function on_confirm(){
       if ( !is_login() ) {
		     $this->error( "您还没有登陆",U("User/login") );
		}
        if ( !is_login() ) {
			$this->error( "您还没有登陆",U("User/login") );
	    }
        $uid=is_login();		
		$map['uid']=$uid;
		$map['status']=2; 
		$page = I('p')?I('p'):1;
		$res= D('order')->cList('',$map,$page,5);
        $this->assign('page',$res['page']);
        $data = $res['list'];
	    $this->meta_title = '待确认订单';
	    if(IS_AJAX){		 
			   //AJAX刷新数据
            $this->ajaxReturn($data,'json');
			
       }else{
            $this->assign('list',$data);// 赋值数据集     		
            $this->display(); 
       }
	
    }
    public function ordersn_old(){
		$yCode = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J');
		$orderSn = $yCode[intval(date('Y')) - 2011] . strtoupper(dechex(date('m'))) . date('d') . substr(time(), -5) . substr(microtime(), 2, 5) . sprintf('%04d%02d', rand(1000, 9999),rand(0,99));
		return $orderSn;
	}

    // 生成支付订单号
   public function ordersn(){
        if ( is_login() ) {
		      $uid=is_login();
		      $code=date('Ym',time()).time().$uid;
	       return $code;
		}
    }

    public function getPricetotal($tag) { 
        $tag=safe_replace($tag);//过滤
        $data = M("shoplist")->where("tag='$tag'")->select();
        foreach ($data as $k=>$val) {
			$price=$val['price'];
            $total += $val['num'] * $price;
        }
        return sprintf("%01.2f", $total);
    }
 
    public function getpriceNum($id) { 
	    $id=safe_replace($id);//过滤
        $price = 0.00;
        $data = M("shoplist")->where("tag='$id'")->select();
        foreach ($data as $k=>$item) {
            $sum += $item['num'];
        }
        return  $sum;
    }

    /* 订单详情页 */
	public function detail(){
		if ( !is_login() ) {
		     $this->error( "您还没有登陆",U("User/login") );
		}
		$orderid= I('get.orderid');//获取id
		$orderid =safe_replace($orderid);//过滤
	
		/* uid调用*/
		$uid=is_login();
		$order=M("order");
		$list=$order->where("orderid='$orderid'")->select();
		$goodlist=M("shoplist");
		foreach($list as $n=> $val){
		    $list[$n]['id']=$goodlist->where('tag=\''.$val['tag'].'\'')->select();

		}
        foreach($list as $n=> $val){
		    $list[$n]['addressid']=M("address")->where('id=\''.$val['addressid'].'\'')->select();

		}		
		$this->assign('list',$list);
		$this->meta_title = '订单详情';
		$this->display();
	}


	public function wuliu(){
		if ( !is_login() ) {
		    $this->error( "您还没有登陆",U("User/login") );
		}
		$id= I('get.orderid','','strip_tags');//获取id
		$id =safe_replace($id);//过滤
		$this->meta_title = '订单'.$id.'物流详情';
		$typeCom=M("order")->where("orderid='$id'")->getField("tool");
		$typeNu=M("order")->where("orderid='$id'")->getField("toolid");
		if (isset($typeCom)&&$typeNu){
		    $retData=$this->getkuaidi($typeCom,$typeNu );
		    addUserLog('查询快递', is_login())  ;
		}
		else{
		  $retData="";
		}
		$this->assign('kuaidata', $retData);		
		$this->display();
	}



    public function getkuaidi($typeCom,$typeNu ){
		$AppKey=C('100KEY');//请将XXXXXX替换成您在http://kuaidi100.com/app/reg.html申请到的KEY
		$url ='http://api.kuaidi100.com/api?id='.$AppKey.'&com='.$typeCom.'&nu='.$typeNu.'&show=2&muti=1&order=asc';
		//请勿删除变量$powered 的信息，否者本站将不再为你提供快递接口服务。
		$powered = '查询数据由：<a href="http://kuaidi100.com" target="_blank">KuaiDi100.Com （快递100）</a> 网站提供 ';
		//优先使用curl模式发送数据
		if (function_exists('curl_init') == 1){
			  $curl = curl_init();
			  curl_setopt ($curl, CURLOPT_URL, $url);
			  curl_setopt ($curl, CURLOPT_HEADER,0);
			  curl_setopt ($curl, CURLOPT_RETURNTRANSFER, 1);
			  curl_setopt ($curl, CURLOPT_USERAGENT,$_SERVER['HTTP_USER_AGENT']);
			  curl_setopt ($curl, CURLOPT_TIMEOUT,5);
			  $get_content = curl_exec($curl);
			  curl_close ($curl);
		 }else{
			  Vendor("Snoopy.Snoopy");
			  $snoopy=new \Vendor\Snoopy\Snoopy();
			  $snoopy->referer = 'http://www.google.com/';//伪装来源
			  $snoopy->fetch($url);
			  $get_content = $snoopy->results;
		}
		return $get_content;
		//print_r($get_content . '<br/>' . $powered);
    }
	public function delorder() {
		if ( !is_login() ) {
			$this->error( "您还没有登陆",U("User/login") );
		}
		$tag=I('tag');
        $tag=safe_replace($tag);//过滤
		$map["tag"]=array("in",$tag);
		$map["uid"]=is_login();
		$map["status"]=array("gt",2);
		M("order")->where($map)->delete();		
		$data=M("shoplist")->where($map)->delete();	
		if($data) { 
			$this->success('删除成功！');
		}else{
		   $this->error('删除失败！');
		}
	}

//确认收货
	public function confirm($id = 0){
        if ( !is_login() ) {
			$this->error( "您还没有登陆",U("User/login") );
		}
        if(IS_POST){
			$order = M('order');
			$orderid=I('orderid'); // 用strip_tags过滤$_GET['title']
			$orderid =safe_replace($orderid);//过滤
			//根据订单id获取购物清单,设置商品状态为已完成.，status=3
			$result=$order->where("orderid='$orderid'")->setField('status',3);
			$list=M("shoplist")->where("tag='$orderid'")->select();
		    foreach($list as $k=>$val){
				//获取购物清单数据表产品id，字段id
				$id=$val["id"];
                $data['status']=3;
                $data['iscomment']=1;
				M("shoplist")->where("id='$id'")->save($data);
			}
            if($result){
                    $data['status']=1;
				    $this->ajaxReturn($data);
                }
				else {
                    $this->error('确认失败');
               }
          } 		
     }
}
