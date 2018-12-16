<?php
class scCountries{

  /**
    **  Validate API Key
    ** Fetch Coutries From Api
    ** Then update countries list in Table api_countries
  **/
  function refreshApiCountries($action=''){
    global $scAdminObj,$wpdb;
    $url  = 'https://apifootball.com/api/';

    $api_key  = $scAdminObj->getApiKey();
    if($api_key==''){
      echo 'error'; exit;
    }else{
      $url  = $url.'?action='.$action.'&APIkey='.$api_key;
      echo $url;
      $resdata  = $scAdminObj->curlRequest($url);
      if (array_key_exists('error', $resdata)) {
          echo 'error';
      }else{
          //$tableName  = 'api_countries';
          $tableName  = API_COUNTRIES;
          foreach($resdata as $country){
            $data = array('country_id'=>$country->country_id, 'country_name'=>$country->country_name);
            $insert = $wpdb->replace($tableName, $data);
          }
          echo 'success';
      }
    }

  }/*refreshApiCountries*/

  /**
    **  get All Countries List from Table
  **/
  function getAllCountries(){
    global $wpdb;

    $tableName  = API_COUNTRIES;
    $sql  = "SELECT * FROM ".$tableName." Order By country_name ASC";
    $countries = $wpdb->get_results( $sql );
    if($countries){
      return $countries;
    }else{
      return NULL;
    }

  }/*getAllCountries*/

  /**
    **  User Select Countries from List
    ** Update list to make countries Favourite
    ** Table Name soccer_countries
  **/
  function updateCountries($data=FALSE){
    global $wpdb;
    $tableName  = SC_COUNTRIES;
    foreach($data as $values){
      $dataArr = explode('||',$values);
      $country_id   =  $dataArr[0];
      $country_name   =  $dataArr[1];
      $data = array('country_id'=>$country_id, 'country_name'=>$country_name);
      $insert = $wpdb->replace($tableName, $data);
    }
    if($insert){
      echo 'success';
    }else{
      echo 'error';
    }
  }/*updateCountries*/

  /**
    **  get User Selected Countries List
  **/
  function getFavCountries(){
    global $wpdb;

    $tableName  = 'soccer_countries';
    $sql  = "SELECT * FROM ".$tableName."  Order By country_name ASC";
    $countries = $wpdb->get_results( $sql );
    return $countries;
  }/*getApiKey*/

  function removeCountries($country_id){
    global $wpdb;
    $tableName  = 'soccer_countries';
    if($country_id!=''){
      $data = array('country_id'=>$country_id);
      $delete =  $wpdb->delete( $tableName, $data );
    }
    if($delete){
        echo 'success';
    }else{
      echo 'error';
    }
  }/*removeCountries*/

}/*scCountries*/