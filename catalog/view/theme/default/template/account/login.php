<?php echo $header; ?>

<div class="banner-header">
    <div class="banner-caption">
      <h1 style="color:white">
        <?php echo strtoupper($heading_title)  ?>
       </h1>
      <h4 style="color:white">HOME/ <?php echo strtoupper($heading_title)  ?></h4>
    </div>
</div>


<div class="banner-news">

    <div class="container">
      <br>
      <h1 class="text-center color-titles"><?php echo $heading_title ?></h1>
      <br>
      <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
      <?php } ?>
      <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
      <?php } ?>

      <div class="row">
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>

        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>

          <div class="test" style="width:500px;margin-left:auto;margin-right:auto">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <div class="form-group">

                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo 'Username'; ?>" id="input-email" class="form-control" />
              </div>
              <div class="form-group">
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />

              </div>

              <div class="login-buttons text-center" >
                <input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary pink-button" />
                <input type="submit" value="<?php echo 'Assume FB'; ?>" class="btn btn-primary" />
              </div>
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
              <div class="text-center">
                  <br><br>
                  <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
              </div>

            </form>
          </div>




          <?php echo $content_bottom; ?>
        </div>

        <?php echo $column_right; ?>
      </div>
    </div>

</div>




<?php echo $footer; ?>
