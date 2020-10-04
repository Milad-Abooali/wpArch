<?php

/*
* Enqueues
**/
function all_enqueue() {
  /* Jquery */
    wp_enqueue_script( 'jquery_js', get_template_directory_uri() . '/asset/js/jquery.min.js' );

  /* Bootstrap */
    wp_enqueue_script( 'bootstrap_js', get_template_directory_uri() . '/asset/js/bootstrap.min.js' );
    wp_enqueue_style( 'bootstrap_css', get_template_directory_uri() . '/asset/css/bootstrap.min.css' );

  /* Popper */
    // wp_enqueue_script( 'popper_js', get_template_directory_uri() . '/asset/js/popper.min.js' );

  /* Pace */
    // wp_enqueue_script( 'pace_js', get_template_directory_uri() . '/asset/js/pace.min.js' );

  /* Theme */
    wp_enqueue_script( 'theme_js', get_template_directory_uri() . '/asset/js/script.js' );
    wp_enqueue_style( 'theme_css', get_template_directory_uri() . '/asset/css/style.css' );

  /* CB UI */
    // wp_enqueue_script( 'cbui_js', get_template_directory_uri() . '/asset/js/cb-ui.js' );
    // wp_enqueue_style( 'cbui_css', get_template_directory_uri() . '/asset/css/cb-ui.css' );
}
add_action( 'wp_enqueue_scripts', 'all_enqueue' );
