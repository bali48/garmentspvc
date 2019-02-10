<?php
/* Template Name: GarmentspvcGeneric Template */
get_header();
//$post_categories = get_categories();
//echo '<pre>'; var_dump($post_categories); exit;
?> 
<section id="breadcrumbs" class="breadcrumbs">

    <div class="container clearfix">
        <h1><?=get_the_title()?></h1>
        <!--<span>Patches</span>-->
        <ol class="breadcrumb">
            <li><a href="<?php echo site_url(); ?>">Home</a></li>
            <li><a href="javascript:void(0);"><?=get_the_title()?></a></li>
        </ol>
    </div>

</section>
<section id="content">

    <div class="content-wrap">

        <div class="container clearfix">
            <div class="col-md-3 col-sm-8 sidebar">
                    <?php dynamic_sidebar( 'left-sidebar' );?>
                </div>
            
                
                <!-- PRODUCT LIST -->
                <div class="col-md-9 col-sm-8">
                    <div class="panel panel-default panel-filled">
                        <div class="panel-body">
                            <p>
                              An important part of every embroidered patch and woven patch order is the edge selection.
                              Finished edges keep patches from unraveling and becoming unsightly.
                              A Merrowed Edge is essentially a sewn border. It is created using an overlock stitch, 
                              which yields a uniform edge and prevents fraying. A Hot Cut Edge is die cut. Heated scissors help create this type of edge. Every patch must have an edge in order to stay intact. 
                              Hot Cut Edges are used for more extreme shapes, while Merrow Edges create a rounded appearance.
                             If you need assistance choosing between a Merrowed Edge and a Hot Cut Edge, contact a Patch Depot representative right away! 
                            </p>
                            
                            
                        </div>
                    
                    </div>
                
            
                <div class="row mix-grid portfolio" id="gallery" data-lightbox="gallery">
                  <h6 class="text-bold text-uppercase mb-10">Merrow Border</h6>
                                 <?php
                    $loop = new WP_Query(array(
                        'post_type' => 'Patch-border',
                            'category_name' => 'Merrow',
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
                  
                                
                    <?php endwhile;    endif;?>
                </div>
                <div class="row  product-list">
                  <h6 class="text-bold text-uppercase mb-10">Hot Cut Border</h6>
                                 <?php
                    $loop = new WP_Query(array(
                        'post_type' => 'Patch-border',
                            'category_name' => 'Hot Cut',
                    ));
                    if ($loop->have_posts()) :
                            while ($loop->have_posts()) : $loop->the_post();
                    ?>
                    <div class="col-md-3 col-sm-6">
                                    <article class="product-card">
                                        <div class="product-image two-sided">
                        <?php
                        $url = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()), 'thumbnail' );
                        ?>
                        <img src="<?php echo $url; ?>" alt="">
                        <img src="<?php echo $url; ?>" alt="">
                        <div class="image-overlay" data-lightbox="gallery">
                                            <a href="<?php echo $url; ?>" data-lightbox="gallery-item"><i class="fa fa-search-plus"></i></a>
                                        </div>

                                        </div>
                                        </article>
                    </div>
                  
                                
                    <?php endwhile;    endif;?>
                </div>
            </div>
        
<?php
get_footer()
?>
