<?php
class scUserPoints{
  /*
    ** Update User points
  */
  function updateUserPoints($data=FALSE){
    global $wpdb, $scActivityLog;
    $tableName  = SC_POINTS;
    $insert  = $wpdb->insert($tableName, $data);

    if($type=='added'){
      $activity = $data['points'] .'points added to your account';
    }else if($type=='deduct'){
      $activity = $data['points'] .'points deducted from your account';
    }

    if($insert){
      $dataActivity = array(
                        'user_id'=>$data['user_id'],
                        'activity'=>$activity,
                        'match_id'=>0,
                        'matchteams'=>0,
                        'total_amount' => $data['points'],
                        'activity_type' => 'Points',
                        'bet_option' => '',
                      );
      $scActivityLog->createLog($dataActivity);
    }
  }

  /*
    ** Get User points
  */
  function getUserPoints($user_id=''){
    global $wpdb;
    $points = 0;
    $tableName  = SC_POINTS;
    if($user_id==''){
      $user_id	=	get_current_user_id();
    }
    $sql  = "SELECT points FROM ".$tableName." WHERE user_id=$user_id";
    $userPoints = $wpdb->get_results( $sql );
    if(count($userPoints)>0){
      $points = $userPoints[0]->points;
    }
    return $points;
  }
}

?>