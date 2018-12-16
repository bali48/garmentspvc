/**
 * Created by Muhammad Bilal on 21-Jul-17.
 */
jQuery( document ).ready(function($)
{

    $("#paypal").submit(function(e)
    {
        /* Do Something */
        var form_data = $( '#paypal' ).serialize();
        var ajaxurl = ajax_object.ajax_url;
        jQuery.ajax({
            url: ajaxurl,
            data:
                {
                    'action':'callback_paypal',
                    'form_data':form_data
                },
            beforeSend: function()
            {

            },
            success:function(data)
            {
                alert(data);
               // alert('Paypal Settings are update Successfully');

            },
            error: function(errorThrown)
            {
                alert('Something is going wrong');
            }
        });
        e.preventDefault();
    });

});
