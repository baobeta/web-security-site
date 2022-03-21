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

<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
<!-- BEGIN STYLE CUSTOMIZER -->

<!-- END BEGIN STYLE CUSTOMIZER -->


<div class="main">
    <div class="container">
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <!-- BEGIN CONTENT -->
            <div class="col-md-12 col-sm-12">
                <h1>Shopping cart</h1>
                <div class="goods-page">
                    <div class="goods-data clearfix">
                        <div class="table-wrapper-responsive">
                            <table summary="Shopping cart">
                                <tr>
                                    <th class="goods-page-image">Image</th>
                                    <th class="goods-page-description">Description</th>

                                    <th class="goods-page-quantity">Quantity</th>
                                    <th class="goods-page-price">Unit price <span> (VNĐ)</span></th>
                                    <th class="goods-page-total" colspan="2">Total <span> (VNĐ)</span></th>
                                </tr>
                                <c:forEach items="${sessionScope.cart}" var="map">
                                <tr>

                                    <td class="goods-page-image">
                                        <a href="/home/product?pid=${map.value.pid.id}"><img src="${map.value.pid.image}"></a>
                                    </td>
                                    <td class="goods-page-description">
                                        <h2><a href="/home/product?pid=${map.value.pid.id}">${map.value.pid.name }</a></h2>

                                    </td>
                                    <td class="goods-page-quantity">
                                        <div class="product-quantity">
                                            <input id="product-quantity2" type="text" value="${map.value.quantity }" readonly class="form-control input-sm">
                                        </div>
                                    </td>
                                    <td class="goods-page-price">
                                        <strong>${map.value.pid.price}</strong>
                                    </td>
                                    <td class="goods-page-total">
                                        <strong>${map.value.pid.price * map.value.quantity}</strong>
                                    </td>
                                    <td class="del-goods-col">
                                        <a class="del-goods" href="${pageContext.request.contextPath}/home/cart-remove?pId=${map.value.pid.id}">&nbsp;</a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </table>
                        </div>

                        <div class="shopping-total">
                            <ul>
                                <c:set var="total" value="${0}" /> <c:forEach
                                    items="${sessionScope.cart}" var="map">
                                <c:set var="total"
                                       value="${total + map.value.quantity * map.value.pid.price}" />
                            </c:forEach>
                                <li>
                                    <em>Sub total</em>
                                    <strong class="price">${total }</strong>
                                </li>
                                <li>
                                    <em>Shipping cost</em>
                                    <strong class="price">0</strong>
                                </li>
                                <li class="shopping-total-price">
                                    <em>Total</em>
                                    <strong class="price">${total }</strong>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <button class="btn btn-default"   onclick= history.back();type="submit">Continue shopping <i class="fa fa-shopping-cart"></i></button>
                    <a href="${sessionScope.cart != null ? "/home/checkout ": "/home"  }"><button class="btn btn-primary"    type="submit">Checkout <i class="fa fa-check"></i></button> </a>
                </div>
            </div>
            <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->


    </div>
</div>

<!-- END fast view of a product -->

<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
<!--[if lt IE 9]>
<script src="../templates/assets1/global/plugins/respond.min.js"></script>
<![endif]-->
<script src="../templates/assets1/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="../templates/assets1/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../templates/assets1/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../templates/assets1/frontend/layout/scripts/back-to-top.js" type="text/javascript"></script>
<script src="../templates/assets1/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="../templates/assets1/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="../templates/assets1/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel-rtl.js" type="text/javascript"></script><!-- slider for products -->
<script src='../templates/assets1/global/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
<script src="../templates/assets1/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
<script src="../templates/assets1/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="../templates/assets1/global/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->

<script src="../templates/assets1/frontend/layout/scripts/layout.js" type="text/javascript"></script>

<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>