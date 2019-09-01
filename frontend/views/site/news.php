<?php

use yii\widgets\ListView;

$this->title = 'ข่าวเเละประกาศ';
?>
<?php echo $this->render('_slider') ?>
<div class="container">
    <div class="kt-portlet">
        <div class="kt-portlet__head kt-portlet__head--right kt-portlet__head--noborder  kt-ribbon kt-ribbon--clip kt-ribbon--left kt-ribbon--info">
            <h4 class="kt-ribbon__target" style="top: 12px;background:#056da6;font-weight:bold;"><img src="/img/news.png" style="width: 25px;"> <?= $this->title; ?></h4>

        </div>
        <div class="kt-portlet__body kt-portlet__body--fit-top">
            <?=
            ListView::widget([
                'dataProvider' => $dataProvider,
                'itemOptions' => [
                    'class' => 'col-md-6',
                    'style' => 'margin-bottom:10px;border-bottom:1px solid #eeeeee;    padding-bottom: 10px;'
                ],
                'options' => [
                    'tag' => 'div',
                    'class' => 'row',
                ],
                'layout' => "{items}\n<div class='col-md-8 col-md-offset-2'>{pager}</div>",
                'itemView' => function ($model, $key, $index, $widget) {
                    return $this->render('_new_items', ['model' => $model]);
                    // or just do some echo
                    // return $model->title . ' posted by ' . $model->author;
                },
                'pager' => [
                    'firstPageLabel' => 'first',
                    'lastPageLabel' => 'last',
                    'nextPageLabel' => 'next',
                    'prevPageLabel' => 'previous',
                    'maxButtonCount' => 3,
                ],
            ]);
            ?>  
        </div>

    </div>

</div>