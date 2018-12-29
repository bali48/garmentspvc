<?php
class od_patches{
    /**
      **  get user patch sizes by category
    **/
    function getPatchSize($cat_ID = ''){
    global $wpdb;
    $tableName  = OD_PATCHSIZES;
    $condition  = '';
    if($cat_ID!=''){
      $condition  = ' AND CategoryID= "'.$cat_ID.'"';
    }
    $sql  = "SELECT * FROM ".$tableName." WHERE 1 ".$condition." ORDER BY order_depot_size_ID DESC";
    $PatchSize = $wpdb->get_results( $sql );
    return $PatchSize;
  }/*getApiLeagues*/
/*add_scCart*/
    /**
      **  Add and update
    **/
  function add_od_new_patch($value) {
        global $wpdb;
        $table = OD_PATCHSIZES;
        if ($value != NULL) {
            $data = array(
                'size_name' => $value['patchsize'],
                'CategoryID' => $value['categoryid'],
                'unit_100' => $value['unit_100'],
                'unit_200' => $value['unit_200'],
                'unit_300' => $value['unit_300'],
                'unit_400' => $value['unit_400'],
                'unit_500' => $value['unit_500'],
                'unit_1000' => $value['unit_1000'],
                'unit_2000' => $value['unit_2000'],
            );
            if($value['patchsize'] != NULL && $value['patchsize'] != ''){
                $data['created_by'] = get_current_user_id();
                $data['created_at'] = date('Y-m-d');
                $wpdb->insert($table, $data);
                $my_id = $wpdb->insert_id;
                return $my_id;
            } else {
                $data['modified_by'] = get_current_user_id();
                $data['modified_at'] = date('Y-m-d');
                $wpdb->update($table, $data, array('order_depot_size_ID'=>$value['patchsize']));
                return $value['patchsize'];
            }
            
//    $format = array('%s','%d');
            
            
        }
    }
    
    function getPatchByID($patch_id = '') {
        global $wpdb;
        $tableName = OD_PATCHSIZES;
        $condition = '';
        if ($patch_id != '') {
            $condition = ' AND order_depot_size_ID= "' . $patch_id . '"';
            $sql = "SELECT * FROM " . $tableName . " WHERE 1 " . $condition . " ORDER BY order_depot_size_ID DESC";
            $PatchSize = $wpdb->get_row($sql);
            return $PatchSize;
        }
    }

    /*add_scCart*/

    /**
      **  Remove user Bets from cart
    **/
    function remove_scCart($rec_id=''){

      if(isset($_SESSION['bets']) and $_SESSION['bets']!=''){
  			$existing_bets	=	$_SESSION['bets'].'#';
  			$bets_array	=	explode('#',$existing_bets);

  			if(count($bets_array) > 1){
  				if(($key = array_search($rec_id, $bets_array)) !== false) {
  					unset($bets_array[$key]);

  					$new_bets	=	implode('#',$bets_array);
  					unset($_SESSION['bets']);
  					$_SESSION['bets']	=	trim($new_bets,'#');
  				}
  			}else{
  				unset($_SESSION['bets']);
  			}
  			if(isset($_SESSION['bets']) and $_SESSION['bets']!=''){
  				echo $_SESSION['bets'];
  			}else{
  				echo 'empty';
  			}

  		}/*session-check*/
    }/*remove_scCart*/

}/*conversationClass*/
?>