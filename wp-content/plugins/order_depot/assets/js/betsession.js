//jQuery(document).ready(function(){
//
//  jQuery('.sc-mark-bet').on('change', function(e){
//
//    jQuery('.single-bets').html('<i class="fa fa-spiner fa-spin"></i>');
//    match_id = jQuery(this).attr('match-id');
//    bet_option = jQuery(this).attr('option');
//    bet_session  = match_id+'_'+bet_option;
//
//    if(jQuery(this).is(":checked")){
//      addBetSession(bet_session);
//    }else{
//      removeBetSession(bet_session);
//    }
//
//  });/*mark-bet*/
//
//});/*jQuery*/
//
//function addBetSession(bet_session){
//
//  data = { 'rec_id':bet_session, 'action': 'add_betSession' }
//  jQuery.ajax({
//    type: 'POST',
//    url:ajaxurl,
//    data: data,
//    success : function(data){
//      console.log(data);
//      refreshBetSlip();
//    }
//  });/*ajax*/
//}/*addBetSession*/
//
//function removeBetSession(bet_session){
//  data = { 'rec_id':bet_session, 'action': 'remove_betSession' }
//  jQuery.ajax({
//    type: 'POST',
//    url:ajaxurl,
//    data: data,
//    success : function(data){
//      console.log(data);
//      refreshBetSlip();
//    }
//  });/*ajax*/
//}/*removeBetSession*/
//
//function refreshBetSlip(){
//  data = { 'action': 'refresh_betSlip' }
//  jQuery.ajax({
//    type: 'POST',
//    url:ajaxurl,
//    data: data,
//    success : function(data){
//      jQuery('.single-bets').html(data);
//    }
//  });/*ajax*/
// }/*refreshBetSlip*/
//
// function makePayment(payment=''){
//
//   data = { 'action': 'sc_payments' }
//
//   if(confirm("$"+payment+" Will be deducted from your account, press OK to continue..!!")){
//     jQuery.ajax({
//       type: 'POST',
//       url:ajaxurl,
//       data: data,
//       success : function(data){
//         console.log(data);
//         if(data=='success'){
//           setTimeout(function(){
//             location.reload();
//           }, 500);
//         }else if(data=='low-balance'){
//           alert("Please Recharge Your Account..!!");
//         }else{
//           alert("Something Bad happened..!!");
//         }
//
//       }
//
//     });/*ajax*/
//   }
// }
