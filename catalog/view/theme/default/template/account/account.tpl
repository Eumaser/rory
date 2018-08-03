<?php echo $header; ?>


<div class="banner-header">
    <div class="banner-caption">
      <h1 style="color:white">
        <?php echo strtoupper($heading_title)  ?>
       </h1>
      <h4 style="color:white"> HOME/<?php echo strtoupper($heading_title)  ?> </h4>
    </div>
</div>

<div class="banner-news">
  <div class="container">

    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
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

        <div class="bb">
          <br>
          <h1 class="text-center color-titles"><?php echo $text_my_account; ?></h1>
          <br>

          <div class="post-wrapper">
            <div class="post-image">
                  <img src="image/catalog/rory/Icons/profile.png" alt="asdasd" >
            </div>
            <div class="post-content">
              <span class="post-link">
                <strong>
                  <a href="<?php echo $edit; ?>">Update My Profile</a>

                </strong>
              </span>
              <br>
              <small>Access your account details here</small>
            </div>

          </div>

          <div class="post-wrapper">
            <div class="post-image">
                  <img src="image/catalog/rory/Icons/password.png" alt="asdasd" >
            </div>
            <div class="post-content">
              <span class="post-link">
                <strong>
                  <a href="<?php echo $edit; ?>">Update My Password</a>

                </strong>
              </span>
              <br>
              <small>Keep your security accesses in check</small>
            </div>

          </div>

          <div class="post-wrapper">
            <div class="post-image">
                  <img src="image/catalog/rory/Icons/history.png" alt="asdasd" >
            </div>
            <div class="post-content">
              <span class="post-link">
                <strong>
                  <a href="<?php echo $edit; ?>">My Transaction History</a>

                </strong>
              </span>
              <br>
              <small>Keep track of your orders</small>
            </div>

          </div>


        </div>


        <?php echo $content_bottom; ?>

      </div>
      <?php echo $column_right; ?>
    </div>
  </div>
</div>


<?php echo $footer; ?>
