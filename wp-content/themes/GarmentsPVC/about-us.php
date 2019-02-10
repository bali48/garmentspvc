<?php
/* Template Name: AboutUS Template */
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







        <!-- ============ Features ============ -->
        <div class="container clearfix">



            <div class="heading-block center less-width center-block mb-60">
                <h1 class="text-uppercase">We are here, join us!</h1>
                <p class="lead">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete</p>
            </div>


            <div class="row">

                <div class="col-sm-4">
                    <div class="feature-box no-icon" data-animate="fadeIn">
                        <div class="heading">
                            <h3 class="underline">About <span class="text-theme">Us</span></h3>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="feature-box no-icon" data-animate="fadeIn" data-delay="200">
                        <div class="heading">
                            <h3 class="underline">Our <span class="text-theme">Mission</span></h3>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="feature-box no-icon" data-animate="fadeIn" data-delay="400">
                        <div class="heading">
                            <h3 class="underline">What we <span class="text-theme">do</span></h3>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                </div>



            </div>






        </div><!-- /features -->






        <!-- ============ counter section ============ -->
        <div class="section bg-light mb-0">
            <div class="container clearfix">


                <div class="row">

                    <div class="col-md-3 col-sm-6 text-center" data-animate="bounceIn" data-delay="800">
                        <i class="fa fa-clock-o fa-5x"></i>
                        <div class="counter"><span data-from="100" data-to="2600" data-refresh-interval="50" data-speed="2000"></span>+</div>
                        <h5>Coding Hours</h5>
                    </div>

                    <div class="col-md-3 col-sm-6 text-center" data-animate="bounceIn" data-delay="1000">
                        <i class="fa fa-code fa-5x"></i>
                        <div class="counter"><span data-from="100" data-to="465" data-refresh-interval="50" data-speed="3200"></span>K+</div>
                        <h5>Lines of Code</h5>
                    </div>

                    <div class="col-md-3 col-sm-6 text-center" data-animate="bounceIn" data-delay="1200">
                        <i class="fa fa-folder-open fa-5x"></i>
                        <div class="counter"><span data-from="100" data-to="340" data-refresh-interval="50" data-speed="3600"></span>*</div>
                        <h5>Templates Done</h5>
                    </div>

                    <div class="col-md-3 col-sm-6 text-center" data-animate="bounceIn" data-delay="1400">
                        <i class="fa fa-users fa-5x"></i>
                        <div class="counter"><span data-from="100" data-to="1950" data-refresh-interval="50" data-speed="2600"></span>+</div>
                        <h5>Satisfied Customers</h5>
                    </div>

                </div>


            </div>
        </div><!-- /counter section -->





        <!-- ============ skilled section ============ -->
        <div class="section m-0">
            <div class="container clearfix">


                <div class="row">

                    <div class="col-sm-4">

                        <div class="heading-block mb-20">
                            <h4 class="mb-0">We are skilled at</h4>
                            <p class="text-default lt">Subheading can come here</p>
                        </div>

                        <h5>Responsivity</h5>

                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum varius nulla mauris, vitae adipiscing diam ultrices nec. Aliquam sed massa eu nibh commodo. </p>

                        <p>
                            Ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum varius nulla mauris, vitae adipiscing diam ultrices nec. Aliquam sed massa eu nibh commodo.
                        </p>

                        <a href="#" class="myBtn myBtn-dark myBtn-rounded myBtn-border m-0 mt-20">Learn More</a>

                    </div>

                    <div class="col-sm-8">

                        <div class="progress-list">

                            <div class="label">Html</div>

                            <div class="progress progress-xs" data-percent="75">
                                <div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">

                                    <div class="progress-percent">
                                        <div class="counter counter-instant"><span data-from="0" data-to="75" data-refresh-interval="30" data-speed="1100"></span>%</div>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="progress-list">

                            <div class="label">Css</div>

                            <div class="progress progress-xs" data-percent="90">
                                <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">

                                    <div class="progress-percent">
                                        <div class="counter counter-instant"><span data-from="0" data-to="90" data-refresh-interval="30" data-speed="1100"></span>%</div>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="progress-list">

                            <div class="label">jQuery</div>

                            <div class="progress progress-xs" data-percent="60">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">

                                    <div class="progress-percent">
                                        <div class="counter counter-instant"><span data-from="0" data-to="60" data-refresh-interval="30" data-speed="1100"></span>%</div>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="progress-list">

                            <div class="label">AngularJS</div>

                            <div class="progress progress-xs" data-percent="45">
                                <div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100">

                                    <div class="progress-percent">
                                        <div class="counter counter-instant"><span data-from="0" data-to="45" data-refresh-interval="30" data-speed="1100"></span>%</div>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="progress-list">

                            <div class="label">Webdesign</div>

                            <div class="progress progress-xs" data-percent="80">
                                <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">

                                    <div class="progress-percent">
                                        <div class="counter counter-instant"><span data-from="0" data-to="80" data-refresh-interval="30" data-speed="1100"></span>%</div>
                                    </div>

                                </div>
                            </div>

                        </div>


                    </div>


                </div>

                <div class="line mb-0"></div>

            </div>


        </div><!-- /skilled section -->





        <!-- ============ team section ============ -->
        <div class="section m-0 p-0">
            <div class="container clearfix">

                <div class="heading-block mb-20">
                    <h3 class="mb-0">Our Team</h3>
                </div>

                <div class="row">


                    <div class="col-md-3 col-sm-6">

                        <img src="assets/images/avatars/random-avatar1.jpg" alt="" class="img-responsive mb-20">

                        <div class="heading-block color-divider mb-20">
                            <h4 class="mb-0 text-uppercase">John Douey</h4>
                            <span class="text-italic text-theme">CEO & Co-Founder</span>
                        </div>

                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum varius nulla mauris.
                        </p>

                        <div class="social-connect mt-40">
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
                                    <i class="fa social-icon-light fa-google-plus"></i>
                                </div>
                            </a>
                        </div>

                        <a href="" class="plus"></a>

                    </div>
                    <div class="col-md-3 col-sm-6">

                        <img src="assets/images/avatars/random-avatar2.jpg" alt="" class="img-responsive mb-20">

                        <div class="heading-block color-divider mb-20">
                            <h4 class="mb-0 text-uppercase">John Katolda</h4>
                            <span class="text-italic text-theme">Assistant</span>
                        </div>

                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum varius nulla mauris.
                        </p>

                        <div class="social-connect mt-40">
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
                                    <i class="fa social-icon-light fa-google-plus"></i>
                                </div>
                            </a>
                        </div>

                        <a href="" class="plus"></a>

                    </div>
                    <div class="col-md-3 col-sm-6">

                        <img src="assets/images/avatars/random-avatar3.jpg" alt="" class="img-responsive mb-20">

                        <div class="heading-block color-divider mb-20">
                            <h4 class="mb-0 text-uppercase">Frank Sinatrich</h4>
                            <span class="text-italic text-theme">Chef Designer</span>
                        </div>

                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum varius nulla mauris.
                        </p>

                        <div class="social-connect mt-40">
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
                                    <i class="fa social-icon-light fa-google-plus"></i>
                                </div>
                            </a>
                        </div>

                        <a href="" class="plus"></a>

                    </div>
                    <div class="col-md-3 col-sm-6">

                        <img src="assets/images/avatars/random-avatar4.jpg" alt="" class="img-responsive mb-20">

                        <div class="heading-block color-divider mb-20">
                            <h4 class="mb-0 text-uppercase">Richard Cypher</h4>
                            <span class="text-italic text-theme">Searcher</span>
                        </div>

                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum varius nulla mauris.
                        </p>

                        <div class="social-connect mt-40">
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
                                    <i class="fa social-icon-light fa-google-plus"></i>
                                </div>
                            </a>
                        </div>

                        <a href="" class="plus"></a>

                    </div>


                </div>


            </div>


        </div><!-- /team section -->






        


<?php
get_footer()
?>
