<div itemprop="category" class="col-md-12">
    <?php
    if (have_posts() ) {
        while (have_posts()) {
            the_post();
            ?>
            <section class="col-md-12 catitem">
            	<div class="item newsfrintview">
            		<div class="cattitle">
            			<h2>
                    <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a>
                  </h2>
            		</div>
            		<div class="row">
            			<div id="content" class="col-md-6 col-md-push-6">
            				<img alt="<?php the_title(); ?>" src="<?php the_post_thumbnail_url(null,'medium') ?>">
            			</div>
            			<div id="img" class="col-md-6 col-md-pull-6">
            				<div class="publishnews" id="New7469">
                      <div style="text-align: left;"><?php the_category('|'); ?></div>
                      <?php the_excerpt(); ?>
                    </div>
            			</div>
            		</div>
            		<div class="readmore catreadmore"><a class="btn btn-warning" role="button" href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">ادامه  </a>
            		</div>
            	</div>
            </section>
            <?php
        }
    }
    wp_reset_postdata();
    pagenation_func();
    ?>
</div>
