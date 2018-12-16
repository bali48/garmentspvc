<?php
  /**
    **  Custom Tables List used for Soccer Pools
    **  Custom Classes Objects List used for Soccer Pools
  **/

  /** API Key Configuration **/
  define('SC_SETTINGS', 'soccer_settings');
  define('OD_PATCHSIZES', 'order_depot_size');

  require_once(PLUGIN_DIR.'lib/od_patches.php');
  $GLOBALS['od_patchesObj']	= new od_patches();
  
  
  require_once(PLUGIN_DIR.'lib/sc_administration.php');
  $GLOBALS['scAdminObj']	= new scAdministration();

  /** All Available Countries in API **/
  define('API_COUNTRIES', 'api_countries');
  /** User Favourite Counries **/
  define('SC_COUNTRIES','soccer_countries');
  require_once(PLUGIN_DIR.'lib/sc_countries.php');
  $GLOBALS['scCountObj']	= new scCountries();

  /** User Favourite Leagues **/
  define('SC_LEAGUES','soccer_leagues');
  require_once(PLUGIN_DIR.'lib/sc_leagues.php');
  $GLOBALS['scLeagueObj']	= new scLeagues();

  /** Select Matches List **/
  define('SC_MATCHES','soccer_matches');
  require_once(PLUGIN_DIR.'lib/sc_matches.php');
  $GLOBALS['scMatchObj']	= new scMatches();

  /** Payments agianst  Bet **/
  define('SC_BETS','soccer_bets');
  require_once(PLUGIN_DIR.'lib/sc_payments.php');
  $GLOBALS['scPaymentsObj']	= new scPayments();
  /*** getting User Bets ***/
  require_once(PLUGIN_DIR.'lib/sc_userbets.php');
  $GLOBALS['scUseretObj']	= new scUserBets();

  /*** Bet Sessions for Users ***/
  require_once(PLUGIN_DIR.'lib/sc_cart.php');
  $GLOBALS['scCartObj']	= new scCart();

  /** Activity **/
  define('SC_LOG','soccer_log');
  require_once(PLUGIN_DIR.'lib/sc_activitylog.php');
  $GLOBALS['scActivityLog']	= new scActivityLog();

?>
