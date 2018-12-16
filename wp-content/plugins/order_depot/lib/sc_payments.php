<?php
class scPayments{

  /**
    ** Rechanrge Account
  **/
  function rechargeAccount($data=FALSE){
    global $wpdb, $scActivityLog, $scPointsobj;
    $tableName  = SC_PAYMENTS;
    $insert  = $wpdb->insert($tableName, $data);
    if($insert){

      $dataActivity = array(
                        'user_id'=>$data['user_id'],
                        'activity'=>'You Recharged '.$data['currency'].''.$data['amount'],
                        'match_id'=>0,
                        'matchteams'=>0,
                        'total_amount' => $data['amount'],
                        'activity_type' => 'Recharge',
                        'bet_option' => '',
                      );
      $scActivityLog->createLog($dataActivity);

      $currentPoints  = $scPointsobj->getUserPoints($data['user_id']);
      $points = $currentPoints + $data['amount'];
      $dataPoints = array('user_id'=>$data['user_id'], 'points'=>$points);
      $scPointsobj->updateUserPoints($dataPoints, $type='added');
    }
  }/*rechargeAccount*/

  function getPaypalPayments(){
    global $wpdb;
    $tableName  = SC_PAYMENTS;
    $sql  = "SELECT * FROM ".$tableName." ORDER BY dateTime";
    $payments = $wpdb->get_results( $sql );
    return $payments;

  }/*getPaypalPayments*/

  /**
    **  User Payments againts a bet
  **/
  function make_payment(){
    global $scCartObj, $scActivityLog, $scMatchObj,$scPointsobj, $wpdb;
    $user_id  =  get_current_user_id();
    $tableName  = SC_BETS;
    $bets_array = $scCartObj->getUserCart();

    if(count($bets_array) > 0){
      foreach($bets_array as $bets){
        $match = explode('_', $bets);
        $match_id = $match[0];
        $bet_option  = $match[1];

        $matchDetail  = $scMatchObj->getMatchDetail($match_id);
        $matchname  = $matchDetail['matchname'];

        $data   =  array(
                          'user_id'=>$user_id,
                          'match_id'=>$match_id,
                          'matchteams'=>$matchname,
                          'bet_type' => 's',
                          'bet_amount' => 3,
                          'pool_type' => 'r',
                          'bet_option' => $bet_option,
                         );

         $currentPoints  = $scPointsobj->getUserPoints($user_id);
         if($currentPoints > 2){
           $points = $currentPoints - 3;
           $dataPoints = array('user_id'=>$user_id, 'points'=>$points);
           $scPointsobj->updateUserPoints($dataPoints, $type='deduct');
         }else{
           echo 'low-balance'; exit;
         }

        $insert  = $wpdb->insert($tableName, $data);

        if($insert){
          $dataActivity = array(
                            'user_id'=>$user_id,
                            'activity'=>'Bet On Soccer Match',
                            'match_id'=>$match_id,
                            'matchteams'=>$matchname,
                            'total_amount' => 3,
                            'activity_type' => 'Bet',
                            'bet_option' => $bet_option
                          );
          $scActivityLog->createLog($dataActivity);
          unset($_SESSION['bets']);
          $response = 'success';
        }else{
          $response = 'error';
        }

      }/*foreach*/

    }else{
      echo 'cart is empty';
    }
    echo $response;

  }/*make_payment*/

}/*conversationClass*/
?>