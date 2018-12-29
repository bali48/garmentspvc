<?php
get_header();
?> 
<section id="breadcrumbs" class="breadcrumbs">

    <div class="container clearfix">
        <h1>Woven</h1>
        <span>Patches</span>
        <ol class="breadcrumb">
            <li><a href="<?php echo site_url(); ?>">Home</a></li>
            <li><a href="javascript:void(0);">Woven</a></li>
        </ol>
    </div>

</section><!-- #breadcrumbs end -->
<section id="content">

    <div class="content-wrap">

        <div class="container clearfix">
            <div class="row">



                <!-- PRODUCT LIST -->
                <div class="col-md-9 col-sm-8">
                    <div class="panel panel-default panel-filled">
                        <div class="panel-body">        
                            <p>
                              Woven patches are perfect for designs that cannot be embroidered. 
                              We take extra care in creating this style of patches for you to meet your specifications.
                              Woven patches can be any shape as well as a number of different sizes to meet your needs. 
                              They are attractive and crafted with great care, so they can be worn for years to come.
                            </p>
                            <p>
                              Patch Depot offers your choice of border as a way of completing the look of the patch and also keeping it from unraveling with time.
                              Choose the style of border you feel will complete your woven patch design. 
                              We create quality custom products for businesses, academic institutions, organizations, clubs, and sports teams.
                            </p>
                            <p>
                                Have woven patches on hand for conferences, music festivals, school and work uniforms, and to demonstrate affiliation with a club or organization. We consider your unique needs.
                                Our team of talented patch designers are here to assist you with custom artwork and design services.
                            </p>
                            
                            <p>
                                We make the process of ordering custom Embroidered Patches easy! Our staff is here to help.
                                We will guide you through the process of selecting the perfect style of patch, assist you in choosing a backing type, and help you determine the right size patches for your situation, application, and design. We'll be there every step of the way!
                                Simply Email Us, or complete our quick and convenient Free Quote form, and a sales representative will contact you regarding your request to begin the process of creating your custom patches.
                            </p>
                        </div>
                    </div>
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
                        'post_type' => 'Patches',
                        'category_name' => 'Woven',    
                        ));
                        if ($loop->have_posts()) :
                        while ($loop->have_posts()) : $loop->the_post();
                        ?>
                        <div class="col-md-4 col-sm-6">
                            <article class="product-card">
                                <div class="product-image two-sided">
                                        <?php
                                  $url = wp_get_attachment_url(get_post_thumbnail_id(get_the_ID()), 'thumbnail');
                                  ?>
                                  <img src="<?php echo $url; ?>" alt="" height="268" width="270">
                                  <img src="<?php echo $url; ?>" alt="" height="268" width="270">

                                    <?php if (get_post_meta(get_the_ID(), '_patchesimage1', true)) {
                                    ?>
                                    <!--<img src="<?php //echo get_post_meta(get_the_ID(), '_patchesimage1', true); ?>" alt="">-->
                                    <?php }
                                    ?>
                                    <?php if (get_post_meta(get_the_ID(), '_patchesimage2', true)) {
                                    ?>
                                    <!--<img src="<?php //echo get_post_meta(get_the_ID(), '_patchesimage2', true); ?>" alt="">-->
                                    <?php }
                                    ?>

                                    <div class="image-overlay" data-lightbox="gallery">
                                        <a href="<?php echo $url; ?>" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                        <?php if (get_post_meta(get_the_ID(), '_patchesimage1', true)) {
                                        ?>
                                        <!--<a href="<?php // echo get_post_meta(get_the_ID(), '_patchesimage1', true); ?>" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>-->
                                        <?php }
                                        ?>
                                        <?php if (get_post_meta(get_the_ID(), '_patchesimage2', true)) {
                                        ?>
                                        <!--<a href="<?php //echo get_post_meta(get_the_ID(), '_patchesimage2', true); ?>" class="hidden" data-lightbox="gallery-item"></a>-->
                                        <?php }
                                        ?>
                                        <?php if (get_post_meta(get_the_ID(), '_patchesimage3', true)) {
                                        ?>
                                        <!--<a href="<?php //echo get_post_meta(get_the_ID(), '_patchesimage3', true); ?>" class="hidden" data-lightbox="gallery-item"></a>-->
                                        <?php } ?>
                                        <?php if (get_post_meta(get_the_ID(), '_patchesimage4', true)) {
                                        ?>
                                        <!--<a href="<?php //echo get_post_meta(get_the_ID(), '_patchesimage4', true); ?>" class="hidden" data-lightbox="gallery-item"></a>-->
                                        <?php }
                                        ?>
                                        <?php if (get_post_meta(get_the_ID(), '_patchesimage5', true)) {
                                        ?>
                                        <!--<a href="<?php //echo get_post_meta(get_the_ID(), '_patchesimage5', true); ?>" class="hidden" data-lightbox="gallery-item"></a>-->
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
