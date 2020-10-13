
<!-- Footer -->
<div class="container-fluid bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-md-4 cb-ltr">
        <h2>خبرنامه های تخصصی</h2>
        <?php dynamic_sidebar( 'sidebar-5' ); ?>
     </div>
      <div class="col-md-8">
        <div class="row">
          <div class="col-md-4">
            <section>
              <?php dynamic_sidebar( 'sidebar-4' ); ?>
            </section>
          </div>
          <div class="col-md-4">
            <section>
              <?php dynamic_sidebar( 'sidebar-3' ); ?>
            </section>
          </div>
          <div class="col-md-4">
            <section>
              <?php dynamic_sidebar( 'sidebar-2' ); ?>
            </section>
          </div>
        </div>
        <div class="row btop-1">
          <div class="col-md-6">
            <section>
              <div class="col-md-12">
                <img src="<?= CB_IMG ?>/icon/logo-en.png" alt="<?php bloginfo('name'); ?>">
              </div>
              <div class="col-md-12">
                <div class="cb-filter-grey">
                  ما را دنبال کنید:
                  <a target="_blank" href="#" title="Twitter"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=twitter.com" alt="twitter"></a>
                  <a target="_blank" href="#" title="Facebook"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=facebook.com" alt="Facebook"></a>
                  <a target="_blank" href="https://www.youtube.com/channel/UC4qS1MJx17BXWlAmZk8kZCw" title="Youtube"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=youtube.com" alt="youtube"></a>
                  <a target="_blank" href="#" title="Pinterest"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=pinterest.com" alt="Pinterest"></a>
                  <a target="_blank" href="#" title="Aparat"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=aparat.com" alt="Aparat"></a>
                  <a target="_blank" href="//linkedin.com/in/farzaneh-farahbakhsh-9730711b8?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3B8zomD0bkSCix8isTKxvZaQ%3D%3D" title="LinkedIn"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=linkedin.com" alt="LinkedIn"></a>
                  <a target="_blank" href="//instagram.com/dalanarch" title="Instagram"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=instagram.com" alt="Instagram"></a>
                  <a target="_blank" href="//telegram.com/@Dalanarchpars" title="Telegram"><img class="cb-ico cb-filter-grey" src="http://www.google.com/s2/favicons?domain=telegram.org" alt="Telegram"></a>
                </div>
              </div>
            </section>
          </div>
          <div class="col-md-6">
            <section id="about_footer">
              <link href="https://www.arch.ir/" itemprop="url" />
              <strong><span itemprop="name">ارتباط با ما</span></strong>
              <div itemprop="address" itemscope="" itemtype="https://schema.org/PostalAddress">
                <span itemprop="streetAddress">
تهران؛ بلوار فردوس شرق، حدفاصل خیابان عقیل و خیابان حسن آباد، پلاک 361، واحد 10
                </span>
              </div>
              تلفن: <strong> ٤٤٩٧٨٥٤٧-۰۲۱ </strong> | ایمیل: <strong>info@arch.ir</strong>
            </section>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="container-fluid bgblack text-left">
  <small>Site design by <a href="//codebox.ir" title="کدباکس | طراحی وب"> Codebox.ir</a></small>
</div>
<?php wp_footer(); ?>
</body></html>
