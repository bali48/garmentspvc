<?php
/* Template Name: customCharts Template */
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
                            <?php
                            while ( have_posts() ) : the_post(); ?>

                            <p>
                                <?= the_content() ?>
                            </p>
<?php
    endwhile;?>

                        </div>

                    </div>



                    <div class="row  product-list">
                        <!--<h6 class="text-bold text-uppercase mb-10">Merrow Border</h6>-->
                       
                                <!--<div class="col-md-4 col-sm-8">-->
                                    <article class="product-card">
                                        <div class="product-image two-sided">
                                            <?php
                                            $url = wp_get_attachment_url(get_post_thumbnail_id(get_the_ID()), 'thumbnail');
                                            ?>
                                            <img src="<?php echo $url; ?>" alt="">
                                            <img src="<?php echo $url; ?>" alt="">
                                            <div class="image-overlay" data-lightbox="gallery">
                                                <a href="<?php echo $url; ?>" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                            </div>

                                        </div>
                                    </article>
                                <!--</div>-->


                           
                    </div>

                    
                </div>
            </div>
        </div>
    </div>
    <?php
    get_footer()
    ?>
