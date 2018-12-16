<?php
/**
 * Created by PhpStorm.
 * User: Muhammad Bilal
 * Date: 20-Jul-17
 * Time: 11:38 AM
 */
?>
<div class="wrap">
    <div id="icon-themes" class="icon32"></div>
    <h2>Soccer Payments</h2>
    <?php settings_errors(); ?>

    <?php
    $active_tab = 'current';
    if( isset( $_GET[ 'tab' ] ) ) {
        $active_tab = $_GET[ 'tab' ];
    }
    ?>
    <div class="col-sm-12 response"></div>
    <h2 class="nav-tab-wrapper">
        <a href="?page=withdrawal&tab=accept" class="nav-tab <?php echo $active_tab == 'accept' ? 'nav-tab-active' : ''; ?>">Accept Payments</a>
        <a href="?page=withdrawal&tab=pending" class="nav-tab <?php echo $active_tab == 'pending' ? 'nav-tab-active' : ''; ?>">Pending Payments</a>
        <a href="?page=withdrawal&tab=cancel" class="nav-tab <?php echo $active_tab == 'cancel' ? 'nav-tab-active' : ''; ?>">Cancel Payments </a>
        <a href="?page=withdrawal&tab=paypal_settings" class="nav-tab <?php echo $active_tab == 'paypal_settings' ? 'nav-tab-active' : ''; ?>">Paypal Settings </a>
    </h2>
    <?php
    if($active_tab == 'accept'){

        include_once('active_users_request.php');

    }else if($active_tab == 'pending'){
        include_once('pending_users_request.php');

    }else if($active_tab == 'cancel'){
        include_once('cancel_users_request.php');

    }else if($active_tab == 'paypal_settings'){
        include_once('/../Paypal/paypal_html.php');

    }else{

    }
    ?>
</div>