<?php
/* Template Name: GarmentspvcContact-us */
get_header();
?> 
 <!-- ============================================
        =================== Breadcrumbs =================
        ============================================= -->
        <section id="breadcrumbs" class="breadcrumbs">

            <div class="container clearfix">
                <h1>Search Results</h1>
                <span>Stay in Touch with Us!</span>
                <ol class="breadcrumb">
                    <li><a href="<?= site_url(); ?>">Home</a></li>
                    <li class="active">Contact Us</li>
                </ol>
            </div>

        </section><!-- #breadcrumbs end -->
         <section id="content">

            <!-- ============ Gmap section ============ -->
            <div class="section gMap m-0" id="google-map">


                

                <script type="text/javascript">

                    $('#google-map').gMap({
                        maptype: 'ROADMAP',
                        latitude: 48.1512724,
                        longitude: 17.1215819,
                        zoom: 14,
                        icon: {
                            image: "http://www.google.com/mapfiles/marker.png",
                            shadow: "http://www.google.com/mapfiles/shadow50.png",
                            iconsize: [20, 34],
                            shadowsize: [37, 34],
                            iconanchor: [9, 34],
                            shadowanchor: [19, 34]
                        },
                        doubleclickzoom: false,
                        controls: {
                            panControl: true,
                            zoomControl: true,
                            mapTypeControl: true,
                            scaleControl: false,
                            streetViewControl: false,
                            overviewMapControl: false
                        }

                    });

                    $('#google-map').gMap('addMarker', { latitude: 48.1512724, longitude: 17.1215819, content: 'Garments AND PVC Patches ' });

                </script><!-- Google Map End -->


            </div><!-- /Gmap section -->
            <div class="content-wrap">

                <!-- ============ Contact section ============ -->
                <div class="container clearfix">
                     <div class="content-wrap">

                <!-- ============ Contact section ============ -->
                <div class="container clearfix">

                    <div class="row">

                        <div class="col-md-8">

                            <div class="well b-0">

                                <div class="heading-block mb-60">
                                    <h2 class="text-uppercase"><span class="text-theme">Give us</span> a line</h2>
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo</p>
                                </div>

                         <?php echo do_shortcode('[contact-form-7 id="91" title="Contact-us"]') ?>

                            </div>

            

                        </div>

                        <div class="col-md-4">

                            <div>
                                <h3 class="text-uppercase">Headquarters</h3>

                                <address>
                                    <strong class="text-theme">Minovate Inc.</strong><br>
                                    Vajnorska 127, Lorem Tower<br>
                                    Bratislava, SK<br>

                                    <strong class="block mt-20">Phone:</strong>
                                    CEO: +421 02 66 55 12<br>
                                    Support: +421 02 66 55 13

                                    <strong class="block mt-20">Email:</strong>
                                    <a href="#">ici.kamarel@tattek.sk</a><br>
                                    <a href="#">support@tattek.sk</a>

                                    <div class="social mt-40 mb-60">
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
                                </address>

                                <h3 class="text-uppercase"><span class="text-theme">Business</span> Hours</h3>

                                <address>
                                    <strong>Monday - Friday:</strong> 9:00 - 17:00<br>
                                    <strong>Saturday:</strong> 9:00 - 12:00<br>
                                    <strong>Sunday:</strong> Closed
                                </address>

                            </div>

                        </div>

                    </div>

                </div>
                <!-- ============ /Contact section ============ -->

                     </div>
                </div>




<?php 
get_footer();
?>