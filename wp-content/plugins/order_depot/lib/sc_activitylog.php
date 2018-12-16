  <?php
class scActivityLog{

  /**
    **  Create a new Activity Log
  **/
  function createLog($data = FALSE){
    global $scActivityLog, $wpdb;
    $tableName  = SC_LOG;

    $wpdb->insert($tableName, $data);

  }/*createLog*/

  /**
    **  Get Activity Log
  **/
  function getActivityLog($type=''){
    global $scActivityLog, $wpdb;
    $tableName  = SC_LOG;

    if($user_id==''){
      $user_id	=	get_current_user_id();
    }
    $sql  = "SELECT * FROM ".$tableName." WHERE user_id=$user_id AND activity_type= '$type'";
    $activityLog = $wpdb->get_results( $sql );

    return $activityLog;

  }/*createLog*/

}/*conversationClass*/
?>