<?php
get_header();
?> 
<section id="breadcrumbs" class="breadcrumbs">

    <div class="container clearfix">
        <h1>PVC</h1>
        <span>Patches</span>
        <ol class="breadcrumb">
            <li><a href="<?php echo site_url(); ?>">Home</a></li>
            <li><a href="javascript:void(0);">PVC</a></li>
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
                              PVC patches are made of Polyvinyl chloride, and are perfect for some of the most creative designs.
                              They allow for Pantone color matching, which is not available with thread based and embroidered products.
                              As such, PVC patches are perfect for use with demanding corporate branding standards. Additionally, they allow for much finer detail to be produced and for 3D design elements to be incorporated.
                              Susceptible to neither extreme heat nor extreme cold, PVC patches are waterproof and excel in outdoor applications.  
                            </p>
                            <p>
                              Made popular by the military and related industries, PVC patches are suitable for any application in which a durable, flexible, lightweight, and striking patch design is required.
                              Oftentimes, a PVC patch can outlast the garment or piece of gear to which it is attached.
                              The most popular backing for PVC patches is a Velcro backing.
                              This allows the patch to be easily added and removed from uniforms and gear.
                              Also known as "morale patches", our custom PVC patches are becoming immensely popular with civilians and military units alike.  
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
                        'category_name' => 'PVC',    
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
