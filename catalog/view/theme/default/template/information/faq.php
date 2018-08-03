
<?php echo $header; ?>

<div class="banner-header">
    <div class="banner-caption">
      <h1 style="color:white">
        <?php echo $heading_title ?>
       </h1>
      <h3 style="color:white">HOME/FAQ</h3>
    </div>
</div>

<div class="banner-faq banner-wrapper" style="margin-bottom:-75px">

    <div class="container">

      <div class="row">
        <?php echo $column_left; ?>

        <?php if ($column_left && $column_right): ?>
            <?php $class = 'col-sm-6'; ?>
        <?php elseif($column_left || $column_right): ?>
            <?php $class = 'col-sm-9'; ?>
        <?php else: ?>
            <?php $class = 'col-sm-12'; ?>
        <?php endif; ?>

        <div id="content" class="<?php echo $class; ?> testclass">
          <br><br>
              <h1 class="text-center"  style="color:#545C8A"><?php echo $heading_title; ?> </h1>
            <br><br>
          <?php echo $content_top; ?>

          <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?>
      </div>

    </div>
    <br><br><br>
</div>

<?php echo $footer; ?>
