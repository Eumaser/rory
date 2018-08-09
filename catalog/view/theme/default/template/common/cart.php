<?php
  $ntotal = [];
?>

<style>
  .flex-container{
    display: flex;
  }

</style>



<div id="cart" class="cart-main btn-group btn-block">
  <a href="" data-loading-text="<?php echo $text_loading; ?>" data-toggle="dropdown">
    <img src="image/catalog/rory/Icons/cart.png"  alt="asdasd">
  </a>
  <span id="cart-total">
      <?php //echo $text_items; 95A1D1 ?>
      <?php echo $cart_items; ?>
  </span>


  <ul class="dropdown-menu pull-right">
    <?php if ($products || $vouchers) { ?>
    <li class="li-box">
      &nbsp;  <strong><?php echo $cart_items; ?> items added to cart</strong>
    </li>
    <li class="li-box">
      <hr class="li-hr">
    </li>
    <li class="li-box">

      <table class="tables" style="width:100%">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td style="width:30%">
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
          </td>
          <td >
            <?php echo $product['name']; ?>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <br><br>
            Quantity: <?php echo $product['quantity']; ?>
            <br>
            Price: <?php echo $product['total']; ?>
            <?php $ntotal[] = $product['total']?>

          </td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
      </table>


    </li>
    <li class="li-box">
      <hr class="li-hr">
    </li>

    <li class="li-box">
      <p class="text-right">
        Subtotal: <?php echo $totals[0]['text'] ?>
      </p>

    </li>
    <li class="li-box">
      <p class="text-center">
        <a class="btn lavender-button" style="color:white" href="<?php echo $cart; ?>">
           <?php echo $text_cart; ?>
        </a>
        &nbsp;&nbsp;&nbsp;
        <a class="btn pink-button" style="color:white" href="<?php echo $checkout; ?>">

            <?php echo $text_checkout; ?>

        </a>
      </p>

    </li>

    <?php } else { ?>

    <li>
      <p class="text-center"><?php echo $text_empty; ?></p>
    </li>



    <?php } ?>
  </ul>

</div>
