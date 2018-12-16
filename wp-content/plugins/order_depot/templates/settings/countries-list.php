<?php
  global $scAdminObj, $scCountObj;
  $coutriesList  = $scCountObj->getAllCountries();
  $max_count  = ceil(count($coutriesList)/6);
  $count= 1;

  $fav_conutries = $scCountObj->getFavCountries();
  $country_ids  = array();
  foreach($fav_conutries as $fav){
    array_push($country_ids, $fav->country_id);
  }

?>
  <div class="countries-list" style="margin-top:10px;">
    <div class="col-sm-6"><h2 style="margin:8px;"> Available Countries List </h2></div>
    <div class="col-sm-6 text-right">
      <input type="button" class="btn btn-warning" value="Refresh List" id="refresh_list">
      <input type="button" class="btn btn-primary" value="Add to List" id="add_country">
    </div>
    <div class="clearfix"></div>

    <form class="countries" action="" method="POST">
    <?php
    $i=0;
    if($coutriesList){
      foreach($coutriesList as $country){
        $i++;
        if($count==1){
            echo '<ul class="col-sm-2">';
        }
        $style= '';
        $cust_class =  '';
        if(in_array($country->country_id, $country_ids)){
          $style = 'checked';
          $cust_class = 'active';
        }

        $countryVal  = $country->country_id.'||'.$country->country_name;
        echo '<li class="cont-tab '.$cust_class.'" rel-id="'.$country->country_id.'">
                '.$country->country_name.'
                <input type="checkbox" class="checkbox" value="'.$countryVal.'" name="country[]" '.$style.' style="display:none;">
              </li>';
        if($count==$max_count){
            echo '</ul>';
            $count  = 0;
        }
        $count++;
      }/*foreach*/
    }else{
      ?>
        <div class="alert alert-info">No Record Found.. Please Refresh List to fetch Countries...</div>
      <?php
    }
    ?>
    <input type="hidden" name="action" value="update_country">
  </form>
  </div><!--countrieslist-->

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
          removeFavCount(rec_id);
      }else{
        jQuery(this).addClass('active');
        jQuery(this).find('input').attr('checked', true);
      }


    });/*checkbox*/

    jQuery('#add_country').on('click', function(e){
      jQuery(this).hide();
      jQuery('.response').html('');
      data = jQuery('.countries').serialize();

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

    jQuery('#refresh_list').on('click', function(e){
      jQuery(this).val('wait');
      jQuery('.response').html('');
      data = {'action':'refresh_country'};

      jQuery.ajax({
          type: 'POST',
          url:ajaxurl,
          data: data,
          success : function(data){
            console.log(data);
            if(data='success'){
              jQuery('.response').html('<div class="alert alert-success">Updated Successfully..!!</div>');
              setTimeout(function(){
                location.reload();
              }, 500);
            }else{
              jQuery('.response').html('<div class="alert alert-danger">Something Went Wrong..!!</div>');
            }
          }
      });/*ajax*/
    });/*refresh_list*/

  });

  function removeFavCount(rec_id){
    data = {'rec_id':rec_id, 'action':'remove_country'};
    jQuery.ajax({
        type: 'POST',
        url:ajaxurl,
        data: data,
        success : function(data){
          console.log(data);
        }
    });/*ajax*/
  }

</script>