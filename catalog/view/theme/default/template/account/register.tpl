
<?php
    $text_none = $text_select = $entry_zone;
?>

<?php echo $header; ?>

  <div class="banner-header">
      <div class="banner-caption">
        <h1 style="color:white">
          <?php echo $heading_title ?>
         </h1>
        <h3 style="color:white">HOME/REGISTER</h3>
      </div>
  </div>



  <div class="banner-register">
    <div class="container">

      <br><br>
      <?php if ($error_warning): ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
      <?php endif; ?>

      <div class="row">
        <?php echo $column_left; ?>

        <?php if ($column_left && $column_right): ?>
            <?php $class = 'col-sm-6'; ?>
        <?php elseif($column_left || $column_right): ?>
            <?php $class = 'col-sm-9'; ?>
        <?php else: ?>
            <?php $class = 'col-sm-12'; ?>
        <?php endif; ?>


        <div id="content" class="<?php echo $class; ?>">
          <?php echo $content_top; ?>
          <h1 class="text-center"><?php echo $heading_title; ?></h1>

          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <fieldset id="account">

              <div class="form-group required" style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
                <label class="col-sm-2 control-label"><?php echo $entry_customer_group; ?></label>
                <div class="col-sm-10">

                  <?php foreach ($customer_groups as $customer_group): ?>
                    <?php if ($customer_group['customer_group_id'] == $customer_group_id): ?>
                      <div class="radio">
                        <label>
                          <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                          <?php echo $customer_group['name']; ?>
                        </label>
                      </div>
                    <?php else: ?>
                      <div class="radio">
                        <label>
                          <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
                          <?php echo $customer_group['name']; ?>
                        </label>
                      </div>
                    <?php endif; ?>
                  <?php endforeach; ?>
                </div>
              </div>


              <div class="row"> <!--Row of the form--->
                <div class="col-sm-6"> <!--Left side of form-->
                  <div class="form-group required">
                    <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
                    <?php if ($error_firstname): ?>
                        <div class="text-danger"><?php echo $error_firstname; ?></div>
                    <?php endif; ?>
                  </div>
                  <div class="form-group required">
                    <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
                    <?php if ($error_lastname): ?>
                        <div class="text-danger"><?php echo $error_lastname; ?></div>
                    <?php endif; ?>
                  </div>
                  <div class="form-group required">
                    <input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                    <?php if ($error_email): ?>
                      <div class="text-danger"><?php echo $error_email; ?></div>
                    <?php endif; ?>
                  </div>
                  <div class="form-group required">
                    <input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
                    <?php if ($error_telephone): ?>
                      <div class="text-danger"><?php echo $error_telephone; ?></div>
                    <?php endif; ?>
                  </div>
                  <div class="form-group required">
                    <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-fax" class="form-control" />
                  </div>
                  <div class="form-group required">
                    <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                    <?php if ($error_password): ?>
                        <div class="text-danger"><?php echo $error_password; ?></div>
                    <?php endif; ?>
                  </div>
                  <div class="form-group required">
                    <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="form-control" />
                    <?php if ($error_confirm): ?>
                        <div class="text-danger"><?php echo $error_confirm; ?></div>
                    <?php endif; ?>
                  </div>

                </div><!--End Left side of form-->

                <div class="col-sm-6"> <!--right side form--->
                  <div class="form-group required">
                    <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-company" class="form-control" />
                  </div>
                  <div class="form-group required">
                    <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-address-1" class="form-control" />
                    <?php if ($error_address_1): ?>
                      <div class="text-danger"><?php echo $error_address_1; ?></div>
                    <?php endif; ?>
                  </div>
                  <div class="form-group required">
                    <input type="text" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-address-2" class="form-control" />
                  </div>
                  <div class="form-group required">
                    <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-city" class="form-control" />
                    <?php if ($error_city): ?>
                      <div class="text-danger"><?php echo $error_city; ?></div>
                    <?php endif; ?>
                  </div>
                  <div class="form-group">
                    <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-postcode" class="form-control" />
                    <?php if ($error_postcode): ?>
                      <div class="text-danger"><?php echo $error_postcode; ?></div>
                    <?php endif; ?>
                  </div>
                  <div class="form-group required">
                    <select name="country_id" id="input-country" class="form-control">
                      <option value=""><?php echo $entry_country; ?></option>
                      <?php foreach ($countries as $country): ?>
                        <?php if ($country['country_id'] == $country_id) { ?>
                        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                        <?php } ?>
                      <?php endforeach; ?>
                    </select>
                    <?php if ($error_country) { ?>
                    <div class="text-danger"><?php echo $error_country; ?></div>
                    <?php } ?>
                  </div>
                  <div class="form-group required">
                    <select name="zone_id" id="input-zone" class="form-control">
                    </select>
                    <?php if ($error_zone): ?>
                        <div class="text-danger"><?php echo $error_zone; ?></div>
                    <?php endif; ?>
                  </div>

                </div><!--End right side form--->

              </div><!--End Row of the form--->



              <?php foreach ($custom_fields as $custom_field) { ?>
              <?php if ($custom_field['location'] == 'account') { ?>
              <?php if ($custom_field['type'] == 'select') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
                    <option value=""><?php echo $text_select; ?></option>
                    <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                    <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
                    <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'radio') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div>
                    <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                    <div class="radio">
                      <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
                      <label>
                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                        <?php echo $custom_field_value['name']; ?></label>
                      <?php } else { ?>
                      <label>
                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                        <?php echo $custom_field_value['name']; ?></label>
                      <?php } ?>
                    </div>
                    <?php } ?>
                  </div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'checkbox') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div>
                    <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                    <div class="checkbox">
                      <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $register_custom_field[$custom_field['custom_field_id']])) { ?>
                      <label>
                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                        <?php echo $custom_field_value['name']; ?></label>
                      <?php } else { ?>
                      <label>
                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                        <?php echo $custom_field_value['name']; ?></label>
                      <?php } ?>
                    </div>
                    <?php } ?>
                  </div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'text') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'textarea') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'file') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                  <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'date') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div class="input-group date">
                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                    </span></div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'time') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div class="input-group time">
                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                    </span></div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'datetime') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div class="input-group datetime">
                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                    </span></div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php } ?>
              <?php } ?>
            </fieldset>

            <fieldset id="address">
              <?php foreach ($custom_fields as $custom_field) { ?>
              <?php if ($custom_field['location'] == 'address') { ?>
              <?php if ($custom_field['type'] == 'select') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
                    <option value=""><?php echo $text_select; ?></option>
                    <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                    <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
                    <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'radio') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div>
                    <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                    <div class="radio">
                      <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
                      <label>
                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                        <?php echo $custom_field_value['name']; ?></label>
                      <?php } else { ?>
                      <label>
                        <input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                        <?php echo $custom_field_value['name']; ?></label>
                      <?php } ?>
                    </div>
                    <?php } ?>
                  </div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'checkbox') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div>
                    <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
                    <div class="checkbox">
                      <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $register_custom_field[$custom_field['custom_field_id']])) { ?>
                      <label>
                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
                        <?php echo $custom_field_value['name']; ?></label>
                      <?php } else { ?>
                      <label>
                        <input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
                        <?php echo $custom_field_value['name']; ?></label>
                      <?php } ?>
                    </div>
                    <?php } ?>
                  </div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'text') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'textarea') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'file') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                  <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'date') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div class="input-group date">
                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                    </span></div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'time') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div class="input-group time">
                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                    </span></div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php if ($custom_field['type'] == 'datetime') { ?>
              <div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>">
                <label class="col-sm-2 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
                <div class="col-sm-10">
                  <div class="input-group datetime">
                    <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                    </span></div>
                  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php } ?>
              <?php } ?>
              <?php } ?>
            </fieldset>

            <!---edr modify-->
            <hr class="register-ruler">
            <div class="row"> <!---newsletter and terms of conditions-->
              <div class="col-sm-6">
                <fieldset>
                  <div class="form-group checkbox-hide">
                      <?php if ($newsletter): ?>
                        <input type="checkbox" name="newsletter" value="1" checked="checked" class="news-checkmark"/>
                        <span class="news-checkmark"></span>
                      <?php else: ?>
                        <input type="checkbox" name="newsletter" value="1" class="news-checkmark" />
                        <span class="news-checkmark"></span>
                      <?php endif; ?>
                      <span class="newsletter">
                          <label class=""><?php echo $entry_newsletter; ?> </label>
                      </span>

                  </div>
                </fieldset>

              </div>
              <div class="col-sm-6 text-right">
                  <?php if ($text_agree): ?>
                      <?php if ($agree): ?>
                        <input type="checkbox" name="agree" value="1" checked="checked" />
                      <?php else: ?>
                        <input type="checkbox" name="agree" value="1" />
                      <?php endif; ?>
                      <span class="agree">
                          <?php echo $text_agree; ?>
                      </span>

                    <br><br><br>
                    <input type="submit" value="Submit" class="btn btn-primary pink-button" />
                  <?php else: ?>

                  <?php endif; ?>
            </div>


              </div>
            </div><!---End newsletter and terms of conditions-->
          </form>


          <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?>
      </div>

    <br><br>

  </div>









<script type="text/javascript"><!--
// Sort the custom fields
$('#account .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .form-group').length) {
		$('#account .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#account .form-group').length) {
		$('#account .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#account .form-group').length) {
		$('#account .form-group:first').before(this);
	}
});

$('#address .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#address .form-group').length) {
		$('#address .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#address .form-group').length) {
		$('#address .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#address .form-group').length) {
		$('#address .form-group:first').before(this);
	}
});

$('input[name=\'customer_group_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/customfield&customer_group_id=' + this.value,
		dataType: 'json',
		success: function(json) {
			$('.custom-field').hide();
			$('.custom-field').removeClass('required');

			for (i = 0; i < json.length; i++) {
				custom_field = json[i];

				$('#custom-field' + custom_field['custom_field_id']).show();

				if (custom_field['required']) {
					$('#custom-field' + custom_field['custom_field_id']).addClass('required');
				}
			}


		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('button[id^=\'button-custom-field\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$(node).parent().find('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.time').datetimepicker({
	pickDate: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});
//--></script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/account/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}

			html = '<option value=""><?php echo $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';

					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}

					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}

			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>



<?php echo $footer; ?>
