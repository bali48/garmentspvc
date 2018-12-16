<?php
  global $scPoolObj;

  if(isset($_GET['pool']) and $_GET['pool']!=''){
    $pool_id  = $_GET['pool'];

    $poolData = $scPoolObj->getPoolData($pool_id);

    if($poolData){
      $start_date = date('m/d/Y', strtotime($poolData[0]->start_date));
      $end_date = date('m/d/Y', strtotime($poolData[0]->end_date));
      $pool_id = $poolData[0]->pool_id;
      $req_type = 'update';
    }else{
        $msg  = '<div class="alert alert-danger">Invalid Pool ID provided..!!</div>';
    }
  }else{
    $start_date = date('m/d/Y', strtotime('+1 days'));
    $end_date = date('m/d/Y', strtotime('+30 days'));
    $pool_id = substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyz"), 0, 6);
      $req_type = 'create_new';
  }

  $msg  = '';
  if(isset($_POST['submit'])){

      $update  =  $scPoolObj->updatePoolData($_POST);

    if($update=='success'){
      $msg  = '<div class="alert alert-success"> Updated Successfully ..!!</div>';
    }else if($upadte=='error'){
      $msg  = '<div class="alert alert-danger"> Error Occured ..!!</div>';
    }
  }
?>

<div class="col-sm-8">
  <h3> Pools Listing Information</h3>
  <form class="" id="pool_form" method="POST" >
    <div class="col-sm-12"><?=$msg?></div>
    <div class="clearfix"></div>
  <div class="col-sm-6">
        <label class checked="control-label">Pool ID</label>
        <p class="form-control"><?=$pool_id?></p>
    </div>
    <div class="clearfix"></div>

    <div class="col-sm-6">
        <label class checked="control-label">Pool Title</label>
        <input type="text" class="form-control" name="pool_title" value="<?=$poolData[0]->pool_title?>" required>
    </div>
    <div class="col-sm-6">
      <label class="control-label">Bet Type</label>
      <select class="form-control" name="pool_type">
        <option value="r"> Regular </option>
        <option value="p"> Progressive </option>
      </select>
    </div>
    <div class="clearfix"></div>

    <div class="col-sm-6">
      <label class="control-label">Pool Start Date</label>
      <input type="text" class="form-control" id="start_date" name="start_date" required value="<?=$start_date?>">
    </div>
    <div class="col-sm-6">
      <label class="control-label">Pool End Date</label>
      <input type="text" class="form-control" id="end_date" name="end_date" required value="<?=$end_date?>">
    </div>

    <div class="clearfix"></div>
    <div class="col-sm-6">
      <label class="control-label">Bet Status</label>
      <select class="form-control" name="status">
        <option value="a"> Open </option>
        <option value="c"> Closed </option>
      </select>
    </div>

    <div class="col-sm-6">
      <label class="control-label">Bet Option</label>
      <div class="form-group">
        <input type="checkbox" name="bet_option[]" value="h" checked> Home
        <input type="checkbox" name="bet_option[]" value="x"> Draw
        <input type="checkbox" name="bet_option[]" value="v" checked> Visitor
      </div>
    </div>

    <div class="clearfix"></div>
    <div class="col-sm-12">
      <label class="control-label">Pool Description</label>
      <textarea name="pool_description" class="form-control" placeholder="Enter Something about this.."><?=$poolData[0]->pool_description?></textarea>
    </div>
    <div class="clearfix"></div>

    <div class="col-sm-12 text-right" style="margin-top:12px;">
      <label class="control-label">&nbsp;</label>
      <input type="submit" class="btn btn-primary" name="submit"  value="Submit">
    </div>
      <input type="hidden" value="<?=$pool_id?>" name="pool_id" >
      <input type="hidden" value="<?=$req_type?>" name="request_type" >
  </form>
</div>