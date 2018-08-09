<label style="margin-right:30px"><?php if ($text_agree) { ?>

  <?php if ($agree) { ?>
  <input type="checkbox" name="agree" value="1" checked="checked" />
	<?php echo $text_agree; ?>
  <?php } else { ?>
  <input type="checkbox" name="agree" value="1" />
	<?php echo $text_agree; ?>
  <?php } ?>
<?php } ?></label>

<button type="button" id="button-payment-method" class="btn btn-primary"><?php echo $button_continue; ?></button>
