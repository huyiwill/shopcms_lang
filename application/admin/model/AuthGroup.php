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
namespace app\admin\model;
use think\Model;
use think\Db;
class AuthGroup extends Model {
    const TYPE_ADMIN                = 1;                   // 管理员用户组类型标识
    public function getGroups($where=array()){
        $map = array('status'=>1,'type'=>1,'module'=>'admin');
        $map = array_merge($map,$where);
        return $this->where($map)->select();
    }

    /**
     * 把用户添加到用户组,支持批量添加用户到用户组
     * @author 朱亚杰 <zhuyajie@topthink.net>
     *
     * 示例: 把uid=1的用户添加到group_id为1,2的组 `AuthGroupModel->addToGroup(1,'1,2');`
     */
    public function addToGroup($uid,$gid){
        $uid = is_array($uid)?implode(',',$uid):trim($uid,',');
        $gid = is_array($gid)?$gid:explode( ',',trim($gid,',') );

        $Access =Db::name("auth_group_access");
        if( isset($_POST['batch']) ){
            //为单个用户批量添加用户组时,先删除旧数据
             $del = $Access->where( array('uid'=>array('in',$uid)) )->delete();
        }
        
        $uid_arr = explode(',',$uid);
		$uid_arr = array_diff($uid_arr,array(config('USER_ADMINISTRATOR')));
        $add = array();
        if( $del!==false ){
            foreach ($uid_arr as $u){
            	//判断用户id是否合法
				
            	if(!Db::name('ucenterMember')->where(array('id'=>$u))->find()){
            		$this->error = "编号为{$u}的用户不存在！";
            		return false;
            	}
                foreach ($gid as $g){
                    if( is_numeric($u) && is_numeric($g) ){
                        $add['group_id'] = $g;  
						$add['uid'] = $u;  
						Db::name("auth_group_access")->insert($add);
                    }
                }
            }
           
        }
        if ($this->error ) {
            if( count($uid_arr)==1 && count($gid)==1 ){
                //单个添加时定制错误提示
                $this->error = "不能重复添加";
            }
            return false;
        }else{
            return true;
        }
    }

    /**
     * 返回用户所属用户组信息
     * @param  int    $uid 用户id
     * @return array  用户所属的用户组 array(
     *                                         array('uid'=>'用户id','group_id'=>'用户组id','title'=>'用户组名称','rules'=>'用户组拥有的规则id,多个,号隔开'),
     *                                         ...)
     */
    static public function getUserGroup($uid){
        static $groups = array();
        if (isset($groups[$uid]))
            return $groups[$uid];
		$subsql=Db::name("auth_group_access")->where(['uid'=>$uid])->group('group_id')->buildSql();
       $user_groups =Db::name('auth_group')->alias('a')->join([$subsql=> 'w'], 'w.group_id = a.id')->select();
       //$user_groups =Db::name("AUTH_GROUP_ACCESS")
          // ->table($this->_config['AUTH_GROUP_ACCESS'] . ' a')
         //  ->where("a.uid='$uid' and g.status='1'")
         // ->join($this->_config['AUTH_GROUP']." g on a.group_id=g.id")
        //  ->field('rules')->select();
	
       $groups[$uid]=$user_groups?:array();
       return $groups[$uid];
    }

    /**
     * 检查id是否全部存在
     * @param array|string $gid  用户组id列表
     * @author 朱亚杰 <zhuyajie@topthink.net>
     */
    public function checkId($modelname,$mid,$msg = '以下id不存在:'){
        if(is_array($mid)){
            $count = count($mid);
            $ids   = implode(',',$mid);
        }else{
            $mid   = explode(',',$mid);
            $count = count($mid);
            $ids   = $mid;
        }

        $s =Db::name($modelname)->where(array('id'=>array('IN',$ids)))->select();
        if(count($s)===$count){
            return true;
        }else{
            $diff = implode(',',array_diff($mid,$s));
            $this->error = $msg.$diff;
            return false;
        }
    }

    /**
     * 检查用户组是否全部存在
     * @param array|string $gid  用户组id列表
     * @author 朱亚杰 <zhuyajie@topthink.net>
     */
    public function checkGroupId($gid){
        return $this->checkId('AuthGroup',$gid, '以下用户组id不存在:');
    }



}

