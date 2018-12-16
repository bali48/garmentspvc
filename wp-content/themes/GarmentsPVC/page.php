<?php
get_header();

?>
<section id="content">

    <div class="content-wrap">
   <?php
            wp_reset_query(); // necessary to reset query
            while (have_posts()) : the_post();
                the_content();
            endwhile; // End of the loop.
            ?>
<?php
get_footer()
?>
