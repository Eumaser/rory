
<?php if ($is_author): ?>
  <?php if ($author_image || $author_desc): ?>
    <div class="category-info">
      <?php if ($author_image): ?>
          <div class="image">
            <img src="<?php echo $author_image; ?>" alt="<?php echo $author; ?>" />
          </div>
      <?php endif; ?>
      <?php if ($author_desc): ?>
          <?php echo $author_desc; ?>
      <?php endif; ?>
    </div>
  <?php endif; ?>
<?php endif; ?>




<?php if ($is_category) { ?>
 <?php if ($thumb || $description) { ?>
  <div class="category-info">
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($ncategories) { ?>
  <h2><?php echo $text_refine; ?></h2>
  <div class="category-list" style="border-bottom: 2px solid #eee;">
    <?php if (count($ncategories) <= 5) { ?>
    <ul>
      <?php foreach ($ncategories as $ncategory) { ?>
      <li><a href="<?php echo $ncategory['href']; ?>"><?php echo $ncategory['name']; ?></a></li>
      <?php } ?>
    </ul>
    <?php } else { ?>
    <?php for ($i = 0; $i < count($ncategories);) { ?>
    <ul>
      <?php $j = $i + ceil(count($ncategories) / 4); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($ncategories[$i])) { ?>
      <li><a href="<?php echo $ncategories[$i]['href']; ?>"><?php echo $ncategories[$i]['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
<?php } ?>

<?php if ($article): ?>
  <div class="bnews-list<?php if ($display_style) { ?> bnews-list-2<?php } ?>">
    <?php foreach ($article as $articles): ?>
      <div class="artblock<?php if ($display_style) { ?> artblock-2<?php } ?>">

        <?php if ($articles['thumb']): ?>
          <div class="ncategory-thumb">
            <a class="ncategory-thumbnail" href="<?php echo $articles['href']; ?>">
              <img class="article-image" align="left" src="<?php echo $articles['thumb']; ?>" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" />
            </a>
          </div>

        <?php endif; ?>

        <?php if ($articles['name']): ?>
          <div class="name"><a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a></div>
        <?php endif; ?>

        <div class="article-meta ncategory-meta">
          <?php if ($articles['author']): ?>
            <?php echo $text_posted_by; ?> <a href="<?php echo $articles['author_link']; ?>"><?php echo $articles['author']; ?></a> |
          <?php endif; ?>

          <?php if ($articles['date_added']): ?>
            <?php echo strtoupper(date('F d, Y',strtotime($articles['date_added']) )); ?> |

          <?php endif; ?>

          <?php if ($articles['du']): ?>
            <?php// echo $text_updated_on; ?> <?php //cho $articles['du']; ?> |
          <?php endif; ?>

          <?php if ($articles['category']): ?>
            <?php echo strtoupper($articles['category']) ; ?> |
          <?php endif; ?>


          <?php if ($articles['total_comments']): ?>
            <?php if (!$disqus_status && !$fbcom_status): ?>
                <?php echo $articles['total_comments']; ?>
                -
                <a href="<?php echo $articles['href']; ?>#comments">
                  <?php echo strtoupper($text_comments_v) ; ?>
                </a>
            <?php elseif($fbcom_status): ?>
                <fb:comments-count href="<?php echo $articles['canhref']; ?>"></fb:comments-count>
                 -
                  <a href="<?php echo $articles['href']; ?>#comments">
                    <?php echo $text_comments_v; ?>
                 </a>
            <?php else: ?>
                <a data-disqus-identifier="article_<?php echo $articles['article_id']; ?>" href="<?php echo $articles['href']; ?>#disqus_thread">
                  <?php echo $text_comments_v; ?>
                </a>
            <?php endif; ?>
        <?php endif; ?>

        </div>

        <?php if ($articles['custom1']) { ?>
          <div class="custom1"><?php echo $articles['custom1']; ?></div>
        <?php } ?>
        <?php if ($articles['custom2']) { ?>
          <div class="custom2"><?php echo $articles['custom2']; ?></div>
        <?php } ?>
        <?php if ($articles['custom3']) { ?>
          <div class="custom3"><?php echo $articles['custom3']; ?></div>
        <?php } ?>
        <?php if ($articles['custom4']) { ?>
          <div class="custom4"><?php echo $articles['custom4']; ?></div>
        <?php } ?>
        <?php if ($articles['description']) { ?>
          <div class="description"><?php echo $articles['description']; ?></div>
        <?php } ?>

        <?php if ($articles['button']) { ?>
          <div class="blog-button ncategory-button">
            <a class="button" href="<?php echo $articles['href']; ?>"><?php echo $button_more; ?> ></a>
          </div>
        <?php } ?>
      </div>

      <hr>
    <?php endforeach; ?>



  </div>
  <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $pag_results; ?></div>
  </div>



  <script type="text/javascript"><!--
    $(document).ready(function() {
        $('img.article-image').each(function(index, element) {
        var articleWidth = $(this).parent().parent().width() * 0.7;
        var imageWidth = $(this).width() + 10;
        if (imageWidth >= articleWidth) {
          $(this).attr("align","center");
          $(this).parent().addClass('bigimagein');
        }
        });
        $(window).resize(function() {
        $('img.article-image').each(function(index, element) {
        var articleWidth = $(this).parent().parent().width() * 0.7;
        var imageWidth = $(this).width() + 10;
        if (imageWidth >= articleWidth) {
          $(this).attr("align","center");
          $(this).parent().addClass('bigimagein');
        }
        });
        });
      });
    //-->
  </script>

<?php endif; ?>








<?php if ($is_category) { ?>
  <?php if (!$ncategories && !$article) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
<?php } else { ?>
  <?php if (!$article) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
<?php } ?>

<?php if ($disqus_status) { ?>

  <script type="text/javascript">
  var disqus_shortname = '<?php echo $disqus_sname; ?>';
  (function () {
  var s = document.createElement('script'); s.async = true;
  s.type = 'text/javascript';
  s.src = 'http://' + disqus_shortname + '.disqus.com/count.js';
  (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
  }());
  </script>
<?php } ?>

<?php if ($fbcom_status) { ?>
<script type="text/javascript">
      window.fbAsyncInit = function() {
        FB.init({
          appId      : '<?php echo $fbcom_appid; ?>',
		  status     : true,
          xfbml      : true,
		  version    : 'v2.0'
        });
      };

      (function(d, s, id){
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));
</script>
<?php } ?>
