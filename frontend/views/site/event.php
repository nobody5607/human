<?php

use yii\helpers\Html;
use yii\helpers\Url;
$this->title = "กิจกรรมการบรรยาย";
$user_id = \backend\classes\CNUser::get_user_id();
?>
<?php echo $this->render('_slider') ?>
<div class="container">
    <div class="kt-portlet">
        <div class="kt-portlet__head kt-portlet__head--right kt-portlet__head--noborder  kt-ribbon kt-ribbon--clip kt-ribbon--left kt-ribbon--info">
            <h4 class="kt-ribbon__target" style="top: 12px;background:#056da6;font-weight:bold;"><img src="/img/event.png" style="width: 25px;"> <?= $this->title; ?></h4>

        </div>
        <div class="kt-portlet__body kt-portlet__body--fit-top">
            <?php foreach ($model as $k => $v): ?>
                <div class="row" style="margin-top:10px;">
                    <div class="col-md-12">
                        <a href="<?= Url::to(["/site/event-detail?id={$v->id}"]) ?>" style="color:#000;">
                        <div class="col-md-2 col-xs-2 col-xs-2">
                            <?php
                            if ($v->file) {
                                $url = isset(\Yii::$app->params['storageUrl']) ? \Yii::$app->params['storageUrl'] : '';
                                echo Html::img("{$url}/files/{$v->file}", [
                                    'class' => 'img img-responsive',
                                    'style' => 'width:100px;'
                                ]);
                            }
                            ?>  
                        </div>
                        <div class="col-md-8 col-xs-8 col-xs-8">
                            <div>
                                <h4><?= isset($v->title) ? $v->title : '' ?></h4>
                                <div>
                                    <span><i class="glyphicon glyphicon-calendar"></i> วันที่เผยแพร่ :  <?= appxq\sdii\utils\SDdate::mysql2phpDate($v->create_date) ?></span>&nbsp;&nbsp;
                                    <span><i class="glyphicon glyphicon-user"></i> โดย : <?= \backend\classes\CNUser::get_fullname_by_user_id($user_id) ?></span>
                                </div>

                            </div>    
                        </div> 
                        <div class="col-md-12">
                            <hr/>
                        </div>
                    </a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>

    </div>

</div> 