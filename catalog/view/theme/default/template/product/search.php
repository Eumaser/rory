<?php echo $header; ?>

<div class="banner-header">
    <div class="banner-caption">
      <h1 style="color:white"><?php echo 'SEARCH' ?></h1>
      <h4 style="color:white">HOME/SEARCH</h4>
    </div>
</div>

<div class="banner-news">
  <div class="container">


    <div class="row"><?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <br>
      <h1 class="text-center color-titles">
        SEARCH
      </h1>
      <br>
      <div id="content" style="border:1px solid #F4F4F4; padding:30px;" class="search-content <?php echo $class; ?>">
        <?php echo $content_top; ?>

        <p>Result retrieved by
          <span class="color-titles"><?php echo $search; ?></span>
        </p>

        <div class="row">
          <div class="col-sm-5">
            <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
          </div>

          <div class="col-sm-5">
            <select name="category_id" class="form-control">
              <option value="0"><?php echo $text_category; ?></option>
              <?php foreach ($categories as $category_1) { ?>
              <?php if ($category_1['category_id'] == $category_id) { ?>
              <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
              <?php } ?>
              <?php foreach ($category_1['children'] as $category_2) { ?>
              <?php if ($category_2['category_id'] == $category_id) { ?>
              <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
              <?php } ?>
              <?php foreach ($category_2['children'] as $category_3) { ?>
              <?php if ($category_3['category_id'] == $category_id) { ?>
              <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
              <?php } ?>
              <?php } ?>
              <?php } ?>
              <?php } ?>
            </select>
          </div>

          <div class="col-sm-2">
            <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="btn btn-primary" />

          </div>

        </div>



        <h2><?php echo $text_search; ?></h2>
        <?php if ($products) { ?>



        <br />

        <div class="row">
          <?php foreach ($products as $product) { ?>
          <div class="product-layout product-list col-xs-12 col-md-3">
            <div class="product-thumb" style="border:5px solid #F4F4F4; border-radius:15px;">
              <div class="image">
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
              </div>
              <div class="caption text-center">
                <h4>
                  <?php echo $product['name']; ?>
                </h4>

                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
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
              </div>


            </div>
          </div>
          <?php } ?>
        </div>

        <div class="row">
          <div class="col-sm-12 text-right"><?php echo $pagination; ?></div>

        </div>

        <?php } else { ?>
        <p><?php echo $text_empty; ?></p>
        <?php } ?>
        <?php echo $content_bottom; ?>


      </div>
      <?php echo $column_right; ?>
    </div>

  </div>
</div>


</div>


<br><br>


<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>
