<?php echo $header; ?>
<div class="banner-header">
<div class="banner-caption">
<h1 style="color:white">CONTACT US</h1>

<h3 style="color:white">HOME/CONTACT US</h3>
</div>
</div>


<div class="banner-wrapper">
  <br><br>
  <div class="container">

      <div class="text-center">
        <h1><?php echo $heading_title ?></h1>
      </div>

      <div class="row">
        <div class="col-md-3">
          <p>
            <strong><?php echo $store ?></strong>
          </p>
            <div class="row">
              <div class="col-md-1">
                <p>
                  <img src="image/catalog/rory/Icons/location.png" alt="asdasd">
                </p>
                <br><br>
                <p>
                  <img src="image/catalog/rory/Icons/mail_alt.png" alt="asdasd">
                </p>
                <p>
                    <img src="image/catalog/rory/Icons/phone_land.png" alt="asdasd">
                </p>

              </div>
              <div class="col-md-10">
                <p>
                  Mailing Address: <br>
                  <?php echo $address ?>
                </p>
                <p>
                  Mobile: <?php echo $telephone ?>
                </p>
                <p>
                  Email: <?php echo $config_email ?>
                </p>
                <br><br>
                <p>Follow us on
                  <a href="<?php echo $fb_link; ?>"> <img src="image/catalog/rory/Icons/fb_orig.png" alt="asdasd"></a>

                </p>

              </div>
            </div>
        </div>
        <div class="col-md-9">
          <img src="image/catalog/rory/SLICINGS/contact/map.jpg" alt="asdasd" class="img-responsive"></a>
        </div>



      </div>

  </div>

  <br><br>
</div>

<div class="banner-contact">
  <br><br>
  <div class="container">
    <div class="text-center">
      <h1><?php echo $entry_enquiry ?></h1>
    </div>

    <div class="da-forms">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>

          <div class="row">
            <div class="form-group required">
              <div class="col-sm-6">
                <input type="text" name="name" placeholder="Name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                  <?php if ($error_name): ?>
                    <div class="text-danger"><?php echo $error_name; ?></div>
                  <?php endif; ?>
                <br>
                <input type="text" name="email" placeholder="Email"  value="<?php echo $email; ?>" id="input-email" class="form-control" />
                  <?php if ($error_email): ?>
                    <div class="text-danger"><?php echo $error_email; ?></div>
                  <?php endif; ?>

              </div>
              <div class="col-sm-6">
                <input type="text" name="contact" placeholder="Contact Number" value="<?php echo $contact; ?>" id="input-contact" class="form-control" />
                  <?php if ($error_contact): ?>
                      <div class="text-danger"><?php echo $error_contact; ?></div>
                  <?php endif; ?>
                <br>
                <input type="text" name="subject" placeholder="Subject" value="<?php echo $contact; ?>" id="input-contact" class="form-control" />
                <?php if ($error_subject): ?>
                    <div class="text-danger"><?php echo $error_subject; ?></div>
                <?php endif; ?>
              </div>

              <div class="col-sm-12">
                <br>
                <textarea name="enquiry" rows="10" id="input-enquiry" placeholder="Message" class="form-control"><?php echo $enquiry; ?></textarea>
                <?php if ($error_enquiry): ?>
                    <div class="text-danger"><?php echo $error_enquiry; ?></div>
                <?php endif; ?>
              </div>
            </div>
          </div>


        <div class="buttons">
          <div class="text-center">
            <input class="btn btn-primary pink-button" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
        <br><br><br>
      </form>
    </div>


  </div>
</div>



<?php echo $footer; ?>
