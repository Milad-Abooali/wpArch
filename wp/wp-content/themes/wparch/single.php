<?php
/**
 * The category template file
 *
 * This category Page by Milad Abooali (Codebox.ir) - 2:52 AM 4/6/2020
 *
 * @package wpArch
 */

 /*
 * Codebox SEO
 **/
$desc = limit_word(strip_tags(category_description()),70);
define('CB_Description', $desc);

get_header();
?>
<div class="container-fluid">
  <div class="container starter_margin_top">
    <div class="row">
      <div class="col-md-12" id="Posts">
        <div class="row categorydescription">
        	<div class="col-md-12">
        		<h1><a href="<?= get_current_archive_link() ?>"><?php single_cat_title(); ?></a></h1>
        	</div>
        	<div class="col-md-12 text-justify">
            <?= category_description(); ?>
        	</div>
        </div>
      </div>
      <!-- Posts -->
      <?php include_once TEMPLATEPATH.'/inc/posts-cat.php'; ?>
    </div>
  </div>
</div>
<?php
get_footer();
