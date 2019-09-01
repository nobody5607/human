<?php
namespace frontend\controllers;

use Yii; 
use yii\web\Controller; 

/**
 * Site controller
 */
class SettingController extends Controller
{
    public function actionProfile(){
        $user_id = isset(\Yii::$app->session['user_id'])?\Yii::$app->session['user_id']:'';
        if($user_id == ''){
            return $this->redirect(['site/login']);
        }
        //\appxq\sdii\utils\VarDumper::dump($user_id);
        $model = \backend\models\User::find()->where('id=:id',[':id'=>$user_id])->one();
        
        if($model->load(Yii::$app->request->post())){
            if($model->save()){
                \Yii::$app->session->setFlash('success', "แก้ไขข้อมูลส่วนตัวสำเร็จ"); 
            }else{
                \Yii::$app->session->setFlash('danger', "แก้ไขข้อมูลส่วนตัวไม่สำเร็จ");
            }
        }
        
        return $this->render('profile',[
            'model'=>$model
        ]);
    }
    public function actionAccount(){
        $user_id = isset(\Yii::$app->session['user_id'])?\Yii::$app->session['user_id']:'';
        $user = \backend\models\User::find()->where('id=:id',[':id'=>$user_id])->one();
        if($user_id == ''){
            return $this->redirect(['site/login']);
        }
        
        return $this->render('account',['user'=>$user]);
    }
    public function actionCheckCurrentPassword(){
        $user_id = isset(\Yii::$app->session['user_id'])?\Yii::$app->session['user_id']:'';
        if($user_id == ''){
            return $this->redirect(['site/login']);
        }
        $password = Yii::$app->request->post('password'); 
        $user = \backend\models\User::find()->where('id=:id',[':id'=>$user_id])->one();
        
        if($user->password === $password){
            return true;
        }
        return false;
    }
    public function actionChangePassword(){
        $user_id = isset(\Yii::$app->session['user_id'])?\Yii::$app->session['user_id']:'';
        if($user_id == ''){
            return $this->redirect(['site/login']);
        }
        $password = Yii::$app->request->post('password'); 
        $user = \backend\models\User::find()->where('id=:id',[':id'=>$user_id])->one();
        
        $user->password = $password;
        if($user->save()){
            return \cpn\chanpan\classes\CNMessage::getSuccess("เปลี่ยนรหัสผ่านสำเร็จ");
        }else{
            return \cpn\chanpan\classes\CNMessage::getError("เปลี่ยนรหัสผ่านไม่สำเร็จ");
        }
         
         
    }
}