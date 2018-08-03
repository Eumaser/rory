<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <?php if ($save_and_stay) { ?>
        <a class="btn btn-success" onclick="$('#save').val('stay');$('#form-faq').submit();"><i class="fa fa-check"></i> <?php echo $button_save_stay; ?></a>
        <?php } ?>

        <button type="submit" form="form-faq" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
      </div>
  
      <h1><?php echo $heading_title; ?></h1>

      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
       </ul>
    </div>
  </div>

    <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
     <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-faq" class="form-horizontal">
        <input type="hidden" name="save" id="save" value="0">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group" style="margin-bottom:30px;">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
                <input name="name" id="input-name" class="form-control" value="<?php echo $name; ?>" />
            </div>
          </div>
          
        <div class="row">
            
         <div class="col-sm-2">
          <ul class="nav nav-pills nav-stacked" id="section">
            
                <?php $section_row = 1; ?>
                
                <?php foreach ($sections as $section) { ?>
            <li><a href="#tab-section-<?php echo $section_row; ?>" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-section-<?php echo $section_row; ?>\']').parent().remove(); $('#tab-section-<?php echo $section_row; ?>').remove(); $('#section a:first').tab('show');"></i> <?php echo $tab_section . ' ' . $section_row; ?></a></li>
            <?php $section_row++; ?>
            <?php } ?>
            <li id="section-add"><a onclick="addSection();"><i class="fa fa-plus-circle"></i> <?php echo $text_add_section; ?></a></li> 
          </ul>
        </div>
      
        <div class="col-sm-10">
        
        <div class="tab-content first">
        
        <?php $section_row = 1; ?>
       
        <?php foreach ($sections as $section) { ?>
           
    <div class="tab-pane" id="tab-section-<?php echo $section_row; ?>">
    <div class="tab-content">
      
          <div class="form-group">
          <h4 class="col-sm-2"><?php echo $text_section_title; ?></h4>
          <div class="col-sm-10">
          <?php foreach ($languages as $language) { ?>
          <div class="input-group">
          <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
          <input type="text" class="form-control" name="sections[<?php echo $section_row; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo isset($section['title'][$language['language_id']]) ? $section['title'][$language['language_id']] : ''; ?>" size="40" />
      </div>
      <?php } ?>
          </div>
          </div> <!-- form-group ends -->
          
          <div id="groups-<?php echo $section_row; ?>">
          
          <div class="panel panel-default">
        
            <div class="panel-heading"><h3 class="panel-title"><?php echo $text_groups_heading; ?></h3></div>
        
            <div class="panel-body">
            
            <?php $group_row = 0; ?>
          
           <?php if (isset($section['groups'])) { ?>
              <?php foreach($section['groups'] as $group){ ?>
              
                <div id="group-row-<?php echo $section_row; ?>-<?php echo $group_row; ?>" class="group">
                
                <div id="language-<?php echo $section_row; ?>-<?php echo $group_row; ?>">
                  <ul class="nav nav-tabs" id="language<?php echo $section_row; ?>">
                    <?php foreach ($languages as $language) { ?>
                    <li><a href="#tab-section-<?php echo $section_row; ?>-<?php echo $group_row; ?>-<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                 </div>
               
               <div class="tab-content">
                <?php foreach ($languages as $language) { ?>
                <div class="tab-pane" id="tab-section-<?php echo $section_row; ?>-<?php echo $group_row; ?>-<?php echo $language['language_id']; ?>">
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="sections[<?php echo $section_row; ?>][groups][<?php echo $group_row; ?>][title][<?php echo $language['language_id']; ?>]"><?php echo $text_input_question; ?></label>
                    <div class="col-sm-10">
                      <input class="form-control" name="sections[<?php echo $section_row; ?>][groups][<?php echo $group_row; ?>][title][<?php echo $language['language_id']; ?>]" id="title-<?php echo $section_row; ?>-<?php echo $group_row; ?>-<?php echo $language['language_id']; ?>" value="<?php echo isset($section['groups'][$group_row]['title'][$language['language_id']]) ? $section['groups'][$group_row]['title'][$language['language_id']] : ''; ?>" size="50" />  
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label" for="sections[<?php echo $section_row; ?>][groups][<?php echo $group_row; ?>][description][<?php echo $language['language_id']; ?>]"><?php echo $text_input_answer; ?></label>
                    <div class="col-sm-10">
                      <textarea class="form-control custom-control summernote" cols="3" name="sections[<?php echo $section_row; ?>][groups][<?php echo $group_row; ?>][description][<?php echo $language['language_id']; ?>]" id="description-<?php echo $section_row; ?>-<?php echo $group_row; ?>-<?php echo $language['language_id']; ?>"><?php echo isset($section['groups'][$group_row]['description'][$language['language_id']]) ? $section['groups'][$group_row]['description'][$language['language_id']] : ''; ?></textarea>
                    </div>
                  </div>
                </div>
                <?php } ?>
                </div>
                <button type="button" class="btn btn-danger pull-right" onclick="removeGroup(<?php echo $section_row; ?>, <?php echo $group_row; ?>);"><i class="fa fa-trash-o"></i> <?php echo $button_remove; ?></button>
                <div class="clearfix"></div>
                <hr />
              </div> <!-- class group ends -->
              <?php $group_row++; ?>
                <?php } ?> <!-- foreach groups ends -->
                <?php } ?>
                <div id="group-holder-<?php echo $section_row; ?>"></div>
               </div>
              </div>
            </div> <!-- id groups- ends -->
            <button type="button" class="btn btn-success pull-right" onclick="addGroup(<?php echo $section_row; ?>);"><i class="fa fa-plus"></i> <?php echo $button_add_group; ?></button>
         </div> <!-- tab-content ends -->
        <?php $section_row++; ?>
        </div>
        <?php } ?> <!-- foreach sections ends -->
      
       </div>
      </div> <!-- col-sm-10 ends -->
      
     </form>
    </div>
   </div>
  </div>
 </div>
</div>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
<script type="text/javascript"><!--
<?php $section_row = 1; ?>
<?php foreach ($sections as $section) { ?>
<?php $group_row = 0; ?>
<?php if (isset($section['groups'])) { ?>
<?php foreach($section['groups'] as $group) { ?>
<?php foreach ($languages as $language) { ?>

CKEDITOR.replace('description-<?php echo $section_row; ?>-<?php echo $group_row; ?>-<?php echo $language['language_id']; ?>', {height: 300});
CKEDITOR.on('dialogDefinition', function (event)
        {
            var editor = event.editor;
            var dialogDefinition = event.data.definition;
            var dialogName = event.data.name;

            var tabCount = dialogDefinition.contents.length;
            for (var i = 0; i < tabCount; i++) {
                var browseButton = dialogDefinition.contents[i].get('browse');

                if (browseButton !== null) {
                    browseButton.hidden = false;
                    browseButton.onClick = function() {
						$('#modal-image').remove();
							var element = this;
							
							console.log(element.domId);

							var target = $("#"+element.domId).parents('.cke_dialog_ui_vbox').find('input').attr("id");
							console.log(target);


							var fm = $('<div/>').dialogelfinder({
							url : 'index.php?route=common/filemanager/connector&token=' + getURLVar('token'),
								lang : 'en',
								
								destroyOnClose : true,
							      uiOptions : {toolbar : [['home', 'back', 'forward'],['reload'],['mkdir', 'upload'],['open', 'download', 'getfile'],['info'],['quicklook'],['copy', 'cut', 'paste'],['rm'],['duplicate', 'rename', 'edit', 'resize'],['extract', 'archive','multiupload', 'sort'],['search'],['view'],['help']]},		
							     
							      contextmenu: {navbar: ["open", "|", "copy", "cut", "paste", "duplicate", "|", "rm", "|", "info"],cwd: ["reload", "back", "|", "upload", "mkdir", "mkfile", "paste", "|", "sort", "|", "info"],files: ["getfile", "|", "open", "quicklook", "|", "download", "|", "copy", "cut", "paste", "duplicate", "|", "rm", "|", "edit", "rename", "resize", "|", "archive","multiupload", "extract", "|", "info"]},				
								  getFileCallback : function(files, fm) {
							      console.log(files);
							      $('#'+target).val(files.url);
								},
								commandsOptions : {
									getfile : {
										oncomplete : 'close',
										folders : false
									}
								}
							}).dialogelfinder('instance'); 
							$('.dialogelfinder').css({'z-index':'99999999'});	
					}
                }
            }
        });

$('#description-<?php echo $section_row; ?>-<?php echo $group_row; ?>-___').attr({
  height: 300
});
<?php } ?>
<?php $group_row++; } ?>
<?php } ?>
<?php $section_row++; } ?>
//--></script>
<script type="text/javascript"><!--
var section_row = <?php echo $section_row; ?>;

function addSection() { 
  group_row = 0;
    html  = '<div class="tab-pane" id="tab-section-' + section_row + '">';
  html += '<div class="tab-content">';
  html += '<div class="form-group">';
  html += '<h4 class="col-sm-2"><?php echo $text_section_title; ?></h4>';
  html += '<div class="col-sm-10">';
  <?php foreach ($languages as $language) { ?>
  html += '<div class="input-group">';
    html += '<span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>';
    html += '<input type="text" class="form-control" name="sections[' + section_row + '][title][<?php echo $language['language_id']; ?>]" size="40" />';
  html += '</div>';
  <?php } ?>
  html += '</div>';
  html += '</div>';
    html += '<div id="groups-' + section_row + '">';
  html += '<div class="panel panel-default">';
    html += '<div class="panel-heading"><h3 class="panel-title"><?php echo $text_groups_heading; ?></h3></div>';
    html += '<div class="panel-body">';
  //groups as group
  html += '<div id="group-holder-' + section_row + '"></div>';
  html += '</div>';
  html += '</div>';
  html += '</div>';
    html += '<button type="button" class="btn btn-success pull-right" onclick="addGroup(' + section_row + ');"><i class="fa fa-plus"></i> <?php echo $button_add_group; ?></button>';
  html += '</div>';
  html += '</div>';
  
  $('.tab-content.first').append(html);
    
  $('#section-add').before('<li><a href="#tab-section-' + section_row + '" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$(\'a[href=\\\'#tab-section-' + section_row + '\\\']\').parent().remove(); $(\'#tab-section-' + section_row + '\').remove(); $(\'#section a:first\').tab(\'show\');"></i> <?php echo $tab_section; ?> ' + section_row + '</a></li>');
  
  $('#section a[href=\'#tab-section-' + section_row + '\']').tab('show');
  
  section_row++;
}
//--></script>

<script type="text/javascript"><!--
function addGroup( section_row) {
  group_row = $('#tab-section-' + section_row + ' .group').length;
  html  = '<div id="group-row-' + section_row + '-' + group_row + '" class="group">';
  html += '<div id="language-' + section_row + '-' + group_row + '">';
  html += '<ul class="nav nav-tabs" id="language-' + section_row + '">';
  <?php foreach ($languages as $language) { ?>
    html += '  <li><a href="#tab-section-' + section_row + '-' + group_row + '-<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>';
  <?php } ?>
  html += '</ul>';
    html += '</div>';
  html += '<div class="tab-content">';
  <?php foreach ($languages as $language) { ?>
  html += '<div class="tab-pane" id="tab-section-' + section_row + '-' + group_row + '-<?php echo $language['language_id']; ?>">';
  html += '<div class="form-group">';
  html += '<label class="col-sm-2 control-label"><?php echo $text_input_question; ?></label>';
  html += '<div class="col-sm-10"><input type="text" name="sections[' + section_row + '][groups][' + group_row + '][title][<?php echo $language['language_id']; ?>]" class="form-control"/></div>';
  html += '</div>';
  html += '<div class="form-group">';
  html += '<label class="col-sm-2 control-label"><?php echo $text_input_answer; ?></label>';
  html += '<div class="col-sm-10"><textarea name="sections[' + section_row + '][groups][' + group_row + '][description][<?php echo $language['language_id']; ?>]" id="description-' + section_row + '-' + group_row + '-<?php echo $language['language_id']; ?>" class="summernote-' + group_row + ' form-control"></textarea></div>';
  html += '</div>';
  html += '</div>';
  <?php } ?>
  html += '<button type="button" class="btn btn-danger pull-right" onclick="removeGroup('+ section_row +',' + group_row +');"><i class="fa fa-trash-o"></i> <?php echo $button_remove; ?></button>';
  html += '<div class="clearfix"></div>';
  html += '<hr />';
  html += '</div>';

  $('#group-holder-' + section_row ).before(html);


CKEDITOR.replace('description-' + section_row + '-' + group_row + '-<?php echo $language['language_id']; ?>', {height: 300});
CKEDITOR.on('dialogDefinition', function (event)
        {
            var editor = event.editor;
            var dialogDefinition = event.data.definition;
            var dialogName = event.data.name;

            var tabCount = dialogDefinition.contents.length;
            for (var i = 0; i < tabCount; i++) {
                var browseButton = dialogDefinition.contents[i].get('browse');

                if (browseButton !== null) {
                    browseButton.hidden = false;
                    browseButton.onClick = function() {
						$('#modal-image').remove();
							var element = this;
							
							console.log(element.domId);

							var target = $("#"+element.domId).parents('.cke_dialog_ui_vbox').find('input').attr("id");
							console.log(target);


							var fm = $('<div/>').dialogelfinder({
							url : 'index.php?route=common/filemanager/connector&token=' + getURLVar('token'),
								lang : 'en',
								
								destroyOnClose : true,
							      uiOptions : {toolbar : [['home', 'back', 'forward'],['reload'],['mkdir', 'upload'],['open', 'download', 'getfile'],['info'],['quicklook'],['copy', 'cut', 'paste'],['rm'],['duplicate', 'rename', 'edit', 'resize'],['extract', 'archive','multiupload', 'sort'],['search'],['view'],['help']]},		
							     
							      contextmenu: {navbar: ["open", "|", "copy", "cut", "paste", "duplicate", "|", "rm", "|", "info"],cwd: ["reload", "back", "|", "upload", "mkdir", "mkfile", "paste", "|", "sort", "|", "info"],files: ["getfile", "|", "open", "quicklook", "|", "download", "|", "copy", "cut", "paste", "duplicate", "|", "rm", "|", "edit", "rename", "resize", "|", "archive","multiupload", "extract", "|", "info"]},				
								  getFileCallback : function(files, fm) {
							      console.log(files);
							      $('#'+target).val(files.url);
								},
								commandsOptions : {
									getfile : {
										oncomplete : 'close',
										folders : false
									}
								}
							}).dialogelfinder('instance'); 
							$('.dialogelfinder').css({'z-index':'99999999'});	
					}
                }
            }
        });

  $('#description-' + section_row + '-' + group_row + '-___').attr({
    height: 200
  });
  $('.tab-pane li:first-child a').tab('show');
  
  group_row++;
}
  
function removeGroup(section_row, group_row){
  $('#group-row-' + section_row + '-' + group_row).remove();
}
//--></script> 

<script type="text/javascript"><!--
$('#section li:first-child a').tab('show');
//--></script>

<script type="text/javascript"><!--
<?php $section_row = 1; ?>
<?php $group_row = 0; ?>
<?php foreach ($sections as $section) { ?>
$('#language<?php echo $section_row; ?> li:first-child a').tab('show');
<?php $section_row++; ?>
<?php } ?> 
//--></script> 

<script type="text/javascript">
$('.summernote').focus(function( ){
$(this).summernote({ 
height: 200,
toolbar: [
    ['style', ['style']], // no style button
    ['style', ['bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear']],
    ['fontsize', ['fontsize']],
  ['fontname', ['fontname']],
    ['color', ['color']],
    ['para', ['ul', 'ol', 'paragraph']],
    ['height', ['height']], 
  ['table', ['table']], // no table button
    ['insert', ['picture', 'link', 'video', 'hr']], // no insert buttons
  ['codeview', ['fullscreen', 'codeview']] //no help button
  ]
});
});
</script>
<?php echo $footer; ?>