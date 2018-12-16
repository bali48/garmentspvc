<?php
  /**
    ** Functions for frontend use
  **/
  function getPoolMatches(){
    include_once(PLUGIN_DIR.'frontend/poolmatches.php');
  }
  function getBetSlips(){
    include_once(PLUGIN_DIR.'frontend/betslip.php');
  }
  function getBetsLog(){
    include_once(PLUGIN_DIR.'frontend/logs/bets-log.php');
  }
  function getPaymentLog(){
    include_once(PLUGIN_DIR.'frontend/logs/payment-log.php');
  }
  function getWithdrawLog(){
    include_once(PLUGIN_DIR.'frontend/logs/withdraw-log.php');
  }
  function getPaypalForm(){
    include_once(PLUGIN_DIR.'frontend/checkout.php');
    include_once(PLUGIN_DIR.'frontend/forms/paypal-form.php');
  }

  function getReviewForm(){
    include_once(PLUGIN_DIR.'frontend/confirm.php');
    include_once(PLUGIN_DIR.'frontend/forms/review-form.php');
  }

?>