<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\AssessmentForm */

$this->title = 'สร้าง แปบประเมิน';
$this->params['breadcrumbs'][] = ['label' => 'แปบประเมิน', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="assessment-form-create">

    <h3><?= Html::encode($this->title) ?></h3>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
