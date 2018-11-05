<?php
/* Template Name: GarmentspvcPatchesBlog */
get_header();
?> 
        <section id="breadcrumbs" class="breadcrumbs">

            <div class="container clearfix">
                <h1>Blog Page</h1>
                <span>Some news from us</span>
                <ol class="breadcrumb">
                    <li><a href="<?= site_url(); ?>">Home</a></li>
                    <li class="active"><?= get_the_title(); ?></li>
                </ol>
            </div>

        </section><!-- #breadcrumbs end -->
<section id="content">
<?php $post = get_page($id); ?>
            <div class="content-wrap">

                <div class="container clearfix">

                    <div class="row">

						            <div class="col-sm-2"></div>
                        <!-- BLOG POST -->
                        <div class="col-sm-8 blog-post">


                            <article class="post-entry">

                                <div class="entry-title">
                                    <h2 class="text-uppercase"><?= get_the_title(); ?></h2>
                                </div>

                                <ul class="entry-meta clearfix">
                                    <li><i class="fa fa-calendar-o"></i> <?= get_the_date(); ?> </li>
                                </ul>

                                <div class="entry-image">
								<?php 
								$url = wp_get_attachment_url( get_post_thumbnail_id(get_the_ID()));
								?>
                                    <img src="<?= $url ?>" class="img-responsive" alt="Image">
                                </div>

                                <div class="entry-content">
									<?php echo $post->post_content;  ?>

                                </div>

                                

                                <div class="entry-share">
                                    <span>Share this post at:</span>
                                    <div class="pull-right">
                                        <a class="social-icon social-icon-light social-facebook" href="#">
                                             <div class="front">
                                                <i class="fa fa-facebook"></i>
                                             </div>
                                             <div class="back">
                                                <i class="fa fa-facebook"></i>
                                             </div>
                                        </a>

                                        <a class="social-icon social-icon-light social-twitter" href="#">
                                             <div class="front">
                                                <i class="fa fa-twitter"></i>
                                             </div>
                                             <div class="back">
                                                <i class="fa fa-twitter"></i>
                                             </div>
                                        </a>

                                        <a class="social-icon social-icon-light social-googleplus" href="#">
                                             <div class="front">
                                                <i class="fa fa-google-plus"></i>
                                             </div>
                                             <div class="back">
                                                <i class="fa fa-google-plus"></i>
                                             </div>
                                        </a>

                                        <a class="social-icon social-icon-light social-pinterest" href="#">
                                             <div class="front">
                                                <i class="fa fa-pinterest"></i>
                                             </div>
                                             <div class="back">
                                                <i class="fa fa-pinterest"></i>
                                             </div>
                                        </a>
                                    </div>
                                </div>





                            </article>



                        </div>
                        <!-- END BLOG POSTS -->
						<div class="col-sm-2"></div>
                       

                    </div><!-- blog -->


                </div>











	





<?php
get_footer()
?>
