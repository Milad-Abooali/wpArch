<?php

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
    'height'      => 100,
    'width'       => 400,
    'flex-height' => true,
    'flex-width'  => true,
    'header-text' => array( 'site-title', 'site-description' ),
);
add_theme_support( 'custom-logo', $defaults );
add_theme_support('post-thumbnails');

/*
* Them Asset
**/
define('CB_CDN', null);
define('CB_IMG',get_template_directory_uri().'/asset/img');
define('CB_JS',get_template_directory_uri().'/asset/js');
define('CB_CSS',get_template_directory_uri().'/asset/css');

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
* Enqueues
**/
function all_enqueue() {
  /* Jquery */
    wp_enqueue_script( 'jquery', get_template_directory_uri() . '/asset/js/jquery.min.js' );

  /* Bootstrap */
    wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/asset/js/bootstrap.min.js' );
    wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/asset/css/bootstrap.min.css' );

  /* Popper */
    // wp_enqueue_script( 'popper_js', get_template_directory_uri() . '/asset/js/popper.min.js' );

  /* Pace */
    // wp_enqueue_script( 'pace_js', get_template_directory_uri() . '/asset/js/pace.min.js' );

  /* Theme */
    wp_enqueue_script( 'theme', get_template_directory_uri() . '/asset/js/script.js' );
    wp_enqueue_style( 'theme', get_template_directory_uri() . '/asset/css/style.css' );

  /* CB UI */
    // wp_enqueue_script( 'cbui_js', get_template_directory_uri() . '/asset/js/cb-ui.js' );
    // wp_enqueue_style( 'cbui_css', get_template_directory_uri() . '/asset/css/cb-ui.css' );
}
add_action( 'wp_enqueue_scripts', 'all_enqueue' );
