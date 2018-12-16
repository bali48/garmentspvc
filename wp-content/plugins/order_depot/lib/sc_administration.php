<?php
class scAdministration{

  /**
    **  get API Key
  **/
  function getApiKey(){
    global $wpdb;
    $apikey = '';
    $tableName  = SC_SETTINGS;
    $sql  = "SELECT api_key FROM ".$tableName."";
    $result = $wpdb->get_results( $sql );
    if($result){
      foreach($result as $api){
        $apikey   = $api->api_key;
      }
    }
    return $apikey;
  }/*getApiKey*/

  /**
    **  Update API Key
  **/
  function updateApiKey($apikey=''){
    global $wpdb;
    $tableName  = SC_SETTINGS;
    $api_key  = $this->getApiKey();
    $data   =  array( 'api_key'=>$apikey );

    if($api_key==''){
      $insert = $wpdb->insert($tableName, $data);
    }else{
      $insert =  $wpdb->update( $tableName, $data, $where);
    }
    if($insert){
      echo 'success';
    }else{
      echo 'error';
    }
  }/*updateApiKey*/


  /**
    **  Genrate URL to get Events List
  **/
  function getApiMatchesURL($apikey=''){
    $api_key  = $this->getApiKey();
    $action = 'get_events';
    $from  = date('Y-m-d');
    $to  = date('Y-m-d', strtotime('+1 day', strtotime($from)));
    $api_matches_url   = 'https://apifootball.com/api/?action='.$action.'&from='.$from.'&to='.$to.'&APIkey='.$api_key;
    return $api_matches_url;

  }



  /**
    ** Commonly used function for league/country/match classes
    **  Used to send/get Data from soccer Api
  **/
  function curlRequest($url=''){

    $curl_options = array(
      CURLOPT_URL => $url,
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_HEADER => false,
      CURLOPT_TIMEOUT => 30,
      CURLOPT_CONNECTTIMEOUT => 5
    );

    $curl = curl_init();
    curl_setopt_array( $curl, $curl_options );
    $result = curl_exec( $curl );
    $result = (array) json_decode($result);

    return $result;
  }/*curlRequest*/

}/*conversationClass*/
?>