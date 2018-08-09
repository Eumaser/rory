<?php echo $header; ?>



<div class="banner-header">
    <div class="banner-caption">
      <h1 style="color:white">
        <?php echo strtoupper($heading_title) ?></h3>
       </h1>
      <h3 style="color:white">HOME/<?php echo strtoupper($heading_title) ?></h3>
    </div>
</div>


<div class="banner-news">

  <div class="container">
    <br><br>
    <h1 class="text-center color-titles"><?php echo $heading_title ?></h1>
    <br>
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

        <?php if ($thumb || $description) { ?>
        <div class="row">
          <?php if ($thumb) { ?>
          <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
          <?php } ?>
          <?php if ($description) { ?>
          <div class="col-sm-10"><?php echo $description; ?></div>
          <?php } ?>
        </div>
        <hr>
        <?php } ?>

        <?php if ($categories) { ?>
        <h3><?php echo $text_refine; ?></h3>
        <?php if (count($categories) <= 5) { ?>
        <div class="row">
          <div class="col-sm-3">
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <?php } else { ?>
        <div class="row">
          <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
          <div class="col-sm-3">
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <?php } ?>
        </div>
        <?php } ?>
        <?php } ?>



        <?php if ($products) { ?>

        <div class="row">
          <div class="col-md-4">

          </div>
          <div class="col-md-2 text-right">
            <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
          </div>
          <div class="col-md-3 text-right">
            <select id="input-sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>

          <div class="col-md-1 text-right">
            <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
          </div>

          <div class="col-md-2 text-right">
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>

        <br>
        <br />

        <div class="row">
          <?php foreach ($products as $product) { ?>
          <div class="product-layout product-list col-md-4 col-xs12">
            <div class="product-thumb image-thumb">
              <div class="image" style="float:none">
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
              </div>
              <div>
                <div class="caption text-center">
                  <h5 class="caption-product-name">
                    <?php echo $product['name']; ?>
                  </h5>

                  <?php if ($product['rating']) { ?>
                  <div class="rating">
                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                    <?php if ($product['rating'] < $i) { ?>
                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } else { ?>
                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                    <?php } ?>
                    <?php } ?>
                  </div>
                  <?php } ?>

                  <?php if ($product['price']) { ?>
                  <p class="price">
                    <?php if (!$product['special']) { ?>
                    <span class="defaults">
                      <?php echo $product['price']; ?>
                    </span>

                    <?php } else { ?>
                    <span class="price-new">
                      <?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?>
                    </span>
                    <?php } ?>
                    <?php if ($product['tax']) { ?>
                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                    <?php } ?>
                  </p>
                  <?php } ?>
                </div>

              </div>

            </div>
          </div>
          <?php } ?>
        </div>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
        <?php } ?>

        <?php if (!$categories && !$products) { ?>
          <p><?php echo $text_empty; ?></p>
          <div class="buttons">
            <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
          </div>
        <?php } ?>

        <?php echo $content_bottom; ?>
      </div>
      <?php echo $column_right; ?>
    </div>
  </div>

</div>





<?php echo $footer; ?>
