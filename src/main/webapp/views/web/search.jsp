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
<head>
  <meta charset="utf-8">
  <title>Men category | Metronic Shop UI</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
  <!-- Fonts END -->

  <!-- Global styles START -->
  <link href="../templates/assets1/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../templates/assets1/global/plugins/bootstrap/css/bootstrap-rtl.min.css" rel="stylesheet">
  <!-- Global styles END -->

  <!-- Page level plugin styles START -->
  <link href="../templates/assets1/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="../templates/assets1/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel-rtl.css" rel="stylesheet">
  <link href="../templates/assets1/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
  <link href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css"><!-- for slider-range -->
  <link href="../templates/assets1/global/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="../templates/assets1/global/css/components-rtl.css" rel="stylesheet">
  <link href="../templates/assets1/frontend/layout/css/style.css" rel="stylesheet">
  <link href="../templates/assets1/frontend/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="../templates/assets1/frontend/layout/css/style-responsive.css" rel="stylesheet">
  <link href="../templates/assets1/frontend/layout/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="../templates/assets1/frontend/layout/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">

<div class="title-wrapper">
  <div class="container"><div class="container-inner">
    <h1>${txtS}</h1>

  </div></div>
</div>

<div class="main">
  <div class="container">
    <ul class="breadcrumb">
      <li><a href="index.html">Home</a></li>
      <li><a href="">Search</a></li>

    </ul>
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40">
      <!-- BEGIN SIDEBAR -->
      <div class="sidebar col-md-3 col-sm-5">
        <ul class="list-group margin-bottom-25 sidebar-menu">

            <ul class="dropdown-menu" style="display:block;">

              <li class="list-group-item dropdown clearfix  ">
                <a href="/home/category?cid=0" class="collapsed"><i class="fa fa-angle-right"></i> <h3>CATEGORY</h3> </a>

              <c:forEach items="${AllCate}" var ="c">


                  <li class="list-group-item clearfix"><a href="/home/category?cid=${c.id}"><i class="fa fa-angle-right"></i> ${c.name}</a></li>

              </c:forEach>

            </ul>
        </ul>

        <div class="sidebar-filter margin-bottom-25">
          <h2>Filter</h2>
          <h3>Availability</h3>
          <div class="checkbox-list">
            <label><input type="checkbox"> Not Available (3)</label>
            <label><input type="checkbox"> In Stock (26)</label>
          </div>

          <h3>Price</h3>
          <p>
            <label for="amount">Range:</label>
            <input type="text" id="amount" style="border:0; color:#f6931f; font-weight:bold;">
          </p>
          <div id="slider-range"></div>
        </div>

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
        <div class="row list-view-sorting clearfix">
          <div class="col-md-2 col-sm-2 list-view">
            <a href="#"><i class="fa fa-th-large"></i></a>
            <a href="#"><i class="fa fa-th-list"></i></a>
          </div>
          <div class="col-md-10 col-sm-10">
            <div class="pull-right">
              <label class="control-label">Show:</label>
              <select class="form-control input-sm">
                <option value="#?limit=24" selected="selected">24</option>
                <option value="#?limit=25">25</option>
                <option value="#?limit=50">50</option>
                <option value="#?limit=75">75</option>
                <option value="#?limit=100">100</option>
              </select>
            </div>
            <div class="pull-right">
              <label class="control-label">Sort&nbsp;By:</label>
              <select class="form-control input-sm">
                <option value="#?sort=p.sort_order&amp;order=ASC" selected="selected">Default</option>
                <option value="#?sort=pd.name&amp;order=ASC">Name (A - Z)</option>
                <option value="#?sort=pd.name&amp;order=DESC">Name (Z - A)</option>
                <option value="#?sort=p.price&amp;order=ASC">Price (Low &gt; High)</option>
                <option value="#?sort=p.price&amp;order=DESC">Price (High &gt; Low)</option>
                <option value="#?sort=rating&amp;order=DESC">Rating (Highest)</option>
                <option value="#?sort=rating&amp;order=ASC">Rating (Lowest)</option>
                <option value="#?sort=p.model&amp;order=ASC">Model (A - Z)</option>
                <option value="#?sort=p.model&amp;order=DESC">Model (Z - A)</option>
              </select>
            </div>
          </div>
        </div>
        <!-- BEGIN PRODUCT LIST -->
        <div class="row product-list">

            <c:forEach items="${listAll}" var="p">

              <!-- PRODUCT ITEM START -->
              <div class="product col-md-4 col-sm-6 col-xs-12" name="product">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="${p.image}" width="200" height="120 " alt="${p.name}">
                    <div>
                      <a href="${p.image}" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="/home/product?pid=${p.id}" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="/home/product?pid=${p.id}">${p.name}</a></h3>
                  <div class="pi-price">${p.price}</div>

                </div>
              </div>

            </c:forEach>
            <br />
            <button onclick="loadMore()" class="btn btn-primary">Xem
              tiếp</button>

          <!-- PRODUCT ITEM END -->

        </div>
        <!-- END PRODUCT LIST -->

      </div>
      <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->
  </div>
</div>



<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
<!--[if lt IE 9]>


 -->
<script src="../templates/assets1/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="../templates/assets1/global/plugins/rateit/src/jquery.rateit.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->

<script src="../templates/assets1/frontend/layout/scripts/layout.js" type="text/javascript"></script>





<script src="//code.jquery.com/jquery-3.6.0.min.js" type="text/javascript"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

  function loadMore()
  {
    /*  tạo viên amount để Gọi và đếm classname là product */
    var amount = document.getElementsByClassName("product").length;

    $.ajax({
      url : "/home/load",
      type : "get", //send it through get method
      data : {
        exits : amount
      },
      success : function(data) {

        //cách 2
        $("#content").append(data);
      },
      error : function(xhr) {
        //Do Something to handle error
      }
    });
  };
</script>


<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>