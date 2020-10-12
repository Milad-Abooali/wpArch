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
define('CB_Description', (get_post_meta(get_the_ID(), '_cb_seo', true)['CB_Description']) ?? get_the_excerpt());

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
      <div class="col-md-8" id="Posts">
        <?php
        if (have_posts() ) {
            while (have_posts()) {
                the_post();
                ?>
                <section itemprop="category" class="post-list">
                  <h3><a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h3>

                  <div class='publishpost' id="<?= the_ID() ?>">
                      <img alt="<?php the_title(); ?>" src="<?php the_post_thumbnail_url(null,'medium') ?>">
                    <div style="text-align: left;"><?php the_category('|'); ?></div>
                    <?php the_excerpt(); ?>
                  </div>
                  <div class="readmore">
                    <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">ادامه</a>
                  </div>
                </section>
                <?php
            }
        }
        wp_reset_postdata();
        pagenation_func();
        ?>
      </div>
      <!-- Sidebar -->
      <div class="col-md-4 hidden-xs" id="leftblocks" >
        <?php if ( is_active_sidebar( 'sidebar-1' ) ) : ?>
            <div id="sidecat" class="widget-area" role="complementary">
            <?php dynamic_sidebar( 'sidebar-1' ); ?>
            </div>
        <?php endif; ?>
      </div>
    </div>
  </div>
</div>
<?php
get_footer();
