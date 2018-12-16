<?php
/**
 * db object
 * **/
global $obj;
//print_r($obj);
$actives = $obj->get_users_list_according_to_payments("a");
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
        foreach ($actives as $active) {
            ?>
            <tr>
                <td><?=$active->id?></td>
                <td><?=$active->user_id?></td>
                <td><?=$active->request_amount?></td>
                <td><?php if($active->status == 'a') {echo 'active';} ?></td>
                <td><?=$active->req_date?></td>

                <td>
                    <button class="btn btn-info btn-sm" onclick="status_update(<?=$active->id?>,'p')">pending</button>
                    <button class="btn btn-warning btn-sm" onclick="status_update(<?=$active->id?>,'c')">cancel</button>
                </td>

            </tr>
            <?php
        }



        ?>
        </tbody>
    </table>
</div><!--matches-list-->