<select class="form-control" name="league" id="leagues">
  <option value=""> Select League</option>
  <?php
    $fav_leagues = $scLeagueObj->getFavLeagues($country);

    if($fav_leagues){
      foreach($fav_leagues as $fav){
        $style  = '';
        if($fav->league_id==$league){
          $style = 'selected';
        }
        ?>
          <option value="<?=$fav->league_id?>" <?=$style?>> <?=$fav->league_name?> </option>
        <?php
      }/*foreach*/
    }
  ?>
<select>

<div style="display:none;">
<?php
  $country_ids  = array();
  foreach($fav_conutries as $fav){
    ?>
    <div class="cont-<?=$fav->country_id?>">
      <option value=""> Select League</option>
    <?php
      $fav_leagues = $scLeagueObj->getFavLeagues($fav->country_id);

      if($fav_leagues){
        foreach($fav_leagues as $fav){
          $style  = '';
          if($fav->league_id==$league){
            $style = 'selected';
          }
          ?>
            <option value="<?=$fav->league_id?>" <?=$style?>> <?=$fav->league_name?> </option>
          <?php
        }/*foreach*/
      }
    ?>
    </div><!--cont-->
    <?php
  }
?>
</div>