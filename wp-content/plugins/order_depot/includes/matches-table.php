<table id="example" class="display" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Serial</th>
      <th>Match ID</th>
      <th>Home</th>
      <th>Visitor</th>
      <th>Match Date | Time</th>
      <th>Match Status</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    <?php
      $count = 1;
      if($matchList){
        foreach($matchList as $match){
          ?>
            <tr>
              <td><?=$count?></td>
              <td><?=$match->match_id?></td>
              <td><?=$match->match_hometeam_name?></td>
              <td><?=$match->match_awayteam_name?></td>
              <td><?=date('F j Y', strtotime($match->match_date))?> | <?=$match->match_time?></td>
              <td><?=$match->match_status?></td>
              <!--<td><input type="checkbox" name="match[]" value="<?=$match->match_id?>"></td>-->
              <td class="btn-<?=$match->match_id?>">
              <?php
                if(!in_array($match->match_id,$matches)){
                  ?>
                  <input type="button" class="btn btn-success add_pool" rel-id="<?=$match->match_id?>" Value="Add to Pool">
                  <?php
                }else{
                  ?>
                  <input type="button" class="btn btn-danger remove_pool" rel-id="<?=$match->match_id?>" Value="Remove">
                  <?php
                }
              ?>
              </td>

              <td>
                <form id="matches-form-<?=$match->match_id?>">
                  <input type="hidden" name="match_id" value="<?=$match->match_id?>">
                  <input type="hidden" name="home" value="<?=$match->match_hometeam_name?>">
                  <input type="hidden" name="visitor" value="<?=$match->match_awayteam_name?>">
                  <input type="hidden" name="match_date" value="<?=$match->match_date?>">
                  <input type="hidden" name="match_time" value="<?=$match->match_time?>">
                  <input type="hidden" name="match_status" value="<?=$match->match_status?>">
                  <input type="hidden" name="country_id" value="<?=$match->country_id?>">
                  <input type="hidden" name="league_id" value="<?=$match->league_id?>">
                  <input type="hidden" name="action" value="update_matches">
                  <input type="hidden" value="<?=$pool_id?>" name="pool_id">
                </form>
              </td>
            </tr>
          <?php
          $count++;
        }
      }else{
        if($msg==''){
          $msg  = 'No Record Found in selected League..!!';
        }
      }
      if($msg!=''){
          echo '<tr><td colspan="8">'.$msg.'</td></tr>';
      }

     ?>
  </tbody>
</table>