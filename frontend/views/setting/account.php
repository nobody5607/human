<?php
/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;

$this->title = 'บัญชี';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="col-md-6 col-md-offset-3">
    <div>
        <a href='<?= \yii\helpers\Url::to(['/setting/profile'])?>' class="active">ข้อมูลส่วนตัว</a> |
        <a href='#'><u>บัญชี</u></a>
    </div>
    <br/>
    <div class="panel panel-default">
        <div class="panel-heading"><?= Html::encode($this->title) ?></div>
        <div class="panel-body">
            <form id="formAccount">
                
                <div>
                    <label>Email</label>
                    <strong><b><?= $user->email; ?></b></strong>
                </div>
                <div>
                    <label>Username</label>
                    <strong><b><?= $user->username; ?></b></strong>
                </div>
                <div>
                    <label>รหัสผ่านปัจจุบัน</label>
                    <input type="password" id="current_password" required="" autofocus="">
                </div>
                <div>
                    <label>รหัสผ่านใหม่</label>
                    <input type="password" id="new_password" required="">
                </div>
                <div>
                    <label>ยืนยันรหัสผ่าน</label>
                    <input type="password" id="confirm_password" required="">
                </div>
                <div style="margin-top:5px;">
                    
                    <label></label>
                    <button class="btn btn-primary" id="btnConfirmPassword">ยืนยันการเปลี่ยนรหัสผ่าน</button>
                </div>
            </form>

        </div>
    </div>
</div>

<?php appxq\sdii\widgets\CSSRegister::begin();?>
<style>
    #formAccount div label{
        width:200px;
        text-align: right;
        padding-right:15px;
    }
</style>
<?php appxq\sdii\widgets\CSSRegister::end();?>

<?php \richardfan\widget\JSRegister::begin();?>
<script>
    $("#btnConfirmPassword").on('click', function(){
        
        let current_password = $('#current_password').val();
        let new_password  = $('#new_password').val();
        let confirm_password  = $('#confirm_password').val();
        
        if(current_password == ''){
            alert('กรุณากรอกรหัสผ่านปัจจุบัน');return false;
        }
        if(new_password == ''){
            alert('กรุณากรอกรหัส่ผานใหม่');return false;
        }
        if(confirm_password == ''){
            alert('กรุณากรอกยืนยันรหัสผ่าน');return false;
        }
        
        if(new_password != confirm_password){
            alert('รหัสผ่านไม่ตรงกัน');return false;
        }
        $('#btnConfirmPassword').attr('disabled',true);
        let url_check_pass = '<?= \yii\helpers\Url::to(['/setting/check-current-password'])?>';
        $.post(url_check_pass, {password:current_password}, function(res){
           console.log(res);
           if(res != true){
               alert('รหัสผ่านปัจจุบันไม่ถูกต้อง');return false;
           }
           let url = '<?= \yii\helpers\Url::to(['/setting/change-password'])?>';
           $.post(url,{password:new_password}, function(res){
              console.log(res); 
              if(res['status'] == 'success'){
                  alert('เปลี่ยนรหัสผ่านสำเร็จ');
                  setTimeout(function(){
                     let url_profile = "<?= \yii\helpers\Url::to(['/setting/profile'])?>";
                     location.href = url_profile; 
                  },500);
              }
              $('#btnConfirmPassword').attr('disabled',false);
           });
        });
        
        return false;
    });
</script>
<?php \richardfan\widget\JSRegister::end() ?>