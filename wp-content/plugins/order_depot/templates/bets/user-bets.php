  <?php
    global $scUseretObj, $scMatchObj;
    $betList = $scUseretObj->getAllUsersBets();
  ?>

  <div class="row" style="padding:1% 2%;">
    <div class="col-sm-6">
      <select><option value='rgular'>Regular</option><option value='progressive'>Progressive</option></select>
    </div>
    <div class="col-sm-6 text-right">
      <input type="button" class="btn btn-primary" value="Update Status">
    </div>
  </div>

  <div class="bets-list" cellpadding="8" cellspacing="8">
    <table id="example" class="display" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th>Serial</th>
          <th>Match</th>
          <th>Match ID</th>
          <th>User Name</th>
          <th>Amount($)</th>
          <th>Pool Type</th>
          <th>Bet Type</th>
          <th>Team Selection</th>
          <th>Bet Date | Time</th>

          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <?php
          $count = 1;
          if($betList){
            foreach($betList as $bets){
                $userData = get_user_by( 'id', $bets->user_id );
                $userName = $userData->data->user_nicename;

                $team  =  'Home';
                if($bets->bet_option=='v'){
                  $team  =  'Visitor';
                }

                $matchDetail  = $scMatchObj->getMatchDetail($bets->match_id);
                $matchname  = $matchDetail['matchname'];
              ?>
                <tr>
                  <td><?=$count?></td>
                  <td><?=$matchname?></td>
                  <td><?=$bets->match_id?></td>
                  <td><?=$userName?></td>
                  <td>$<?=$bets->bet_amount?></td>
                  <td>Regular Pool</td>
                  <td>Single Play</td>
                  <td><?=$team?></td>
                  <td><?=date('F j Y H:i a', strtotime($bets->dateTime))?></td>
                  <td class="btn-<?=$bets->match_id?>"><input type="checkbox" name="bets[]" value=""></td>
                </tr>
              <?php
              $count++;
            }
          }else{
              echo '<tr><td colspan="8">No Current Bets Found..!!</td></tr>';
          }
         ?>
      </tbody>
    </table>
  </div><!--matches-list-->
</div><!--wrap-->

<style>
  #wpfooter {position:relative;}
  table { width:100%; border-spacing: 5px; } /* cellspacing */
  th, td { padding: 5px; } /* cellpadding */

  th {background-color:#018DB1;font-weight:bold;color:#fff;}
  tbody tr td:nth-of-type(1) {font-weight: bold;}
  tbody tr:nth-of-type(2n) {background-color: #f0f0f0;}
</style>

<script>
  jQuery(document).ready(function(){
    jQuery(document).on('click','.remove_pool', function(e){
      rec_id = jQuery(this).attr('rel-id');
      data= {'rec_id':rec_id, 'action':'remove_match'}

      jQuery.ajax({
          type: 'POST',
          url:ajaxurl,
          data: data,
          success : function(data){
            console.log(data);
            if(data='success'){
              jQuery('.btn-'+rec_id).parent('tr').remove();
            }else{
              jQuery('.btn-'+rec_id).html('<span class="text text-danger">Error.!!</span>');
            }
          }
      });/*ajax*/
    });
  });

</script>