<?php
/* @var $this yii\web\View */
use yii\helpers\Url;
$this->title = Yii::$app->name;
$url = isset(\Yii::$app->params['storageUrl']) ? \Yii::$app->params['storageUrl'] : '';
?>

<div class="row">
    
    <div class="">
        <?php echo $this->render('_slider')?>
        <br/>
        <div class="row">
            <div class="col-md-9">
                <div>
                    <?= $this->render("_search"); ?>
                </div>
                <div class="kt-portlet">
                    <div class="kt-portlet__head kt-portlet__head--right kt-portlet__head--noborder  kt-ribbon kt-ribbon--clip kt-ribbon--left kt-ribbon--info">
                        <h4 class="kt-ribbon__target" style="top: 12px;background:#056da6;font-weight:bold;"><img src="/img/news.png" style="width: 25px;"> ข่าวประกาศ</h4>
                        <div class="kt-portlet__head-label">
                            <div class="kt-portlet__head-title" style="    font-size: 14px;"><a href='<?= Url::to(['/site/news'])?>'>อ่านเพิ่มเติม >></a></div>
                        </div>
                    </div>
                    <div class="kt-portlet__body kt-portlet__body--fit-top">
                        <?php if ($news2): ?>
                            <?php foreach ($news2 as $k => $v): ?>
                                <?php
                                $title = isset($v['title']) ? $v['title'] : '';
                                $user_id = isset($v->create_by) ? $v->create_by : '';
                                $userName = backend\classes\CNUser::get_fullname_by_user_id($user_id);
                                $date = isset($v->create_date) ? appxq\sdii\utils\SDdate::mysql2phpThDate($v->create_date) : '';
                                $sub_detail = isset($v['sub_detail'])?$v['sub_detail']:'';
                                ?>
                                <div class="col-md-12">
                                    
                                        <div class="col-md-3 col-sm-3 col-xs-12"> 
                                            <img src="<?= "{$url}/files/{$v->photo}"; ?>" class="img-thumbnail">
                                        </div> 
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            <div style="font-size:18px;color:#000000"> <?= "{$title}"; ?> </div> 
                                            <div style="font-size:12px;">โดย <span style="color:#1154af"><?= " {$userName}"; ?></span>  เผยเเพร่เมื่อ <span style="color:#1154af"><?= " {$date}"; ?></span></div> 
                                            <div style="font-size:14px;color:#000000"> <?= "{$sub_detail}"; ?> </div>  
                                            <a href="<?= Url::to(["/site/news-detail?id={$v->id}"]) ?>">อ่านเพิ่มเติม</a>
                                        </div> 
                                     

                                </div>
                                <div class="clearfix" style="    margin-bottom: 10px;border-bottom: 1px solid whitesmoke;padding-bottom: 10px;"></div>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </div>
                        
                </div>
                
                <div class="kt-portlet">
                    <div class="kt-portlet__head kt-portlet__head--right kt-portlet__head--noborder  kt-ribbon kt-ribbon--clip kt-ribbon--left kt-ribbon--info">
                        <h4 class="kt-ribbon__target" style="top: 12px;background:#056da6;font-weight:bold;"><img src="/img/event.png" style="width: 25px;"> กิจกรรม</h4>
                        <div class="kt-portlet__head-label">
                            <div class="kt-portlet__head-title" style="    font-size: 14px;"><a href='<?= Url::to(['/site/event'])?>'>อ่านเพิ่มเติม >></a></div>
                        </div>
                    </div>
                    <div class="kt-portlet__body kt-portlet__body--fit-top">
                         <?php if ($model): ?>
                            <?php foreach ($event as $k => $v): ?> 
                                <?php 
                                    $title = isset($v['title'])?$v['title']:'';
                                    $user_id = isset($v->create_at)?$v->create_at:'';
                                    $userName = isset($v['user_name'])?$v['user_name']:'';
                                    $date = isset($v->create_date) ? appxq\sdii\utils\SDdate::mysql2phpThDate($v->create_date) : '';
                                    $renderTime = renderTime($v);
                                    $location = isset($v['location'])?$v['location']:'';

                                ?>

                                <div class="col-md-12">
                                    
                                        <div class="col-md-3 col-sm-3 col-xs-12"> 
                                            <img src="<?= "{$url}/files/{$v->file}"; ?>" style="    border-radius: 3px; max-width: 75px;">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-12">
                                            <div style="font-size:18px;color:#000000"> <?= "{$title}"; ?> </div> 
                                            <div style="font-size:12px;">โดย <span style="color:#1154af"><?= " {$userName}"; ?></span>  เผยเเพร่เมื่อ <span style="color:#1154af"><?= " {$date} {$renderTime}"; ?></span></div> 
                                            <div style="font-size:14px;color:#000000"> สถานที่จัดกิจกรรม <?= "{$location}"; ?> </div>  
                                            <a href="<?= Url::to(["/site/event-detail?id={$v->id}"]) ?>">อ่านเพิ่มเติม</a>
                                        </div>  
                                    <hr/>
                                    <div style="margin-bottom:14px"><hr/></div>
                                </div>

                         
                            <?php endforeach; ?>
                        <?php else: ?>
                            <h3 class='alert alert-info'>ไม่พบข้อมูล</h3>
                        <?php endif; ?>
                    </div>
                        
                </div>
            </div>
            <div class="col-md-3">
                <div class="kt-portlet ">
                    <div class="kt-portlet__head">
                        <div class="kt-portlet__head-label">
                            <h3 class="kt-portlet__head-title">เมนู
                            </h3>
                        </div> 
                    </div>
                    <div class="kt-portlet__body">
                        <ul>
                            <li><a href="<?= Url::to(['/site/event'])?>">กิจกรรมการบรรยาย</a></li>
                            <li><a href="<?= Url::to(['/site/news'])?>">ข่าวประกาศ</a></li>
                            <li><a href="<?= Url::to(['/site/signup'])?>">สมัครสมาชิก</a></li>
                            <li><a href="<?= Url::to(['/site/login'])?>">เข้าสู่ระบบ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div> 

    </div>
</div>


<?php 
	function renderImage($v){
          $url = isset(\Yii::$app->params['storageUrl']) ? \Yii::$app->params['storageUrl'] : '';
	  return  "
		 <a href='#'>
                      <img alt='64x64' class='media-object img-circle' src='{$url}/files/{$v->user_image}' style='width: 100px; height: 100px;border: 3px solid #009688;'>
                 </a>
	  ";
	}
	function renderMediaBody($v){
	   $title = isset($v['title'])?$v['title']:'';
	   $userName = isset($v->user_name)?$v->user_name:'';
	   $date = isset($v->date) ? appxq\sdii\utils\SDdate::mysql2phpThDate($v->date) : '';
	   $renderTime = renderTime($v);
	   $html = "
		<h3 class='media-heading'>{$title}</h3>
		<h4 style='margin-top: 3px;'> เรื่อง : {$title} </h4>
                <h4 style='margin-top: 3px;'>ชื่อผู้บรรยาย {$userName}</h4>
                <h4 style='margin-top: 3px;'>เวลาจัดการการบรรยาย {$date} {$renderTime}
                </h4>

    	   ";
	   return $html;
	
	}
	function renderTime($v){
 	  $time_start = isset($v['time_start'])?$v['time_start']:'';
	  return "เวลา {$time_start}";
       }
?>

<?php richardfan\widget\JSRegister::begin();?>
<script>
   $('.view-book').on('click', function(){
       let url = $(this).attr('data-url');
       location.href = url;
       return false; 
   });
</script>
<?php richardfan\widget\JSRegister::end();?>

<?php \appxq\sdii\widgets\CSSRegister::begin();?>
<style>
    
    .media{
        background: #f3f3f3;
    padding: 5px;
    border-radius: 5px;
    }
</style>
<?php \appxq\sdii\widgets\CSSRegister::end();?>
