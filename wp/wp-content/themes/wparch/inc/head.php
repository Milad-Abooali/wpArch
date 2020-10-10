
<!-- Head bar row -->
<div class="container-fluid main-color arch_header">
  <div class="container">
    <div class="row" >
      <div class="col-md-5 col-sm-5 col-xs-12 pull-left text-left text-center-xs hidden-xs">
        <div class="hedaer-date">&nbspامروز:&nbsp<?= jdate(' l, j F Y') ?></div>
        <div class="arch_social cb-filter-grey">
          <a target="_blank" href="https://twitter.com/" title="Twitter"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=twitter.com" alt="twitter"></a>
          <a target="_blank" href="https://facebook.com/" title="Facebook"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=facebook.com" alt="Facebook"></a>
          <a target="_blank" href="https://youtube.com/" title="Youtube"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=youtube.com" alt="youtube"></a>
          <a target="_blank" href="https://pinterest.com/" title="Pinterest"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=pinterest.com" alt="Pinterest"></a>
          <a target="_blank" href="https://aparat.com/" title="Aparat"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=aparat.com" alt="Aparat"></a>
          <a target="_blank" href="https://linkedin.com/" title="LinkedIn"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=linkedin.com" alt="LinkedIn"></a>
          <a target="_blank" href="https://instagram.com/" title="Instagram"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=instagram.com" alt="Instagram"></a>
          <a target="_blank" href="https://telegram.com/" title="Telegram"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=telegram.org" alt="Telegram"></a>
        </div>
      </div>
      <div class="col-md-2 col-sm-2 col-xs-12 phonenum">
        <p>
          <strong> ۰۲۱-۲۲۹۲۱۹۲۵-۶ </strong>
          <i class="fa fa-phone-square sm-mr-5 i-color"></i>
        </p>
      </div>
      <div class="col-md-5 col-sm-5 pull-right text-right col-xs-12 text-center-xs other_link">
        <a href="<?= site_url() ?>">صفحه نخست</a>
        <?php
        wp_nav_menu( array(
            'theme_location' => 'arch-hedear',
            'container_class' => 'arch-header-menu' ) );
        ?>
      </div>
    </div>
  </div>
</div>

<!-- Logo row -->
<div class="container-fluid">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12 text-center">
        <a href="<?php site_url(); ?>" title="<?php bloginfo('name') ?>">
          <img id="blog-logo" src="<?= custom_logo() ?>" alt="<?php bloginfo('name') ?>">
        </a>
      </div>
    </div>
  </div>
</div>

<!-- Menu row -->
<div class="container-fluid top-bottom-line arel_top_menu">
  <div class="container">
    <div class="row">
      <div class="col-xs-8 col-md-3">
        <!-- Search Form -->
        <form method="get" action="<?= site_url() ?>" class="navbar-form navbar-left hidden-md cb-ltr" role="search" accept-charset="UTF-8">
          <div class="input-group col-md-12">
            <span class="input-group-btn">
              <button class="form-control main-color" type="submit">
                <i class="glyphicon glyphicon-search"></i>
              </button>
            </span>
            <input autocomplete="off" type="text" id="search" name="s" class="form-control" placeholder="جستجو...">
          </div>
        </form>
      </div>
      <div class="col-md-9">
          <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle xs-mt-15" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">فهرست</span><span class="icon-bar"></span><span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <?php
              wp_nav_menu(array(
                  'theme_location' => 'arch-menu',
                  'container_class' => 'fly-menu'));
              ?>
            </div>
          </nav>
      </div>
    </div>
  </div>
</div>

<!-- Slides -->
<div class="container-fluid">
  <div class="container starter_margin_top">
    <div class="row">
      <!-- Slider -->
      <div class="col-md-8" id="slideshow">
          <div class="carousel slide" data-ride="carousel"  id="carousel-408559">
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
                <li class=" <?= (!$i) ? 'active' : null ?>" data-slide-to="<?= $i ?>" data-target="#carousel-408559"></li>
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
         <a class="left carousel-control" href="#carousel-408559" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
         <a class="right carousel-control" href="#carousel-408559" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
        <script>
          $(document).ready(function() {
            $("#carousel-408559").carousel({ interval: 5000, cycle: true });
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
