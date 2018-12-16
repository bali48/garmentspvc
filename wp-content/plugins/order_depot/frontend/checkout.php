<?php
  if(isset($_POST['paypal_amount']) and $_POST['paypal_amount']!=''){

    /** When Paypal Form submited **/
    $paymentAmount = $_REQUEST['paypal_amount'];
    $_SESSION["Payment_Amount"] = $paymentAmount;
    $currencyCodeType = "USD";
    $paymentType = "Sale";

    $returnURL =  esc_url( home_url( '/review' ));
    $cancelURL = esc_url( home_url( '/cancel' ));

    $resArray = CallShortcutExpressCheckout ($paymentAmount, $currencyCodeType, $paymentType, $returnURL, $cancelURL);

    $ack = strtoupper($resArray["ACK"]);
    if($ack=="SUCCESS" || $ack=="SUCCESSWITHWARNING"){
      RedirectToPayPal ( $resArray["TOKEN"] );
    }
    else{
      $ErrorCode = urldecode($resArray["L_ERRORCODE0"]);
      $ErrorShortMsg = urldecode($resArray["L_SHORTMESSAGE0"]);
      $ErrorLongMsg = urldecode($resArray["L_LONGMESSAGE0"]);
      $ErrorSeverityCode = urldecode($resArray["L_SEVERITYCODE0"]);

      echo "SetExpressCheckout API call failed. "; echo "<br>";
      echo "Detailed Error Message: " . $ErrorLongMsg; echo "<br>";
      echo "Short Error Message: " . $ErrorShortMsg; echo "<br>";
      echo "Error Code: " . $ErrorCode; echo "<br>";
      echo "Error Severity Code: " . $ErrorSeverityCode; echo "<br>";
    }
  }
?>