<?php
// +----------------------------------------------------------------------
// | yershop网店管理系统
// +----------------------------------------------------------------------
// | Copyright (c) 2017 http://www.yershop.com All rights reserved.
// +----------------------------------------------------------------------
// | 版权申明：yershop网店管理系统不是一个自由软件，是贝云网络官方推出的商业源码，严禁在未经许可的情况下
// | 拷贝、复制、传播、使用yershop网店管理系统的任意代码，如有违反，请立即删除，否则您将面临承担相应
// | 法律责任的风险。如果需要取得官方授权，请联系官方http://www.yershop.com
namespace app\admin\controller;
use app\admin\model\AuthRule;
use app\admin\model\AuthGroup;
use think\Controller;
use think\Db;
class Auth extends Admin{
    /**
     * 权限管理首页
     */
    public function index(){
		if(isset($_GET['title'])){
            $map['title']  = array('like', '%'.(string)input('title').'%');
        }else{
			$map="";
		}
		$map["module"]="admin";
        $list = getLists('AuthGroup',$map,10,'id asc');
       
        $this->assign( 'res', $list );
        $this->assign( '_use_tip', true );
        $this->meta_title = '权限管理';
         return $this->fetch(); 
    }

    public function add(){
        if ( empty($this->auth_group) ) {
            $this->assign('auth_group',array('title'=>null,'id'=>null,'description'=>null,'rules'=>null,));//排除notice信息
        }
        $this->meta_title = '新增用户组';
         return $this->fetch('edit');
    }
 		/**商品分类菜单调用**/
 public function getCategory(){
		$field = 'id,name,pid,title,sort';
		$category =Db::name( 'Module' )->field($field)->order('sort asc')->select( );
		$list = $this->unlimitedForLevel($category);
		return $list;
		}
 public function unlimitedForLevel($cate,$name = 'child',$pid = 0){
		$arr = array( );
		foreach ( $cate as $key => $v ) {
		//判断，如果$v['pid'] == $pid的则压入数组Child
		if ($v['pid'] == $pid) {
		//递归执行
		$v[$name] = self::unlimitedForLevel($cate,$name,$v['id']);
		$arr[] = $v;
		}
		}
		return $arr;
		}
    /**
     * 将用户添加到用户组,入参uid,group_id
     * @author 朱亚杰 <zhuyajie@topthink.net>
     */
    public function addToGroup(){
        $uid = input('uid');
        $gid = input('group/a');
        if( empty($uid) ){
            $this->error('参数有误');
        }
        $AuthGroup = new AuthGroup;
        if(is_numeric($uid)){
			 $admin_id=$this->get_administrator();
            if ($uid===$admin_id) {
                $this->error('该用户为超级管理员');
            }
            if( !Db::name('ucenterMember')->where(array('id'=>$uid))->find() ){
                $this->error('用户不存在');
            }
        }

        if( $gid && !$AuthGroup->checkGroupId($gid)){
            $this->error($AuthGroup->error);
        }
        if ( $AuthGroup->addToGroup($uid,$gid) ){
            $this->success('操作成功','index');
        }else{
            $this->error($AuthGroup->getError());
        }
    }
    public function edit(){
        $auth_group = Db::name('AuthGroup')->where( array('module'=>'admin','type'=>AuthGroup::TYPE_ADMIN) )
                                    ->find( (int)input('id') );
        $this->assign('info',$auth_group);
        $this->meta_title = '编辑用户组';
		$this->assign('meta_title', $this->meta_title);
         return $this->fetch();
    }


    /**
     * 访问授权页面
     */
    public function access(){
        $id=(int)input('group_id');
        $map['id']  = $id;

		$list=$this->getCategory();
	    $this->assign('list', $list);
        $auth_group = Db::name('AuthGroup')->where($map)->field('id,id,title,rules')->find();
        $this->meta_title = '访问授权';
		$this->assign('meta_title', $this->meta_title);
		
		 $this->assign('this_group', $auth_group);
         return $this->fetch();
    }

    /**
     * 管理员用户组数据写入/更新
     */
    public function writeGroup(){
        if(isset($_POST['rules'])){
            sort($_POST['rules']);
            $_POST['rules']  = implode( ',' , array_unique($_POST['rules']));
        }
        $_POST['module'] =  'admin';
        $_POST['type']   =  AuthGroup::TYPE_ADMIN;
        $AuthGroup       =  new AuthGroup;
       
        if ( $_POST ) {
            if ( empty($_POST['id']) ) {
                $r = $AuthGroup->allowField(true)->insertGetId($_POST);
            }else{
                $r = $AuthGroup->allowField(true)->save($_POST,['id',$_POST['id']]);
            }
            if($r===false){
                $this->error('操作失败');
            } else{
                $this->success('操作成功!','index');
            }
        }else{
            $this->error('操作失败'.$AuthGroup->getError());
        }
    }

    
 public function group(){
        $uid            =  input('uid');
		$AuthGroup=new AuthGroup;
        $auth_groups    = $AuthGroup->getGroups();
        $user_groups    =   AuthGroup::getUserGroup($uid);
		 
        $ids =array();
        foreach ($user_groups as $value){
            $ids[]  =   $value['group_id'];
        }
        $info = Db::name('ucenterMember')->where(array('id'=>$uid))->find();
        $this->assign('nickname',   $info["username"]);
        $this->assign('auth_groups',$auth_groups);
        $this->assign('user_groups',implode(',',$ids));
        $this->meta_title = '用户组授权';
       return $this->fetch();
    }

  
	 public function del(){   
	    $id=input("id");
	    $map['id']=array("in",$id);
		$res=Db::name("AuthGroup")->where($map)->delete();
		if($res){
			   addUserLog("add_auth_group",session_uid());
		   $this->success("删除成功！");
		}else{
			 $this->error("删除失败！");
		}
	}


}
