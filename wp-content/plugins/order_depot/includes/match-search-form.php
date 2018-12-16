<?php
  if(isset( $_POST['search'])){
    $start_date = $_POST['start_date'];
    $end_date = $_POST['end_date'];
    if($start_date==''){
      $start_date = date('m/d/Y', strtotime('+1 days'));
    }
    if($end_date==''){
      $end_date = date('m/d/Y', strtotime('+3 days'));
    }

    $league  = isset($_POST['league'])?$_POST['league']:'';
    $country  = $_POST['country'];

    $matchList  = $scMatchObj->getApiMatches('get_events', $league, $start_date, $end_date);
    $matchesArr = $scMatchObj->getCurrMatches($league);
    $matches  = array();
    foreach($matchesArr as $match){
       array_push($matches,$match->match_id);
    }

  }else{
      $start_date = date('m/d/Y', strtotime('+1 days'));
      $end_date = date('m/d/Y', strtotime('+3 days'));
      $msg  = 'Please Select Filters to Get Matches List';
  }

?>

<form class="form-horizontal" method="post" action="<?=$form_url?>">
  <div class="col-sm-2">
    <b>Event Start Date</b>
    <input type="text" name="start_date" value="<?=$start_date?>" class="form-control" id="start_date">
  </div>

  <div class="col-sm-2">
    <b>Event End Date</b>
    <input type="text" name="end_date" value="<?=$end_date?>" class="form-control" id="end_date">
  </div>

  <div class="col-sm-2">
    <b>Select Country</b>
    <?php include_once(PLUGIN_DIR.'includes/fav-countries.php'); ?>
  </div>

  <div class="col-sm-2">
    <b>Select Country</b>
    <?php include_once(PLUGIN_DIR.'includes/fav-leagues.php'); ?>
  </div>

  <div class="col-sm-2">
    <h6>&nbsp;</h6>
    <input type="submit" name="search" class="btn btn-primary" value="Search">
  </div>

  <div class="col-sm-2 text-left">
    <h6>&nbsp;</h6>
    <a href="<?=$api_matches_url?>" class="text text-info" target="_blank" title="View All Current Matches">View API Matches</a>
  </div>

</form>