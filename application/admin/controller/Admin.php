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
use think\Request;

class Admin extends Controller{
    protected function _initialize(){
        if(!is_login()){// 还没登录 跳转到登录页面
            $this->redirect('login/index');
        }
        if($_POST){
            //$this->error('未授权');
        }
        $this->uid = is_login();
        $this->assign('INSTALL_PATH', INSTALL_PATH);
        // 检测访问权限
        $access     = $this->accessControl();
        $controller = Request::instance()->controller();
        $url        = strtolower($controller . "/index");
        //echo $url;
        if($access === false){
            $this->error('403:禁止访问');
        }else{
            if($access === null){
                $dynamic = $this->checkDynamic();//检测分类栏目有关的各项动态权限
                if($dynamic === null){
                    $rule = $url;
                    $res  = $this->checkRule($rule, array('in', '1,2'));
                    if(!$res){
                        $this->error('未授权访问');
                    }
                }elseif($dynamic === false){
                    $this->error('未授权访问!');
                }
            }
        }
        $condition["url"] = $url;
        $info             = db('Module')->where($condition)->field("url,id,pid,group_id")->find();
        $id               = $info["id"];
        $group_id         = $info["group_id"];
        $where['id']      = $id;
        $now              = db('Module')->where($where)->field("id,title,pid")->find();
        $this->assign('now', $now);
        $map['pid']      = 0;
        $group_id        = $group_id ? $group_id : 1;
        $map['group_id'] = $group_id;
        $group           = db('group')->order('sort asc')->select();
        foreach($group as $k => $item){
            if($item['title'] == '广告' || $item['title'] == '文章'){
                unset($group[$k]);
            }
        }



        $arr  = array();
        $side = db('Module')->where($map)->order('id asc,sort desc')->field("id,title,pid")->select();
        foreach($side as $n => $val){
            $arr[]       = $val['id'];
            $map2["pid"] = $val['id'];
            $list        = db('Module')->where($map2)->field("id,title,pid")->order('sort desc')->select();
            foreach($list as $n => $val1){
                $arr[] = $val1['id'];
            }
        }
        unset($map);
        $map['id']     = array("in", $arr);
        $map['status'] = 1;
        //侧栏
        $sidebar = db('Module')->where($map)->order('sort desc')->field("id,title,pid")->select();
        foreach($sidebar as & $value){
            $value["url"] = get_moude_url($value['id']);
        }

        $this->assign('group', $group);
        $this->assign('sidebar', json_encode($sidebar));
        // 查找菜单
    }

    /**
     * action访问控制,在 **登陆成功** 后执行的第一项权限检测任务
     * @return boolean|null  返回值必须使用 `===` 进行判断
     *   返回 **false**, 不允许任何人访问(超管除外)
     *   返回 **true**, 允许任何管理员访问,无需执行节点权限检测
     *   返回 **null**, 需要继续执行节点权限检测决定是否允许访问
     * @author 朱亚杰  <xcoolcc@gmail.com>
     */
    final protected function accessControl(){
        $IS_ROOT = $this->get_administrator();

        if($IS_ROOT){
            return true;//管理员允许访问任何页面
        }

        return null;//需要检测节点权限
    }

    protected function checkDynamic(){
        $IS_ROOT = $this->get_administrator();
        if($IS_ROOT){
            return true;//管理员允许访问任何页面
        }
        return null;//不明,需checkRule
    }

    function get_administrator($uid = null){
        $uid = is_login();
        if($uid == config('USER_ADMINISTRATOR')){
            return $uid;
        }
    }

    final protected function checkRule($rule, $type = AuthRule::RULE_URL, $mode = 'url'){
        $IS_ROOT = $this->get_administrator();
        if($IS_ROOT){
            return true;//管理员允许访问任何页面
        }
        static $Auth = null;
        if(!$Auth){
            $Auth = new \think\Auth();
        }
        $uid = is_login();
        if(!$Auth->check($rule, $uid, $type, $mode)){
            return false;
        }
        return true;
    }
}
