<?php
class scLeagues{

  function getApiLeagues($action='', $country=''){
    global $scAdminObj;
    $url  = 'https://apifootball.com/api/';

    $api_key  = $scAdminObj->getApiKey();
    if($api_key==''){
      echo 'API Key Error..!!'; exit;
    }else{
      if($country!=''){
        $url  = $url.'?action='.$action.'&country_id='.$country.'&APIkey='.$api_key;
      }else{
        echo 'Select Coutries..!!'; exit;
      }

      $resdata  = $scAdminObj->curlRequest($url);
      return $resdata;
    }

  }/*getApiLeagues*/

  function updateLeagues($data=FALSE){
    global $wpdb;
    $tableName  = SC_LEAGUES;
    foreach($data as $values){
      $dataArr = explode('||',$values);
      $league_id   =  $dataArr[0];
      $league_name   =  $dataArr[1];
      $country_id   =  $dataArr[2];

      $data = array('league_id'=>$league_id, 'league_name'=>$league_name, 'country_id'=>$country_id);
      $insert = $wpdb->replace($tableName, $data);
    }
    if($insert){
      echo 'success';
    }else{
      echo 'error';
    }
  }/*updateLeagues*/

  /**
    **  get User Selected Leagues List
  **/
  function getFavLeagues($country_id=''){
    global $wpdb;
    $condition  = '';
    if($country_id!=''){
      $condition  = 'WHERE country_id='.$country_id;
    }

    $tableName  = SC_LEAGUES;
    $sql  = "SELECT * FROM ".$tableName." $condition";
    $leagues = $wpdb->get_results( $sql );

    return $leagues;
  }/*getFavLeagues*/

  function removeLeague($league_id){
    global $wpdb;
    $tableName  = SC_LEAGUES;
    if($league_id!=''){
      $data = array('league_id'=>$league_id);
      $delete =  $wpdb->delete( $tableName, $data );
    }
    if($delete){
        echo 'success';
    }else{
        echo 'error';
    }
  }/*removeLeague*/

}