<div class="wrap">
    <div id="icon-themes" class="icon32"></div>
    <h2>Soccer Payments</h2>
    <?php settings_errors(); ?>

    <?php
        $active_tab = 'paypal';
        if( isset( $_GET[ 'tab' ] ) ) {
            $active_tab = $_GET[ 'tab' ];
        }
     ?>

     <div class="col-sm-12 response"></div>
     <h2 class="nav-tab-wrapper">
         <a href="?page=payments&tab=paypal" class="nav-tab <?php echo $active_tab == 'paypal' ? 'nav-tab-active' : ''; ?>">Paypal Payments</a>
         <a href="?page=payments&tab=withdrawals" class="nav-tab <?php echo $active_tab == 'withdrawals' ? 'nav-tab-active' : ''; ?>">withdrawals</a>
         <a href="?page=matches&tab=current" class="nav-tab <?php echo $active_tab == 'current' ? 'nav-tab-active' : ''; ?>">Matches List</a>
         <a href="?page=bets&tab=bets" class="nav-tab <?php echo $active_tab == 'bet' ? 'nav-tab-active' : ''; ?>">Bets List</a>
         <a href="?page=settings&tab=setting" class="nav-tab <?php echo $active_tab == 'settings' ? 'nav-tab-active' : ''; ?>">Settings</a>
     </h2>

     <?php
       if($active_tab == 'paypal'){
         include_once('paypal.php');
       }else if($active_tab == 'withdrawals'){
         include_once('withdrawals.php');
       }else{
       }
     ?>
</div><!-- /.wrap -->