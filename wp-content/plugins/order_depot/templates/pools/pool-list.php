<?php
  global $scPoolObj;
  $poolList   =   $scPoolObj->getPoolData();
?>
<table id="example" class="display table" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Serial</th>
      <th>Pool ID</th>
      <th>Pool Title</th>
      <th>Pool Type</th>
      <th>Pool Description</th>
      <th>Start Time</th>
      <th>End Time</th>
      <th>Status</th>
      <th>Bet Options</th>
      <th>No. Matches</th>
      <th>No. Bets</th>
      <th>Bet Amount</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <?php
      $count = 1;
      if($poolList){
        foreach($poolList as $pool){
          $status = '<span class="text text-success"> Active </span>';
          if($pool->status=='c'){
            $status = '<span class="text text-danger"> Closed </span>';
          }

          $bet_option = '';
          $option_array = explode(',', $pool->bet_option);
          if(in_array('h', $option_array)){
            $bet_option .= 'Home';
          }
          if(in_array('x', $option_array)){
            $bet_option .= ', Draw';
          }
          if(in_array('v', $option_array)){
            $bet_option .= ', Visitor';
          }
          ?>
            <tr>
              <td><?=$count?></td>
              <td><?=$pool->pool_id?></td>
              <td><?=$pool->pool_title?></td>
              <td><?=$pool->pool_type?></td>
              <td><?=$pool->pool_description?></td>
              <td><?=date('F j Y', strtotime($pool->start_date))?></td>
              <td><?=date('F j Y', strtotime($pool->end_date))?></td>
              <td><?=$status?></td>
              <td><?=trim($bet_option, ',')?></td>
              <td>0</td>
              <td>0</td>
              <td>0</td>
              <td>
                  <a href="?page=pools&tab=matches&pool=<?=$pool->pool_id?>" class="text text-primary" target="_blank">View Matches</a><br>
                  <a href="?page=pools&tab=add-matches&pool=<?=$pool->pool_id?>" class="text text-success" target="_blank">Add Matches</a><br>
                  <a href="?page=pools&tab=create&pool=<?=$pool->pool_id?>" class="text text-success" target="_blank">Edit Pool</a><br>
                  <a href="?page=pools&tab=create&pool=<?=$pool->pool_id?>" class="text text-danger">Change Status</a><br>
              </td>
            </tr>
          <?php
          $count++;
        }
      }else{
          $msg  = 'No Record Found ..!!';
      }

     ?>
  </tbody>
</table>