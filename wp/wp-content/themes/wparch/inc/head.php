
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
          <img src="<?= custom_logo() ?>" alt="<?php bloginfo('name') ?>">
        </a>
      </div>
    </div>
  </div>
</div>

<!-- Menu row -->


<div class="container-fluid top-bottom-line arel_top_menu"> <div class="container" style="    width: 100%;">

<div class="row">

<div class="col-md-12">

<nav class="navbar navbar-default" role="navigation">

<div class="navbar-header">

<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
<span class="sr-only">فهرست</span><span class="icon-bar"></span><span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>

<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

  <?php
  wp_nav_menu( array(
      'theme_location' => 'arch-menu',
      'container_class' => 'main-navigation' ) );
  ?>

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


</div></nav></div></div></div></div>
