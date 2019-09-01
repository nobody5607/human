<table class="table table-bordered">
    <thead>
        <tr>
            <th colspan="2">กิจกรรมการบรรยาย</th>
            <th>ชื่อผู้บรรยาย</th>
            <th>วันที่จัดกิจกรรม</th>
            <th colspan="2">สถานที่จัดกิจกรรม</th>
        </tr>
        <tr>
            <th>ลำดับที่</th>
            <th>อีเมล์</th>
            <th>ชื่อ-สกะล</th>
            <th>ประเภทผู้ใช้</th>
            <th>เบอร์โทรศัพท์ </th>
            <th>หน่วยงาน</th>
        </tr>
    </thead>
    <tbody>
        <?php if($output):?>
            <?php foreach($output as $k=>$v):?>
        <tr style="background: whitesmoke;">
                    <td colspan="2"><b><?= $v['title']?></b></td>
                    <td><b><?= $v['user_name']?></b></td>
                    <td colspan="2"><b><?= $v['location']?></b></td>
                    <td ><?= ($v['create_date'] != '')?\appxq\sdii\utils\SDdate::mysql2phpDate($v['create_date']):''?></td>
                </tr>
                <?php if($v['users']):?>
                    <?php foreach($v['users'] as $k2=>$u):?>
                <tr>
                    <td><?= $k2+1; ?></td>
                    <td><?= $u['email']?></td>
                    <td><?= $u['name']?></td>
                    <td><?= $u['user_type']?></td>
                    <td><?= $u['tel']?></td>
                    <td><?= $u['department']?></td>
                </tr>
                    <?php endforeach; ?>
                <?php endif;?>
            <?php endforeach; ?>
        <?php endif; ?>
    </tbody>
</table>