<?php
//==============================================================================
// MailChimp Integration v201.2
//
// Author: Clear Thinking, LLC
// E-mail: johnathan@getclearthinking.com
// Website: http://www.getclearthinking.com
//
// All code within this file is copyright Clear Thinking, LLC.
// You may not copy or reuse code within this file without written permission.
//==============================================================================
?>

<?php $module_id = rand(); ?>

<style type="text/css">
	.mailchimp-integration {
		overflow: hidden;
		margin-bottom: 20px;
	}
	.mailchimp-integration h3,
	.mailchimp-integration h4 {
		margin-top: 0;
	}
	.mailchimp-integration h4 {
		margin-bottom: 5px;
	}
	.mailchimp-integration label,
	.mailchimp-integration input[type="checkbox"],
	.mailchimp-integration input[type="radio"] {
		cursor: pointer;
	}
	.mi-message {
		display: none;
		font-size: 11px;
		margin-bottom: 10px;
	}
	.mi-message a {
		font-size: 11px;
	}
	.mi-block {
		display: inline-block;
	/*	margin: 5px;*/
		min-width: 150px;
		vertical-align: top;
	}
	.mi-toptext {
		display: block;
		margin: 5px;
	}
	.mi-required {
		color: #F00;
	}
	.mi-button {
		text-align: center;
	}
	#content .mi-button {
		margin-top: 26px;
	}
	#column-left .mi-button,
	#column-right .mi-button {
		margin-top: 15px;
	}
	.mi-button .button[disabled="disabled"] {
		cursor: not-allowed;
		opacity: 0.5;
	}
	.mi-padleft {
		margin-left: 10px;
	}

	.chimp-email{
		border:none;
		background: transparent;
		border-bottom: 1px solid #B6BDDF;
	}

	.chimp-submit{
		color:#4F5686;
		font-weight: bold;
		vertical-align: -webkit-baseline-middle;
	}
</style>

<?php if ($settings['modules_popup']) { ?>
	<style type="text/css">
		.mailchimp-integration {
			display: none;
			background: #FFF;
			border: 10px solid #444;
			padding: 0 15px 15px 15px;
			position: fixed;
			top: 20%;
			left: 38%;
			width: 25%;
			min-width: 210px;
			z-index: 100000;
			box-shadow: 0 0 10px #000;
			border-radius: 5px;
		}
		#mi-modal-overlay {
			display: none;
			background: #000;
			opacity: 0.5;
			position: fixed;
			_position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			z-index: 99999;
		}
	</style>
	<script type="text/javascript"><!--
		function showMailchimpPopup() {
			$('#mi-modal-overlay, .mailchimp-integration').fadeIn();
			$('.mailchimp-integration').find('.box-heading').removeClass('box-heading').wrap('<h3>');
			$('.mailchimp-integration').find('.box-content').removeClass('box-content');
		}
	//--></script>
	<div id="mi-modal-overlay" onclick="$(this).fadeOut().next().fadeOut()"></div>
<?php } ?>

<div class="mailchimp-integration box">
	<div class="box-heading">

	</div>
	<div class="box-content">
		<div class="mi-message"></div>

		<?php if ($subscribed) { ?>

			<div class="mi-block">
				<?php echo html_entity_decode(str_replace('[email]', $email, $settings['moduletext_subscribed_'.$language]), ENT_QUOTES, 'UTF-8'); ?>
			</div>
			<input type="hidden" name="email" value="<?php echo $email; ?>" />

		<?php } else { ?>

			<?php if (!empty($settings['moduletext_top_'.$language])) { ?>
				<div class="mi-toptext"><?php echo html_entity_decode($settings['moduletext_top_'.$language], ENT_QUOTES, 'UTF-8'); ?></div>
			<?php } ?>


			<!--edr-->
			<div class="mi-block">
				<input type="text" style="font-family:Arial, FontAwesome" placeholder="&#xf0e0; Email" class="chimp-email" name="email" onkeydown="if (event.keyCode == 13) miSubscribe<?php echo $module_id; ?>($(this))" <?php if ($email) echo 'value="' . $email . '" disabled="disabled"'; ?> />
				<a href="javascript:void(0)" class="chimp-submit" onclick="miSubscribe<?php echo $module_id; ?>($(this))">
					<?php //echo strtoupper($settings['moduletext_button_'.$language]); ?>
					SUBMIT
				</a>

			</div>
			<!--edr-->

			<?php if (!$email) { ?>
				<?php foreach (array('firstname', 'lastname', 'telephone', 'address', 'city', 'postcode', 'zone', 'country') as $field) { ?>
					<?php if (empty($settings['modules_' . $field]) || $settings['modules_' . $field] == 'hide') continue; ?>
					<div class="mi-block">
						<h4><?php if ($settings['modules_' . $field] == 'required') { ?>
								<span class="mi-required">*</span>
							<?php } ?>
							<?php echo ($field == 'address') ? substr($entry_address_1, 0, strpos($entry_address_1, ' ')) : ${'entry_'.$field}; ?><?php echo (strpos(${'entry_'.$field}, ':')) ? '' : ':'; ?>
						</h4>
						<?php if ($field == 'country') { ?>
							<select class="form-control" name="country">
								<?php foreach ($countries as $country) { ?>
									<option value="<?php echo $country['country_id']; ?>" <?php if ($country['country_id'] == $country_id) echo 'selected="selected"'; ?>><?php echo $country['name']; ?></option>
								<?php } ?>
							</select>
						<?php } elseif ($field == 'zone') { ?>
							<select class="form-control" name="zone"></select>
						<?php } else { ?>
							<input type="text" class="form-control" name="<?php echo $field; ?>" onkeydown="if (event.keyCode == 13) miSubscribe<?php echo $module_id; ?>($(this))" />
						<?php } ?>
					</div>
				<?php } ?>
			<?php } ?>
		<?php } ?>

		<?php if ($interest_groups && !empty($settings['moduletext_interestgroups_'.$language])) { ?>
			<div class="mi-toptext"><?php echo html_entity_decode($settings['moduletext_interestgroups_'.$language], ENT_QUOTES, 'UTF-8'); ?></div>
		<?php } ?>

		<?php foreach ($interest_groups as $interest_group) { ?>
			<?php if (empty($settings[$settings['listid'] . '_' . $interest_group['id'] . '_' . $language])) continue; ?>

			<div class="mi-block">
				<h4><?php echo html_entity_decode($settings[$settings['listid'] . '_' . $interest_group['id'] . '_' . $language], ENT_QUOTES, 'UTF-8'); ?>:</h4>
				<?php if ($interest_group['form_field'] == 'dropdown') { ?>

					<select class="mi-padleft form-control" name="interest_groups[<?php echo $interest_group['id']; ?>][]">
						<?php foreach ($interest_group['groups'] as $group) { ?>
							<?php if (empty($settings[$settings['listid'] . '_' . $interest_group['id'] . '_' . $group['id'] . '_' . $language])) continue; ?>
							<?php $selected = (isset($interests[$interest_group['id']]) && in_array($group['name'], $interests[$interest_group['id']])) ? 'selected="selected"' : ''; ?>
							<option value="<?php echo $group['name']; ?>" <?php echo $selected; ?>><?php echo $settings[$settings['listid'] . '_' . $interest_group['id'] . '_' . $group['id'] . '_' . $language]; ?></option>
						<?php } ?>
					</select>

				<?php } else { ?>

					<?php foreach ($interest_group['groups'] as $group) { ?>
						<?php if (empty($settings[$settings['listid'] . '_' . $interest_group['id'] . '_' . $group['id'] . '_' . $language])) continue; ?>
						<?php $checked = (isset($interests[$interest_group['id']]) && in_array($group['name'], $interests[$interest_group['id']])) ? 'checked="checked"' : ''; ?>
						<div class="mi-padleft">
							<label><input type="<?php echo str_replace('es', '', $interest_group['form_field']); ?>" value="<?php echo $group['name']; ?>" <?php echo $checked; ?> name="interest_groups[<?php echo $interest_group['id']; ?>][]" /> &nbsp;<?php echo html_entity_decode($settings[$settings['listid'] . '_' . $interest_group['id'] . '_' . $group['id'] . '_' . $language], ENT_QUOTES, 'UTF-8'); ?></label>
						</div>
					<?php } ?>

				<?php } ?>
			</div>
		<?php } ?>

		<?php if (!$subscribed) { ?>
				<!--edr-->
				<!--
			<div class="mi-block mi-button">
				<a href="javascript:void(0)" class="button btn btn-primary" onclick="miSubscribe<?php echo $module_id; ?>($(this))"><?php echo $settings['moduletext_button_'.$language]; ?></a>
			</div>
			--->
				<!--edr-->
		<?php } elseif ($subscribed && $interest_groups) { ?>

			<div class="mi-block mi-button">
				<a  class="button btn btn-primary" onclick="miSubscribe<?php echo $module_id; ?>($(this))"><?php echo $settings['moduletext_updatebutton_'.$language]; ?></a>
			</div>

		<?php } ?>
	</div>
</div>

<script type="text/javascript"><!--
	<?php if (empty($settings['modules_zone']) || $settings['modules_zone'] != 'hide') { ?>
		$('.mailchimp-integration select[name="country"]').change(function(){
			element = $(this);
			$.getJSON('index.php?route=<?php echo $type; ?>/<?php echo $name; ?>/getZones&country_id=' + element.val(), function(data) {
				zones = element.parent().parent().find('select[name="zone"]');
				zones.find('option').remove();
				for (i = 0; i < data.length; i++) {
					zones.append('<option value="' + data[i]['zone_id'] + '"' + (data[i]['zone_id'] == <?php echo $zone_id; ?> ? 'selected="selected"' : '') + '>' + data[i]['name'] + '</option>');
				}
			});
		});
		$('.mailchimp-integration select[name="country"]').each(function(){
			$(this).change();
		});
	<?php } ?>

	function miSubscribe<?php echo $module_id; ?>(element) {
		var message = element.parent().parent().find('.mi-message');
		element.parent().parent().find('a.button').attr('disabled', 'disabled');
		message.slideUp(function(){
			message.removeClass('attention success warning alert alert-warning alert-danger');

			if (!$.trim(element.parent().parent().find('input[name="email"]').val()).match(/^[^\@]+@.*\.[a-z]{2,6}$/i)) {

				message.html('<?php echo str_replace("'", "\'", $settings['moduletext_invalidemail_'.$language]); ?>').addClass('attention alert alert-warning').slideDown();
				element.parent().parent().find('a.button').removeAttr('disabled');
			<?php foreach (array('firstname', 'lastname', 'telephone', 'address', 'city', 'postcode', 'zone', 'country') as $field) { ?>
				<?php if (isset($settings['modules_' . $field]) && $settings['modules_' . $field] == 'required') { ?>
					} else if (!$.trim(element.parent().parent().find('input[name="<?php echo $field; ?>"]').val())) {
						message.html('<?php echo str_replace("'", "\'", $settings['moduletext_emptyfield_'.$language]); ?>').addClass('attention alert alert-warning').slideDown();
						element.parent().parent().find('a.button').removeAttr('disabled');
				<?php } ?>
			<?php } ?>

			} else {
				$.ajax({
					type: 'POST',
					url: 'index.php?route=<?php echo $type; ?>/<?php echo $name; ?>/subscribe',
					data: element.parent().parent().find(':input:not(:checkbox,:radio), :checkbox:checked, :radio:checked'),
					dataType: 'json',
					success: function(error) {
						if (error['code'] == 0) {
							var messageText = '<?php echo str_replace("'", "\'", $settings['moduletext_' . ($subscribed && $interest_groups ? 'updated' : 'success') . '_' . $language]); ?>';
							<?php if ($settings['modules_redirect']) { ?>
								alert(messageText);
								location = '<?php echo $settings['modules_redirect']; ?>';
							<?php } elseif ($settings['modules_popup']) { ?>
								alert(messageText);
								$('#mi-modal-overlay, .mailchimp-integration').fadeOut();
							<?php } else { ?>
								message.html(messageText).addClass('success alert alert-success').slideDown();
							<?php } ?>
						} else if (error['code'] == 214) {
							message.html('<?php echo html_entity_decode(str_replace('[email]', $email, $settings['moduletext_subscribed_'.$language]), ENT_QUOTES, 'UTF-8'); ?>').addClass('warning alert alert-danger').slideDown();
						} else {
							message.html(<?php echo ($settings['moduletext_error_'.$language]) ? "'" . str_replace("'", "\'", $settings['moduletext_error_'.$language]) . "'" : 'error[\'error\']'; ?>).addClass('warning alert alert-danger').slideDown();
						}
						element.parent().parent().find('a.button').removeAttr('disabled');
					}
				});
			}

		});
	}
//--></script>
