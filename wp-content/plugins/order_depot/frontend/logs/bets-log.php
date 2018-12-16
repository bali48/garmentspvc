<?php
  global $scActivityLog;
  $betsLog  =   $scActivityLog->getActivityLog('Bet');
  echo '<pre>'; print_r($betsLog); echo "</pre";
?>
