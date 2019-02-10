<?php
require_once( get_template_directory() .'/functions/better-comments.php' );
flush_rewrite_rules( false );
//style and scripts
add_action( 'wp_enqueue_scripts', 'wpse_my_style' );
function wpse_my_style(){
  //wp_enqueue_style( 'my-style', get_stylesheet_directory_uri() . 'path/to/your/css' );
  wp_enqueue_style( 'google-font', 'http://fonts.googleapis.com/css?family=Lato:300,400,400italic,700,700italic|Raleway:300,400,500,600,700|Open+Sans+Condensed:700' );
  wp_enqueue_style( 'bootstrapcss', get_stylesheet_directory_uri() . '/assets/css/bootstrap.css' );
  wp_enqueue_style( 'font_owsome', get_stylesheet_directory_uri() . '/assets/css/font-awesome.min.css' );
  wp_enqueue_style( 'animatecss', get_stylesheet_directory_uri() . '/assets/css/animate.css' );
  wp_enqueue_style( 'flexslidercss', get_stylesheet_directory_uri() . '/assets/js/vendor/flexslider/flexslider.css' );
  wp_enqueue_style( 'magnificcss', get_stylesheet_directory_uri() . '/assets/js/vendor/magnific/magnific-popup.css' );
  wp_enqueue_style( 'owlcss', get_stylesheet_directory_uri() . '/assets/js/vendor/owl/assets/owl.carousel.css' );
  wp_enqueue_style( 'bootstrapselectcss', get_stylesheet_directory_uri() . '/assets/js/vendor/bootstrap-select/css/bootstrap-select.min.css' );
  wp_enqueue_style( 'rangeslidercss', get_stylesheet_directory_uri() . '/assets/js/vendor/range-slider/css/styles.css' );
  wp_enqueue_style( 'settingscss', get_stylesheet_directory_uri() . '/assets/js/vendor/rs-plugin/css/settings.css' );
  wp_enqueue_style( 'animsitioncss', get_stylesheet_directory_uri() . '/assets/js/vendor/animsition/css/animsition.min.css' );
  wp_enqueue_style( 'stylecssmino', get_stylesheet_directory_uri() . '/assets/css/style.css' );
  wp_enqueue_style( 'touchspincss', get_stylesheet_directory_uri() . '/assets/js/vendor/touchspin/jquery.bootstrap-touchspin.css' );
  wp_enqueue_style( 'starrcss', get_stylesheet_directory_uri() . '/assets/js/vendor/starrr/starrr.css' );
  //wp_enqueue_script( 'script', get_template_directory_uri() . '/js/script.js', array ( 'jquery' ), 1.1, true);
  wp_enqueue_script( 'jqueryjs', get_template_directory_uri() . '/assets/js/vendor/jquery-1.11.2.min.js');
  wp_enqueue_script( 'bootstrapjs', get_template_directory_uri() . '/assets/js/vendor/bootstrap.min.js');
  wp_enqueue_script( 'superfishjs', get_template_directory_uri() . '/assets/js/vendor/superfish/js/superfish.min.js');
  wp_enqueue_script( 'jrespondjs', get_template_directory_uri() . '/assets/js/vendor/jRespond/jRespond.min.js');
  wp_enqueue_script( 'smoothscrolljs', get_template_directory_uri() . '/assets/js/vendor/smoothscroll/SmoothScroll.js');
  wp_enqueue_script( 'appearjs', get_template_directory_uri() . '/assets/js/vendor/appear/jquery.appear.js');
  wp_enqueue_script( 'stellarjs', get_template_directory_uri() . '/assets/js/vendor/stellar/jquery.stellar.min.js');
  wp_enqueue_script( 'flexsliderjs', get_template_directory_uri() . '/assets/js/vendor/flexslider/jquery.flexslider-min.js');
  wp_enqueue_script( 'magnificjs', get_template_directory_uri() . '/assets/js/vendor/magnific/jquery.magnific-popup.min.js');
  wp_enqueue_script( 'owljs', get_template_directory_uri() . '/assets/js/vendor/owl/owl.carousel.min.js');
  wp_enqueue_script( 'jflickfeedjs', get_template_directory_uri() . '/assets/js/vendor/jflickrfeed/jflickrfeed.min.js');
  wp_enqueue_script( 'tweetjs', get_template_directory_uri() . '/assets/js/vendor/tweet-js/jquery.tweet.min.js');
  wp_enqueue_script( 'counttojs', get_template_directory_uri() . '/assets/js/vendor/countTo/jquery.countTo.js');
  wp_enqueue_script( 'bootstrapselectjs', get_template_directory_uri() . '/assets/js/vendor/bootstrap-select/js/bootstrap-select.min.js');
  wp_enqueue_script( 'rangesliderjs', get_template_directory_uri() . '/assets/js/vendor/range-slider/js/plugin.js');
  wp_enqueue_script( 'themepunchtoolsjs', get_template_directory_uri() . '/assets/js/vendor/rs-plugin/js/jquery.themepunch.tools.min.js');
  wp_enqueue_script( 'themepunchjs', get_template_directory_uri() . '/assets/js/vendor/rs-plugin/js/jquery.themepunch.revolution.min.js');
  wp_enqueue_script( 'animsitionjs', get_template_directory_uri() . '/assets/js/vendor/animsition/js/jquery.animsition.min.js');
  wp_enqueue_script( 'customeglobaljs', get_template_directory_uri() . '/assets/js/global.js');
  wp_enqueue_script('touchspinjs',get_template_directory_uri() . '/assets/js/vendor/touchspin/jquery.bootstrap-touchspin.js');
  wp_enqueue_script('starrjs', get_template_directory_uri() .'/assets/js/vendor/starrr/starrr.min.js');
  wp_enqueue_script('elevatezoomjs', get_template_directory_uri() .'/assets/js/vendor/elevatezoom/jquery.elevateZoom-3.0.8.min.js');
  wp_enqueue_script('countriesjs', get_template_directory_uri() .'/assets/js/countries.js');
    
} 
add_action('widgets_init', 'sidebar_widgets_init');

function sidebar_widgets_init() {
    register_sidebar(array(
        'name' => __('Left Sidebar', 'twentythirteen'),
        'id' => 'left-sidebar',
        'description' => __('Appears in the LeftSide of the site.', 'twentythirteen'),
       // 'before_widget' => '<aside id="%1$s" class="widget %2$s">',
       // 'after_widget' => '</aside>',
       // 'before_title' => '<h3 class="widget-title">',
       // 'after_title' => '</h3>',
    ));
}

//featured image support
add_theme_support('post-thumbnails');

// Men Garments Custom Post
add_action( 'init', 'MenGarments' );
function MenGarments() {
   
    register_post_type( 'MenGarments',
    // CPT Options
        array(
            'labels' => array(
                'name' => __( 'MenGarments' ),
                'singular_name' => __( 'MenGarments' )
            ),
            'supports' => array( 'title', 'thumbnail', 'editor','comments','revisions','custom-fields'),
            'public' => true,
            'menu_icon' => 'dashicons-shield-alt',
           // 'taxonomies' => array('category'),
            'has_archive' => true,
            'rewrite' => array('slug' => 'MenGarments'),
        )
    );
}

// Women Garments Custom Post
add_action( 'init', 'WomenGarments' );
function WomenGarments() {
   
    register_post_type( 'WomenGarments',
    // CPT Options
        array(
            'labels' => array(
                'name' => __( 'WomenGarments' ),
                'singular_name' => __( 'WomenGarments' )
            ),
            'supports' => array( 'title', 'thumbnail', 'editor','comments','revisions','custom-fields'),
            'public' => true,
            'menu_icon' => 'dashicons-shield-alt',
           // 'taxonomies' => array('category'),
            'has_archive' => true,
            'rewrite' => array('slug' => 'WomenGarments'),
        )
    );
}

add_action( 'init', 'create_Patches' );
function create_Patches() {
   
    register_post_type( 'Patches',
    // CPT Options
        array(
            'labels' => array(
                'name' => __( 'Patches' ),
                'singular_name' => __( 'Patches' )
            ),
            'supports' => array( 'title', 'thumbnail', 'editor','comments','revisions','custom-fields'),
            'menu_icon' => 'dashicons-awards',
            'public' => true,
            'taxonomies' => array('category'),
            'has_archive' => true,
            'rewrite' => array('slug' => 'Patches'),
        )
    );
}

add_action( 'init', 'create_Patches_sizes' );
function create_Patches_sizes() {
   
    register_post_type( 'Patch-Backing',
    // CPT Options
        array(
            'labels' => array(
                'name' => __( 'Patch-Backing' ),
                'singular_name' => __( 'Patch-Backing' )
            ),
            'supports' => array( 'title', 'thumbnail'),
            'menu_icon' => 'dashicons-awards',
            'public' => true,
//            'taxonomies' => array('category'),
            'has_archive' => true,
            'rewrite' => array('slug' => 'Patch-Backing'),
        )
    );
}
add_action( 'init', 'create_Patches_border' );
function create_Patches_border() {
   
    register_post_type( 'Patch-border',
    // CPT Options
        array(
            'labels' => array(
                'name' => __( 'Patch-border' ),
                'singular_name' => __( 'Patch-border' )
            ),
            'supports' => array( 'title', 'thumbnail'),
            'menu_icon' => 'dashicons-awards',
            'public' => true,
            'taxonomies' => array('category'),
            'has_archive' => true,
            'rewrite' => array('slug' => 'Patch-border'),
        )
    );
}
add_action( 'init', 'create_Patches_thread' );
function create_Patches_thread() {
    register_post_type( 'patch-MetallicThread',
    // CPT Options
        array(
            'labels' => array(
                'name' => __( 'patch-MetallicThread' ),
                'singular_name' => __( 'patch-MetallicThread' )
            ),
            'supports' => array( 'title', 'thumbnail'),
            'menu_icon' => 'dashicons-awards',
            'public' => true,
//            'taxonomies' => array('category'),
            'has_archive' => true,
            'rewrite' => array('slug' => 'patch-MetallicThread'),
        )
    );
}

function remove_category( $string, $type )
{ 
    
        if ( $type != 'single' && $type == 'category' && ( strpos( $string, 'category' ) !== false ) )
        {
            $url_without_category = str_replace( "/category/", "/", $string );
            return trailingslashit( $url_without_category );
        }
    return $string;
}
 
add_filter( 'user_trailingslashit', 'remove_category', 100, 2);

function my_admin_scripts() {
    wp_enqueue_script('jquery');
    wp_enqueue_script('media-upload');
    wp_enqueue_script('thickbox');
     }  
function my_admin_styles()  { 
    wp_enqueue_style('thickbox');
}
function my_enqueue_stuff() {
    if (get_page_template_slug() == 'contact.php') {
        wp_enqueue_script('googlemaplive', "http://maps.google.com/maps/api/js?sensor=false");
        wp_enqueue_script('googlemap', get_template_directory_uri() . '/assets/js/vendor/gMap/jquery.gmap.min.js');
    }
}

add_action( 'wp_enqueue_scripts', 'my_enqueue_stuff' );

    function format_comment($comment, $args, $depth) {
//        echo 'here'; exit();
    $GLOBALS['comment'] = $comment;
?>

           
                <div class="review-item">
                   <div class="review-item-author">
                        <strong><?php printf(__('%s'), get_comment_author()) ?></strong>
                        <em><?php  printf(__('%1$s'), get_comment_date(), get_comment_time()) ?></em>
                    </div> 
                    <div class="review-item-content">
                        <?php comment_text(); ?>
                    </div>
                </div> 
               <?php
}
//add_action('init', 'prevent_wp_login');

function prevent_wp_login() {
    // WP tracks the current page - global the variable to access it
    global $pagenow;
    // Check if a $_GET['action'] is set, and if so, load it into $action variable
    $action = (isset($_GET['action'])) ? $_GET['action'] : '';
    // Check if we're on the login page, and ensure the action is not 'logout'
    if( $pagenow == 'wp-login.php' && ( ! $action || ( $action && ! in_array($action, array('logout', 'lostpassword', 'rp', 'resetpass'))))) {
        // Load the home page url
        $page = get_bloginfo('url');
        // Redirect to the home page
        wp_redirect($page);
        // Stop execution to prevent the page loading for any reason
        exit();
    }
}
require 'menimage.php';
require 'womenimage.php';
require 'patches.php';


?>











