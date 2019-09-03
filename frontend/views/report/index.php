<?php 
    $this->title = "รายงานการกิจกรรมบรรยาย";
?>
<h2><?= $this->title; ?></h2>

    <div>
        <label for="start_date">วันที่เริ่มต้น </label> <input type="date" name="start_date" id="start_date">
        <label for="start_date">ถึงวันที่ </label> <input type="date" name="end_date" id="end_date">
        <button class="btn btn-primary btnShowReport">แสดงรายงาน</button>
    </div>
    <div id="viewReport"></div>
<?php \richardfan\widget\JSRegister::begin();?>
<script>
    $(".btnShowReport").on('click', function(){
        $('.btnShowReport').attr('disabled',true);
        let start_date = $('#start_date').val();
        let end_date  = $('#end_date').val();
        
        let url = '<?= \yii\helpers\Url::to(['/report/view-report'])?>';
        $.post(url, {start_date:start_date,end_date:end_date}, function(res){
             $('.btnShowReport').attr('disabled',false);
             $("#viewReport").html(res);
        });
        return false;
    });
    
    
</script>
<?php \richardfan\widget\JSRegister::end() ?>