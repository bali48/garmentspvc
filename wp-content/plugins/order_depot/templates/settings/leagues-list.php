<?php
    global $scLeagueObj,$scCountObj;
    $fav_conutries = $scCountObj->getFavCountries();
    $fav_leagues = $scLeagueObj->getFavLeagues();

    $country  = '';
    if(isset( $_GET['country'])){
        $country  = $_GET['country'];
        $leaguesList  = $scLeagueObj->getApiLeagues('get_leagues', $country);

        $max_count  = ceil(count($leaguesList)/6);
        $count= 1;
    }

    $league_ids  = array();
    foreach($fav_leagues as $fav){
      array_push($league_ids, $fav->league_id);
    }
?>

<div class="" style="padding:0% 2%; margin-top:10px;">
  <?php include_once(PLUGIN_DIR.'includes/fav-countries.php');?>
</div>

<div class="leagues-list">
  <div class="col-sm-6"><h2 style="margin:8px;"> Available Leagues List </h2></div>
  <div class="col-sm-6 text-right">
    <input type="button" class="btn btn-primary" value="Add to List" id="add_league">
  </div>
  <div class="clearfix"></div>

  <form class="leagues">
    <?php
    $i=0;
    if($leaguesList){
      foreach($leaguesList as $league){
        $i++;
        if($count==1){
            echo '<ul class="col-sm-2">';
        }
        $style= '';
        $cust_class =  '';
        if(in_array($league->league_id, $league_ids)){
          $style = 'checked';
          $cust_class = 'active';
        }

        $countryVal  = $league->league_id.'||'.$league->league_name.'||'.$league->country_id;
        echo '<li class="cont-tab '.$cust_class.'" rel-id="'.$league->league_id.'">
                '.$league->league_name.'
                <input type="checkbox" class="checkbox" value="'.$countryVal.'" name="league[]" '.$style.' style="display:none;">
              </li>';
        if($count==$max_count){
            echo '</ul>';
            $count  = 0;
        }
        $count++;
      }/*foreach*/
    }else{
      echo '<div class="alert alert-info"> Select Country to get Leagues List..!!</div>';
    }
    ?>
    <input type="hidden" name="action" value="update_leagues">
  </form>
</div><!--leagues-list-->

<input type="hidden" value="?page=settings&tab=leagues" id="base_url">
<style>
.cont-tab {border:1px solid #000; padding:10px;}
.cont-tab:hover {cursor:pointer;}
.cont-tab.active {background-color: #fff000;}
</style>

<script>
  jQuery(document).ready(function(){

    jQuery('.cont-tab').on('click', function(e){

      rec_id = jQuery(this).attr('rel-id');

      if(jQuery(this).find('.checkbox').is(':checked')){
          jQuery(this).removeClass('active');
          jQuery(this).find('input').attr('checked', false);

          removeFavLeague(rec_id);
      }else{
        jQuery(this).addClass('active');
        jQuery(this).find('input').attr('checked', true);
      }


    });/*checkbox*/

    jQuery('#country').on('change', function(e){
      country = jQuery(this).val();
      url = jQuery('#base_url').val();
      if(country==''){
        redirect  = url;
      }else{
        redirect  = url+'&country='+country;
      }
      window.location.href = redirect;
    });/*checkbox*/

    jQuery('#add_league').on('click', function(e){
      jQuery(this).hide();
      jQuery('.response').html('');
      data = jQuery('.leagues').serialize();

      jQuery.ajax({
          type: 'POST',
          url:ajaxurl,
          data: data,
          success : function(data){
            console.log(data);
            if(data='success'){
              jQuery('.response').html('<div class="alert alert-success">Updated Successfully..!!</div>');
            }else{
              jQuery('.response').html('<div class="alert alert-danger">Something Went Wrong..!!</div>');
            }
          }
      });/*ajax*/
    });/*submit*/

    function removeFavLeague(rec_id){
      data = {'rec_id':rec_id, 'action':'remove_league'};
      jQuery.ajax({
          type: 'POST',
          url:ajaxurl,
          data: data,
          success : function(data){
            console.log(data);
          }
      });/*ajax*/
    }

  });

</script>