<?php
class scUserBets{
    /**
      **  Add current user Bets from table
    **/
    function getUserBets($user_id = ''){
      global $wpdb;
      $tableName  = SC_BETS;

      if($user_id==''){
        $user_id  =  get_current_user_id();
      }
      $sql  = "SELECT match_id,bet_option FROM ".$tableName." WHERE user_id = ".$user_id."";
      $bets_array = $wpdb->get_results( $sql );
      return $bets_array;

    }/*add_scCart*/

    /**
      **  Get All User Bets
    **/
    function getAllUsersBets(){
      global $wpdb;

      $tableName  = SC_BETS;
      $sql  = "SELECT * FROM ".$tableName." order By dateTime DESC";
      $bets_array = $wpdb->get_results( $sql );
      return $bets_array;
    }/*add_scCart*/

}/*conversationClass*/
?>