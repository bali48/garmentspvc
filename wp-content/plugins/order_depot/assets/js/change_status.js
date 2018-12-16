/**
 * Created by Muhammad Bilal on 20-Jul-17.
 */
function status_update(id,status)
{

    var ajaxurl = ajax_object.ajax_url;
    jQuery.ajax({
        url: ajaxurl,
        data:
            {
                'action':'callback_status',
                'status': status,
                'id' : id
            },
        beforeSend: function()
        {

        },
        success:function(data)
        {
            alert(data);

        },
        error: function(errorThrown)
        {
            console.log(errorThrown);
        }
    });

}