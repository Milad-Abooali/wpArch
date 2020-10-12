<div itemprop="category" class="col-md-12">


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

            <section class="col-md-12 catitem">
            	<div class=" item newsfrintview">
            		<div class="cattitle">
            			<h2>
            <a href="https://www.arel.ir/fa/News-View-7469.html">سالن های سینمای خیره کننده مدرن که فقط در جنوب هند می بینیم</a>
            </h2>
            		</div>
            		<div class="row">
            			<div id="content" class="col-md-6 col-md-push-6">
            				<a href="https://www.arel.ir/fa/News-View-7469.html" title="سالن های سینمای خیره کننده مدرن که فقط در جنوب هند می بینیم">
            					<img width="100%" height="350" src="https://www.arel.ir/uploads/myimages/1397/6/Indian%20Cinema/Indian%20Cinema%20(1).jpg">
            				</a>
            			</div>
            			<div id="img" class="col-md-6 col-md-pull-6">
            				<div class="publishnews" id="New7469">
            					<a href="https://www.arel.ir/fa/News-View-7469.html" title="سالن های سینمای هند"></a>
            					<div style="text-align: left;">تحریریه معماری آرل</div>سینما یکی از عناصر مهم فرهنگ و هنر کشور هند در دوران مدرن محسوب می شود که نقش ویژه ای بر روی تمام جنبه های این کشور گذاشته است. با وجود گستره هنر هفتم در هند و سرمایه گذاری های عظیم در این صنعت، یک بخش ویژه از دوران قدیمی سینمای این کشور هنوز هم به شکل عجیبی خودنمایی می کند: سالن های سینما. استفانی زوچه مجموعه ای از تصاویر پر جنب و جوش از سینماهای مدرنیست کشور هند را به تصویر کشیده که دارای معماری و ترکیب جالبی از ساختارهای معماری می باشند که دیگر در هیچ نقطه دنیا مشاهده نمی کنیم.
            					<br>با آرل در ادامه همراه باشید...</div>
            			</div>
            		</div>
            		<div class="readmore catreadmore"><a class="btn btn-warning" role="button" href="https://www.arel.ir/fa/News-View-7469.html" title="سالن های سینمای خیره کننده مدرن که فقط در جنوب هند می بینیم">ادامه  </a>
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
