

<table class="quickcheckout-cart">
	<thead>
		<tr>
		  <td class="image"><?php echo $text_image; ?></td>
		  <td class="name"><?php echo $text_name; ?></td>
		  <td class="quantity"><?php echo $text_quantity; ?></td>
		  <td class="price"><?php echo $text_total; ?></td>
		  <td class="total"></td>
		</tr>
	</thead>
    <?php if ($products || $vouchers) { ?>
	<tbody>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
              <?php } ?>
			  <?php if ($product['reward']) { ?>
			  <br />
			  <small><?php echo $product['reward']; ?></small>
			  <?php } ?>
			  <?php if ($product['recurring']) { ?>
			  <br />
			  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
			  <?php } ?>
            </div></td>

        <td class="quantity">
					<?php if ($edit_cart) { ?>
			    <div class="input-group btn-block">
						<button type="button" class="btn-white minus-qty" name="button"><i class="fa fa-minus qcheckout-minus"></i></button>
						   &nbsp;
							<input type="text" name="quantity[<?php echo $product['key']; ?>]" size="1" value="<?php echo $product['quantity']; ?>" class="form-controls input-quantity" />
							 &nbsp;
						<button type="button" name="button" class="btn-white plus-qty" ><i class="fa fa-plus qcheckout-plus"></i></button>


			  	</div>
					<?php } else { ?>
						x&nbsp;<?php echo $product['quantity']; ?>
					<?php } ?>
	    	</td>

		  	<td class="price">
					<?php echo $product['total']; ?>
				</td>
        <td class="total">
					<a href="javascript:void(0);" class="button-remove" data-remove="<?php echo $product['key']; ?>">
						<img src="image/catalog/rory/Icons/delete.png" alt="asdasd">
					</a>
				</td>

        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="quantity">x&nbsp;1</td>
		  		<td class="price"><?php echo $voucher['amount']; ?></td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
        </tr>
        <?php } ?>
		<?php foreach ($totals as $total) { ?>
			<tr>
				<td style="text-align:right;" colspan="4"><b><?php echo $total['title']; ?>:</b></td>
				<td style="text-align:right;"><?php echo $total['text']; ?></td>
			</tr>
        <?php } ?>
	</tbody>
    <?php } ?>
</table>


<style>
	.btn-white{

	    background-color:white;

	    cursor: pointer;
			border: 1px solid black;
	}

	.qcheckout-plus,
	.qcheckout-minus{
	  color:black;
	  font-size: 10px;
	}
</style>

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
