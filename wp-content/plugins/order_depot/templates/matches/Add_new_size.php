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
 if($_POST['size_id'] != NULL && $_POST['size_id'] != ''){
  
    $my_id = $od_patchesObj->add_od_new_patch($_POST);
    if($my_id){
        echo("<script>location.href = '?page=matches&tab=current';</script>");
    }
//echo $my_id;
//exit;
 }
 
?>
<form role="form" method="post" action="<?php $_SERVER['PHP_SELF'] ?>">
    <br>
    <div class="row">
        <div class="col-sm-4">    
            <div class="form-group">
                <label>Select Patch Size</label>
                <select class="form-control" id="patchsize" name="patchsize">
                    <option value="2">Select Size</option>
                    <option value="2">2"</option>
                    <option value="2.5">2.5"</option>
                    <option value="3">3"</option>
                    <option value="3.5">3.5"</option>
                    <option value="4">4"</option>
                    <option value="4.5">4.5"</option>
                    <option value="5">5"</option>
                    <option value="5.5">5.5"</option>
                    <option value="6">6"</option>
                    <option value="6.5">6.5"</option>
                    <option value="7">7"</option>
                </select>
            </div>
            <input type="hidden" name="size_id" value="<?=$_GET['size_id']?>"/>
        </div>
        <div class="col-sm-8"> </div>
        
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 100 items</label>
                <input type="text" name="unit_100" id="unit_100" class="form-control" />
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 200 items</label>
                <input type="text" name="unit_200" id="unit_200" class="form-control" />
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 300 items</label>
                <input type="text" name="unit_300" id="unit_300" class="form-control" required=""/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 400 items</label>
                <input type="text" name="unit_400" id="unit_400" class="form-control" required=""/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 500 items</label>
                <input type="text" name="unit_500" id="unit_500" class="form-control" required=""/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 1000 items</label>
                <input type="text" name="unit_1000" id="unit_1000" class="form-control" required=""/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <label>single unit price for 2000 items</label>
                <input type="text" name="unit_2000" id="unit_2000" class="form-control" required=""/>
                <span id="error_first_nam" class="text-danger"></span>
            </div>
        </div>
        <div class="col-sm-12">    
            <div class="form-group">
                <label>Gender</label>
                <?php foreach ($post_categories as $post_category) { ?>
                    <label class="radio-inline">
                        <input type="radio" name="categoryid" value="<?= $post_category->cat_ID ?>" <?php if ($post_category->cat_ID == $Cat_ID) {
                    echo 'selected';
                } ?>>
                    <?= ucwords($post_category->name) ?>
                    </label>
                <?php } ?>

            </div>
        </div>
        <div class="col-sm-6">    
            <button type="submit" class="btn btn-rounded btn-success btn-sm">Submit</button>
        </div>
    </div>
</form>