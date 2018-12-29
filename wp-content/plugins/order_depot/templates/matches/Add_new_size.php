<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
global $od_patchesObj;
 $post_categories = get_categories(
                            array('parent' => 25)
                    );
 $button_title = 'Save';
 if(isset($_POST)){
       $my_id = $od_patchesObj->add_od_new_patch($_POST);
       if($my_id){
           echo("<script>location.href = '?page=matches&tab=current';</script>");
       }
 }
 if(isset($_GET['order_depot_size_ID']) && $_GET['order_depot_size_ID'] != NULL){
     $response = $od_patchesObj->getPatchByID($_GET['order_depot_size_ID']);
     $button_title = 'Update';
     echo '<pre>';
     var_dump($response);
     echo '</pre>';
 }
// var_dump($_GET);exit;
?>
<form role="form" method="post" action="<?php $_SERVER['PHP_SELF'] ?>">
    <br>
    <div class="row">
        <div class="col-sm-4">    
            <div class="form-group">
                <label>Select Patch Size</label>
                <select class="form-control" id="patchsize" name="patchsize">
                    <option value=""<?php if($response->size_name == '') echo ' seleted="selected"'; ?>>Select Size</option>
                    <option value="2" <?php if($response->size_name == '2') echo ' seleted="selected"'; ?>>2"</option>
                    <option value="2.5" <?php if($response->size_name == '2.5') echo ' seleted="selected"'; ?>>2.5"</option>
                    <option value="3" <?php if($response->size_name == '3') echo ' seleted="selected"'; ?>>3"</option>
                    <option value="3.5" <?php if($response->size_name == '3.5') echo ' seleted="selected"'; ?>>3.5"</option>
                    <option value="4" <?php if($response->size_name == '4') echo ' seleted="selected"'; ?>>4"</option>
                    <option value="4.5" <?php if($response->size_name == '4.5') echo ' seleted="selected"'; ?>>4.5"</option>
                    <option value="5" <?php if($response->size_name == '5') echo ' seleted="selected"'; ?>>5"</option>
                    <option value="5.5" <?php if($response->size_name == '5.5') echo ' seleted="selected"'; ?>>5.5"</option>
                    <option value="6" <?php if($response->size_name == '6') echo ' seleted="selected"'; ?>>6"</option>
                    <option value="6.5" <?php if($response->size_name == '6.5') echo ' seleted="selected"'; ?>>6.5"</option>
                    <option value="7" <?php if($response->size_name == '7') echo ' seleted="selected"'; ?>>7"</option>
                </select>
            </div>
            <input type="hidden" name="size_id" value="<?=$_GET['order_depot_size_ID']?>"/>
        </div>
        <div class="col-sm-8"> </div>
        
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 100 items</label>
                <input type="text" name="unit_100" id="unit_100" class="form-control" value="<?=$response->unit_100?>" required=""/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 200 items</label>
                <input type="text" name="unit_200" id="unit_200" class="form-control" value="<?=$response->unit_200?>" required=""/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 300 items</label>
                <input type="text" name="unit_300" id="unit_300" class="form-control" required="" value="<?=$response->unit_300?>"/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 400 items</label>
                <input type="text" name="unit_400" id="unit_400" class="form-control" required="" value="<?=$response->unit_400?>"/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 500 items</label>
                <input type="text" name="unit_500" id="unit_500" class="form-control" required="" value="<?=$response->unit_500?>"/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 1000 items</label>
                <input type="text" name="unit_1000" id="unit_1000" class="form-control" required="" value="<?=$response->unit_1000?>"/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 2000 items</label>
                <input type="text" name="unit_2000" id="unit_2000" class="form-control" required="" value="<?=$response->unit_2000?>"/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-12">    
            <div class="form-group">
                <label>Patch Category</label>
                <?php foreach ($post_categories as $post_category) { ?>
                    <label class="radio-inline">
                        <input type="radio" name="categoryid" value="<?= $post_category->cat_ID ?>" <?php if ($post_category->cat_ID == $response->CategoryID) {
                    echo ' checked';
                } ?>>
                    <?= ucwords($post_category->name) ?>
                    </label>
                <?php } ?>

            </div>
        </div>
        <div class="col-sm-6">    
            <button type="submit" class="btn btn-rounded btn-success btn-sm"><?=$button_title?></button>
        </div>
    </div>
</form>