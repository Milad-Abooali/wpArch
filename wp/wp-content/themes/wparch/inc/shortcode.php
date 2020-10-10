<?php

// SlidesRow
function slides_func () {
  include_once TEMPLATEPATH.'/inc/slides.php';
	return true;
}
add_shortcode( 'SlidesRow', 'slides_func' );
