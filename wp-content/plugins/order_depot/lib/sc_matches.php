<?php
class scMatches{

  function getApiMatches($action='', $league_id='', $start_date='', $end_date=''){

    global $scAdminObj;
    $url  = 'https://apifootball.com/api/';

    $api_key  = $scAdminObj->getApiKey();
    $ext_url  = '';

    if($league_id!=''){
      $ext_url  .='&league_id='.$league_id;
    }
    $ext_url  .=  '&from='.date('Y-m-d', strtotime($start_date));
    $ext_url  .=  '&to='.date('Y-m-d', strtotime($end_date));

    if($api_key==''){
      echo 'API Key Error..!!'; exit;
    }
    $url  = $url.'?action='.$action.'&APIkey='.$api_key.$ext_url;

      $resdata  = $scAdminObj->curlRequest($url);
      if (array_key_exists('error', $resdata)) {
          return NULL;
      }else{
          return $resdata;
      }


  }/*getApiLeagues*/


  function updateMatches($data=FALSE){
    global $wpdb;
    $tableName  = SC_MATCHES;
    if($data){
        $data = array(
                        'match_id'=>$data['match_id'],
                        'home'=>$data['home'],
                        'visitor'=>$data['visitor'],
                        'match_date'=>$data['match_date'],
                        'match_time'=>$data['match_time'],
                        'match_status'=>$data['match_status'],
                        'country_id'=>$data['country_id'],
                        'league_id'=>$data['league_id'],
                        'pool_id'=>$data['pool_id'],
                    );

        $insert = $wpdb->insert($tableName, $data);
    }
    if($insert){
      echo 'success';
    }else{
      echo 'error';
    }
  }/*updateMatches*/

  function deleteMatches($match_id=''){
    global $wpdb;
    $tableName  = SC_MATCHES;

    if($match_id!=''){
      $data = array('match_id'=>$match_id);
      $wpdb->delete( $tableName, $data );
    }
    echo 'success';
  }/*deleteMatches*/

  /**
    **  get User Selected Leagues List
  **/
  function getCurrMatches($pool_id=''){
    global $wpdb;
    $condition  = '';
    if($pool_id!=''){

      $condition  = ' WHERE pool_id="'.$pool_id.'"';
    }

    $tableName  = SC_MATCHES;
    $sql  = "SELECT * FROM ".$tableName.$condition." ORDER BY match_date DESC";

    $matches = $wpdb->get_results( $sql );
//    print_r($matches);
    return $matches;
  }/*getCurrMatches*/

  function getBetCount($match_id=''){
    global $wpdb;
    $condition  = '';
    $bets = 0;
    if($match_id!=''){
      $condition  = 'WHERE match_id='.$match_id;
    }
    $tableName  = SC_BETS;
    $sql  = "SELECT count(*) as betcount FROM ".$tableName." $condition";
    $betCount = $wpdb->get_results( $sql );
    if(count($betCount)>0){
      $bets = $betCount[0]->betcount;
    }
    return $bets;
  }

  /**
    ** Get Match Detail
  **/
  function getMatchDetail($match_id=''){
    global $wpdb;
    $condition  = '';

    if($match_id!=''){
      $condition  = 'WHERE match_id='.$match_id;
    }

    $matchDetail  = array();
    $tableName  = SC_MATCHES;
    $sql  = "SELECT * FROM ".$tableName." $condition";
    $matches = $wpdb->get_results( $sql );

    foreach($matches as $match){
      $matchDetail['matchname']  = $match->home .'-'. $match->visitor;
    }

    return $matchDetail;
  }/*getMatchDetail*/

  function matchBetStatus($match_id='', $type){

    global $wpdb;
    $condition  = '';
    $status   = '';

    if($match_id!=''){
      $condition  = 'WHERE match_id='.$match_id.' AND bet_option='."'$type'";
    }

    $tableName  = SC_BETS;
    $sql  = "SELECT * FROM ".$tableName." $condition";
    $matches = $wpdb->get_results( $sql );

    if(count($matches)>0){
      $status = 'paid';
    }else{
      $cartStatus  = $this->matchCartStatus($match_id, $type);
      if($cartStatus!=''){
        $status = 'cart';
      }
    }

    return $status;

  }/*matchBetStatus*/

  function matchCartStatus($match_id='', $type){
    global $scCartObj;
    $arrPendingBets = $scCartObj->getUserCart();

    $status   = '';
    if(in_array($match_id.'_'.$type, $arrPendingBets)){
      $status = 'cart';
    }

    return $status;
  }/*matchCartStatus*/

}