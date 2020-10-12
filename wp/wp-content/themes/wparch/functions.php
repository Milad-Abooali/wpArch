<?php

/*
* Them Asset
**/
define('CB_CDN', null);
define('CB_IMG',get_template_directory_uri().'/asset/img');
define('CB_JS',get_template_directory_uri().'/asset/js');
define('CB_CSS',get_template_directory_uri().'/asset/css');


/*
*  Image Costum Size
**/
// add_image_size( 'logo', 'auto', 120, array( 'left', 'top' ) );

/*
* Them Setings
**/
$defaults = array(
    'default-image'          => '',
    'default-preset'         => 'default', // 'default', 'fill', 'fit', 'repeat', 'custom'
    'default-position-x'     => 'left',    // 'left', 'center', 'right'
    'default-position-y'     => 'top',     // 'top', 'center', 'bottom'
    'default-size'           => 'auto',    // 'auto', 'contain', 'cover'
    'default-repeat'         => 'repeat',  // 'repeat-x', 'repeat-y', 'repeat', 'no-repeat'
    'default-attachment'     => 'scroll',  // 'scroll', 'fixed'
    'default-color'          => '',
    'wp-head-callback'       => '_custom_background_cb',
    'admin-head-callback'    => '',
    'admin-preview-callback' => '',
);
add_theme_support( 'custom-background', $defaults );

$defaults = array(
    'default-image'          => '',
    'random-default'         => false,
    'width'                  => 0,
    'height'                 => 0,
    'flex-height'            => false,
    'flex-width'             => false,
    'default-text-color'     => '',
    'header-text'            => true,
    'uploads'                => true,
    'wp-head-callback'       => '',
    'admin-head-callback'    => '',
    'admin-preview-callback' => '',
    'video'                  => false,
    'video-active-callback'  => 'is_front_page',
);
add_theme_support( 'custom-header', $defaults );

$defaults = array(
    'height'      => 120,
    'width'       => 400,
    'flex-height' => false,
    'flex-width'  => true,
    'header-text' => array(),
);
add_theme_support( 'custom-logo', $defaults );

function custom_logo() {
  $custom_logo_id = get_theme_mod('custom_logo');
  $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
  if ( has_custom_logo() ) {
          return esc_url($logo[0]);
  } else {
          return CB_IMG.'/wpArch.png';
  }
}


add_theme_support('post-thumbnails');

include_once TEMPLATEPATH.'/inc/cb-color.php';




/*
* Costum Fields
**/
add_filter( 'postmeta_form_limit', 'meta_limit_increase' );
function meta_limit_increase( $limit ) {
    return 50;
}

include_once TEMPLATEPATH.'/inc/metabox.php';
// include css to help style our custom meta boxes
if (is_admin()) wp_enqueue_style('custom_meta_css',TEMPLATEPATH . '/custom/meta.css');

$custom_metabox =
new WPAlchemy_MetaBox(array(
  'id' => '_cb_seo',
  'title' => 'Codebox SEO',
  'template' => TEMPLATEPATH . '/inc/metaboxes/cb-seo.php'
));
new WPAlchemy_MetaBox(array(
  'id' => '_custom_meta',
  'title' => 'Full',
  'types' => array('page','events'), // added only for pages and to custom post type "events"
  'context' => 'normal', // same as above, defaults to "normal"
  'priority' => 'high', // same as above, defaults to "high"
  'template' => TEMPLATEPATH . '/inc/metaboxes/full.php'
));

/*
* Sidebar
**/

/*
* Costum Menu
**/
function wpb_custom_new_menu() {
  register_nav_menus(
    array(
      'arch-hedear' => __( 'Header Right' ),
      'arch-menu' => __( 'Main Menu' )
    )
  );
}
add_action( 'init', 'wpb_custom_new_menu' );
function cb_widgets_init() {
    register_sidebar( array(
        'name' => __( 'Main Sidebar', 'cb' ),
        'id' => 'sidebar-1',
        'description' => __( 'The main sidebar appears on the right on home and the front page template', 'cb' ),
        'before_widget' => '<aside id="%1$s" class="leftblockss widget %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h5 class="widget-title">',
        'after_title' => '</h5>',
    ) );

    register_sidebar( array(
        'name' => __( 'Footer Right', 'cb' ),
        'id' => 'sidebar-2',
        'description' => __( 'The widgets appears on the footer right on all pages ', 'cb' ),
        'before_widget' => '<aside id="%1$s" class="widget %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h5 class="widget-title">',
        'after_title' => '</h5>',
    ) );

    register_sidebar( array(
        'name' => __( 'Footer Center', 'cb' ),
        'id' => 'sidebar-3',
        'description' => __( 'The widgets appears on the footer right on all pages ', 'cb' ),
        'before_widget' => '<aside id="%1$s" class="widget %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h5 class="widget-title">',
        'after_title' => '</h5>',
    ) );

    register_sidebar( array(
        'name' => __( 'Footer Left', 'cb' ),
        'id' => 'sidebar-4',
        'description' => __( 'The widgets appears on the footer right on all pages ', 'cb' ),
        'before_widget' => '<aside id="%1$s" class="widget %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h5 class="widget-title">',
        'after_title' => '</h5>',
    ) );
}
add_action( 'widgets_init', 'cb_widgets_init' );

/*
* Enqueues
**/
include_once TEMPLATEPATH.'/inc/jdf.php';
function all_enqueue() {
  /* Jquery */
    wp_enqueue_script( 'jquery-min', get_template_directory_uri() . '/asset/js/jquery.min.js' );

  /* Bootstrap */
    wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/asset/js/bootstrap.min.js' );
    wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/asset/css/bootstrap.min.css' );

  /* Fontawesome */
    wp_enqueue_style( 'fontawesome', get_template_directory_uri() . '/asset/css/fontawesome/css/font-awesome.min.css' );

    /* ez-space */
      wp_enqueue_style( 'ezspace', get_template_directory_uri() . '/asset/css/ez-space.css' );

  /* Popper */
    // wp_enqueue_script( 'popper_js', get_template_directory_uri() . '/asset/js/popper.min.js' );

  /* Pace */
    // wp_enqueue_script( 'pace_js', get_template_directory_uri() . '/asset/js/pace.min.js' );

  /* Theme */
    wp_enqueue_script( 'theme', get_template_directory_uri() . '/asset/js/script.js' );
    wp_enqueue_style( 'theme', get_template_directory_uri() . '/asset/css/style.css' );

  /* CB UI */
    // wp_enqueue_script( 'cbui_js', get_template_directory_uri() . '/asset/js/cb-ui.js' );
    wp_enqueue_style( 'cbui_css', get_template_directory_uri() . '/asset/css/cb-ui.css' );
}
add_action( 'wp_enqueue_scripts', 'all_enqueue' );

/*
* Extra
**/
include_once TEMPLATEPATH.'/inc/shortcode.php';
include_once TEMPLATEPATH.'/inc/pagenation.php';


/*
* Word Limit
**/
function limit_word($text, $limit) {
    if (str_word_count($text, 0) > $limit) {
        $words = str_word_count($text, 2);
        $pos   = array_keys($words);
        $text  = mb_substr($text, 0, $pos[$limit]) . '...';
    }
    return $text;
}

/*
* Breadcrumb
**/
function get_breadcrumb() {
    echo '<a href="'.home_url().'" rel="nofollow">'.bloginfo('name').'</a>';
    if (is_category() || is_single()) {
        echo "&nbsp;&nbsp<i class='fa fa-chevron-left i-color'></i>&nbsp;&nbsp;";
        the_category(' &nbsp;/&nbsp; ');
            if (is_single()) {
                echo " &nbsp;&nbsp;<i class='fa fa-chevron-left i-color'></i>&nbsp;&nbsp; ";
                the_title();
            }
    } elseif (is_page()) {
        echo "&nbsp;&nbsp;<i class='fa fa-chevron-left i-color'></i>&nbsp;&nbsp;";
        echo the_title();
    } elseif (is_search()) {
        echo "&nbsp;&nbsp;<i class='fa fa-chevron-left i-color'></i>&nbsp;&nbsp; نتایج جستجو . . . ";
        echo '"<em>';
        echo the_search_query();
        echo '</em>"';
    }
}

/*
* Admin Notice
**/
function my_theme_dependencies() {
  if( ! function_exists('plugin_function') )
    echo '<div class="error"><p>' . __( 'Warning: The theme needs "wpforms-lite" Plugin', 'wpArch' ) . '</p></div>';
}
add_action( 'admin_notices', 'my_theme_dependencies' );


/*
* Get the current archive link
**/
function get_current_archive_link( $paged = true ) {
        $link = false;

        if ( is_front_page() ) {
                $link = home_url( '/' );
        } else if ( is_home() && "page" == get_option('show_on_front') ) {
                $link = get_permalink( get_option( 'page_for_posts' ) );
        } else if ( is_tax() || is_tag() || is_category() ) {
                $term = get_queried_object();
                $link = get_term_link( $term, $term->taxonomy );
        } else if ( is_post_type_archive() ) {
                $link = get_post_type_archive_link( get_post_type() );
        } else if ( is_author() ) {
                $link = get_author_posts_url( get_query_var('author'), get_query_var('author_name') );
        } else if ( is_archive() ) {
                if ( is_date() ) {
                        if ( is_day() ) {
                                $link = get_day_link( get_query_var('year'), get_query_var('monthnum'), get_query_var('day') );
                        } else if ( is_month() ) {
                                $link = get_month_link( get_query_var('year'), get_query_var('monthnum') );
                        } else if ( is_year() ) {
                                $link = get_year_link( get_query_var('year') );
                        }
                }
        }

        if ( $paged && $link && get_query_var('paged') > 1 ) {
                global $wp_rewrite;
                if ( !$wp_rewrite->using_permalinks() ) {
                        $link = add_query_arg( 'paged', get_query_var('paged'), $link );
                } else {
                        $link = user_trailingslashit( trailingslashit( $link ) . trailingslashit( $wp_rewrite->pagination_base ) . get_query_var('paged'), 'archive' );
                }
        }
        return $link;
}
