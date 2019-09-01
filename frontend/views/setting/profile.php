<?php
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;

$this->title = 'แก้ไขข้อมูลส่วนตัว';
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="col-md-6 col-md-offset-3">
    <div>
        <a href='#' class="active"><u>ข้อมูลส่วนตัว</u></a> |
        <a href='<?= \yii\helpers\Url::to(['/setting/account'])?>'>บัญชี</a>
    </div>
    <br/>
    <div class="panel panel-default">
        <div class="panel-heading"><?= Html::encode($this->title) ?></div>
        <div class="panel-body">
            <div class="site-signup">  
                <div class="row">
                    <div class="col-lg-12">
                        <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?> 
                        <div>
                                <?= $form->field($model, 'firstname')->textInput() ?>
                                <?= $form->field($model, 'lastname')->textInput() ?>
                        </div>
                        <?= $form->field($model, 'tel')->textInput() ?>
                        <div class="form-group">
                                    <?= Html::submitButton('บันทึก', ['class' => 'btn btn-primary btn-block btn-lg active', 'name' => 'signup-button btn-block']) ?>
                        </div>
                        <?php ActiveForm::end(); ?>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>