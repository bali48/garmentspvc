<?php
function menimageshow_html()
{

    global $post;
    // Noncename needed to verify where the data originated
    echo '<input type="hidden" name="menimage_noncename" id="menimage_noncename" value="' . wp_create_nonce( plugin_basename(__FILE__) ) . '" />';
    // Get the location data if its already been entered
    $result1 = get_post_meta($post->ID, '_menimage1', true);

    // Echo out the field
    echo '<input type="text" name="_menimage1" value="' . $result1  . '" style="width:70%;" id="upload_menimage1"/>';
    echo "&nbsp;";
    echo '<input id="my_upl_menbutton1" type="button" value="upload image 1" class="button button-primary button-large"/>';
    echo '<div class="clearfix" style="padding: 2px;"></div>';
    $result2 = get_post_meta($post->ID, '_menimage2', true);
    // Echo out the field
    echo '<input type="text" name="_menimage2" value="' . $result2  . '"   style="width:70%;"  id="upload_menimage2"/>';
    echo "&nbsp;";
    echo '<input id="my_upl_menbutton2" type="button" value="upload image 2" class="button button-primary button-large"/>';
     echo '<div class="clearfix" style="padding: 2px;"></div>';
    $result3 = get_post_meta($post->ID, '_menimage3', true);
    // Echo out the field
    echo '<input type="text" name="_menimage3" value="' . $result3  . '"   style="width:70%;"  id="upload_menimage3"/>';
    echo "&nbsp;";
    echo '<input id="my_upl_menbutton3" type="button" value="upload image 3" class="button button-primary button-large"/>';
     echo '<div class="clearfix" style="padding: 2px;"></div>';
    $result4 = get_post_meta($post->ID, '_menimage4', true);
    // Echo out the field
    echo '<input type="text" name="_menimage4" value="' . $result4  . '"   style="width:70%;"  id="upload_menimage4"/>';
    echo "&nbsp;";
    echo '<input id="my_upl_menbutton4" type="button" value="upload image 4" class="button button-primary button-large"/>';
     echo '<div class="clearfix" style="padding: 2px;"></div>';
    $result5 = get_post_meta($post->ID, '_menimage5', true);
    // Echo out the field
    echo '<input type="text" name="_menimage5" value="' . $result5  . '"   style="width:70%;"  id="upload_menimage5"/>';
    echo "&nbsp;";
    echo '<input id="my_upl_menbutton5" type="button" value="upload image 5" class="button button-primary button-large"/>';
     echo '<div class="clearfix" style="padding: 2px;"></div>';
?>    
<script>
    jQuery(document).ready( function( $ ) {
        jQuery('#my_upl_menbutton1').click(function() {

            window.send_to_editor = function(html) {
                imgurl = jQuery(html).attr('src')
                jQuery('#upload_menimage1').val(imgurl);
                // jQuery('#picsrc').attr("src",imgurl);
                tb_remove();
            }

            formfield = jQuery('#upload_menimage1').attr('name');
            tb_show( '', 'media-upload.php?type=image&amp;TB_iframe=true' );
            return false;
        });
        jQuery('#my_upl_menbutton2').click(function() {

            window.send_to_editor = function(html) {
                imgurl = jQuery(html).attr('src')
                jQuery('#upload_menimage2').val(imgurl);
                // jQuery('#picsrc').attr("src",imgurl);
                tb_remove();
            }

            formfield = jQuery('#upload_menimage2').attr('name');
            tb_show( '', 'media-upload.php?type=image&amp;TB_iframe=true' );
            return false;
        });
        jQuery('#my_upl_menbutton3').click(function() {

            window.send_to_editor = function(html) {
                imgurl = jQuery(html).attr('src')
                jQuery('#upload_menimage3').val(imgurl);
                // jQuery('#picsrc').attr("src",imgurl);
                tb_remove();
            }

            formfield = jQuery('#upload_menimage3').attr('name');
            tb_show( '', 'media-upload.php?type=image&amp;TB_iframe=true' );
            return false;
        });
        jQuery('#my_upl_menbutton4').click(function() {

            window.send_to_editor = function(html) {
                imgurl = jQuery(html).attr('src')
                jQuery('#upload_menimage4').val(imgurl);
                // jQuery('#picsrc').attr("src",imgurl);
                tb_remove();
            }

            formfield = jQuery('#upload_menimage4').attr('name');
            tb_show( '', 'media-upload.php?type=image&amp;TB_iframe=true' );
            return false;
        });
        jQuery('#my_upl_menbutton5').click(function() {

            window.send_to_editor = function(html) {
                imgurl = jQuery(html).attr('src')
                jQuery('#upload_menimage5').val(imgurl);
                // jQuery('#picsrc').attr("src",imgurl);
                tb_remove();
            }

            formfield = jQuery('#upload_menimage5').attr('name');
            tb_show( '', 'media-upload.php?type=image&amp;TB_iframe=true' );
            return false;
        });                                

    });
    </script>
<?php
}

//create meta for Property Slide show
add_action( 'add_meta_boxes', 'menimages' );
function menimages()
{
    add_meta_box(
        'menimage', //$id
        'Property SlideShow', //$title
        'menimageshow_html', //$callback for displaying html
        'MenGarments', //$page where u want to add it
        'normal', //$context
        'default'//$priority
            
            
    );
}

function save_men_images($post_id, $post)
{
    // verify this came from the our screen and with proper authorization,
    // because save_post can be triggered at other times
    if ( !wp_verify_nonce( $_POST['menimage_noncename'], plugin_basename(__FILE__) )) {
        return $post->ID;
    }
    // Is the user allowed to edit the post or page?
    if ( !current_user_can( 'edit_post', $post->ID ))
        return $post->ID;
    // OK, we're authenticated: we need to find and save the data
    // We'll put it into an array to make it easier to loop though.
    $menimage1['_menimage1'] = $_POST['_menimage1'];
    $menimage2['_menimage2'] = $_POST['_menimage2'];
    $menimage3['_menimage3'] = $_POST['_menimage3'];
    $menimage4['_menimage4'] = $_POST['_menimage4'];
    $menimage5['_menimage5'] = $_POST['_menimage5'];
    // Add values of $events_meta as custom fields
    foreach ($menimage1 as $key => $value) { // Cycle through the $events_meta array!
        if( $post->post_type == 'revision' ) return; // Don't store custom data twice
        $value = implode(',', (array)$value); // If $value is an array, make it a CSV (unlikely)
        if(get_post_meta($post->ID, $key, FALSE)) { // If the custom field already has a value
            update_post_meta($post->ID, $key, $value);
        } else { // If the custom field doesn't have a value
            add_post_meta($post->ID, $key, $value);
        }
        if(!$value) delete_post_meta($post->ID, $key); // Delete if blank
    }
      foreach ($menimage2 as $key => $value) { // Cycle through the $events_meta array!
        if( $post->post_type == 'revision' ) return; // Don't store custom data twice
        $value = implode(',', (array)$value); // If $value is an array, make it a CSV (unlikely)
        if(get_post_meta($post->ID, $key, FALSE)) { // If the custom field already has a value
            update_post_meta($post->ID, $key, $value);
        } else { // If the custom field doesn't have a value
            add_post_meta($post->ID, $key, $value);
        }
        if(!$value) delete_post_meta($post->ID, $key); // Delete if blank
    }
      foreach ($menimage3 as $key => $value) { // Cycle through the $events_meta array!
        if( $post->post_type == 'revision' ) return; // Don't store custom data twice
        $value = implode(',', (array)$value); // If $value is an array, make it a CSV (unlikely)
        if(get_post_meta($post->ID, $key, FALSE)) { // If the custom field already has a value
            update_post_meta($post->ID, $key, $value);
        } else { // If the custom field doesn't have a value
            add_post_meta($post->ID, $key, $value);
        }
        if(!$value) delete_post_meta($post->ID, $key); // Delete if blank
    }
      foreach ($menimage4 as $key => $value) { // Cycle through the $events_meta array!
        if( $post->post_type == 'revision' ) return; // Don't store custom data twice
        $value = implode(',', (array)$value); // If $value is an array, make it a CSV (unlikely)
        if(get_post_meta($post->ID, $key, FALSE)) { // If the custom field already has a value
            update_post_meta($post->ID, $key, $value);
        } else { // If the custom field doesn't have a value
            add_post_meta($post->ID, $key, $value);
        }
        if(!$value) delete_post_meta($post->ID, $key); // Delete if blank
    }
      foreach ($menimage5 as $key => $value) { // Cycle through the $events_meta array!
        if( $post->post_type == 'revision' ) return; // Don't store custom data twice
        $value = implode(',', (array)$value); // If $value is an array, make it a CSV (unlikely)
        if(get_post_meta($post->ID, $key, FALSE)) { // If the custom field already has a value
            update_post_meta($post->ID, $key, $value);
        } else { // If the custom field doesn't have a value
            add_post_meta($post->ID, $key, $value);
        }
        if(!$value) delete_post_meta($post->ID, $key); // Delete if blank
    }
}
add_action('save_post', 'save_men_images', 1, 2);
