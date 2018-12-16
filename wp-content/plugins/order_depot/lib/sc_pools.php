<?php
class scPools{

  function getPoolData($pool_id=''){
    global $wpdb;
    $tableName  = SC_POOLS;
    $condition  = '';
    if($pool_id!=''){
      $condition  = ' AND pool_id= "'.$pool_id.'"';
    }
    $sql  = "SELECT * FROM ".$tableName." WHERE 1 ".$condition." ORDER BY start_date DESC";
    $pools = $wpdb->get_results( $sql );
    return $pools;
  }/*getApiLeagues*/


  function updatePoolData($data=FALSE){
    global $wpdb;
    $tableName  = SC_POOLS;


    if($data){
        $recieved = array(
                        'pool_id'=>$data['pool_id'],
                        'pool_title'=>$data['pool_title'],
                        'pool_type'=>$data['pool_type'],
                        'start_date'=>date('Y-m-d', strtotime($data['start_date'])),
                        'end_date'=>date('Y-m-d', strtotime($data['end_date'])),
                        'status'=>$data['status'],
                        'bet_option'=>implode(',', $data['bet_option']),
                        'pool_description'=>$data['pool_description'],
                    );


        if($data['request_type']!='update'){
            $insert = $wpdb->insert($tableName, $recieved);
        }else{
          $where  = array('pool_id'=>$data['pool_id']);
          $insert =  $wpdb->update( $tableName, $recieved, $where);
        }

    }
    if($insert){
      return 'success';
    }else{
      return 'error';
    }
  }/*updateMatches*/

  function deletePools($pool_id=''){
/*    global $wpdb;

    $tableName  = SC_MATCHES;
    if($match_id!=''){
      $data = array('match_id'=>$match_id);
      $wpdb->delete( $tableName, $data );
    }
    echo 'success'; */
  }/*deleteMatches*/

}