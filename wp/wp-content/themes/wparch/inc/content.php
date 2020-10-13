<div itemprop="articleBody" class="publish">
	<div class="row">
		<div class="col-md-8 col-md-push-4">
			<h1 style="margin-bottom: 32px;">
        <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><strong><?php the_title(); ?></strong></a>
      </h1>
		</div>
		<?php if(!is_page()): ?>
		<div class="col-md-1 col-md-pull-8 text-left">
			<div class="datainserted text-center">
        <?php $author_id=$post->post_author; ?>
				<?php echo get_avatar(get_the_author_meta( 'email' , $author_id ),75); ?>
        <br>
        <?php echo the_author_meta( 'display_name' , $author_id ); ?>
      </div>

		</div>
	<?php endif; ?>
	</div>
	<div class="breadcrumb">
    <?= get_breadcrumb(); ?>
		<div class="datainserted pull-left">
			<?php echo get_the_date('c'); ?><br>
		</div>
	</div>
	<div class="text-ceneter">
    <img alt="<?php the_title(); ?>" src="<?php the_post_thumbnail_url(null,'medium') ?>">
  </div>
	<div id="publishnewsview" class="newscontent">
    <?php the_content(); ?>
  </div>
	<hr>
<div id="tags">
	<h5> برچسب ها : </h5>
	<?php the_tags( '<i class="fa fa-tag sm-ml-5"></i> ', ' <i class="fa fa-tag sm-ml-5 sm-mr-25"></i>', '<br />' ); ?>
</div>
<hr>
