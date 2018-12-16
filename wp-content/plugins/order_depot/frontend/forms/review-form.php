<?php
  $token = "";
  if (isset($_REQUEST['token'])){
	   $token = $_REQUEST['token'];
   }

   if ( $token != "" ){
	    $resArray = GetShippingDetails( $token );
	    $ack = strtoupper($resArray["ACK"]);

	    if( $ack == "SUCCESS" || $ack == "SUCESSWITHWARNING"){
        ?>
          <b>You will pay $<?php echo $_SESSION["Payment_Amount"]; ?> </b></p>
          <form action="" METHOD='POST'>
            <input type="text" name="review_form" value="reviewd">
            <input type="submit" value="Confirm Order " style="float:left;"/>
          </form>
        <?php
      }
    }
?>