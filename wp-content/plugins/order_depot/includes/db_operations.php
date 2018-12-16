<?php
/**
 * Created by PhpStorm.
 * User: Muhammad Bilal
 * Date: 20-Jul-17
 * Time: 2:47 PM
 */
class db_operations
{

    /**
     * db_operations constructor.
     */
    public function __construct()
    {
       // echo 'i am object';
    }

    /**
     * Insert user record
     */
    public function insert_user_record($payment){
        global $wpdb;
        $tableName  = withdrawal;
        $data = array('user_id'=>get_current_user_id(),'request_amount'=>$payment ,'status'=>'p');
        $wpdb->insert($tableName, $data);
    }

    /**
     * get pending users requests
     */
    public function get_users_list_according_to_payments($status){
        global $wpdb;
        $tableName  = withdrawal;
        $sql  = "SELECT * FROM `".$tableName."` WHERE `status` = '".$status."'";
        $result = $wpdb->get_results( $sql );
        return $result;
    }



    /**
     * update payment status
     */
    public function change_payment_record($id,$status){
        global $wpdb;
        $tableName  = withdrawal;
        $args = array(
            'status'=>$status
      );
        $cond=array( 'id' => $id);
        $result=$wpdb->update($tableName, $args, $cond);
    return $result;
    }


}
?>