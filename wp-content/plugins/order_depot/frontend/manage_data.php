<?php
/**
 * Created by PhpStorm.
 * User: Muhammad Bilal
 * Date: 20-Jul-17
 * Time: 3:23 PM
 */
$inser_row = new db_operations();
$inser_row->insert_user_record($_POST['amount']);