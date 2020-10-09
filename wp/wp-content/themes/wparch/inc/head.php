
<!-- Header Bar -->
<div class="container-fluid main-color arch_header">
  <div class="container">
    <div class="row" >
      <div class="col-md-5 col-sm-5 col-xs-12 pull-left text-left text-center-xs hidden-xs">
        <div class="hedaer-date">&nbspامروز:&nbsp<?= jdate(' l, j F Y') ?></div>
        <div class="arch_social cb-filter-grey">
          <a target="_blank" href="https://instagram.com/arel.ir" title="Twitter"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=twitter.com" alt="twitter"></a>
          <a target="_blank" href="https://instagram.com/arel.ir" title="Facebook"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=facebook.com" alt="Facebook"></a>
          <a target="_blank" href="https://instagram.com/arel.ir" title="Youtube"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=youtube.com" alt="youtube"></a>
          <a target="_blank" href="https://instagram.com/arel.ir" title="Pinterest"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=pinterest.com" alt="Pinterest"></a>
          <a target="_blank" href="https://instagram.com/arel.ir" title="Aparat"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=aparat.com" alt="Aparat"></a>
          <a target="_blank" href="https://instagram.com/arel.ir" title="LinkedIn"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=linkedin.com" alt="LinkedIn"></a>
          <a target="_blank" href="https://instagram.com/arel.ir" title="Instagram"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=instagram.com" alt="Instagram"></a>
          <a target="_blank" href="https://instagram.com/arel.ir" title="Telegram"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=telegram.org" alt="Telegram"></a>
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
<?= the_custom_logo(); ?>
