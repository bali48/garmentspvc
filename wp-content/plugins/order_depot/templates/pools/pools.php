<div class="wrap">
    <div id="icon-themes" class="icon32"></div>
    <h2>Pools Matches</h2>
    <?php settings_errors(); ?>

    <?php
        $active_tab = 'pools';
        if( isset( $_GET[ 'tab' ] ) ) {
            $active_tab = $_GET[ 'tab' ];
        }
     ?>

     <div class="col-sm-12 response"></div>
     <h2 class="nav-tab-wrapper">
         <a href="?page=pools&tab=pools" class="nav-tab <?php echo $active_tab == 'pools' ? 'nav-tab-active' : ''; ?>">Pools List</a>
         <a href="?page=pools&tab=create" class="nav-tab <?php echo $active_tab == 'create' ? 'nav-tab-active' : ''; ?>">Create Pool</a>
         <a href="javascript:void(0);" class="nav-tab <?php echo $active_tab == 'matches' ? 'nav-tab-active' : ''; ?>">Matches List</a>
         <a href="javascript:void(0);" class="nav-tab <?php echo $active_tab == 'add-matches' ? 'nav-tab-active' : ''; ?>">Add Matches to Pool</a>
         <a href="?page=bets&tab=bets" class="nav-tab <?php echo $active_tab == 'bet' ? 'nav-tab-active' : ''; ?>">Bets List</a>
         <a href="?page=settings&tab=setting" class="nav-tab <?php echo $active_tab == 'settings' ? 'nav-tab-active' : ''; ?>">Settings</a>
     </h2>

     <?php
       if($active_tab == 'pools'){
         include_once('pool-list.php');
       }else if($active_tab == 'create'){
         include_once('create-pool.php');
       }else if($active_tab == 'matches'){
         include_once(PLUGIN_DIR.'templates/matches/pool-matches.php');
       }else if($active_tab == 'add-matches'){
         include_once(PLUGIN_DIR.'templates/matches/add-matches.php');
       }else{
       }

     ?>
</div><!-- /.wrap -->