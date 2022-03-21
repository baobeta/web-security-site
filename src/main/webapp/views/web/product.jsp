<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 3.3.1
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest (the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->


<!-- Body BEGIN -->
<body class="ecommerce">
<!-- BEGIN STYLE CUSTOMIZER -->


<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/home">Home</a></li>
            <li><a href="">Products</a></li>
            <li class="active">${detail.name}</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <!-- BEGIN SIDEBAR -->
            <div class="sidebar col-md-3 col-sm-5">
                <ul class="list-group margin-bottom-25 sidebar-menu">
                    <li class="list-group-item dropdown clearfix  <c:if test="${cate.id == 0}">active</c:if> ">
                        <a href="/home/category?cid=0" class="collapsed"><i class="fa fa-angle-right"></i> <h3>CATEGORY</h3> </a>

                    <c:forEach items="${AllCate}" var ="c">
                        <c:if test="${c.id == detail.category_id }">
                        <li class="list-group-item dropdown clearfix active">
                            <a href="/home/category?cid=${c.id}" class="collapsed"><i class="fa fa-angle-right"></i> ${c.name} </a>
                        </c:if>
                        <c:if test="${c.id != detail.category_id }">
                            <li class="list-group-item clearfix"><a href="/home/category?cid=${c.id}"><i class="fa fa-angle-right"></i> ${c.name}</a></li>

                        </c:if>

                    </c:forEach>

                </ul>

                <div class="sidebar-products clearfix">
                    <h2>Bestsellers</h2>
                    <c:forEach items="${list3}" var="i">
                    <div class="item">
                        <a href="/home/product?pid=${i.id}"><img src="${i.image}" alt="Some Shoes in Animal with Cut Out"></a>
                        <h3><a href="/home/product?pid=${i.id}">${i.name}</a></h3>
                        <div class="price">${i.price} VNĐ</div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <!-- END SIDEBAR -->

            <!-- BEGIN CONTENT -->
            <div class="col-md-9 col-sm-7">
                <div class="product-page">
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="product-main-image">
                                <img src="${detail.image}" alt="Cool green dress with red bell" class="img-responsive" data-BigImgsrc="${detail.image}">
                            </div>
                            <div class="product-other-images">

                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <h1>${detail.name}</h1>
                            <div class="price-availability-block clearfix">
                                <div class="price">
                                    <strong>${detail.price}<span>VNĐ</span></strong>

                                </div>
                                <div class="availability">
                                    Availability: <strong>${detail.amount}</strong>
                                </div>
                            </div>
                            <div class="description">
                                <p>${detail.description}</p>
                            </div>

                            <div class="product-page-cart">
                                <div class="product-quantity">
                                    <input id="product-quantity"  type="text" value="1" readonly class="form-control input-sm">
                                </div>
                                <a   onclick="add()"><button id="url" value="/home/cart-add?pId=${detail.id}&quantity=" class="btn btn-primary"  type="submit">Add to cart </button> </a>
                            </div>

                            <ul class="social-icons">
                                <li><a class="facebook" data-original-title="facebook" href="#"></a></li>
                                <li><a class="twitter" data-original-title="twitter" href="#"></a></li>
                                <li><a class="googleplus" data-original-title="googleplus" href="#"></a></li>
                                <li><a class="evernote" data-original-title="evernote" href="#"></a></li>
                                <li><a class="tumblr" data-original-title="tumblr" href="#"></a></li>
                            </ul>
                        </div>

                        <div class="product-page-content">
                            <ul id="myTab" class="nav nav-tabs">
                                <li><a href="#Description" data-toggle="tab">Description</a></li>
                                <li><a href="#Information" data-toggle="tab">Information</a></li>
                                <li class="active"><a href="#Reviews" data-toggle="tab">Reviews (2)</a></li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade" id="Description">
                                    <p>${detail.description} </p>
                                </div>
                                <div class="tab-pane fade" id="Information">
                                    <table class="datasheet">
                                        <tr>
                                            <th colspan="2">Thông tin</th>
                                        </tr>
                                        <tr>
                                            <td class="datasheet-features-type">Loại xe</td>
                                            <td>${cate.name}</td>
                                        </tr>
                                        <tr>
                                            <td class="datasheet-features-type">Hãng</td>
                                            <td>${brand.name}</td>
                                        </tr>
                                        <tr>
                                            <td class="datasheet-features-type">Cửa hàng</td>
                                            <td>${seller.fullname}</td>
                                        </tr>


                                    </table>
                                </div>
                                <div class="tab-pane fade in active" id="Reviews">
                                    <!--<p>There are no reviews for this product.</p>-->
                                    <div class="review-item clearfix">
                                        <div class="review-item-submitted">
                                            <strong>Bob</strong>
                                            <em>30/12/2013 - 07:37</em>
                                            <div class="rateit" data-rateit-value="5" data-rateit-ispreset="true" data-rateit-readonly="true"></div>
                                        </div>
                                        <div class="review-item-content">
                                            <p>Sed velit quam, auctor id semper a, hendrerit eget justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor tempus feugiat id in orci. Phasellus sed erat leo. Donec luctus, justo eget ultricies tristique, enim mauris bibendum orci, a sodales lectus purus ut lorem.</p>
                                        </div>
                                    </div>
                                    <div class="review-item clearfix">
                                        <div class="review-item-submitted">
                                            <strong>Mary</strong>
                                            <em>13/12/2013 - 17:49</em>
                                            <div class="rateit" data-rateit-value="2.5" data-rateit-ispreset="true" data-rateit-readonly="true"></div>
                                        </div>
                                        <div class="review-item-content">
                                            <p>Sed velit quam, auctor id semper a, hendrerit eget justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor tempus feugiat id in orci. Phasellus sed erat leo. Donec luctus, justo eget ultricies tristique, enim mauris bibendum orci, a sodales lectus purus ut lorem.</p>
                                        </div>
                                    </div>

                                    <!-- BEGIN FORM-->
                                    <form action="#" class="reviews-form" role="form">
                                        <h2>Write a review</h2>
                                        <div class="form-group">
                                            <label for="name">Name <span class="require">*</span></label>
                                            <input type="text" class="form-control" id="name">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="text" class="form-control" id="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="review">Review <span class="require">*</span></label>
                                            <textarea class="form-control" rows="8" id="review"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Rating</label>
                                            <input type="range" value="4" step="0.25" id="backing5">
                                            <div class="rateit" data-rateit-backingfld="#backing5" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                                            </div>
                                        </div>
                                        <div class="padding-top-20">
                                            <button type="submit" class="btn btn-primary">Send</button>
                                        </div>
                                    </form>
                                    <!-- END FORM-->
                                </div>
                            </div>
                        </div>

                        <div class="sticker sticker-sale"></div>
                    </div>
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN SIMILAR PRODUCTS -->
        <div class="row margin-bottom-40">
            <div class="col-md-12 col-sm-12">
                <h2>Most popular products</h2>
                <div class="owl-carousel owl-carousel4">
                    <c:forEach items="${Topproducts}" var="i">
                        <div>

                            <div class="product-item" >
                                <div class="pi-img-wrapper">
                                    <img width="250" height="125" src="${i.image}"   alt="${i.name}">
                                    <div>
                                        <a href="${i.image}" class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="/home/product?pid=${i.id}" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="/home/product?pid=${i.id}">${i.name}</a></h3>
                                <div class="pi-price">${i.price} VNĐ</div>

                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- END SIMILAR PRODUCTS -->
    </div>
</div>




<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->

<!-- END CORE PLUGINS -->


<script src="../../assets1/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="../../assets1/global/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>

<script src="../../assets1/frontend/layout/scripts/layout.js" type="text/javascript"></script>

<script>
    function add(){
        var quantity = document.getElementById("product-quantity").value;
        var url = document.getElementById("url").value;

        window.location = url+quantity;
        window.open(url+quantity);
    }

</script>

<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>

