<?php

  global $scCartObj, $scMatchObj;
  $arrPendingBets = $scCartObj->getUserCart();
  $payAmount  = 0;

  if($arrPendingBets){
    foreach($arrPendingBets as $bets){
      $match = explode('_', $bets);
      $match_id = $match_id[0];
      $bet_option  = $match_id[1];

      $payAmount  = $payAmount+3;

      $selection  = 'Home';
      if($bet_option=='v'){
          $selection  = 'Visitor';
      }

      $matchDetail  = $scMatchObj->getMatchDetail($match_id);
      $matchname  = $matchDetail['matchname'];
      ?>
        <div class="bet-list"><div class="rel-<?=$bets?>">
            <input type="checkbox" class="remove-bet" value="<?=$bet_option?>" rel="<?=$match_id?>" team="<?=$matchname?>" checked />&nbsp;
            <span class="team-name"><?=$matchname?></span>&nbsp;
            <span class="sel-type"><b><?=$selection?></b></span>
        </div></div>
      <?php
    }

    ?>
    <div class="pay-now">
      <h4>Payable Amount: <span class="payable-amt"><?=$payAmount?></span></h4>
      <a href="javascript:void(0);" class="btn btn-primary" onclick="makePayment('<?=$payAmount?>')">Make Payment</a>
    </div>
    <?php
  }
?>