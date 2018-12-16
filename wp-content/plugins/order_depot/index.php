<?php
/*
Plugin Name: Order Depot
Plugin URI:
Description: This plugin is for Patches Order Placement
Version:     1.0.1
Author:      Muhammad Bilal
Author URI:
Text Domain: Patches
License:     GPL3

Order Depot is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
any later version.

Order Depot is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Bets. If not, see https://www.gnu.org/licenses/gpl-3.0.html
*/

global $soccer_db_version;
$soccer_db_version = '1.0';

/**
  ** Include All definations of the Plugin
  ** Include All hooks of the Plugin
**/

define('PLUGIN_DIR', plugin_dir_path( __FILE__ ));
include_once(PLUGIN_DIR.'configs/definations.php');
include_once(PLUGIN_DIR.'configs/order_depot-hooks.php');
include_once(PLUGIN_DIR.'functions/functions.php');
include_once(PLUGIN_DIR.'functions/frontend_functions.php');
//include_once(PLUGIN_DIR.'functions/paypalfunctions.php');
include_once(PLUGIN_DIR.'includes/db_operations.php');
////include_once(PLUGIN_DIR.'includes/paypal_operations.php');
include_once(PLUGIN_DIR.'frontend/display_infront.php');

function order_depot_styles(){
  wp_enqueue_style( 'jquerycss', plugin_dir_url( __FILE__ ) . 'assets/css/jquery-ui.css' );
  wp_enqueue_style( 'bootcss', plugin_dir_url( __FILE__ ) . 'assets/css/bootstrap.min.css' );
//  wp_enqueue_style( 'custcss', plugin_dir_url( __FILE__ ) . 'assets/css/style.css' );
  wp_enqueue_style( 'datatable', plugin_dir_url( __FILE__ ) . 'assets/css/datatable.min.css' );

  wp_enqueue_script( 'jqueryjs', plugins_url('assets/js/jquery.min.js', __FILE__ ));
  wp_enqueue_script( 'bootjs', plugins_url('assets/js/bootstrap.min.js', __FILE__ ));
  
  wp_enqueue_script( 'data', plugins_url('assets/js/datatable.js', __FILE__ ));
  wp_enqueue_script( 'datatab', plugins_url('assets/js/jquery.datatable.js', __FILE__ ));
//  
//
//  wp_enqueue_script( 'changestatus', plugins_url('assets/js/change_status.js', __FILE__ ));
////  wp_enqueue_script( 'paypal', plugins_url('assets/js/paypal_form.js', __FILE__ ));
//
//    wp_localize_script('changestatus', 'ajax_object', array(
//        'ajax_url' => admin_url( 'admin-ajax.php' )
//    ));

}
function custom_styles_soccer(){ 
       
//  wp_enqueue_script( 'jquerypluginwali', plugins_url('assets/js/jquery.min.js', __FILE__ ));
//  wp_enqueue_script( 'custjs', plugins_url( 'assets/js/betsession.js', __FILE__ ) );
  wp_enqueue_script( 'dsd', plugins_url('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap-wizard/1.2/jquery.bootstrap.wizard.js', __FILE__ ));
}
?>