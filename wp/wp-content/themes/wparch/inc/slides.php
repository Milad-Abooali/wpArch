<?php $randomNumber = rand(0,999999); ?>
<!-- Slides -->
<div class="container-fluid">
  <div class="container starter_margin_top">
    <div class="row">
      <!-- Slider -->
      <div class="col-md-8" id="slideshow">
          <div class="carousel slide" data-ride="carousel"  id="carousel-<?= $randomNumber ?>">
            <ol class="carousel-indicators">
              <?php
              $args = array(
                  'tag' => 'جدید',
                  'posts_per_page' => 5
              );
              $the_query = new WP_Query($args);
              if ($the_query->have_posts() ) {
              ?>
              <?php
                  $i=0;
                  while ($the_query->have_posts()) {
                      $the_query->the_post();
                      ?>
                <li class=" <?= (!$i) ? 'active' : null ?>" data-slide-to="<?= $i ?>" data-target="#carousel-<?= $randomNumber ?>"></li>
                      <?php
                      $i++;
                  }
              }
              wp_reset_postdata();
              ?>
            </ol>
            <div class="carousel-inner" role="listbox">
              <?php
              $args = array(
                  'tag' => 'جدید',
                  'posts_per_page' => 3
              );
              $the_query = new WP_Query($args);
              if ($the_query->have_posts() ) {
                  $i=0;
                  while ($the_query->have_posts()) {
                      $the_query->the_post();
                      ?>
                      <div class="item <?= (!$i) ? 'active' : null ?>">
                        <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
                          <div style="background:url('<?= get_the_post_thumbnail_url() ?>') right top;background-size:cover;" class="slider-size">
                            <div class="carousel-caption">
                              <p><?php the_title(); ?></p>
                            </div>
                          </div>
                        </a>
                      </div>
                      <?php
                      $i++;
                  }
              }
              wp_reset_postdata();
              ?>
            </div>
         <a class="left carousel-control" href="#carousel-<?= $randomNumber ?>" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
         <a class="right carousel-control" href="#carousel-<?= $randomNumber ?>" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
        <script>
          $(document).ready(function() {
            $("#carousel-<?= $randomNumber ?>").carousel({ interval: 5000, cycle: true });
          });
        </script>
      </div>

      <!-- Slides Box -->
      <div class="col-md-4 hidden-xs" id="ceneterheadtop">
        <?php
        $args = array(
            'tag' => 'ویژه',
            'posts_per_page' => 9
        );
        $the_query = new WP_Query($args);
        if ($the_query->have_posts() ) {
            $i=0;
            while ($the_query->have_posts()) {
                $the_query->the_post();
                ?>
                <div class="slides-box">
                  <a href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>">
                    <img alt="<?php the_title_attribute(); ?>" src="<?= get_the_post_thumbnail_url(null,'thumbnail') ?>" title="<?php the_title_attribute(); ?>">
                  </a>
                </div>
                <?php
                $i++;
            }
        }
        wp_reset_postdata();
        ?>
      </div>

    </div>
  </div>
</div>
