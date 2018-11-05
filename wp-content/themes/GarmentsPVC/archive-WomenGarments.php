<?php
get_header();
?> 
<section id="breadcrumbs" class="breadcrumbs">

    <div class="container clearfix">
        <h1>Men</h1>
        <span>Jeans</span>
        <ol class="breadcrumb">
            <li><a href="<?php echo site_url(); ?>">Home</a></li>
            <li><a href="javascript:void(0);">Wowomen</a></li>
        </ol>
    </div>

</section><!-- #breadcrumbs end -->
<section id="content">

    <div class="content-wrap">

        <div class="container clearfix">
            <div class="row">



                <!-- PRODUCT LIST -->
                <div class="col-md-9 col-sm-8">

                    <!-- row -->
                    <!--                            <div class="row">
                                                     col 
                                                    <div class="col-md-12">
                                                        <form class="form-inline text-right product-filters">
                                                            <div class="form-group">
                                                                <label>Sort By</label>
                                                                <select class="selectpicker">
                                                                    <option>Name</option>
                                                                    <option>Price</option>
                                                                    <option>Availability</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Show</label>
                                                                <select class="selectpicker">
                                                                    <option>9</option>
                                                                    <option>18</option>
                                                                    <option>27</option>
                                                                    <option>36</option>
                                                                    <option>45</option>
                                                                </select>
                                                            </div>
                                                        </form>
                                                    </div>
                                                     /col 
                                                </div>-->
                    <!-- /row -->

                    <div class="row product-list">

                        <?php
                        $loop = new WP_Query(array(
                        'post_type' => 'WomenGarments',
                        'numberposts' => 5));
                        if ($loop->have_posts()) :
                        while ($loop->have_posts()) : $loop->the_post();
                        ?>
                        <div class="col-md-4 col-sm-6">
                            <article class="product-card">
                                <div class="product-image two-sided">

                                    <?php if (get_post_meta(get_the_ID(), '_womenimage1', true)) {
                                    ?>
                                    <img src="<?php echo get_post_meta(get_the_ID(), '_womenimage1', true); ?>" alt="">
                                    <?php }
                                    ?>
                                    <?php if (get_post_meta(get_the_ID(), '_womenimage2', true)) {
                                    ?>
                                    <img src="<?php echo get_post_meta(get_the_ID(), '_womenimage2', true); ?>" alt="">
                                    <?php }
                                    ?>

                                    <div class="image-overlay" data-lightbox="gallery">
                                        <?php if (get_post_meta(get_the_ID(), '_womenimage1', true)) {
                                        ?>
                                        <a href="<?php echo get_post_meta(get_the_ID(), '_womenimage1', true); ?>" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                        <?php }
                                        ?>
                                        <?php if (get_post_meta(get_the_ID(), '_womenimage2', true)) {
                                        ?>
                                        <a href="<?php echo get_post_meta(get_the_ID(), '_womenimage2', true); ?>" class="hidden" data-lightbox="gallery-item"></a>
                                        <?php }
                                        ?>
                                        <?php if (get_post_meta(get_the_ID(), '_womenimage3', true)) {
                                        ?>
                                        <a href="<?php echo get_post_meta(get_the_ID(), '_womenimage3', true); ?>" class="hidden" data-lightbox="gallery-item"></a>
                                        <?php } ?>
                                        <?php if (get_post_meta(get_the_ID(), '_womenimage4', true)) {
                                        ?>
                                        <a href="<?php echo get_post_meta(get_the_ID(), '_womenimage4', true); ?>" class="hidden" data-lightbox="gallery-item"></a>
                                        <?php }
                                        ?>
                                        <?php if (get_post_meta(get_the_ID(), '_womenimage5', true)) {
                                        ?>
                                        <a href="<?php echo get_post_meta(get_the_ID(), '_womenimage5', true); ?>" class="hidden" data-lightbox="gallery-item"></a>
                                        <?php }
                                        ?>              
                                        <a href="product-detail.html"><i class="fa fa-ellipsis-h"></i></a>
                                    </div>

                                </div>
                                <div class="product-detail">
                                    <h4><a href="<?= the_permalink(); ?>"><?php echo get_the_title() ?></a></h4>
                                    <!--<span class="price">$18.99</span>-->
                                    <!--<button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>-->
                                </div>
                            </article>
                        </div>
                        <?php endwhile; 
                       
                        endif;
                        wp_reset_postdata();
                        ?>

                        
                    </div>

                    <!-- row -->
                    <div class="row">
                        <!-- col -->
                        <div class="col-md-12">
                            <div class="product-controls">
                                <span class="products-length">Items 1 to 9 of 46</span>
                                <ul class="pagination myPagination pull-right">
                                    <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                                    <li><span>1</span></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- /col -->
                    </div>
                    <!-- /row -->

                </div>
                <!-- END PRODUCT LIST -->

            </div>
            <!-- /row -->


        </div>
        <!-- /container -->


    
<?php
get_footer()
?>
