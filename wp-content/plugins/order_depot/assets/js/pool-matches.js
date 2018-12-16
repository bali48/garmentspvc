jQuery(document).ready(function(){

  jQuery( "#start_date" ).datepicker({  minDate: 0 });
  jQuery( "#end_date" ).datepicker({ minDate: 1,  maxDate: "+15D" });

  jQuery('#country').on('change', function(e){
    country = jQuery(this).val();
    if(country==''){
      jQuery('#leagues').html('<option value=""> Select League</option>');
    }else{
      jQuery('#leagues').html(jQuery('.cont-'+country).html());
    }

  });/*checkbox*/

  jQuery(document).on('click','.add_pool', function(e){
    jQuery('.response').html('');
    form_id = jQuery(this).attr('rel-id');
    data = jQuery('#matches-form-'+form_id).serialize();

    jQuery.ajax({
        type: 'POST',
        url:ajaxurl,
        data: data,
        success : function(data){
          console.log(data);
          if(data='success'){
            jQuery('.btn-'+form_id).html('<input type="button" class="btn btn-danger remove_pool" rel-id="'+form_id+'" Value="Remove">');
          }else{
            jQuery('.btn-'+form_id).html('<span class="text text-danger">Error.!!</span>');
          }
        }
    });/*ajax*/
  });/*add_pool*/

  jQuery(document).on('click','.remove_pool', function(e){
    rec_id = jQuery(this).attr('rel-id');
    data= {'rec_id':rec_id, 'action':'remove_match'}

    jQuery.ajax({
        type: 'POST',
        url:ajaxurl,
        data: data,
        success : function(data){
          console.log(data);
          if(data='success'){
            jQuery('.btn-'+form_id).html('<input type="button" class="btn btn-success add_pool" rel-id="'+form_id+'" Value="Add to Pool">');
          }else{
            jQuery('.btn-'+form_id).html('<span class="text text-danger">Error.!!</span>');
          }
        }
    });/*ajax*/

  });
});
