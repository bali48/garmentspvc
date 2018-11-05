<?php
/**
 * The template for displaying comments
 *
 *
 */
//if ( post_password_required() ) {
//	return;
//}
?>

<div id="comments" class="comments-area">

	<?php
	// You can start editing here -- including this comment!
	if ( have_comments() ) : ?>
                
                <!--<h6 class="comments-title">-->
			<?php
			$comments_number = get_comments_number();
//			echo number_format_i18n( $comments_number )
                        ?>
		<!--</h6>-->
    
		
			<?php
                        $args = [
                            'style' => 'ol',
                            'format' => 'html5',
                            'short_ping' => true,
                        ];
                        // Use our custom callback if it's available
                        if (function_exists('format_comment')) {
                            $args['format'] = 'wpse';
                            $args['callback'] = 'format_comment';
                        }
                        wp_list_comments($args);
                        ?>
		

		<?php
//                the_comments_pagination( array(
//			'prev_text' => twentyseventeen_get_svg( array( 'icon' => 'arrow-left' ) ) . '<span class="screen-reader-text">' . __( 'Previous', 'twentyseventeen' ) . '</span>',
//			'next_text' => '<span class="screen-reader-text">' . __( 'Next', 'twentyseventeen' ) . '</span>' . twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ),
//		) );

	endif; // Check for have_comments().

	// If comments are closed and there are comments, let's leave a little note, shall we?
	if ( ! comments_open() && get_comments_number() && post_type_supports( get_post_type(), 'comments' ) ) : ?>

		<p class="no-comments"><?php _e( 'Comments are closed.', 'twentyseventeen' ); ?></p>
	<?php
	endif;
	//comment_form();
        
        $fields = array(
            'Name' =>
            '<div class="row"><div class="form-group col-sm-6">'.
            '<input id="name" class="form-control myInput" name="name" type="text" value="' . esc_attr($commenter['comment_author']) .
            'placeholder="Name" required /></div>',
            'email' =>
            '<div class="form-group col-sm-6"><input id="email" name="email" class="form-control myInput" type="email" value="' . esc_attr($commenter['comment_author_email']) .
            'placeholder="Email" required /> </div></div>',
            'message' =>
            '<div class="row"><div class="form-group col-sm-12">' .
            '<textarea id="message" class="form-control myInput" name="message" rows="8" value="' . esc_attr($commenter['comment_author_url']) .
            '"placeholder="Message" required /></textarea></div></div>',
            'submit' =>
            ' <button type="submit" class="myBtn myBtn-rounded myBtn-border myBtn-midlight myBtn-sm pull-right">Send Review</button>'
        );
       // ob_start();
//         comment_form($fields);  
   ////   $comment_form = ob_get_clean();
?>
                <form action="<?php echo site_url('/wp-comments-post.php') ?>" method="post" id="commentform" class="review-form">
                    <h6 class="text-bold text-uppercase">Write a Review</h6>

                    <div class="row">

                        <div class="form-group col-sm-6">
                            <input name="author" type="text" class="form-control myInput" id="name" placeholder="Name" required>
                        </div>

                        <div class="form-group col-sm-6">
                            <input name="email" type="email" class="form-control myInput" id="email" placeholder="Email" required>
                        </div>

                    </div>

                    <div class="row">

                        <div class="form-group col-sm-12">
                            <textarea name="comment" class="form-control myInput" id="message" rows="8" placeholder="Message" required></textarea>
                        </div> 
                        <input type="hidden" value="<?= get_the_ID() ?>" name="comment_post_ID"/>
                        <input type="hidden" value="0" name="comment_parent"/>
                        
                    </div>

                    <div class="starrr"></div>
                    <button type="submit" class="myBtn myBtn-rounded myBtn-border myBtn-midlight myBtn-sm pull-right" value="Post Comment">Send Review</button>
                    
                </form>
    

</div><!-- #comments -->
