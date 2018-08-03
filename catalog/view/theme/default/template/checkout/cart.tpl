<?php echo $header; ?>


<div class="banner-header">
    <div class="banner-caption">
      <h1 style="color:white">
        <?php echo $heading_title ?>
       </h1>
      <h3 style="color:white">HOME/SHOPPING CART</h3>
    </div>
</div>



<div class="banner-news">
  <br><br>


    <div class="container">

      <?php if ($attention) { ?>
      <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <?php if ($success) { ?>
      <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <?php if ($error_warning) { ?>
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
      <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
          <h1 class="text-center color-titles">
            <?php echo $heading_title; ?>
            <?php if ($weight) { ?>
            &nbsp;(<?php echo $weight; ?>)
            <?php } ?>
          </h1>
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="table-responsive">
              <table class="table checkout-table">
                <thead>
                  <tr>
                    <td class="text-center"><?php echo $column_image; ?></td>
                    <td class="text-left"><?php echo $column_name; ?></td>
                    <td class="text-left"><?php echo $column_model; ?></td>
                    <td class="text-left"><?php echo $column_quantity; ?></td>
                    <td class="text-right"><?php echo $column_price; ?></td>
                    <td class="text-right"><?php echo $column_total; ?></td>
                    <td></td>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($products as $product) { ?>
                  <tr>
                    <td class="text-center"><?php if ($product['thumb']) { ?>
                      <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                      <?php } ?></td>
                    <td class="text-center">
                      <?php echo $product['name']; ?>

                      <?php if (!$product['stock']) { ?>
                      <span class="text-danger">***</span>
                      <?php } ?>
                      <?php if ($product['option']) { ?>
                      <?php foreach ($product['option'] as $option) { ?>
                      <br />
                      <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                      <?php } ?>
                      <?php } ?>
                      <?php if ($product['reward']) { ?>
                      <br />
                      <small><?php echo $product['reward']; ?></small>
                      <?php } ?>
                      <?php if ($product['recurring']) { ?>
                      <br />
                      <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                      <?php } ?>
                    </td>
                    <td class="text-center">
                      <?php echo $product['model']; ?>
                    </td>

                    <td class="text-center">
                      <div class="input-group btn-block" style="max-width: 200px;">

                          <button type="button" class="btn-black minus-qty" name="button"><i class="fa fa-minus checkout-minus"></i></button>
                           &nbsp;
                            <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-controls input-quantity" />
                            &nbsp;
                          <button type="button" name="button" class="btn-black plus-qty" ><i class="fa fa-plus checkout-plus"></i></button>

                      </div>
                    </td>

                    <td class="text-center">
                      <?php echo $product['price']; ?>
                    </td>
                    <td class="text-center">
                      <?php echo $product['total']; ?>
                    </td>
                      <td class="text-center">
                        <a href="javascript:void(0);" onclick="cart.remove('<?php echo $product['key']; ?>');">
                          <img src="image/catalog/rory/Icons/delete.png" alt="asdasd">
                        </a>

                      </td>
                  </tr>
                  <?php } ?>

                  <?php foreach ($vouchers as $vouchers) { ?>
                  <tr>
                    <td></td>
                    <td class="text-left"><?php echo $vouchers['description']; ?></td>
                    <td class="text-left"></td>
                    <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                        <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                        <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                    <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                    <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                  </tr>
                  <?php } ?>

                </tbody>
              </table>
            </div>





          <br />
          <div class="row">
            <div class="col-sm-4 col-sm-offset-8">
              <table class="table table-bordered">
                <?php foreach ($totals as $total) { ?>
                <tr>
                  <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
                  <td class="text-right"><?php echo $total['text']; ?></td>
                </tr>
                <?php } ?>
              </table>
            </div>
          </div>

          <div class="buttons">

            <div class="pull-left">
              <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary pink-button-hollow"><?php echo $refresh ?></button>
            </div>

            <div class="pull-right">
              <a href="<?php echo $continue; ?>" class="btn btn-primary pink-button"><?php echo $button_shopping; ?></a>
               &nbsp;&nbsp;&nbsp;
              <a href="<?php echo $checkout; ?>" class="btn btn-primary pink-button"><?php echo $button_checkout; ?></a>
            </div>

          </div>

        </form>
          <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
    </div>
</div>


<?php echo $footer; ?>



<script>

  $('.minus-qty').click(function(){

        var crtval = $(this).next('.input-quantity').val();
        if(crtval < 2){
            alert('Quanty Must Be 1');
        }
        else{
        var cartval = parseInt(crtval) - parseInt(1);
        //alert(cartval);
        $(this).next('.input-quantity').append().val(cartval);
        }
   });

        //add quantity
    $('.plus-qty').click(function(){
        var crtval = $(this).prev('.input-quantity').val();
        var cartval = parseInt(crtval) + parseInt(1);
        //alert(cartval);
        $(this).prev('.input-quantity').append().val(cartval);
   });
</script>
