<div class="wrap">
    <div id="icon-themes" class="icon32"></div>
    <h2>Pools Matches</h2>
    <?php settings_errors(); ?>
    
    <?php
        $active_tab = 'embroidery_100';
        if( isset( $_GET[ 'tab' ] ) ) {
            $active_tab = $_GET[ 'tab' ];
        }
     ?>

     <div class="col-sm-12 response"></div>
     <h2 class="nav-tab-wrapper">
         <a href="?page=matches&tab=embroidery_100" class="nav-tab <?php echo $active_tab == 'embroidery_100' ? 'nav-tab-active' : ''; ?>">100% Embroidery</a>
         <a href="?page=matches&tab=embroidery_50" class="nav-tab <?php echo $active_tab == 'embroidery_50' ? 'nav-tab-active' : ''; ?>">50% % Embroidery</a>
         <a href="?page=matches&tab=embroidery_75" class="nav-tab <?php echo $active_tab == 'embroidery_75' ? 'nav-tab-active' : ''; ?>">75% Embroidery</a>
         <a href="?page=matches&tab=bets" class="nav-tab <?php echo $active_tab == 'bet' ? 'nav-tab-active' : ''; ?>">PVC</a>
         <a href="?page=matches&tab=setting" class="nav-tab <?php echo $active_tab == 'settings' ? 'nav-tab-active' : ''; ?>">Woven</a>
         <a href="?page=matches&tab=add_new" class="nav-tab <?php echo $active_tab == 'add_new' ? 'nav-tab-active' : ''; ?>">Add New Size</a>
     </h2>

     <?php
       if($active_tab == 'embroidery_100'){
         include_once('embroidery_100.php');
       }else if($active_tab == 'embroidery_50'){
         include_once('embroidery_50.php');
       }else if($active_tab == 'embroidery_75'){
         include_once('embroidery_75.php');
       }else if($active_tab == 'add_new'){
         include_once('Add_new_size.php');
       }else{
       }
     ?>
</div><!-- /.wrap -->