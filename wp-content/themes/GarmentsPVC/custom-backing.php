<?php
/* Template Name: customBacking Template */
get_header();
//$post_categories = get_categories();
//echo '<pre>'; var_dump($post_categories); exit;
?> 
<section id="breadcrumbs" class="breadcrumbs">

    <div class="container clearfix">
        <h1><?= get_the_title() ?></h1>
        <!--<span>Patches</span>-->
        <ol class="breadcrumb">
            <li><a href="<?php echo site_url(); ?>">Home</a></li>
            <li><a href="javascript:void(0);"><?= get_the_title() ?></a></li>
        </ol>
    </div>

</section>
<section id="content">

    <div class="content-wrap">

        <div class="container clearfix">
            <div class="row">
                <!-- PRODUCT LIST -->
                <div class="col-md-9 col-sm-8">
                    <div class="panel panel-default panel-filled">
                        <div class="panel-body">
                            <p>
                                How a custom embroidered, woven, or PVC patch is affixed to apparel or gear is equally as important as the patch design itself.  At Patch Depot, we give you options!   We offer a wide variety of backing styles for you to choose from, so that your order of patches are easy-to-wear and enjoy.
                                The backing options that we offer include:
                            </p>


                        </div>

                    </div>



                    <div class="row mix-grid portfolio" id="gallery" data-lightbox="gallery">
                        <!--<h6 class="text-bold text-uppercase mb-10">Merrow Border</h6>-->
                        <?php
                        $loop = new WP_Query(array(
                            'post_type' => 'Patch-Backing',
//                            'category_name' => 'Merrow',
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
                        ?>
                    </div>

                    <div class="row">
                        <div class="panel panel-default panel-filled">
                            <div class="panel-body">
                                <p>
                                    No Backing (FREE)

                                    This option is ideal for patches that are temporarily being worn on a garment.  They can be secured with tuxedo clips or safety pins.

                                    PVC Backing (FREE)

                                    This option requires that the patch be sewn-on.  The reason for this backing is that the PVC serves as a protective coating that supports the patch.  It does not have iron-on capabilities.

                                    Iron-On Backing (Add $0.10 per unit, up to 5.5" size)

                                    This paid option is ideal if you do not anticipate moving the patch around from one garment to another.

                                    Peel & Stick Backing (Add 20% per unit)

                                    This paid option exists to eliminate the need to sew-on or iron-on patches to apparel, hats, and bags.  Simply remove the backing from the patch, position it wherever you’d like it to be seen, and press down firmly.  The sticky material on the back of the patch keeps it in place.

                                    Velcro Backing (Add $0.45 for sizes up to 3.0" or $0.55 for sizes 3.5"-4.5")

                                    This paid option is ideal for customers who want to wear the same patch on multiple garments or different patches on the same garment.  By simply peeling the patch off the Velcro, you can affix it to as many shirts, vests, and jackets as you want.  This style of backing is very durable and can be used over and over again without damaging the custom embroidered patch or woven patch.

                                    We also sell tuxedo clip attachments and safety pin attachments.  There is an additional fee for these two options.  Please refer to the photographs above for pricing information.  We’d also encourage you to speak to a Patch Depot representative for more information.
                                </p>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php
    get_footer()
    ?>
