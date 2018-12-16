<?php
/**
 * db object
 * **/
global $obj;
$cancels = $obj->get_users_list_according_to_payments("c");
?>
<div class="matches-list" cellpadding="8" cellspacing="8">
    <table class="table table-sm table-striped table-bordered table-hover table-responsive" id="example" class="display table" cellspacing="0" width="100%">
        <thead class="thead-inverse">
        <tr>
            <th>Serial</th>
            <th>User ID</th>
            <th>Requested Amount</th>
            <th>Status</th>
            <th>Requested Date</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php
        foreach ($cancels as $cancel) {
            ?>
            <tr>
                <td><?=$cancel->id?></td>
                <td><?=$cancel->user_id?></td>
                <td><?=$cancel->request_amount?></td>
                <td><?php if($cancel->status == 'c') echo 'cancel';?></td>
                <td><?=$cancel->req_date?></td>

                <td>
                    <button class="btn btn-info btn-sm" onclick="status_update(<?=$cancel->id?>,'a')">active</button>
                   <button class="btn btn-info btn-sm" onclick="status_update(<?=$cancel->id?>,'p')">pending</button>
                </td>

            </tr>
            <?php
        }



        ?>
        </tbody>
    </table>
</div><!--matches-list-->