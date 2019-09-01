<?php
    use yii\helpers\Html;
    use yii\helpers\Url;
?>

<div class="col-md-2">
    <?php 
        if ($model->photo) {
            $url = isset(\Yii::$app->params['storageUrl']) ? \Yii::$app->params['storageUrl'] : '';
            echo Html::img("{$url}/files/{$model->photo}", [
                        'class' => 'img img-responsive',
                        'style' => ''
            ]);
        }
    ?>
</div>
<div class="col-md-10">
    <div><?= $model->title; ?></div>
    <div>
        <span>โดย : <?= backend\classes\CNUser::get_fullname_by_user_id($model->create_by)?></span>
        <span> วันที่เผยแพร่ : <?= appxq\sdii\utils\SDdate::mysql2phpThDateTime($model->create_date)?></span>
        
    </div>
    <div>
       <a href="<?= Url::to(['/site/news-detail?id='.$model->id])?>"> อ่านเพิ่มเติม</a>
    </div>
</div>
