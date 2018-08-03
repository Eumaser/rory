<?php echo $header; ?>



<div class="banner-header">
    <div class="banner-caption">
      <h1 style="color:white">
        <?php echo strtoupper($heading_title) ?>
       </h1>
      <h3 style="color:white">HOME/<?php echo strtoupper($heading_title) ?></h3>
    </div>
</div>

<div class="banner-news">

  <div class="container">
    <br>
    <div class="row"><?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>

      <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <h1 class="text-center color-titles"><?php echo $heading_title; ?></h1>
        <br>
        <?php if ($orders) { ?>
        <div class="table-responsive">

          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr>
                <td class="text-left order-table-head" style="width:20%"><?php echo $column_order_id; ?></td>
                <td class="text-left order-table-head" style="width:20%"><?php echo $column_date_added; ?></td>
                <td class="text-left order-table-head" style="width:40%"><?php echo $column_total; ?></td>
                <td class="text-left order-table-head" style="width:10%"><?php echo $column_status; ?></td>
                <td class="order-table-head" style="width:10%">ACTION</td>
              </tr>
            </thead>
          </table>
          <hr style="margin-top:0px; border-top:1px solid #C8C7C4">
          <?php foreach ($orders as $order): ?>
            <table class="table">
              <tbody>
                <td class="text-left order-table-td order-table-start">#<?php echo $order['order_id']; ?></td>
                <td class="text-left order-table-td" style="width:20%">
                  <?php echo $order['date_added']; ?>
                </td>
                <td class="text-left order-table-td" style="width:40%"><?php echo $order['total']; ?></td>

                <td class="text-left order-table-td" style="width:10%"><?php echo strtoupper($order['status']) ; ?></td>
                <td class="text-left order-table-td order-table-end" style="width:10%">
                  <a href="<?php echo $order['href']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="">VIEW</a>
                </td>

              </tbody>
            </table>
          <?php endforeach; ?>

        </div>
        <div class="text-right"><?php echo $pagination; ?></div>
        <?php } else { ?>
        <p><?php echo $text_empty; ?></p>
        <?php } ?>
        <div class="buttons clearfix">
          <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
        </div>
        <?php echo $content_bottom; ?>
      </div>
      <?php echo $column_right; ?>
    </div>
  </div>
</div>




<?php echo $footer; ?>
