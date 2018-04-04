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
namespace app\install\controller;

use think\Controller;
use think\Db;
use think\Storage;

define('REAL_PATH', realpath('./') . '/');

class Install extends Controller{
    protected function _initialize(){
        //if(session('step') === null){
        //    $this->redirect('Index/index');
        //}
        if(is_file(ROOT_PATH . 'data/install.lock')){
            $this->error('已经成功安装了yershop，请不要重复安装!');
        }
    }

    //安装第一步，检测运行所需的环境设置
    public function step1(){

        //环境检测
        $config = array(
            array('操作系统', '不限制', '类Unix', PHP_OS, 'success'),
            array('PHP版本', '5.4', '5.4+', PHP_VERSION, 'success'),
            array('MYSQL版本', '5.0', '5.0+', '未知', 'success'), //PHP5.5不支持mysql版本检测
            array('附件上传', '不限制', '2M+', '未知', 'success'),
            array('GD库', '2.0', '2.0+', '未知', 'success'),
            array('磁盘空间', '50M', '不限制', '未知', 'success'),
        );

        //PHP版本检测
        if(PHP_VERSION < 5.4){
            $config[1][4] = 'error';
            session('error', true);
        }

        //数据库检测
        // if(function_exists('mysql_get_server_info')){
        //$config[2][3] = mysql_get_server_info();
        // if($config[2][3] < $config[2][1]){
        //$config[2][4] = 'error';
        //session('error', true);
        //}
        // }

        //附件上传检测
        if(@ini_get('file_uploads')){
            $config[3][3] = ini_get('upload_max_filesize');
        }

        //GD库检测
        $tmp = function_exists('gd_info') ? gd_info() : array();
        if(empty($tmp['GD Version'])){
            $config[4][3] = '未安装';
            $config[4][4] = 'error';
            session('error', true);
        }else{
            $config[4][3] = $tmp['GD Version'];
        }
        unset($tmp);

        //磁盘空间检测
        if(function_exists('disk_free_space')){
            $config[5][3] = floor(disk_free_space(REAL_PATH) / (1024 * 1024)) . 'M';
        }
        $this->assign('functions', $config);

        //目录文件读写检测

        unset($config);
        //函数检测
        $config = array(
            array('dir', '[√]可写', 'success', './application'),
            array('dir', '[√]可写', 'success', './public/uploads/attachment'),
            array('dir', '[√]可写', 'success', './public/uploads/download'),
            array('dir', '[√]可写', 'success', './public/uploads/picture'),
            array('dir', '[√]可写', 'success', './public/uploads/editor'),
            array('dir', '[√]可写', 'success', './public/uploads/media'),
            array('dir', '[√]可写', 'success', './public/uploads/QRcode'),
            array('dir', '[√]可写', 'success', './runtime'),
            array('dir', '[√]可写', 'success', './data'),

        );

        foreach($config as &$val){
            if('dir' == $val[0]){
                if(!is_writable(REAL_PATH . $val[3])){
                    if(is_dir($val[3])){
                        $val[1] = '<span>[√]可读</span>';
                        $val[2] = 'error';
                        session('error', true);
                    }else{
                        $val[1] = '<span style="color:#f30">[×]不存在</span>';
                        $val[2] = 'error';
                        session('error', true);
                    }
                }
            }else{
                if(file_exists(REAL_PATH . $val[3])){
                    if(!is_writable(REAL_PATH . $val[3])){
                        $val[1] = '<span style="color:#f30">[×]不可写</span>';
                        $val[2] = 'error';
                        session('error', true);
                    }
                }else{
                    if(!is_writable(dirname(REAL_PATH . $val[3]))){
                        $val[1] = '<span style="color:#f30">[×]不存在</span>';
                        $val[2] = 'error';
                        session('error', true);
                    }
                }
            }
        }

        $this->assign('files', $config);
        session('step', 1);
        unset($config);
        $config = array(
            array('mysql_connect', '[√]支持', 'success'),
            array('file_get_contents', '[√]支持', 'success'),
            array('mb_strlen', '[√]支持', 'success'),
        );

        foreach($config as &$val){
            if(!function_exists($val[0])){
                $val[1] = '<span style="color:#f30">[×]不支持</span>';
                $val[2] = 'error';
                $val[3] = '开启';
                session('error', true);
            }
        }

        $this->assign('func', $config);
        return $this->fetch();
    }

    //安装第二步，创建数据库
    public function step2($db = null, $admin = null){

        if(session('error')){
            $this->error('环境检测没有通过，请调整环境后重试！');
        }
        $step = session('step');
        if($step != 1){
            $this->redirect('step1');
        }
        session('step', 2);
        return $this->fetch();
    }

    //安装第三步，安装数据表，创建配置文件
    public function step3($db = null, $admin = null){
        if(session('step') != 2){
            $this->redirect('step2');
        }else{

            if(!is_array($admin) || empty($admin[0]) || empty($admin[1]) || empty($admin[3])){
                $this->error('请填写完整管理员信息');
            }else{
                if($admin[1] != $admin[2]){
                    $this->error('确认密码和密码不一致');
                }else{
                    $info = array();
                    list($info['username'], $info['password'], $info['repassword'], $info['email']) = $admin;

                    session('admin_info', $info);
                }
            }

            if(!is_array($db) || empty($db[0]) || empty($db[1]) || empty($db[2]) || empty($db[3])){
                $this->error('请填写完整的数据库配置');
            }else{
                $DB = array();
                list($DB['type'], $DB['hostname'], $DB['database'], $DB['username'], $DB['password'], $DB['hostport'], $DB['prefix']) = $db;
                $DB['params']["\PDO::ATTR_PERSISTENT "] = TRUE;
                $DB['params']["\PDO::ATTR_CASE "]       = \PDO::CASE_LOWER;
                //$DB["sql_explain"]=true;
                session('db_config', $DB);

                $dbname = $DB['database'];
                unset($db);
            }
        }
        $url = url('index/complete');
        $this->assign('url', $url);
        return $this->fetch();
    }
}
