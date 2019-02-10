<?php
  /**
    ** All Hooks Definatin for Soccer-pools
  **/

  /** Administration **/
  register_activation_hook( __FILE__, 'order_depot_activation_hook' );
  register_deactivation_hook( __FILE__, 'order_depot_deactivation_hook');

  add_action( 'admin_menu', 'order_depot_add_menu_page' );
  add_action( 'admin_init', 'order_depot_styles' );
  add_action( 'init', 'custom_styles_soccer' );


  /**
    ** Front End ShortCodes
  **/
  add_shortcode('pool_matches', 'getPoolMatches');
  add_shortcode('bet_slips', 'getBetSlips');
  add_shortcode('bets-log', 'getBetsLog');
  add_shortcode('payment-log', 'getPaymentLog');
  add_shortcode('withdraw-log', 'getWithdrawLog');
  /** Paypal Form **/
  add_shortcode('paypal_form', 'getPaypalForm');
  add_shortcode('review_form', 'getReviewForm');

/**
 ** Front End ShortCode for withdrawal
 **/
add_shortcode('patch_order_form', 'front_display_payment');
add_shortcode('patch_price_table', 'price_tables');


/**
 ** Ajax Hooks for change payment status
 **/

add_action( 'wp_ajax_callback_status', 'callback_status' );
add_action( 'wp_ajax_nopriv_callback_status', 'callback_status' );


/**
 ** Ajax Hooks for Paypal Settings
 **/

add_action( 'wp_ajax_callback_paypal', 'callback_paypal' );
add_action( 'wp_ajax_nopriv_callback_paypal', 'callback_paypal' );

?>