<?php
function front_display_payment($attr){
if($_POST['amount']!=null){
    /**
     * handle user data post from front end
     */
    include_once('manage_data.php');
}
    /***
     ** html code which display to user
     * ***/
    include_once('front_html.php');
}
?>