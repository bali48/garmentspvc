<?php
/**
  ** Custom functions for Soccer Pool Plugin
**/

/**
  ** Administration
**/
  function order_depot_activation_hook() {
      
    /**
      ** Write Table Structers Here you want to create at installation time
    **/
  }
  function order_depot_deactivation_hook(){
    /**
      ** Delete Table Structure or definations when plugin is un-installed/deactivated
    **/
  }
  function order_depot_add_menu_page(){
    add_menu_page( 'Soccer Pool', 'Soccer Pool', 'manage_options', 'matches', 'soccer_index_page', 'dashicons-admin-site' );
    add_submenu_page( 'matches', 'Settings', 'Settings', 'manage_options', 'settings', 'soccer_setting_page' );
    add_submenu_page( 'matches', 'User Bets', 'User Bets', 'manage_options', 'bets', 'soccer_betting_page' );
    add_submenu_page( 'matches', 'Payments', 'Paypal Payments', 'manage_options', 'payments', 'soccer_payments_page' );
    add_submenu_page( 'matches', 'Pools List', 'Pools List', 'manage_options', 'pools', 'soccer_pools_page' );
      add_submenu_page( 'matches', 'withdrawal', 'withdrawal', 'manage_options', 'withdrawal', 'soccer_pools_withdrawal_page' );
  }

  /**
    ** Plugin Pages
  **/
  function soccer_index_page(){
    include_once(PLUGIN_DIR.'templates/matches/matches.php');
  }
  function soccer_setting_page(){
    include_once(PLUGIN_DIR.'templates/settings/setting.php');
  }
  function soccer_betting_page(){
    include_once(PLUGIN_DIR.'templates/bets/bets.php');
  }
  function soccer_payments_page(){
    include_once(PLUGIN_DIR.'templates/payments/payments.php');
  }
  function soccer_pools_page(){
    include_once(PLUGIN_DIR.'templates/pools/pools.php');
  }/*soccer_setting_page*/

function soccer_pools_withdrawal_page(){
    include_once(PLUGIN_DIR.'templates/withdrawal/withdrawal.php');
}/***soccer_payment_index_page end here***/

  function update_apiKey(){
   	global $scAdminObj;
   	$api_key	=	$_POST['api_key'];
   	if($api_key!=''){
   		$scAdminObj->updateApiKey($api_key);
   	}
   	wp_die();
  }/*update_apiKey*/

/**
  ** Countries
**/
  function refresh_country(){
  	global $scCountObj;
  	$scCountObj->refreshApiCountries('get_countries');
  	wp_die();
  }
  function add_country(){
  	global $scCountObj;
  	$data	=	 $_POST['country'];
  	$scCountObj->updateCountries($data);
  	wp_die();
  }
  function remove_country(){
  	global $scCountObj;
  	$rec_id	=	$_POST['rec_id'];
  	$scCountObj->removeCountries($rec_id);
  	wp_die();
  }

/**
  ** Leagues
**/
  function add_league(){
  	global $scLeagueObj;
  	$data	=	 $_POST['league'];
  	$scLeagueObj->updateLeagues($data);
  	wp_die();
  }
  function remove_league(){
  	global $scLeagueObj;
  	$rec_id	=	$_POST['rec_id'];
  	$scLeagueObj->removeLeague($rec_id);
  	wp_die();
  }

/**
  ** Matches
**/
  function add_matches(){
  	global $scMatchObj;
  	$scMatchObj->updateMatches($_POST);
  	wp_die();
  }
  function remove_match(){
  	global $scMatchObj;
  	$match_id	=	$_POST['rec_id'];
  	$scMatchObj->deleteMatches($match_id);
  	wp_die();
  }

/**
  ** Bets
**/

/**
  ** Payments
**/
  function make_scpayment(){
     global $scPaymentsObj;
     $scPaymentsObj->make_payment();
     wp_die();
  }/*make_scpayment*/

/**
  ** Bet Session
**/
  function add_betSession() {
  	global $scCartObj;
  	$rec_id	=	$_POST['rec_id'];

  	if($rec_id!=''){
  			echo $scCartObj->add_scCart($rec_id);
  	}else{
  		echo 'Unauthroized Access...!!';
  	}
  	wp_die();
  }
  function remove_betSession(){
  	global $scCartObj;
  	$rec_id	=	$_POST['rec_id'];

  	if($rec_id!=''){
  			echo $scCartObj->remove_scCart($rec_id);
  	}else{
  		echo 'Unauthroized Access...!!';
  	}
  	wp_die();
  }
  function refresh_betSlip(){
    include_once(PLUGIN_DIR.'frontend/betslip.php');
    wp_die();
  }


?>