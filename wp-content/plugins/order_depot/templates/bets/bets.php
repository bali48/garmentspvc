<div class="wrap">
    <div id="icon-themes" class="icon32"></div>
    <h2>User Bets</h2>
    <?php settings_errors(); ?>

    <?php
        $active_tab = 'bets';
        if( isset( $_GET[ 'tab' ] ) ) {
            $active_tab = $_GET[ 'tab' ];
        }
     ?>

     <div class="col-sm-12 response"></div>
     <h2 class="nav-tab-wrapper">
         <a href="?page=bets&tab=bets" class="nav-tab <?php echo $active_tab == 'bets' ? 'nav-tab-active' : ''; ?>">Current Bets</a>
         <a href="?page=bets&tab=board" class="nav-tab <?php echo $active_tab == 'board' ? 'nav-tab-active' : ''; ?>">Leader Board</a>
         <a href="?page=matches&tab=current" class="nav-tab <?php echo $active_tab == 'progressive' ? 'nav-tab-active' : ''; ?>">Matches List </a>
         <a href="?page=settings&tab=setting" class="nav-tab <?php echo $active_tab == 'settings' ? 'nav-tab-active' : ''; ?>">Settings</a>
     </h2>

     <?php
       if($active_tab == 'bets'){
         include_once('user-bets.php');
       }else if($active_tab == 'board'){
         include_once('leader-board.php');
       }else{
       }
     ?>
</div><!-- /.wrap -->