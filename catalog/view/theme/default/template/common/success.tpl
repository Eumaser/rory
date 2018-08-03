<?php echo $header; ?>


<style>

  .main-contain{
    display: flex;
    align-items: center;
  }

  .success-contain{
      margin: auto;
      /*margin-left: auto;
      margin-right: auto;*/
      width: 700px;
      height: 300px;
      background-color: white;
      vertical-align: middle;
      box-shadow: 3px 3px 20px 0px rgba(158,158,158,1);

  }

  .success-content{
    margin: 10px;
  }

</style>

<div class="container">

  <div class="banner-new">
    <div class="row">
      <?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content" class="main-contain <?php echo $class; ?>"><?php echo $content_top; ?>
        <div class="success-contain">
            <div class="success-content">
                <h1 class="text-center color-titles">THANK YOU</h1>
                <br>
                <div class="text-center">
                  <img src="image/catalog/rory/Icons/check.png" alt="asdasd">
                  <br><br>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam
                  </p>

                </div>

            </div>
        </div>
      </div>
      <?php echo $column_right; ?>
    </div>
  </div>

</div>
<?php echo $footer; ?>
