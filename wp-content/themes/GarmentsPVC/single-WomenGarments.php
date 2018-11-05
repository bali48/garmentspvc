<?php
get_header();


/* Start the Loop */
while (have_posts()) : the_post();
?>

    <!--<script type="text/javascript" src="<?= get_stylesheet_directory_uri()?>assets/js/vendor/elevatezoom/jquery.elevateZoom-3.0.8.min.js"></script>-->
    
<style>
    .animsition{
       opacity: 1 !important; 
    }
    #wpadminbar{
        display: none !important;
    }
    span.wpcf7-not-valid-tip {
        font-size: 12px !important;
    }
</style>
    <!-- ============================================
            =================== Breadcrumbs =================
            ============================================= -->
    <section id="breadcrumbs" class="breadcrumbs">

        <div class="container clearfix">
            <h1><?= get_the_title(); ?></h1>
            <ol class="breadcrumb">
                <li><a href="<?= site_url(); ?>">Home</a></li>
                <li><a href="<?= get_permalink(get_option('WomenGarments')); ?>">Women</a></li>
                <li class="active"><?= get_the_title(); ?></li>
            </ol>
        </div>

    </section><!-- #breadcrumbs end -->
    <section id="content">

        <div class="content-wrap">
            <!--container clearfix-->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 col-sm-8">

                        <!-- row -->
                        <div class="row">
                            <!-- col -->
                            <div class="col-md-12">

                                <article class="product-view">

                                    <!-- row -->
                                    <div class="row">

                                        <!-- product gallery -->
                                        <div class="col-md-5">
                                            <div class="product-image">
                                                <?php if (get_post_meta(get_the_ID(), '_womenimage1', true)) {
                                                ?>
                                                <img id="zoom" src="<?php echo get_post_meta(get_the_ID(), '_womenimage1', true); ?>" data-zoom-image="<?php echo get_post_meta(get_the_ID(), '_womenimage1', true); ?>" alt="" class="img-responsive">
                                                <?php } ?>
                                                <div class="product-gallery" data-lightbox="gallery">

                                                    <div class="row">
                                                        <?php if (get_post_meta(get_the_ID(), '_womenimage2', true)) { ?>
                                                
                                                        <div class="col-md-4">
                                                            <a href="<?php echo get_post_meta(get_the_ID(), '_womenimage2', true); ?>" data-lightbox="gallery-item">
                                                                <img src="<?php echo get_post_meta(get_the_ID(), '_womenimage2', true); ?>"  alt="" class="img-responsive">
                                                            </a>
                                                        </div>
                                                        <?php } ?>
                                                        <?php if (get_post_meta(get_the_ID(), '_womenimage3', true)){ ?>
                                                        <div class="col-md-4">
                                                            <a href="<?php echo get_post_meta(get_the_ID(), '_womenimage3', true); ?>" data-lightbox="gallery-item">
                                                                <img src="<?php echo get_post_meta(get_the_ID(), '_womenimage3', true); ?>"  alt="" class="img-responsive">
                                                            </a>
                                                        </div>
                                                        <?php } ?>
                                                        <?php if (get_post_meta(get_the_ID(), '_womenimage4', true)){ ?>
                                                        <div class="col-md-4">
                                                            <a href="<?php echo get_post_meta(get_the_ID(), '_womenimage4', true); ?>" data-lightbox="gallery-item">
                                                                <img src="<?php echo get_post_meta(get_the_ID(), '_womenimage4', true); ?>"  alt="" class="img-responsive">
                                                            </a>
                                                        </div>
                                                        <?php } ?>
                                                        <?php if (get_post_meta(get_the_ID(), '_womenimage5', true)){ ?>
                                                        <div class="col-md-4">
                                                            <a href="<?php echo get_post_meta(get_the_ID(), '_womenimage5', true); ?>" data-lightbox="gallery-item">
                                                                <img src="<?php echo get_post_meta(get_the_ID(), '_womenimage5', true); ?>"  alt="" class="img-responsive">
                                                            </a>
                                                        </div>
                                                        <?php } ?>
                                                    </div>

                                                </div>
                                            </div>
                                            <script type="text/javascript">

                                                $(document).ready(function () {

                                                    $("#zoom").elevateZoom({
                                                        zoomType: "inner"
                                                    });

                                                }); //ready

                                            </script>
                                        </div>
                                        <!-- /product gallery -->

                                        <!-- product details -->
                                        <div class="col-md-7 product-details">

                                            <h4><?= get_the_title(); ?> 
                                                <!--<span class="product-offer hot-offer">Hot!</span></h4>-->

                                          <div class="row">

                                                <div role="tabpanel" class="info-section">

                                                    <!-- Nav tabs -->
                                                    <ul class="nav nav-tabs myTabs" role="tablist">
                                                        <li role="presentation" class="active"><a href="#desc" aria-controls="desc" role="tab" data-toggle="tab">Description</a></li>
                                                        <li role="presentation"><a href="#info" aria-controls="info" role="tab" data-toggle="tab">Informations</a></li>
                                                        <li role="presentation"><a href="#rfq" aria-controls="Request For Quotation" role="tab" data-toggle="tab">Request For Quotation*</a></li>
                                                        <li role="presentation"><a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">Reviews</a></li>
                                                    </ul>

                                                    <!-- Tab panes -->
                                                    <div class="tab-content">

                                                        <div role="tabpanel" class="tab-pane fade in active" id="desc">
                                                            <?= the_content() ?>
                                                            <!--<a href="#rfq" aria-controls="Request For Quotation" role="tab" data-toggle="tab">Request For Quotation</a>-->
                                                        </div>

                                                        <div role="tabpanel" class="tab-pane fade" id="info">
                                                            
                                                            <table class="table table-striped">
                                                                <thead>
                                                                <tr>
                                                                    <th colspan="2">Additional Informations</th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <?php
                                                                        $length = get_post_meta(get_the_ID(), 'length', true);
                                                                        if (!empty($length)) {?>
                                                                            <tr>
                                                                                <td>Length</td>
                                                                                <td><?= $length ?></td>
                                                                            </tr>
                                                                        <?php
                                                                        
                                                                        }
                                                                        ?>    
                                                                
                                                                <?php
                                                                        $color = get_post_meta(get_the_ID(), 'color', true);
                                                                        if (!empty($color)) {?>
                                                                            <tr>
                                                                                <td>Color</td>
                                                                                <td><?= $color ?></td>
                                                                            </tr>
                                                                        <?php
                                                                        
                                                                        }
                                                                        ?> 
                                                                <?php
                                                                        $genere = get_post_meta(get_the_ID(), 'genere', true);
                                                                        if (!empty($genere)) {?>
                                                                            <tr>
                                                                                <td>Genere</td>
                                                                                <td><?= $genere ?></td>
                                                                            </tr>
                                                                        <?php
                                                                        
                                                                        }
                                                                        ?> 
<!--                                                                <?php
                                                                        $type = get_post_meta(get_the_ID(), 'type', true);
                                                                        if (!empty($length)) {?>
                                                                            <tr>
                                                                                <td>Type</td>
                                                                                <td><?= $type ?></td>
                                                                            </tr>
                                                                        <?php
                                                                        
                                                                        }
                                                                        ?> -->
                                                                <?php
                                                                        $category = get_post_meta(get_the_ID(), 'category', true);
                                                                        if (!empty($category)) {?>
                                                                            <tr>
                                                                                <td>Category</td>
                                                                                <td><?= $category ?></td>
                                                                            </tr>
                                                                        <?php
                                                                        
                                                                        }
                                                                        ?> 
                                                                
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div role="tabpanel" class="tab-pane fade" id="rfq">
                                                            <?php echo do_shortcode('[contact-form-7 id="89" title="PlaceOrder"]') ?>
                                                        </div>
                                                        
                                                        <div role="tabpanel" class="tab-pane fade" id="reviews">
                                                            <?php if (is_single ()) comments_template( '', true ); ; ?>
                                                            
                                                            <form action="<?php echo get_option('siteurl'); ?>/wp-comments-post.php" method="post" id="commentform" class="review-form">
                                                                <h6 class="text-bold text-uppercase">Write a Review</h6>

                                                                <div class="row">

                                                                    <div class="form-group col-sm-6">
                                                                        <input name="name" type="text" class="form-control myInput" id="name" placeholder="Name" required>
                                                                    </div>

                                                                    <div class="form-group col-sm-6">
                                                                        <input name="email" type="email" class="form-control myInput" id="email" placeholder="Email" required>
                                                                    </div>

                                                                </div>

                                                                <div class="row">

                                                                    <div class="form-group col-sm-12">
                                                                        <textarea name="message" class="form-control myInput" id="message" rows="8" placeholder="Message" required></textarea>
                                                                    </div> 

                                                                </div>

                                                                <div class="starrr"></div>
                                                                <button type="submit" class="myBtn myBtn-rounded myBtn-border myBtn-midlight myBtn-sm pull-right">Send Review</button>

                                                            </form>
                                                        </div>
                                                    </div>

                                                </div>

                                          </div>
                                             <div class="share">
                                                <div class="pull-right">
                                                    <a class="social-icon social-facebook" onClick="window.open('http://www.facebook.com/sharer.php?s=100&amp;p[title]=<?php echo get_the_title; ?>&amp;p[url]=<?php echo the_permalink(); ?>&amp;&p[images][0]=<?php echo get_post_meta(get_the_ID(), '_womenimage1', true);?>', 'sharer', 'toolbar=0,status=0,width=548,height=325');" target="_parent" href="javascript: void(0)">
                                                        <div class="front">
                                                            <i class="fa fa-facebook"></i>
                                                        </div>
                                                        <div class="back">
                                                            <i class="fa fa-facebook"></i>
                                                        </div>
                                                    </a>
                                                                    
                                                    <a class="social-icon social-twitter" onClick="window.open('http://twitter.com/share?url=<?php echo the_permalink(); ?>&via=bilal_107&image-src=<?php echo get_post_meta(get_the_ID(), '_womenimage1', true);?>&text=<?php echo get_the_title; ?>')" target="_parent" href="javascript: void(0)">
                                                        <div class="front">
                                                            <i class="fa fa-twitter"></i>
                                                        </div>
                                                        <div class="back">
                                                            <i class="fa fa-twitter"></i>
                                                        </div>
                                                    </a>

                                                    <a class="social-icon social-googleplus" href="#">
                                                        <div class="front">
                                                            <i class="fa fa-google-plus"></i>
                                                        </div>
                                                        <div class="back">
                                                            <i class="fa fa-google-plus"></i>
                                                        </div>
                                                    </a>

                                                    <a class="social-icon social-pinterest" href="#">
                                                        <div class="front">
                                                            <i class="fa fa-pinterest"></i>
                                                        </div>
                                                        <div class="back">
                                                            <i class="fa fa-pinterest"></i>
                                                        </div>
                                                    </a>
                                                </div>
                                                <h6 class="text-bold text-uppercase">Share</h6>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                            <!-- tab -->
                                            
                                            <!-- /tab -->
                                        </div>
                                     </article>

                                </div>
                                <!-- /col -->
                            </div>
                            <!-- /row -->

                        </div>
                        <!-- END PRODUCT DETAIL -->

                    </div>
                <div class="row mt-40">

                        <!-- RELATED PRODUCTS -->
                        <div class="col-md-12">
                            <h6 class="text-bold text-uppercase mb-10">Related Products</h6>

                            <div class="product-carousel owl-carousel" id="related-products">

                                <div class="carousel-item">
                                    <article class="product-card">
                                        <div class="product-image two-sided">
                                            <img src="assets/images/items/men/2.jpg" alt="">
                                            <img src="assets/images/items/men/2-back.jpg" alt="">
                                            <div class="image-overlay" data-lightbox="gallery">
                                                <a href="assets/images/items/men/2.jpg" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                                <a href="assets/images/items/men/2-back.jpg" class="hidden" data-lightbox="gallery-item"></a>
                                                <a href="product-detail.html"><i class="fa fa-ellipsis-h"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-detail">
                                            <h4><a href="product-detail.html">Black Polo</a></h4>
                                            <span class="price">$18.99</span>
                                            <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                        </div>
                                    </article>
                                </div>

                                <div class="carousel-item">
                                    <article class="product-card">
                                        <div class="product-image two-sided">
                                            <img src="assets/images/items/woman/4.jpg" alt="">
                                            <img src="assets/images/items/woman/4-back.jpg" alt="">
                                            <div class="image-overlay" data-lightbox="gallery">
                                                <a href="assets/images/items/woman/4.jpg" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                                <a href="assets/images/items/woman/4-back.jpg" class="hidden" data-lightbox="gallery-item"></a>
                                                <a href="product-detail.html"><i class="fa fa-ellipsis-h"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-detail">
                                            <h4><a href="product-detail.html">Black Polo</a></h4>
                                            <span class="price">$18.99</span>
                                            <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                        </div>
                                    </article>
                                </div>

                                <div class="carousel-item">
                                    <article class="product-card">
                                        <div class="product-image two-sided">
                                            <img src="assets/images/items/woman/5.jpg" alt="">
                                            <img src="assets/images/items/woman/5-back.jpg" alt="">
                                            <div class="image-overlay" data-lightbox="gallery">
                                                <a href="assets/images/items/woman/5.jpg" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                                <a href="assets/images/items/woman/5-back.jpg" class="hidden" data-lightbox="gallery-item"></a>
                                                <a href="product-detail.html"><i class="fa fa-ellipsis-h"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-detail">
                                            <h4><a href="product-detail.html">Black Polo</a></h4>
                                            <span class="price">$18.99</span>
                                            <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                        </div>
                                    </article>
                                </div>

                                <div class="carousel-item">
                                    <article class="product-card">
                                        <div class="product-image two-sided">
                                            <img src="assets/images/items/woman/6.jpg" alt="">
                                            <img src="assets/images/items/woman/6-back.jpg" alt="">
                                            <div class="image-overlay" data-lightbox="gallery">
                                                <a href="assets/images/items/woman/6.jpg" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                                <a href="assets/images/items/woman/6-back.jpg" class="hidden" data-lightbox="gallery-item"></a>
                                                <a href="product-detail.html"><i class="fa fa-ellipsis-h"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-detail">
                                            <h4><a href="product-detail.html">Black Polo</a></h4>
                                            <span class="price">$18.99</span>
                                            <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                        </div>
                                    </article>
                                </div>

                                <div class="carousel-item">
                                    <article class="product-card">
                                        <div class="product-image two-sided">
                                            <img src="assets/images/items/woman/7.jpg" alt="">
                                            <img src="assets/images/items/woman/7-back.jpg" alt="">
                                            <div class="image-overlay" data-lightbox="gallery">
                                                <a href="assets/images/items/woman/7.jpg" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                                <a href="assets/images/items/woman/7-back.jpg" class="hidden" data-lightbox="gallery-item"></a>
                                                <a href="product-detail.html"><i class="fa fa-ellipsis-h"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-detail">
                                            <h4><a href="product-detail.html">Black Polo</a></h4>
                                            <span class="price">$18.99</span>
                                            <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                        </div>
                                    </article>
                                </div>

                                <div class="carousel-item">
                                    <article class="product-card">
                                        <div class="product-image two-sided">
                                            <img src="assets/images/items/men/4.jpg" alt="">
                                            <img src="assets/images/items/men/4-back.jpg" alt="">
                                            <div class="image-overlay" data-lightbox="gallery">
                                                <a href="assets/images/items/men/4.jpg" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                                <a href="assets/images/items/men/4-back.jpg" class="hidden" data-lightbox="gallery-item"></a>
                                                <a href="product-detail.html"><i class="fa fa-ellipsis-h"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-detail">
                                            <h4><a href="product-detail.html">Black Polo</a></h4>
                                            <span class="price">$18.99</span>
                                            <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                        </div>
                                    </article>
                                </div>

                                <div class="carousel-item">
                                    <article class="product-card">
                                        <div class="product-image two-sided">
                                            <img src="assets/images/items/men/5.jpg" alt="">
                                            <img src="assets/images/items/men/5-back.jpg" alt="">
                                            <div class="image-overlay" data-lightbox="gallery">
                                                <a href="assets/images/items/men/5.jpg" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                                <a href="assets/images/items/men/5-back.jpg" class="hidden" data-lightbox="gallery-item"></a>
                                                <a href="product-detail.html"><i class="fa fa-ellipsis-h"></i></a>
                                            </div>
                                        </div>
                                        <div class="product-detail">
                                            <h4><a href="product-detail.html">Black Polo</a></h4>
                                            <span class="price">$18.99</span>
                                            <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                        </div>
                                    </article>
                                </div>

                            </div>

                        </div>
                        <!-- /END RELATED PRODUCTS -->

                        <script type="text/javascript">

                            $(document).ready(function() {

                                $('#related-products').owlCarousel({
                                    loop: true,
                                    nav: true,
                                    autoplay:true,
                                    autoplayTimeout:8000,
                                    autoplayHoverPause:true,
                                    pagination: false,
                                    navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
                                    items : 4,
                                    margin: 30,
                                    responsive:{
                                        0:{ items:1 },
                                        600:{ items:2 },
                                        1000:{ items:3 },
                                        1200:{ items:4 }
                                    }
                                });


                            }); //ready

                        </script>

                    </div>
                    <!-- /row -->


                </div>
                <!-- /container -->

<?php
    endwhile;
get_footer();
?>