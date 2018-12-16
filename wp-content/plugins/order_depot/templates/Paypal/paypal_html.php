<?php
/**
 * Created by PhpStorm.
 * User: Muhammad Bilal
 * Date: 21-Jul-17
 * Time: 10:06 AM
 */
global $paypal_obj;

$obj=$paypal_obj->soccer_payment_get_paypal_settings();
//print_r($obj);
?>
<form method="post" id="paypal">
    <div class="clearfix"></div>
    <div class="form-check col-xs-4">
        <label class="form-check-label">
            <input type="checkbox" name="sandbox" class="form-check-input" <?php if($obj[0]->sand_mode == on){ echo 'checked';  } ?>>
            PayPal Sandbox Mode
        </label>
    </div>
    <div class="clearfix"></div>
    <div class="clearfix"></div>
    <div class="form-group col-xs-4">
        <label for="Merchant_Email">Paypal Merchant Email</label>
        <input type="email" name="Merchant_Email" class="form-control input-sm" id="Merchant_Email"  value="<?= $obj[0]->email; ?>" placeholder="admin@example.com">
        <small id="emailHelp" class="form-text text-muted">Merchant Email Use For Paypal Integration</small>
    </div>
    <br>
    <div class="clearfix"></div>
    <label for="User_Points">User Points</label>
    <div class="input-group col-sm-2">

        <span class="input-group-addon">1Point =</span>
        <input type="number" size=30 value="<?= $obj[0]->user_points; ?>" name="amount" class="form-control" aria-label="Amount (to the nearest dollar)">
        <span class="input-group-addon">$</span>
    </div>
<br>
    <div class="clearfix"></div>
    <div class="well">
    <div class="form-group col-xs-4">
        <label for="Api_username">Api Username</label>
        <input type="text" name="Api_username" class="form-control input-sm" id="api_username"  value="<?= $obj[0]->api_user_name; ?>" placeholder="admin@example.com">
        <small id="ApiHelp" class="form-text text-muted">username is use For Integrate Paypal</small>
    </div>

    <br>
    <div class="clearfix"></div>
    <div class="form-group col-xs-4">
        <label for="Api_password">Api Password</label>
        <input type="text" name="Api_password" class="form-control input-sm" id="api_password"  value="<?= $obj[0]->api_password; ?>" placeholder="admin@example.com">
        <small id="ApiHelp" class="form-text text-muted">Password is use For Integrate Paypal</small>
    </div>
    <br>
    <div class="clearfix"></div>
    <div class="form-group col-xs-4">
        <label for="api_signature">Api Signature</label>
        <input type="text" name="Api_signature" class="form-control input-sm" id="Api_signature"  value="<?= $obj[0]->api_signature; ?>" placeholder="admin@example.com">
        <small id="ApiHelp" class="form-text text-muted">Signature is use For Integrate Paypal</small>
    </div>

    <br>
    <div class="clearfix"></div>
    </div>
        <div class="form-group col-xs-4">
        <label for="Success_Page">Success Page </label>
        <?php
        $success_pages='';
        wp_dropdown_pages(array("name" => "success_page_id", "show_option_none" => "-- " . __('Choose One', 'Success Page' ) . " --", "selected" => $success_pages));
        ?>

    </div>
<br>
    <div class="clearfix"></div>
    <div class="form-group col-xs-4">
        <label for="cancel_Page">cancel Page </label>
        <div class="clearfix"></div>
        <?php
        $cancel_pages='';
        wp_dropdown_pages(array("name" => "cancel_page_id", "show_option_none" => "-- " . __('Choose One', 'cancel Page' ) . " --", "selected" => $cancel_pages));
        ?>

    </div>
    <br>
    <div class="clearfix"></div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>