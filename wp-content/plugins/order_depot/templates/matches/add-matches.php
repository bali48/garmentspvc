<?php
  global $scAdminObj, $scLeagueObj, $scCountObj, $scMatchObj;

    $fav_conutries = $scCountObj->getFavCountries();
    $fav_leagues = $scLeagueObj->getFavLeagues();
    $api_matches_url = $scAdminObj->getApiMatchesURL();


    if(isset($_GET['pool']) and $_GET['pool']!=''){
      $pool_id  = $_GET['pool'];
      $form_url =  get_admin_url().'admin.php?page=pools&tab=add-matches&pool='.$pool_id;
      ?>
        <div class="col-sm-12" style="padding:1% 2%; margin-top:10px;">
          <?php include_once(PLUGIN_DIR.'includes/match-search-form.php'); ?>
        </div>
      <?php
    }else{
      $msg  = '<div class="text text-danger"> Pool ID is emty..!! </div>';
    }
?>

  <div class="matches-list" cellpadding="8" cellspacing="8">
    <?php include_once(PLUGIN_DIR.'includes/matches-table.php'); ?>
  </div><!--matches-list-->
</div><!--wrap-->

<input type="hidden" value="admin.php?page=matches&tab=regular" id="base_url">