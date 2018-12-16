<table class="table table-striped" id="example" class="display" cellspacing="0" width="100%">

  <tr>
    <th class="text-center">Match</th>
    <th class="text-center">Home</th><th class="text-center">Visitor</th>
  </tr>

  <?php
    global $scMatchObj;
    $matchList = $scMatchObj->getCurrMatches();

    if($matchList){
      foreach($matchList as $match){
            $betStatusHome = $scMatchObj->matchBetStatus($match->match_id, 'h');
            $betStatusVisitor = $scMatchObj->matchBetStatus($match->match_id, 'v');

            if($betStatusHome=='cart'){
              $betStatusHome  = 'checked';
            }elseif($betStatusHome=='paid'){
              $betStatusHome  = 'disabled';
            }

            if($betStatusVisitor=='cart'){
              $betStatusVisitor  = 'checked';
            }elseif($betStatusVisitor=='paid'){
              $betStatusVisitor  = 'disabled';
            }
        ?>
        <tr>
          <td><?=$match->home?> - <?=$match->visitor?></td>
          <td><input type="checkbox" class="sc-mark-bet" option="h" match-id="<?=$match->match_id?>" <?=$betStatusHome?> /></td>
          <td><input type="checkbox" class="sc-mark-bet" option="v" match-id="<?=$match->match_id?>" <?=$betStatusVisitor?> /></td></td>

        </tr>
        <?php
      }/*foreach*/
    }else{
      echo '<tr><td colspan="8">No Current Matches..!!</td></tr>';
    }
   ?>
</table>