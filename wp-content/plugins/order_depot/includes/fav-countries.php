 <select class="form-control" name="country" id="country">
   <option value=""> Select Country</option>
   <?php
     if($fav_conutries){
       foreach($fav_conutries as $fav){
         $style  = '';
         if($fav->country_id==$country){
           $style = 'selected';
         }
         ?>
           <option value="<?=$fav->country_id?>" <?=$style?>> <?=$fav->country_name?> </option>
         <?php
       }
     }
   ?>
 <select>