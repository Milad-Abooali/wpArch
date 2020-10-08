<div class="cb-seo-box">
  <p style="text-align:center;"><img src="<?= CB_IMG ?>/codebox-logo.png" alt="CODEBOX"></p>
  <hr>

	<div>
    <h4>Description - شرح مختصر</h4>
    <?php $metabox->the_field('CB_Description'); ?>
    <textarea name="<?php $metabox->the_name(); ?>" rows="3" style="width: 50%;"><?php $metabox->the_value(); ?></textarea>
    <p>حداکثر 30 کلمه - max 35 words</p>
	</div>

</div>
