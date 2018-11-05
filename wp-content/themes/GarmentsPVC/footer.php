<?php

?>
    <!-- ============ features section ============ -->
    <div class="section bg-lightred mb-0 section-slim" id="features">
        <div class="container clearfix">

            <!-- row -->
            <div class="row">

                <!-- col -->
                <div class="col-md-4">
                    <div class="media">
                        <div class="media-left">
                            <i class="fa fa-phone icon-circle"></i>
                        </div>
                        <div class="media-body">
                            <h2 class="condensed text-uppercase mb-0">+92 300 272 4354</h2>
                            <span class="text-uppercase">Customer support 24/7</span>
                        </div>
                    </div>
                </div>
                <!-- /col -->

                <!-- col -->
                <div class="col-md-4">
                    <div class="media">
                        <div class="media-left">
                            <i class="fa fa-truck icon-circle"></i>
                        </div>
                        <div class="media-body">
                            <h2 class="condensed text-uppercase mb-0">fast delivery</h2>
                            <span class="text-uppercase">worldwide & free</span>
                        </div>
                    </div>
                </div>
                <!-- /col -->

                <!-- col -->
                <div class="col-md-4">
                    <div class="media">
                        <div class="media-left">
                            <i class="fa fa-trophy icon-circle"></i>
                        </div>
                        <div class="media-body">
                            <h2 class="condensed text-uppercase mb-0">over 125k+</h2>
                            <span class="text-uppercase">satisfied customers</span>
                        </div>
                    </div>
                </div>
                <!-- /col -->

            </div>
            <!-- /row -->

        </div>
    </div><!-- /features section -->



    <!-- ============ clients carousel section ============ -->
    <div id="clients-carousel" class="section bg-white owl-carousel carousel-full section-slim m-0">

        <div class="carousel-item"><a href="javascript:void(0)" class="desaturate"><img src="<?php echo get_stylesheet_directory_uri() ?> /assets/images/clients/themeforest-light-background.png" class="img-responsive" alt="Clients"></a></div>
        <div class="carousel-item"><a href="javascript:void(0)" class="desaturate"><img src="<?php echo get_stylesheet_directory_uri() ?> /assets/images/clients/activeden-light-background.png" class="img-responsive"  alt="Clients"></a></div>
        <div class="carousel-item"><a href="javascript:void(0)" class="desaturate"><img src="<?php echo get_stylesheet_directory_uri() ?> /assets/images/clients/photodune-light-background.png" class="img-responsive"  alt="Clients"></a></div>
        <div class="carousel-item"><a href="javascript:void(0)" class="desaturate"><img src="<?php echo get_stylesheet_directory_uri() ?> /assets/images/clients/graphicriver-light-background.png" class="img-responsive"  alt="Clients"></a></div>
        <div class="carousel-item"><a href="javascript:void(0)" class="desaturate"><img src="<?php echo get_stylesheet_directory_uri() ?> /assets/images/clients/codecanyon-light-background.png" class="img-responsive"  alt="Clients"></a></div>
        <div class="carousel-item"><a href="javascript:void(0)" class="desaturate"><img src="<?php echo get_stylesheet_directory_uri() ?> /assets/images/clients/audiojungle-light-background.png" class="img-responsive"  alt="Clients"></a></div>
        <div class="carousel-item"><a href="javascript:void(0)" class="desaturate"><img src="<?php echo get_stylesheet_directory_uri() ?> /assets/images/clients/3docean-light-background.png" class="img-responsive"  alt="Clients"></a></div>
        <div class="carousel-item"><a href="javascript:void(0)" class="desaturate"><img src="<?php echo get_stylesheet_directory_uri() ?> /assets/images/clients/videohive-light-background.png" class="img-responsive"  alt="Clients"></a></div>

    </div><!-- /clients carousel section -->


    <script type="text/javascript">

        $(document).ready(function () {

            var cCarousel = $("#clients-carousel");

            cCarousel.owlCarousel({
                loop: true,
                nav: false,
                autoplay: true,
                autoplayTimeout: 3000,
                autoplayHoverPause: true,
                pagination: false,
                margin: 30,
                responsive: {
                    0: {items: 1},
                    600: {items: 2},
                    1000: {items: 4},
                    1200: {items: 5},
                    1400: {items: 6}
                }
            });


        }); //ready

    </script>
    </div>
</section>
 <footer id="footer">

            <div class="footer-main">
                <div class="container">
                    <div class="row">

                        <div class="col-md-4">

                            <div class="widget widget-about">
                                <h4><strong>About</strong> Us</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>

                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                            </div>

                        </div>

                        <div class="col-md-3 col-md-offset-1">

                            <div class="widget widget-menu mb-0">

                                <h4><strong>Informations</strong></h4>
                                <ul class="list-unstyled">
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Delivery Informations</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Payment Informations</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> FAQ</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Contacts</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Career</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Order Tracking</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Customer Service</a></li>
                                </ul>

                            </div>

                        </div>

                        <div class="col-md-4">
                            <div class="widget widget-contact mt-20-md">
                                <h4><strong>Contact</strong> Us</h4>
                                <address>
                                    <strong>Headquarters</strong><br>
                                    Vajnorska 127, Lorem Tower<br>
                                    Bratislava, SK<br/><br/>
                                    <strong>Phone:</strong> +421 948 964 956<br>
                                    <strong>Fax:</strong> +421 02 66 21 54<br>
                                    <strong>Email:</strong> <a href="mailto:minoral@tattek.com">minoral@tattek.com</a><br>
                                    <strong>Skype:</strong> <a href="#">tattek</a>
                                </address>
                            </div>
                        </div>

                    </div>

                    <div class="line"></div>

                    <!-- row -->
                    <div class="row">

                        <!-- col -->
                        <div class="col-md-6">
                            <div class="widget mb-0">
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">Newsletter</label>
                                        <div class="col-sm-9">
                                            <div class="input-group">
                                                <input type="email" class="form-control no-border" placeholder="Enter your Email" required>
                                                <span class="input-group-btn">
                                                    <button class="myBtn" type="submit">Subscribe</button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- /col -->

                        <!-- col -->
                        <div class="col-md-6 text-right text-center-md">

                            <a class="social-icon social-facebook" href="#">
                                 <div class="front">
                                    <i class="fa fa-facebook"></i>
                                 </div>
                                 <div class="back">
                                    <i class="fa fa-facebook"></i>
                                 </div>
                            </a>

                            <a class="social-icon social-twitter" href="#">
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

                            <a class="social-icon social-flickr" href="#">
                                 <div class="front">
                                    <i class="fa fa-flickr"></i>
                                 </div>
                                 <div class="back">
                                    <i class="fa fa-flickr"></i>
                                 </div>
                            </a>

                            <a class="social-icon social-linkedin" href="#">
                                 <div class="front">
                                    <i class="fa fa-linkedin"></i>
                                 </div>
                                 <div class="back">
                                    <i class="fa fa-linkedin"></i>
                                 </div>
                            </a>

                            <a class="social-icon social-dribbble" href="#">
                                 <div class="front">
                                    <i class="fa fa-dribbble"></i>
                                 </div>
                                 <div class="back">
                                    <i class="fa fa-dribbble"></i>
                                 </div>
                            </a>

                        </div>
                        <!-- /col -->

                    </div>
                    <!-- /row -->

                </div>
            </div>

            <div class="footer-bottom">
                <div class="container">
                    <div class="row">

                        <div class="col-md-4 copyright">
                            <p class="mb-0">&copy; Copyright 2015 by <a href="#">Minovate</a>. All Rights Reserved.</p>
                            <p><a href="#">Terms of use</a> / <a href="#">Privacy Policy</a></p>
                        </div>

                        <div class="col-md-8 text-right text-center-md">

                            <ul class="list-unstyled list-inline">
                                <li class="payment-method"><img src="<?php echo get_template_directory_uri() ?>/assets/images/icons/payments/1.png" alt=""></li>
                                <li class="payment-method"><img src="<?php echo get_template_directory_uri() ?>/assets/images/icons/payments/2.png" alt=""></li>
                                <li class="payment-method"><img src="<?php echo get_template_directory_uri() ?>/assets/images/icons/payments/3.png" alt=""></li>
                                <li class="payment-method"><img src="<?php echo get_template_directory_uri() ?>/assets/images/icons/payments/4.png" alt=""></li>
                                <li class="payment-method"><img src="<?php echo get_template_directory_uri() ?>/assets/images/icons/payments/5.png" alt=""></li>
                            </ul>

                        </div>

                    </div>
                </div>
            </div>

        </footer><!-- #footer end -->

    </div><!-- #wrapper end -->











    <!-- ============================================
    =================== Go to Top ===================
    ============================================= -->

    <div id="gotoTop" class="fa fa-angle-up hidden-md"></div>





<?php wp_footer(); ?>
</body>
</html>
