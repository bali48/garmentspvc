<?php
global $od_patchesObj;
$embroidery_75 = $od_patchesObj->getPatchSize(21);
//  echo '<pre>';
//  var_dump($unit_100);
//  echo '</pre>';
?>

<div class="row" style="padding:1% 2%;">
    <div class="col-sm-4">&nbsp;</div>
    <div class="col-sm-8 text-right">
        <input type="button" class="btn btn-primary" value="Refresh Status">
    </div>
</div>

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
                <th>Action</th>
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
                        <td class="btn-<?= $value->order_depot_size_ID ?>">
                            <!--<i class="fa fa-pencil-square"><a href="?page=matches&tab=add_new&order_depot_size_ID=<?= $value->order_depot_size_ID ?>"></a></i>-->
                            <!--<a href="?page=matches&tab=add_new&order_depot_size_ID=<?= $value->order_depot_size_ID ?>"><i class="fa fa-crosshairs"></i></a>-->
                            <a class="btn btn-info btn-sm" href="?page=matches&tab=add_new&order_depot_size_ID=<?= $value->order_depot_size_ID ?>">Edit</a>
                            <input type="button" class="btn btn-danger btn-sm remove_order_size" rel-id="<?= $value->order_depot_size_ID ?>" Value="Remove">

                        </td>
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
</div><!--wrap-->

<style>
    table { width:100%; border-spacing: 5px; } /* cellspacing */
    th, td { padding: 5px; } /* cellpadding */

    th {background-color:#018DB1;font-weight:bold;color:#fff;}
    tbody tr td:nth-of-type(1) {font-weight: bold;}
    tbody tr:nth-of-type(2n) {background-color: #f0f0f0;}

</style>

<script>
    jQuery(document).ready(function () {
        jQuery(document).on('click', '.remove_order_size', function (e) {
            rec_id = jQuery(this).attr('rel-id');
            data = {'rec_id': rec_id, 'action': 'remove_match'}

            jQuery.ajax({
                type: 'POST',
                url: ajaxurl,
                data: data,
                success: function (data) {
                    console.log(data);
                    if (data = 'success') {
                        jQuery('.btn-' + rec_id).parent('tr').remove();
                    } else {
                        jQuery('.btn-' + rec_id).html('<span class="text text-danger">Error.!!</span>');
                    }
                }
            });/*ajax*/
        });
    });

</script>