<!DOCTYPE html>
<html style="margin-top: 0px !important;">
<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
   <meta charset="UTF-8" /> 

<?php wp_head(); ?>

    <title>Garments & PVC</title>

    <style>
        body{
    background-color: #ffff
}
    </style>
</head>

<body>








    <!-- ============================================
    ================= Page Wrapper ==================
    ============================================= -->

    <div id="wrapper" class="clearfix animsition">







        <!-- ================================================
        ================= Search Container ==================
        ================================================= -->

        <div id="search-container" class="search-box-wrapper">
            <div class="container">
                <i class="fa fa-search"></i>
                <div class="search-box">
                    <form method="get" action="<?php echo esc_url(home_url('/')); ?>" class="search-form" role="search" >
                        <input type="search" name="s" value="<?php echo get_search_query(); ?>" title="Press Enter to submit your search" placeholder="Search" class="search-field">
                        <input type="submit" value="Search" class="search-submit">
                    </form>
                </div>
            </div>
        </div><!--/ #search-container -->








        <!-- ==================================================
        ================= Additional Navbar ===================
        =================================================== -->

        <nav id="add-navbar">

            <div class="container clearfix">
                <ul class="divided">
                    <li><i class="fa fa-phone mr-5"></i> <span>+92 300 272 43 54</span></li>
                    <li><i class="fa fa-envelope mr-5"></i> <span>m.sohail294@hotmail.com</span></li>
                </ul>

            </div>

        </nav><!-- #add-navbar end -->








        <!-- ============================================
        ==================== Header =====================
        ============================================= -->

        <header id="header" class="dark"><!-- class .sticky-mobile makes header sticky on small devices -->

            <div id="header-wrap">

                <div class="container clearfix">

                    <div id="main-navbar-toggle"><i class="fa fa-bars"></i></div>







                    <!-- ============================================
                    =================== Branding ====================
                    ============================================= -->

                    <div id="branding">
                        <a href="<?php echo site_url() ?>" class="brand-normal"><img src="<?php echo get_template_directory_uri() ?>/assets/images/logo-dark.png" alt="Minovate"></a>
                        <a href="<?php echo site_url() ?>" class="brand-retina"><img src="<?php echo get_template_directory_uri() ?>/assets/images/logo@2x-dark.png" alt="Minovate"></a>
                    </div><!-- #branding end -->

                        <?php 
                        $category_75 = get_cat_ID('75embroidery');
                        $category_100 = get_cat_ID('100embroidery');
                        $category_50 = get_cat_ID('50embroidery');
                        $category_PVC = get_cat_ID('PVC');
                        $category_Woven = get_cat_ID('Woven');
                        // Get the URL of this category
                        $category_link_75 = get_category_link($category_75);
                        $category_link_100 = get_category_link($category_100);
                        $category_link_PVC = get_category_link($category_PVC);
                        $category_link_50 = get_category_link($category_50);
                        $category_link_Woven = get_category_link($category_Woven);
//                        echo $category_link_100.' -> '.esc_url( $category_100 );
//                        exit;
                        ?>








                    <!-- ============================================
                    ================= Main Navbar ===================
                    ============================================= -->

                    <nav id="main-navbar">

                        <ul>
                            <li class="active"><a href="<?= get_home_url()?>">Home</a></li>
                            <!--<li><a href="<?= get_home_url()?>/MenGarments">Men</a></li>-->
                            <!--<li><a href="<?= get_home_url()?>/WomenGarments">Women</a></li>-->
                            
                            <li><a href="<?= get_home_url()?>/Patches">Gallery</a></li>
                            <li><a href="<?= get_home_url()?>/contact-us">contact us</a></li>
                            <li><a href="#">Patches</a>
                                <ul>
<!--                                    <li><a href="#">Shoes</a>
                                        <ul>
                                            <li><a href="product-list.html">Boots</a></li>
                                            <li><a href="product-list.html">Sandals</a></li>
                                            <li><a href="product-list.html">Flats</a></li>
                                            <li><a href="product-list.html">Wedges</a></li>
                                        </ul>
                                    </li>-->
                                    <li><a href="<?php echo esc_url( $category_link_100 ); ?>">100embroidery</a></li>
                                    <li><a href="<?php echo esc_url( $category_link_75 ); ?>">75embroidery</a></li>
                                    <li><a href="<?php echo esc_url( $category_link_50 ); ?>">50embroidery</a></li>
                                    <li><a href="<?php echo esc_url( $category_link_PVC ); ?>">PVC</a></li>
                                    <li><a href="<?php echo esc_url( $category_link_Woven ); ?>">Woven</a></li>
                                </ul>
                            </li>
<!--                            <li class="mega-menu"><a href="#">Man</a>
                                <div class="mega-menu-content col-4">
                                    <ul>
                                        <li class="mega-menu-title"><a href="#">Clothing</a>
                                            <ul>
                                                <li><a href="product-list.html">T-Shirts & Vests</a></li>
                                                <li><a href="product-list.html">Jumpers & Cardigans</a></li>
                                                <li><a href="product-list.html">Sportswear</a></li>
                                                <li><a href="product-list.html">Hoodies & Sweats</a></li>
                                                <li><a href="product-list.html">Coats & Jaskets</a></li>
                                                <li><a href="product-list.html">Shirts</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul>
                                        <li class="mega-menu-title"><a href="product-list.html">Shoes</a>
                                            <ul>
                                                <li><a href="product-list.html">Boots</a></li>
                                                <li><a href="product-list.html">Trainers</a></li>
                                                <li><a href="product-list.html">High Tops</a></li>
                                                <li><a href="product-list.html">Plimsolls</a></li>
                                                <li><a href="product-list.html">Desert Boots</a></li>
                                                <li><a href="product-list.html">Boat Shoes</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul>
                                        <li class="mega-menu-title"><a href="product-list.html">Accessories</a>
                                            <ul>
                                                <li><a href="product-list.html">Beanie</a></li>
                                                <li><a href="product-list.html">Belts</a></li>
                                                <li><a href="product-list.html">Boxers</a></li>
                                                <li><a href="product-list.html">Bracelets</a></li>
                                                <li><a href="product-list.html">Sunglasses</a></li>
                                                <li><a href="product-list.html">Gloves</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul>
                                        <li class="mega-menu-title"><a href="#">Clearance</a>
                                            <ul>
                                                <li><a href="product-list.html">Coats & Jackets</a></li>
                                                <li><a href="product-list.html">T- Shirts & Vests</a></li>
                                                <li><a href="product-list.html">Shorts & Swimwear</a></li>
                                                <li><a href="product-list.html">Jumpers & Cardigans</a></li>
                                                <li><a href="product-list.html">Shirts</a></li>
                                                <li><a href="product-list.html">Jeans</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </li>-->
                            <!--<li><a href="product-list.html">Kids</a></li>-->
<!--                            <li class="mega-menu"><a href="#">Hot</a>
                                <div class="row mega-menu-content product-list">
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <article class="product-card">
                                            <div class="product-image">
                                                <a href="product.detail.html"><img src="<?php echo get_template_directory_uri() ?>/assets/images/items/woman/1.jpg" alt=""></a>
                                            </div>
                                            <div class="product-detail">
                                                <h4><a href="product-detail.html">White T-Shirt</a></h4>
                                                <span class="price">$12.99</span>
                                                <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <article class="product-card">
                                            <div class="product-image">
                                                <a href="product.detail.html"><img src="<?php echo get_template_directory_uri() ?>/assets/images/items/men/1.jpg" alt=""></a>
                                            </div>
                                            <div class="product-detail">
                                                <h4><a href="product-detail.html">Black T-Shirt</a></h4>
                                                <span class="price">$13.99</span>
                                                <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <article class="product-card">
                                            <div class="product-image">
                                                <a href="product.detail.html"><img src="<?php echo get_template_directory_uri() ?>/assets/images/items/woman/3.jpg" alt=""></a>
                                            </div>
                                            <div class="product-detail">
                                                <h4><a href="product-detail.html">Red T-Shirt</a></h4>
                                                <span class="price">$11.99</span>
                                                <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-6">
                                        <article class="product-card">
                                            <div class="product-image">
                                                <a href="product.detail.html"><img src="<?php echo get_template_directory_uri() ?>/assets/images/items/woman/4.jpg" alt=""></a>
                                            </div>
                                            <div class="product-detail">
                                                <h4><a href="product-detail.html">Blue T-Shirt</a></h4>
                                                <span class="price">$12.99</span>
                                                <button class="add-to-cart"><i class="fa fa-angle-right"></i> Add to cart</button>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                            </li>-->
<!--                            <li><a href="#">Pages</a>
                                <ul>
                                    <li><a href="product-list.html">Product List</a></li>
                                    <li><a href="product-detail.html">Product Detail</a></li>
                                    <li><a href="shopping-cart.html">Shopping Cart</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                    <li><a href="account.html">My Account</a></li>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                    <li><a href="faq.html">FAQ</a></li>
                                    <li><a href="search-result.html">Search Result</a></li>
                                    <li><a href="contact.html">Contact Us</a></li>
                                </ul>
                            </li>-->
                        </ul>







                        <!-- ==============================================
                        ================= Shopping Cart ===================
                        =============================================== -->
<!--                        <div id="shopping-cart">
                            <a href="#" id="shopping-cart-trigger"><i class="fa fa-shopping-cart"></i><span class="badge">2</span></a>
                            <div class="cart-content">
                                <div class="cart-title">
                                    <h4>Shopping Cart</h4>
                                </div>
                                <ul class="cart-items">
                                    <li class="media">
                                        <div class="media-left">
                                            <a href="product-detail.html">
                                                <img class="media-object thumb-w" alt="" src="<?php echo get_template_directory_uri() ?>/assets/images/items/woman/1_thumb.jpg">
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <p class="media-heading"><a href="product-detail.html">White T-Shirt</a> <span class="quantity">x 2</span></p>
                                            <p class="price">$14.99</p>
                                        </div>
                                    </li>
                                    <li class="media">
                                        <div class="media-left">
                                            <a href="product-detail.html">
                                                <img class="media-object thumb-w" alt="" src="<?php echo get_template_directory_uri() ?>/assets/images/items/woman/2_thumb.jpg">
                                            </a>
                                        </div>
                                        <div class="media-body">
                                            <p class="media-heading"><a href="product-detail.html">Red T-Shirt</a> <span class="quantity">x 1</span></p>
                                            <p class="price">$12.99</p>
                                        </div>
                                    </li>
                                </ul>
                                <div class="cart-actions clearfix">
                                    <span class="price pull-left">$69.22</span>
                                    <a href="shopping-cart.html" class="myBtn myBtn-3d myBtn-sm pull-right">View Cart</a>
                                </div>
                            </div>
                        </div> #shopping-cart end 



-->




                        <!-- ==============================================
                        ================= Search Toggle ===================
                        =============================================== -->

                        <div id="search-toggle"> <span class="divider">|</span> <a href="#"><i class="fa fa-search"></i></a> </div>







                    </nav><!-- #main-navbar end -->

                </div>

            </div>

        </header><!-- #header end -->

