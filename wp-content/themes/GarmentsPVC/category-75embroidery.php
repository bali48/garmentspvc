<?php
get_header();
?> 
<section id="breadcrumbs" class="breadcrumbs">

    <div class="container clearfix">
        <h1>75Embroidery</h1>
        <span>Patches</span>
        <ol class="breadcrumb">
            <li><a href="<?php echo site_url(); ?>">Home</a></li>
            <li><a href="javascript:void(0);">75Embroidery</a></li>
        </ol>
    </div>

</section><!-- #breadcrumbs end -->
<section id="content">

    <div class="content-wrap">

        <div class="container clearfix">
            <div class="row">



                <!-- PRODUCT LIST -->
                <div class="col-md-9 col-sm-8">
<div class="tile-body">
                        <div class="panel panel-default panel-filled">
                            <!--                                        <div class="panel-heading">
                                                                        <h3 class="panel-title custom-font">Filled Paragraph</h3>
                                                                    </div>-->
                            <div class="panel-body">
                                <p>75% embroidered patches cover 3/4 of the twill backing in thread. This style of patch is ideal for designs featuring larger and centered embroidered design elements.
                                    The embroidered areas are highlighted by the difference in height and texture of the twill backing.  It adds a distinctive look to custom patches and helps add to the sturdiness of the item.
                                </p>
                                <p>
                                    We make the process of ordering custom Embroidered Patches easy! Our staff is here to help.
                                    We will guide you through the process of selecting the perfect style of patch, assist you in choosing a backing type, and help you determine the right size patches for your situation, application, and design. We'll be there every step of the way!
                                    Simply Email Us, or complete our quick and convenient Free Quote form, and a sales representative will contact you regarding your request to begin the process of creating your custom patches.
                                </p>
                            </div>
                        </div>


                    </div>
                    <div class="row mix-grid portfolio" id="gallery" data-lightbox="gallery">

                        <?php
                        $loop = new WP_Query(array(
                        'post_type' => 'Patches',
                        'category_name' => '75Embroidery',    
                        ));
                        if ($loop->have_posts()) :
                        while ($loop->have_posts()) : $loop->the_post();
                        ?>
                        <div class="portfolio-item col-md-4 col-sm-6 mix category_1 mix_all">
                                <div class="portfolio-image">
                                    <a href="#">
                                        <div class="boxer">
                                            <?php
                                  $url = wp_get_attachment_url(get_post_thumbnail_id(get_the_ID()), 'thumbnail');
                                  ?>    
                                        <img src="<?php echo $url; ?>" alt="" height="200" width="200" alt="" class="img-responsive">
                                        </div>
                                        </a>
                                    <div class="portfolio-overlay">
                                        <a href="<?php echo $url; ?>" class="btn-middle" data-lightbox="gallery-item"><i class="fa fa-search"></i></a>
                                    </div>
                                </div>

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
