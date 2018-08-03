
<?php foreach ($sections  as $section): ?>

<div class="panel-group" id="section<?php echo $section['index']; ?>" role="tablist" aria-multiselectable="true">

    <?php if ($section['title']): ?>
        <h1> <strong> <?php echo $section['title']; ?></strong></h1>
    <?php endif; ?>

    <?php foreach ($section['groups'] as $key => $group): ?>
      <div class="panel panel-default">
        <div class="panel-heading" role="tab">
          <h4 class="panel-title ">

            <a data-toggle="collapse" data-parent="#section<?php echo $section['index']; ?>" href="#item<?php echo $section['index']; ?>-<?php echo $group['id']; ?>">
              <?php echo $group['title']; ?>
            </a>

            <span class="pull-right">
              <a data-toggle="collapse" data-parent="#section<?php echo $section['index']; ?>" href="#item<?php echo $section['index']; ?>-<?php echo $group['id']; ?>">
                 <img src="image/catalog/rory/Icons/collapse.png" alt="asdasd">
              </a>
            </span>

          </h4>
        </div>
        <div id="item<?php echo $section['index']; ?>-<?php echo $group['id']; ?>" class="panel-collapse collapse" role="tabpanel">
          <div class="panel-body">
            <?php echo $group['description']; ?>
          </div>
        </div>
      </div>
    <?php endforeach; ?>



</div>



<?php endforeach; ?>
