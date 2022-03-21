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

<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li class="active">Checkout</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <!-- BEGIN CONTENT -->
            <div class="col-md-12 col-sm-12">
                <h1>Checkout</h1>
                <!-- BEGIN CHECKOUT PAGE -->
                <form action="/home/checkout" method="post">
                <div class="panel-group checkout-page accordion scrollable" id="checkout-page" >

                    <!-- BEGIN CHECKOUT -->
                    <div id="checkout" class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#checkout-page" href="#checkout-content" class="accordion-toggle">
                                    Step 1: Checkout Information
                                </a>
                            </h2>
                        </div>
                        <div id="checkout-content" class="panel-collapse collapse in">
                            <div class="panel-body row">
                                <div class="col-md-6 col-sm-6">
                                <div class="form-group">
                                    <label for="firstname-dd">Name <span class="require">*</span></label>
                                    <input type="text" id="firstname-dd" name="name" required value="${sessionScope.loginedUser.fullname} "class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="telephone-dd">Telephone <span class="require">*</span></label>
                                    <input type="text" id="telephone-dd" name="phone" required value="${user.phone}" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="email-dd">E-Mail <span class="require">*</span></label>
                                    <input type="text" id="email-dd" name="mail" required value="${user.mail}" class="form-control">
                                </div>

                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label for="lastname-dd">Address <span class="require">*</span></label>
                                        <input type="text" id="lastname-dd" name="address" required value class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="fax">Receiver</label>
                                        <input type="text" id="fax"  name="receiver" class="form-control">
                                    </div>
                                    <div class="col-md-12">
                                        <button class="btn btn-primary  pull-right"  id="button-shipping-address" data-toggle="collapse" data-parent="#payment-method-content" data-target="#payment-method-content">Continue</button>
                                    </div>
                                </div>
                                  </div>
                        </div>
                    </div>
                    <!-- END CHECKOUT -->

                    <!-- BEGIN PAYMENT ADDRESS -->

                    <!-- END PAYMENT ADDRESS -->

                    <!-- BEGIN SHIPPING ADDRESS -->

                    <!-- END SHIPPING METHOD -->

                    <!-- BEGIN PAYMENT METHOD -->
                    <div id="payment-method" class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#checkout-page" href="#payment-method-content" class="accordion-toggle">
                                    Step 2: Payment Method
                                </a>
                            </h2>
                        </div>
                        <div id="payment-method-content" class="panel-collapse collapse">
                            <div class="panel-body row">
                                <div class="col-md-12">
                                    <p>Please select the preferred payment method to use on this order.</p>
                                    <div class="form-group">
                                        <label for="country-dd">Payment Method <span class="require">*</span></label>
                                        <select class="form-control input-sm" name="pay" id="country-dd" required value>
                                            <option value=""> --- Please Select --- </option>
                                            <option value="1">CashOnDelivery</option>
                                            <option value="2">ATM/VISA</option>
                                            <option value="3">MoMo</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="delivery-payment-method">Add Comments About Your Order</label>
                                        <textarea id="delivery-payment-method" rows="8" class="form-control"></textarea>
                                    </div>
                                    <button class="btn btn-primary  pull-right" type="button" id="button-payment-method" data-toggle="collapse" data-parent="#checkout-page" data-target="#confirm-content">Continue</button>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END PAYMENT METHOD -->

                    <!-- BEGIN CONFIRM -->
                    <div id="confirm" class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#checkout-page" href="#confirm-content" class="accordion-toggle">
                                    Step 3: Confirm Order
                                </a>
                            </h2>
                        </div>
                        <div id="confirm-content" class="panel-collapse collapse">
                            <div class="panel-body row">
                                <div class="col-md-12 clearfix">
                                    <div class="table-wrapper-responsive">
                                        <table>
                                            <tr>
                                                <th class="checkout-image">Image</th>
                                                <th class="checkout-description">Description</th>
                                                <th class="checkout-model">Model</th>
                                                <th class="checkout-quantity">Quantity</th>
                                                <th class="checkout-price">Price</th>
                                                <th class="checkout-total">Total</th>
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
                                    <div class="checkout-total-block">
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

                                            <li class="checkout-total-price">
                                                <em>Total (VNĐ)</em>
                                                <strong class="price">${total }</strong>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                    <button class="btn btn-primary pull-right"  type="submit" id="button-confirm">Confirm Order</button>
                                    <button type="button"  class="btn btn-default pull-right margin-right-20">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END CONFIRM -->
                </div>
                </form>

                <!-- END CHECKOUT PAGE -->

            </div>
            <!-- END CONTENT -->
        </div>

        <!-- END SIDEBAR & CONTENT -->
    </div>
</div>
<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
<!--[if lt IE 9]>
<script src="../../assets1/global/plugins/respond.min.js"></script>
<![endif]-->
<script src="../../assets1/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="../../assets1/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../../assets1/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../../assets1/frontend/layout/scripts/back-to-top.js" type="text/javascript"></script>
<script src="../../assets1/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="../../assets1/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="../../assets1/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel-rtl.js" type="text/javascript"></script><!-- slider for products -->
<script src='../../assets1/global/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
<script src="../../assets1/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
<script src="../../assets1/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>

<script src="../../assets1/frontend/layout/scripts/layout.js" type="text/javascript"></script>
<script src="../../assets1/frontend/pages/scripts/checkout.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        Layout.init();

        Checkout.init();
    });
</script>

<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>