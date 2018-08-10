<?php echo $header; ?>

<?php $x = 1 ?>



<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div style="margin-top:-30px;min-height:0px;" id="content" class="<?php echo $class; ?>">
      <?php echo $content_top; ?><?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?>
  </div>


    <?php if (!$subscribed): ?>
      <div class="overlay" id="overlay">
        <div class="overlay-content">

          <div class="text-right">
            <img src="image/catalog/rory/Icons/close.png"  alt="asdasd" onclick="off()">

          </div>
          <div class="text-center inner-form">
            <img src="image/catalog/rory/Icons/newslettermail.png"  alt="asdasd">
            <br>
            <h2 class="color-titles">Subscribe to our</h2>
            <h1 class="color-titles">Newsletter</h1>
            <p>
              <small>
                Duis sed odio sit amet nibh vulate cursus sit amet mauris.Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio
              </small>
            </p>
            <input type="text" name="email" id="altemail" value="" class="form-control" placeholder="Enter your email here">
            <br>
            <button type="button" class="newsletter-button" name="button" onclick="overlay_subs()">SHOP NOW</button>
          </div>
        </div>

      </div>
      <?php else: ?>
        <h4>none</h4>
    <?php endif; ?>



</div>
<div class="banner-news" style="margin-top:-15px">
  <br><br>
  <div class="container">
    <div class="row cols">
      <div class="col-md-4 text-center">
          <img src="image/catalog/rory/Icons/gift.png" alt="asdasd">
          <h4>
            <strong>Always Gift Wrapped Our Thanks To you</strong>
          </h4>
          <p>
            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
          </p>
      </div>
      <div class="col-md-4 text-center">
          <img src="image/catalog/rory/Icons/shipping.png" alt="asdasd">
          <h4>
            <strong>Free Shipping on all Orders</strong>
          </h4>
          <p>
            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
          </p>
      </div>
      <div class="col-md-4 text-center">
          <img src="image/catalog/rory/Icons/hassle.png" alt="asdasd">
          <h4>
            <strong> No Hassle Returns and Exchange</strong>
          </h4>
          <p>
            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
          </p>
      </div>
    </div>
  </div>

</div>





<br>

<div class="banner-intro">
  <div class="container">
    <div class="row">
            <div class="col-sm-3">

                <div class="boys">
                    <div class="boys-content">
                      <h2 class="boys-title">BOYS CLOTHING</h2>
                      <a  class="category-links" href="<?php echo $categories[0]['href'] ?>">SHOP NOW >></a>
                    </div>
                </div>

            </div>
            <div class="col-sm-9">

              <div class="row" style="margin-bottom:10px;">
                <div class="col-sm-4">
                  <div class="arrivals">
                    <div class="arrival-content">
                      <h2 class="color-titles" style="line-height:0px">New</h2>
                      <h2 class="color-titles" style="line-height:0px">Arrivals</h2>
                      <br>
                      <a class="category-links" href="<?php echo $categories[2]['href'] ?>">SHOP NOW >></a>
                    </div>
                  </div>
                </div>
                <div class="col-sm-8" >
                  <div class="girls">
                    <div class="girls-content">
                      <h1 class="girls-titles" style="line-height:1">GIRLS</h1>
                      <h1 class="girls-titles" style="line-height:0px">CLOTHING</h1>
                      <br>
                      <a class="category-links" href="<?php echo $categories[1]['href'] ?>">SHOP NOW >></a>
                    </div>
                  </div>
                </div>
              </div>

              <div class="row">
                  <div class="col-sm-8">
                    <div class="babies">
                      <div class="babies-content">
                        <h1 class="girls-titles" style="line-height:1">BABY</h1>
                        <h1 class="girls-titles" style="line-height:0px">CLOTHING</h1>
                        <br>
                        <a class="category-links" href="  <?php echo $categories[4]['href'] ?>">SHOP NOW >></a>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="promotion">
                      <div class="promotion-title text-center">
                        <h2 class="boys-title" style="line-height:1">PROMOTION</h2>

                      </div>
                      <div class="promotion-link">
                        <a class="category-links-odd "href="  <?php echo $categories[3]['href'] ?>">SHOP NOW >></a>
                      </div>
                    </div>
                  </div>
              </div>

            </div>
    </div>
  </div>
  <br>
</div>




<div class="banner-dumb-products">
    <div class="container">

      <div class="banner-slick-products text-center">
        <br><br>
        <h1 class="text-center">Featured Products</h1>
        <br>

      <ul class="nav nav-pills products-tabs">
        <?php foreach ($categories as $v): ?>
          <?php if ($v['name']=='Boys'): ?>
            <!---
            <li class="active"><a data-toggle="pill" href="#<?php echo $v['name'] ?>"><?php echo $v['name'] ?></a></li>
            ---->
            <li class="active"><a data-toggle="pill" href="#<?php echo $v['category_id'] ?>"><?php echo $v['name'] ?></a></li>

          <?php else: ?>
            <!----
            <li class=""><a data-toggle="pill" href="#<?php echo $v['name'] ?>"><?php echo $v['name'] ?></a></li>
            --->
            <li class=""><a data-toggle="pill" href="#<?php echo $v['category_id'] ?>"><?php echo $v['name'] ?></a></li>

          <?php endif; ?>
        <?php endforeach; ?>
      </ul>
      <br><br>


      <div class="tab-content" style="position:relative">
        <?php foreach ($categories as $v): ?>
          <?php if ($v['name'] =='Boys'): ?>
            <div id="<?php echo $v['category_id'] ?>" class="tab-pane fade in active">
          <?php else: ?>
            <div id="<?php echo $v['category_id'] ?>" class="tab-pane fade">
          <?php endif; ?>


            <div class="feature-responsive">
              <?php foreach ($altproduct as $key => $value): ?>
                  <?php if ($v['category_id'] == $value['category_id']): ?>
                    <div class="alt-image">

                      <div class="test">
                        <img src="<?php echo $value['thumb']; ?>" alt="<?php echo $value['name']; ?>" title="<?php echo $value['name']; ?>" class="img-responsive" />

                        <p class="homepage-name">
                          <?php echo $value['name'] ?>
                        </p>
                        <p>
                          <?php if ($value['special']): ?>
                            <span class="homepage-special">
                                <?php echo $curr.$value['special'] ?>
                            </span>
                            <span class="homepage-default">
                                <?php echo $curr.$value['default_price'] ?>
                            </span>
                          <?php else: ?>
                            <span class="homepage-default-price">
                              <?php echo $curr.$value['default_price'] ?>
                            </span>
                          <?php endif; ?>
                        </p>

                        <div class="homepage-buttons">
                          <a href="<?php echo $value['view_href'] ?>" class="round-button btn-glass"><i class="fa fa-search fa-1" aria-hidden="true"></i></a>
                          <a href="javascript:void(0)" class="round-button btn-bag"  onclick="cart.altadd('<?php echo $value['product_id'] ?>', '1');">
                            <i class="fa fa-shopping-bag fa-1"></i>
                          </a>
                        </div>
                      </div>

                    </div>


                  <?php endif; ?>

              <?php endforeach; ?>
            </div>

          </div>

        <?php endforeach; ?>
        <br><br>
        <div class="">
          <button type="button" name="button" class="newsletter-button" onclick="location.href='<?php echo $shop_all ?>'">VIEW ALL</button>
        </div>
      </div>



      </div>
    </div>
  </div>
</div>

<br>


<br>
<h4 class="text-center">Instagram</h4>
<h1 class="text-center color-titles">Follow Us</h1>
<div class="banner-instagram flex-container">

    <?php foreach ($instagram as $i):  ?>
        <div class="">
          <img src="image/<?php echo $i['image'] ?>" alt="test" style="width:100%">
        </div>
    <?php endforeach; ?>


</div>


<script>
$( document ).ready(function() {
  $('.feature-responsive').slick({
    infinite: true,
    slidesToShow: 5,
    slidesToScroll:1,

    prevArrow:"<button type='button' class='homepage-arrow-left'><i class='fa fa-angle-left fa-3'> </i></button>",
    nextArrow:"<button type='button' class='homepage-arrow-right'><i class='fa fa-angle-right fa-3'> </i></button>",
    responsive: [
   {
     breakpoint: 1024,
     settings: {
       slidesToShow: 3,
       slidesToScroll: 3,

     }
   },
   {
     breakpoint: 600,
     settings: {
       slidesToShow: 2,
       slidesToScroll: 2,
       arrows : false,
     }
   },
   {
     breakpoint: 480,
     settings: {
       slidesToShow: 1,
       slidesToScroll: 1,
       arrows : false,
     }
   }
   // You can unslick at a given breakpoint now by adding:
   // settings: "unslick"
   // instead of a settings object
 ]
    /*responsive:[
        {
          breakpoint:600,
          settings:{
            slidesToShow: 2,
            slidesToScroll: 1
          }
        },
        {
          breakpoint:480,
          settings:{
            slidesToShow: 1,
            slidesToScroll: 1
          }
        },
    ],*/

  });

  $('.products-tabs a').on('shown.bs.tab', function(event){
    //var target_id = $(event.target).attr('href');
    $('.feature-responsive').slick('unslick');
    $('.feature-responsive').slick({
      infinite: true,
      slidesToShow: 5,
      slidesToScroll:1,
      prevArrow:"<button type='button' class='homepage-arrow-left'><i class='fa fa-angle-left fa-3'> </i></button>",
      nextArrow:"<button type='button' class='homepage-arrow-right'><i class='fa fa-angle-right fa-3'> </i></button>",
      responsive: [
     {
       breakpoint: 1024,
       settings: {
         slidesToShow: 3,
         slidesToScroll: 3,

       }
     },
     {
       breakpoint: 600,
       settings: {
         slidesToShow: 2,
         slidesToScroll: 2
       }
     },
     {
       breakpoint: 480,
       settings: {
         slidesToShow: 1,
         slidesToScroll: 1
       }
     }
     // You can unslick at a given breakpoint now by adding:
     // settings: "unslick"
     // instead of a settings object
   ]
    /*  responsive:[
          {
            breakpoint:600,
            settings:{
              slidesToShow: 2,
              slidesToScroll: 1
            }
          },
          {
            breakpoint:480,
            settings:{
              slidesToShow: 1,
              slidesToScroll: 1
            }
          },
      ],*/

    });

  });
});


</script>




<?php echo $footer; ?>
