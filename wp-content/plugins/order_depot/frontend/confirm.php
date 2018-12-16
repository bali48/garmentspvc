<?php
if(isset($_POST["review_form"]) and $_POST["review_form"]!=''){

	$Payment_Amount	=	$_SESSION["Payment_Amount"];
	$resArray = ConfirmPayment ( $Payment_Amount );

	$ack = strtoupper($resArray["ACK"]);

	if( $ack == "SUCCESS" || $ack == "SUCCESSWITHWARNING" ){

		$user_id	=	get_current_user_id();
		$data	=	array(
								'user_id'=>$user_id,
								'transaction_id'=>$resArray['TRANSACTIONID'],
								'amount'=>$resArray['AMT'],
								'currency'=>$resArray['CURRENCYCODE'],
								'payment_method'=>$resArray['TRANSACTIONTYPE'],
								'payment_status'=>$resArray['PAYMENTSTATUS'],
								'dateTime'=>date('Y-m-d H:i:s', strtotime($resArray['ORDERTIME'])),
							);

		global $scPaymentsObj;
		$scPaymentsObj->rechargeAccount($data);
		unset($_SESSION['Payment_Amount']);
		wp_redirect ( home_url("/thank-you") );

	}else{

		//Display a user friendly Error on the page using any of the following error information returned by PayPal
		$ErrorCode = urldecode($resArray["L_ERRORCODE0"]); echo "<br>";
		$ErrorShortMsg = urldecode($resArray["L_SHORTMESSAGE0"]); echo "<br>";
		$ErrorLongMsg = urldecode($resArray["L_LONGMESSAGE0"]); echo "<br>";
		$ErrorSeverityCode = urldecode($resArray["L_SEVERITYCODE0"]); echo "<br>";

		echo "GetExpressCheckoutDetails API call failed. "; echo "<br>";
		echo "Detailed Error Message: " . $ErrorLongMsg; echo "<br>";
		echo "Error Code: " . $ErrorCode; echo "<br>";
		echo "Short Error Message: " . $ErrorShortMsg; echo "<br>";
		echo "Error Severity Code: " . $ErrorSeverityCode;
	}
}
?>