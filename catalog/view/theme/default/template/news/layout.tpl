<?php echo $header; ?>


<div class="banner-header">
    <div class="banner-caption">
      <h1 style="color:white">
        <?php echo $heading_title ?>
       </h1>
      <h3 style="color:white">HOME/ARTICLE</h3>
    </div>
</div>


    <div class="banner-news">
      <br>
      <div class="banner-news-cover">

        <div class="container">
            <h1 class="text-center color-article-title">ARTICLE</h1><br>
            <div class="row">
              <?php echo $column_left; ?>

              <?php if ($column_left && $column_right): ?>
                <?php $class = 'col-sm-6'; ?>
              <?php elseif ($column_left || $column_right): ?>
                <?php $class = 'col-sm-9'; ?>
              <?php else: ?>
                <?php $class = 'col-sm-12'; ?>
              <?php endif; ?>

              <div id="content" class="<?php echo $class; ?>">
                <?php echo $content_top; ?>

                <?php echo $description; ?>
                <?php echo $content_bottom; ?>
              </div>
              <?php echo $column_right; ?>
            </div>
        </div>
      </div>
    </div>


<?php echo $footer; ?>
