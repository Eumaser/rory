<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />

<meta name="description" content="test" />

<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>

<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />

<link href="catalog/view/theme/default/stylesheet/bootstrap-text.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/default/stylesheet/bootstrap-equal-height.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap-dialog.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link href="catalog/view/theme/default/stylesheet/custom.css" rel="stylesheet">
<script src="catalog/view/javascript/custom.js" type="text/javascript"></script>
</head>
<body class="<?php echo $class; ?>">

<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
        <div id="top-links" class="nav pull-left">
          <ul class="list-inline">
            <li>
              <img src="image/catalog/rory/Icons/phone.png" alt="asdasd">
              <span class="hidden-xs hidden-sm hidden-md">
                <span style="color:white">Need Help? Call us on</span>  <span style="color:white;font-weight:bold"><?php echo $telephone; ?></span>
              </span>
            </li>

          </ul>
        </div>

    <div id="top-linkss" class="nav pull-right">
      <ul class="list-inline">
        <li>
          <a href="<?php echo $fb_link; ?>"> <img src="image/catalog/rory/Icons/fb-white.png" alt="asdasd"></a>
          <span class="hidden-xs hidden-sm hidden-md"></span>
        </li>
        <li>
          <a href="<?php echo $ins_link; ?>"> <img src="image/catalog/rory/Icons/ig-white.png" alt="asdasd"></a>
          <span class="hidden-xs hidden-sm hidden-md"></span>
        </li>

      </ul>
    </div>


  </div>
</nav>


  <div class="edrnav">
    <div class="container">
      <nav id="menu" class="navbar">
        <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_menu; ?></span>
          <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav">
            <li>
              <a  style="padding:0px" href="<?php echo $home; ?>" <?php echo (isset($route) && $route=="common/home") ? 'class="active"' : '' ; ?>>
                <img src="<?php echo $logo; ?>" class="img-responsive" alt="">
              </a>
            </li>

          </ul>
          <ul class="nav navbar-nav navbar-right" style="margin-top:1em">
            <li> <!--new product-->
              <a href="<?php echo $new_arrival; ?>" <?php echo (isset($route) && $route=="product/category") ? 'class="active"' : '' ; ?>> <?php echo $text_news; ?></a>
            </li>
            <li class="dropdown"><!--product/ncategory show dropdown--->
              <a href="<?php echo $shop_all; ?>" ><?php echo $text_shop_all; ?></a>
              <ul class="dropdown-menu dropdown-menu-right">

                <?php if ($categories): ?>
                  <li >
                    <a style="font-weight:bold" href="#">Categories</a>
                  </li>


                  <?php foreach ($categories as $category): ?>
                    <li><a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a></li>

                  <?php endforeach; ?>

                <?php endif; ?>

              </ul>
            </li>
            <li><!--about page--->
              <a href="<?php echo $about_us; ?>" <?php echo (isset($route) && $route=="information/information") ? 'class="active"' : '' ; ?>><?php echo $text_about; ?></a>
            </li>
            <li><!---artcle/blogs--->
              <a href="<?php echo $news; ?>" <?php echo (isset($route) && $route=="news/ncategory") ? 'class="active"' : '' ; ?>><?php echo $text_article; ?></a>
            </li>
            <li><!--faqs--->
              <a href="<?php echo $faq; ?>" <?php echo (isset($route) && $route=="information/faq") ? 'class="active"' : '' ; ?>><?php echo $text_faq; ?></a>
            </li>
            <li><!---contact us page--->
              <a href="<?php echo $contact; ?>" <?php echo (isset($route) && $route=="information/contact") ? 'class="active"' : '' ; ?>><?php echo $text_contact; ?></a>
            </li>
            <li><!--search page--->
              <a href="<?php echo $search_link; ?>" <?php echo (isset($route) && $route=="product/search") ? 'class="active"' : '' ; ?>>
                <img src="image/catalog/rory/Icons/search-nav.png" alt="asdasd">
              </a>
            </li>

            <li class="dropdown"><!--account/login/registr--->
              <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown">
                <img src="image/catalog/rory/Icons/user.png" alt="asdasd">
              </a>
              <ul class="dropdown-menu dropdown-menu-right">
                <?php if ($logged) { ?>
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                <?php } else { ?>
                <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                <?php } ?>
              </ul>
            </li>


            <li><!---cart/checkout etc--->
              <?php echo $cart; ?>
            </li>




          </ul>

        </div>
      </nav>
    </div>

  </div>

<!---
  <div class="container">
    <nav id="menu" class="navbar">
      <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_menu; ?></span>
        <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
      </div>
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li><a href="<?php echo $home; ?>" <?php echo (isset($route) && $route=="common/home") ? 'class="active"' : '' ; ?>><?php echo $text_home; ?></a></li>
          <?php if ($categories) { ?>
          <?php foreach ($categories as $category) { ?>
          <?php if ($category['children']) { ?>
          <li class="dropdown">
            <?php if ($top_category_id == $category['category_id']) { ?>
            <a href="<?php echo $category['href']; ?>" class="dropdown-toggle active" data-toggle="dropdown"><?php echo $category['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
            <?php } ?>
            <div class="dropdown-menu">
              <div class="dropdown-inner">
                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                <ul class="list-unstyled">
                  <?php foreach ($children as $child) { ?>
                  <?php if ($top_child_id == $child['category_id']) { ?>
                  <li><a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a></li>
                  <?php } else { ?>
                  <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                  <?php } ?>
                  <?php } ?>
                </ul>
                <?php } ?>
              </div>
              <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
          </li>
          <?php } else { ?>
          <?php if ($top_category_id == $category['category_id']) { ?>
          <li><a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a></li>
          <?php } else { ?>
          <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>

          <li><a href="<?php echo $contact; ?>" <?php echo (isset($route) && $route=="information/contact") ? 'class="active"' : '' ; ?>><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
    </nav>
  </div>

---->

<?php if ($content_header) { ?>
<div class="container">
  <div class="row">
    <div class="col-sm-12"><?php echo $content_header; ?></div>
  </div>
</div>
<?php } ?>
