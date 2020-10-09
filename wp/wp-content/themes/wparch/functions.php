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
          return '<img src="'. esc_url( $logo[0] ) .'">';
  } else {
          return '<img src="'. CB_IMG . '/wpArch.png' .'">';
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
* Costum Menu
**/
function wpb_custom_new_menu() {
  register_nav_menus(
    array(
      'arch-hedear' => __( 'Header Right' ),
      'extra-menu' => __( 'Extra Menu' )
    )
  );
}
add_action( 'init', 'wpb_custom_new_menu' );

/*
* Enqueues
**/
include_once TEMPLATEPATH.'/inc/jdf.php';
function all_enqueue() {
  /* Jquery */
    wp_enqueue_script( 'jquery', get_template_directory_uri() . '/asset/js/jquery.min.js' );

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
