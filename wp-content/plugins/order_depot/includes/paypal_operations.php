<?php

/**
 * Created by PhpStorm.
 * User: Muhammad Bilal
 * Date: 21-Jul-17
 * Time: 5:03 PM
 */
class paypal_operations
{
    /**
     * paypal_operations constructor.
     */
    public function __construct()
    {
    }


    /***
     * Change paypal Settings
     */
    public function soccer_payment_Change_paypal_Settings($data){
        global $wpdb;
        $tableName  = paypal_setting;
        $sql  = "SELECT * FROM `".$tableName."`";
        $respo = $wpdb->get_results( $sql );
        $result = count($respo);

        if($result == 0){
            $suc = get_permalink($data["success_page_id"]);
            $can = get_permalink($data["cancel_page_id"]);
            if($data["sandbox"]==null)
            {
                $data["sandbox"]='off';
            }
            $save_it = array('email'=>$data["Merchant_Email"],'user_points'=>$data["amount"] ,'success_page'=>$suc ,'cancel_page'=>$can,'sand_mode'=>$data["sandbox"]);
            $ins= $wpdb->insert($tableName, $save_it);
            return $ins;
        }
        else {
            $suc = get_permalink($data["success_page_id"]);
            $can = get_permalink($data["cancel_page_id"]);
            if($data["sandbox"]==null)
            {
                $data["sandbox"]='off';
            }
            $args=array('email'=>$data["Merchant_Email"],'user_points'=>$data["amount"] ,
                'success_page'=>$suc ,'cancel_page'=>$can,
                'sand_mode'=>$data["sandbox"],
                'api_user_name'=>$data["Api_username"],
                'api_password'=>$data["Api_password"],
                'api_signature'=>$data["Api_signature"]
            );
            $cond=array( 'id' => $respo[0]->id);


            $upd=$wpdb->update($tableName, $args, $cond);
            return $upd;
        }

    }


    /***
     * get paypal Settings
     */

    public function soccer_payment_get_paypal_settings(){
        global $wpdb;
        $tableName  = paypal_setting;
        $sql  = "SELECT `email`,`user_points`,`sand_mode`,`api_user_name`,`api_password`,`api_signature` FROM `".$tableName."`";
        $respo = $wpdb->get_results( $sql );
        return $respo;
    }
}
?>