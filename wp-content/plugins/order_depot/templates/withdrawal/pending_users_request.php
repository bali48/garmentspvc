<?php
/**
 * db object
 * **/
global $obj;
$pendings = $obj->get_users_list_according_to_payments("p");
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
      foreach ($pendings as $pending) {
          ?>
          <tr>
              <td><?=$pending->id?></td>
              <td><?=$pending->user_id?></td>
              <td><?=$pending->request_amount?></td>
              <td><?php if($pending->status == 'p') echo 'pending';?></td>
              <td><?=$pending->req_date?></td>

              <td>

                  <button class="btn btn-info btn-sm" id="acp" onclick="status_update(<?=$pending->id?>,'a')">accept</button>
                  <button class="btn btn-warning btn-sm" id="can" onclick="status_update(<?=$pending->id?>,'c')">cancel</button>
              </td>

          </tr>
          <?php
      }
?>
</tbody>
</table>
</div><!--matches-list-->
