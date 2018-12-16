<?php
  global $scPaymentsObj;
  $paymentList = $scPaymentsObj->getPaypalPayments();
?>

<div class="matches-list" cellpadding="8" cellspacing="8">
  <table id="example" class="display" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th>Serial</th>
          <th>User ID</th>
          <th>Amount</th>
          <th>Currency</th>
          <th>Payment Method</th>
          <th>Payment Status</th>
          <th>dateTime</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $count = 1;
          if($paymentList){
            foreach($paymentList as $pay){

              ?>
                <tr>
                  <td><?=$count?></td>
                  <td><?=$pay->user_id?></td>
                  <td><?=$pay->amount?></td>
                  <td><?=$pay->currency?></td>
                  <td><?=$pay->payment_method?></td>
                  <td><?=$pay->payment_status?></td>
                  <td><?=date('F j Y H:i a', strtotime($pay->dateTime))?></td>
                  <td><input type="checkbox"></td>
                </tr>
              <?php
              $count++;
            }
          }else{
              echo '<tr><td colspan="8">No Payments Found..!!</td></tr>';
          }
         ?>
      </tbody>
    </table>
  </div><!--matches-list-->
</div><!--wrap-->

<style>
  table { width:100%; border-spacing: 5px; } /* cellspacing */
  th, td { padding: 5px; } /* cellpadding */

  th {background-color:#018DB1;font-weight:bold;color:#fff;}
  tbody tr td:nth-of-type(1) {font-weight: bold;}
  tbody tr:nth-of-type(2n) {background-color: #f0f0f0;}

</style>