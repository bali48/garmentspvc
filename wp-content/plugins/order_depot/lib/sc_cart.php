<?php
class scCart{
    /**
      **  get user Cart
    **/
    function getUserCart(){

      $bets_array = array();
      if(isset($_SESSION['bets']) and $_SESSION['bets']!=''){
        $existing_bets	=	$_SESSION['bets'];
        $bets_array	=	explode('#',$existing_bets);
      }
      return $bets_array;

    }/*add_scCart*/
    /**
      **  Add user Bets to cart
    **/
    function add_scCart($rec_id=''){
      $existing_bets	=	'';
      $user_id  =  get_current_user_id();

      if(isset($_SESSION['bets']) and $_SESSION['bets']!=''){
  			$existing_bets	=	$_SESSION['bets'].'#';
  		}

      $new_bets	= $existing_bets.$rec_id;
  		$_SESSION['bets']	=	trim($new_bets,'#');
  		echo $_SESSION['bets'];
    }/*add_scCart*/

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