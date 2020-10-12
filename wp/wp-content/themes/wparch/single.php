<?php
/**
 * The Single template file
 *
 * This Single Page by Milad Abooali (Codebox.ir) - 2:52 AM 4/6/2020
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
      <article>
      <!-- Post -->
      <?php include_once TEMPLATEPATH.'/inc/content.php'; ?>
      </article>
    </div>
  </div>
</div>
<?php
get_footer();
