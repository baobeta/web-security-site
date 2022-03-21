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
    <title>HPT</title>

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

    <link rel="shortcut icon"
          href="https://cdn.iconscout.com/icon/premium/png-256-thumb/motorbike-1679262-1426949.png"/>

    <!-- Fonts START -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->
    <!-- Fonts END -->

    <!-- Global styles START -->
    <link href="../templates/assets1/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../templates/assets1/global/plugins/bootstrap/css/bootstrap-rtl.min.css" rel="stylesheet">
    <!-- Global styles END -->

    <!-- Page level plugin styles START -->
    <link href="../templates/assets1/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="../templates/assets1/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel-rtl.css" rel="stylesheet">
    <link href="../templates/assets1/global/plugins/slider-layer-slider/css/layerslider.css" rel="stylesheet">
    <!-- Page level plugin styles END -->

    <!-- Theme styles START -->
    <link href="../templates/assets1/global/css/components-rtl.css" rel="stylesheet">
    <link href="../templates/assets1/frontend/layout/css/style.css" rel="stylesheet">
    <link href="../templates/assets1/frontend/pages/css/style-shop.css" rel="stylesheet" type="text/css">
    <link href="../templates/assets1/frontend/pages/css/style-layer-slider.css" rel="stylesheet">
    <link href="../templates/assets1/frontend/layout/css/style-responsive.css" rel="stylesheet">
    <link href="../templates/assets1/frontend/layout/css/themes/red.css" rel="stylesheet" id="style-color">
    <link href="../templates/assets1/frontend/layout/css/custom.css" rel="stylesheet">
    <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">
<!-- header -->
<%@include file="/common/web/header.jsp"%>
<!-- end header -->


<!-- content -->
<dec:body/>
<!-- end content -->


<!-- footer -->
<%@include file="/common/web/footer.jsp"%>
<!-- end footer -->

<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
<!--[if lt IE 9]>
<script src="../templates/assets1/global/plugins/respond.min.js"></script>
<![endif]-->
<script src="../templates/assets1/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="../templates/assets1/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="../templates/assets1/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<script src="../templates/assets1/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="../templates/assets1/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="../templates/assets1/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel-rtl.js" type="text/javascript"></script><!-- slider for products -->
<script src='../templates/assets1/global/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
<script src="../templates/assets1/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->

<!-- BEGIN LayerSlider -->
<script src="../templates/assets1/global/plugins/slider-layer-slider/js/greensock.js" type="text/javascript"></script><!-- External libraries: GreenSock -->
<script src="../templates/assets1/global/plugins/slider-layer-slider/js/layerslider.transitions.js" type="text/javascript"></script><!-- LayerSlider script files -->
<script src="../templates/assets1/global/plugins/slider-layer-slider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script><!-- LayerSlider script files -->
<script src="../templates/assets1/frontend/pages/scripts/layerslider-init.js" type="text/javascript"></script>
<!-- END LayerSlider -->

<script src="../templates/assets1/frontend/layout/scripts/layout.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        Layout.init();
        Layout.initOWL();
        LayersliderInit.initLayerSlider();
        Layout.initImageZoom();
        Layout.initTouchspin();

        Layout.initUniform();
        Layout.initSliderRange();
        Layout.initFixHeaderWithPreHeader();

    });
</script>
<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>