<div itemprop="articleBody" class="publish">
	<div class="row">
		<div class="col-md-8 col-md-push-4">
			<h1 style="margin-bottom: 32px;">
        <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><strong><?php the_title(); ?></strong></a>
      </h1>
		</div>
		<div class="col-md-4 col-md-pull-8">
			<div class="datainserted">

        <?php $author_id=$post->post_author; ?>
        <img src="<?php the_author_meta( 'avatar' , $author_id ); ?> " width="140" height="140" class="avatar" alt="<?php echo the_author_meta( 'display_name' , $author_id ); ?>" />
        <br>
        <?php the_author_meta( 'user_nicename' , $author_id ); ?>
      </div>
			<div class="datainserted">
        <?php echo get_the_date('c'); ?>
       </div>
		</div>
	</div>
	<div class="breadcrumb">
    <?= get_breadcrumb(); ?>
	</div>
	<div class="text-ceneter">
    <img alt="<?php the_title(); ?>" src="<?php the_post_thumbnail_url(null,'medium') ?>">
  </div>
	<div id="publishnewsview" class="newscontent">
    <?php the_content(); ?>
  </div>
</div>
