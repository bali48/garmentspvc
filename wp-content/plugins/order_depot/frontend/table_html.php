<?php 
global $od_patchesObj;
    $embroidery_100 = $od_patchesObj->getPatchSize(20);
    $embroidery_50 = $od_patchesObj->getPatchSize(22);
    $embroidery_75 = $od_patchesObj->getPatchSize(21);
?>
<style>
    table { width:100%; border-spacing: 5px; } /* cellspacing */
    th, td { padding: 5px; } /* cellpadding */

    th {background-color:#018DB1;font-weight:bold;color:#fff;}
    tbody tr td:nth-of-type(1) {font-weight: bold;}
    tbody tr:nth-of-type(2n) {background-color: #f0f0f0;}

</style>
<h3>100Embroidery</h3>
<div class="matches-list" cellpadding="8" cellspacing="8">
    <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
              <!--<th>Serial</th>-->
                <th>size</th>
                <th>100</th>
                <th>200</th>
                <th>300</th>
                <th>400</th>
                <th>500</th>
                <th>1000</th>
                <th>2000</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $count = 1;
            if ($embroidery_100) {
                foreach ($embroidery_100 as $key => $value) {
                    ?>
                    <tr>
                      <!--<td><?= $key + 1 ?></td>-->
                        <td><?= $value->size_name ?>"</td>
                        <td><?= $value->unit_100 ?></td>
                        <td><?= $value->unit_200 ?></td>
                        <td><?= $value->unit_300 ?></td>
                        <td><?= $value->unit_400 ?></td>
                        <td><?= $value->unit_500 ?></td>
                        <td><?= $value->unit_1000 ?></td>
                        <td><?= $value->unit_2000 ?></td>
                    </tr>
                    <?php
                    $count++;
                }
            } else {
                echo '<tr><td colspan="8">No Size..!!</td></tr>';
            }
            ?>
        </tbody>
    </table>
</div><!--matches-list-->
<h3>100Embroidery</h3> 
<div class="matches-list" cellpadding="8" cellspacing="8">
    <table id="example" class="display" cellspacing="0" width="100%">
      <thead>
        <tr>
          <!--<th>Serial</th>-->
          <th>size</th>
          <th>100</th>
          <th>200</th>
          <th>300</th>
          <th>400</th>
          <th>500</th>
          <th>1000</th>
          <th>2000</th>
          
        </tr>
      </thead>
      <tbody>
        <?php
          $count = 1;
          if($embroidery_50){
            foreach($embroidery_50 as $key =>$value){
            ?>
                <tr>
                  <!--<td><?=$key +1 ?></td>-->
                  <td><?=$value->size_name?>"</td>
                  <td><?=$value->unit_100?></td>
                  <td><?=$value->unit_200?></td>
                  <td><?=$value->unit_300?></td>
                  <td><?=$value->unit_400?></td>
                  <td><?=$value->unit_500?></td>
                  <td><?=$value->unit_1000?></td>
                  <td><?=$value->unit_2000?></td>
                </tr>
              <?php
              $count++;
            }
          }else{
              echo '<tr><td colspan="8">No Current Matches..!!</td></tr>';
          }
         ?>
      </tbody>
    </table>
  </div><!--matches-list-->
<div class="matches-list" cellpadding="8" cellspacing="8">
    <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
              <!--<th>Serial</th>-->
                <th>size</th>
                <th>100</th>
                <th>200</th>
                <th>300</th>
                <th>400</th>
                <th>500</th>
                <th>1000</th>
                <th>2000</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $count = 1;
            if ($embroidery_75) {
                foreach ($embroidery_75 as $key => $value) {
                    ?>
                    <tr>
                      <!--<td><?= $key + 1 ?></td>-->
                        <td><?= $value->size_name ?>"</td>
                        <td><?= $value->unit_100 ?></td>
                        <td><?= $value->unit_200 ?></td>
                        <td><?= $value->unit_300 ?></td>
                        <td><?= $value->unit_400 ?></td>
                        <td><?= $value->unit_500 ?></td>
                        <td><?= $value->unit_1000 ?></td>
                        <td><?= $value->unit_2000 ?></td>
                    </tr>
                    <?php
                    $count++;
                }
            } else {
                echo '<tr><td colspan="8">No Current Matches..!!</td></tr>';
            }
            ?>
        </tbody>
    </table>
</div><!--matches-list-->


