<h3>
  <?php echo $heading_title; ?>
</h3>

  <div class="box-content">
    <div class="bnews-list<?php if ($display_style) { ?> bnews-list-2<?php } ?>">
		<?php foreach ($article as $articles) { ?>
			<div class="artblock<?php if ($display_style) { ?> artblock-2<?php } ?>">



      <div class="article-edr">
        <p>
          <img class="article-image-edr"  src="image/catalog/rory/SLICINGS/article/other-posts.png" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" />
          <br>
          <a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a> <br>
         <?php echo $articles['date_added']; ?>
        </p>

      </div>



			</div>


		<?php } ?>
    </div>
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
	});
//--></script>
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
