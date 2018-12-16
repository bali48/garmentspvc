
  <div class="wrap">
      <div id="icon-themes" class="icon32"></div>
      <h2>Soccer Pool Settings</h2>
      <?php settings_errors(); ?>

      <?php
        $active_tab = 'setting';
          if( isset( $_GET[ 'tab' ] ) ) {
              $active_tab = $_GET[ 'tab' ];
          }
       ?>

       <?php
          global $scAdminObj;
          $api_key  = $scAdminObj->getApiKey();
        ?>

      <div class="col-sm-12 response"></div>
      <div class="clearfix"></div>
      <h2 class="nav-tab-wrapper">
          <a href="?page=settings&tab=countries" class="nav-tab <?php echo $active_tab == 'countries' ? 'nav-tab-active' : ''; ?>">Countries List</a>
          <a href="?page=settings&tab=leagues" class="nav-tab <?php echo $active_tab == 'leagues' ? 'nav-tab-active' : ''; ?>">Leagues List</a>
          <a href="?page=matches&tab=current" class="nav-tab <?php echo $active_tab == 'matches' ? 'nav-tab-active' : ''; ?>">Matches List</a>
          <a href="?page=bets&tab=bets" class="nav-tab <?php echo $active_tab == 'bet' ? 'nav-tab-active' : ''; ?>">Bets List</a>
          <a href="?page=settings&tab=setting" class="nav-tab <?php echo $active_tab == 'setting' ? 'nav-tab-active' : ''; ?>">API Setting</a>
      </h2>

      <?php

        if($active_tab == 'setting'){
          include_once(PLUGIN_DIR.'includes/setting-form.php');
        }else if($active_tab == 'countries'){
          include_once('countries-list.php');
        }else if($active_tab == 'leagues'){
          include_once('leagues-list.php');
        }else if($active_tab == 'matches'){
          include_once('matches-list.php');
        }else{

        }
      ?>

  </div><!-- /.wrap -->

<script>
  jQuery(document).ready(function(){

    jQuery('#submit').on('click', function(e){
      jQuery('.response').html('');
      var api_key = jQuery('#api_key').val();
      if(api_key==''){
        jQuery('#api_key').css('border-color','#ff0000');
        return false;
      }else{
          jQuery('#api_key').css('border-color','#e5e5e5e');
      }
      data = { 'api_key':api_key, 'action': 'soccer_apikey' }

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

  });

</script>