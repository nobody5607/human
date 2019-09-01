<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace frontend\controllers;
use Yii; 
use yii\web\Controller;
/**
 * Description of ReportController
 *
 * @author chanpan
 */
class ReportController extends Controller{
    //put your code here
    public function actionIndex(){
        $user_id = isset(\Yii::$app->session['user_id'])?\Yii::$app->session['user_id']:'';
        if($user_id == ''){
            return $this->redirect(['site/login']);
        }
        
        return $this->render('index');
    }
    public function actionViewReport(){
        $user_id = isset(\Yii::$app->session['user_id'])?\Yii::$app->session['user_id']:'';
        if($user_id == ''){
            return $this->redirect(['site/login']);
        }
        $start_date = Yii::$app->request->post('start_date'); 
        $end_date = Yii::$app->request->post('end_date'); 
        $output=[];
        
        $model = \backend\models\Events::find()
                ->where(['between', 'create_date', $start_date, $end_date ])->andWhere('rstat not in(0,3)')->all();
//\appxq\sdii\utils\VarDumper::dump($model);
        foreach($model as $k=>$v){
            $output[$k] = [
                'id'=>(string)$v['id'],
                'title'=> isset($v['title'])?$v['title']:'',
                'user_name'=> isset($v['user_name'])?$v['user_name']:'',
                'location'=> isset($v['location'])?$v['location']:'',
                'create_date'=>isset($v['create_date'])?$v['create_date']:'',
                'time_start'=>isset($v['time_start'])?$v['time_start']:'',
                'users'=>[]
            ];
            
            $user = \common\models\RegisterForm::find()->where('event_id=:event_id',[':event_id'=>$v['id']])->all();
            if($user){
                foreach($user as $k2=>$u){
                    $output[$k]['users'][$k2] = [
                        'email'=>isset($u['email'])?$u['email']:'',
                        'name'=>isset($u['name'])?$u['name']:'',
                        'tel'=>isset($u['tel'])?$u['tel']:'',
                        'user_type'=>isset($u['user_type'])?$u['user_type']:'',
                        'department'=>isset($u['department'])?$u['department']:''
                    ];
                }
            }
        }
//        \appxq\sdii\utils\VarDumper::dump($output);
        return $this->render('view-report',[
            'output'=>$output
        ]);
    }
}
