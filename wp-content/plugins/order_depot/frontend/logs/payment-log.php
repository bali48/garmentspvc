<?php
  global $scActivityLog;
  $betsLog  =   $scActivityLog->getActivityLog('Payment');
  echo '<pre>'; print_r($betsLog); echo "</pre";
?>
