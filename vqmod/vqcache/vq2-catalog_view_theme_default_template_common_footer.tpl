
<footer class="color-footer-mild">

  <div class="banner-footer">
    <div class="container">

      <div class="row">
        <div class="col-sm-12"><?php echo $content_footer; ?></div>

        <div class="col-sm-3">
           <h5 class="color-footer-strong">
             <?php echo $text_contact; ?>
           </h5>
          <ul class="list-unstyled">
            <li>
              <?php echo $address ?>
            </li>
            <li>
              Email:
              <?php echo $config_email ?>
            </li>
            <li>
              Mobile:
              <?php  echo $telephone ?>
            </li>
          </ul>

        </div>

        <div class="col-sm-3">
          <h5 class="color-footer-strong">
            <?php echo $text_sitemap; ?>
          </h5>

          <div class="row">
            <div class="col-sm-4">
              <ul class="list-unstyled">
                <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
                <li><a href="<?php echo $new_arrival; ?>"><?php echo $text_new; ?></a></li>
                <li><a href="<?php echo $shop_all; ?>"><?php echo $text_shop; ?></a></li>
                <li><a href="<?php echo $about_us; ?>"><?php echo $text_about; ?></a></li>
              </ul>
            </div>
            <div class="col-sm-4">
              <ul class="list-unstyled">
                <li><a href="<?php echo $news; ?>"><?php echo $text_article; ?></a></li>
                <li><a href="<?php echo $faq; ?>"><?php echo $text_faq; ?></a></li>
                <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
              </ul>
            </div>
          </div>


        </div>

        <div class="col-sm-3">
          <h5 class="color-footer-strong">
            <?php echo $text_help; ?>
          </h5>
          <ul class="list-unstyled">
            <li><a href="<?php echo $privacy; ?>"><?php echo $text_privacy; ?></a></li>
            <li><a href="<?php echo $terms; ?>"><?php echo $text_terms; ?></a></li>
            <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          </ul>
        </div>

        <div class="col-sm-3">
          <h5 class="color-footer-strong">
            <?php echo $text_newsletter; ?>
          </h5>
          <ul class="list-unstyled">
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
            <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          </ul>

          <h5 class="color-footer-strong">
              <?php echo $text_follow ?>
          </h5>
          <ul class="list-inline">
            <li>
                <a href="<?php echo $url_fb; ?>"> <img src="image/catalog/rory/Icons/fb.png" alt="asdasd"></a>
            </li>
            <li>
              <a href="<?php echo $url_ig; ?>"> <img src="image/catalog/rory/Icons/ig.png" alt="asdasd"></a>
            </li>
          </ul>

        </div>
      </div>
      <hr>

      <div class="clearfix">
        <p class="pull-left"><?php echo $powered; ?></p>
        <p class="pull-right firstcom">
          <strong>Web Design</strong> by <a href="https://www.firstcom.com.sg/">FirstCom Solutions</a>
        </p>
      </div>

    </div>
  </div>


</footer>
<?php echo $mailchimp_integration; ?>
</body>
</html>
