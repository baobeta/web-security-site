<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Site meta -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title><dec:title default="Motor"/></title>
    <!-- BEGIN LOGO -->
    <link rel="shortcut icon"
          href="https://cdn.iconscout.com/icon/premium/png-256-thumb/motorbike-1679262-1426949.png"/>
    <!-- END LOGO -->
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link
            href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
            rel="stylesheet" type="text/css"/>
    <link
            href="<c:url value="/templates/assets/global/plugins/font-awesome/css/font-awesome.min.css"/>"
            rel="stylesheet" type="text/css">
    <link
            href="<c:url value="/templates/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"/>"
            rel="stylesheet" type="text/css">
    <link
            href="<c:url value="/templates/assets/global/plugins/bootstrap/css/bootstrap.min.css"/>"
            rel="stylesheet" type="text/css">
    <link
            href="<c:url value="/templates/assets/global/plugins/uniform/css/uniform.default.css"/>"
            rel="stylesheet" type="text/css">
    <link
            href="<c:url value="/templates/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"/>"
            rel="stylesheet" type="text/css">
    <link
            href="<c:url value="/templates/assets/admin/pages/css/login.css"/>"
            rel="stylesheet" type="text/css">
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
    <%-- <link
        href="<c:url value="/templates/assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/global/plugins/fullcalendar/fullcalendar.min.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/jqvmap.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/global/plugins/select2/select2.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/global/plugins/bootstrap-datepicker/css/datepicker.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/global/plugins/fancybox/source/jquery.fancybox.css"/>"
        rel="stylesheet" type="text/css">
    <!-- END PAGE LEVEL PLUGIN STYLES -->
    <!-- BEGIN PAGE STYLES -->
    <link
        href="<c:url value="/templates/assets/admin/pages/css/tasks.css"/>"
        rel="stylesheet" type="text/css"> --%>
    <!-- END PAGE STYLES -->
    <!-- BEGIN THEME STYLES -->
    <!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
    <%-- <link
        href="<c:url value="/templates/assets/global/css/components-rounded.css"/>"
        rel="stylesheet" type="text/css">
    <link href="<c:url value="/templates/assets/global/css/plugins.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/admin/layout4/css/layout.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/admin/layout4/css/themes/light.css"/>"
        rel="stylesheet" type="text/css">
    <link
        href="<c:url value="/templates/assets/admin/layout4/css/custom.css"/>"
        rel="stylesheet" type="text/css"> --%>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="<c:url value="/templates/favicon.ico"/>"/>
    <dec:head/>

</head>

<body
        class="page-header-fixed page-sidebar-closed-hide-logo ppage-sidebar-closed-hide-logo">

<!-- header -->
<%@include file="/common/seller/header.jsp" %>
<!-- end header -->

<!-- BEGIN CONTAINER -->
<div class="page-container">

    <!-- begin sidebar -->
    <%@include file="/common/seller/sidebar.jsp" %>
    <!-- end sidebar -->

    <!-- content -->
    <dec:body/>
    <!-- end content -->


</div>
<!-- END CONTAINER -->


<!-- footer -->
<%@include file="/common/seller/footer.jsp" %>
<!-- end footer -->


<!-- BEGIN CORE PLUGINS -->
<%-- 	<script
    src="<c:url value="/templates/assets/global/plugins/jquery.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jquery-migrate.min.js"/>"
    type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js />"before bootstrap.min.js />"to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script
    src="<c:url value="/templates/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/bootstrap/js/bootstrap.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jquery.blockui.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jquery.cokie.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/uniform/jquery.uniform.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"/>"
    type="text/javascript"></script> --%>
<!-- END CORE PLUGINS -->
<%-- <script
    src="<c:url value="/templates/assets/global/plugins/jquery.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jquery-migrate.min.js"/>"
    type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script
    src="<c:url value="/templates/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/bootstrap/js/bootstrap.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jquery.blockui.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jquery.cokie.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/uniform/jquery.uniform.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"/>"
    type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script
    src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"/>"
    type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js for drag & drop support -->
<script
    src="<c:url value="/templates/assets/global/plugins/morris/morris.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/morris/raphael-min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/jquery.sparkline.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/flot/jquery.flot.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/flot/jquery.flot.resize.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/flot/jquery.flot.categories.js"/>"
    type="text/javascript"></script>
<script type="text/javascript"
    src="<c:url value="/templates/assets/global/plugins/select2/select2.min.js"/>"></script>
<script type="text/javascript"
    src="<c:url value="/templates/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"/>"></script>
<script type="text/javascript"
    src="<c:url value="/templates/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"/>"></script>
<script type="text/javascript"
    src="<c:url value="/templates/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"/>"></script>
<script type="text/javascript"
    src="<c:url value="/templates/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"/>"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js"/>"
    type="text/javascript"></script>
<script type="text/javascript"
    src="<c:url value="/templates/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"/>"></script>
<script
    src="<c:url value="/templates/assets/global/plugins/plupload/js/plupload.full.min.js"/>"
    type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script
    src="<c:url value="/templates/assets/global/scripts/metronic.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/admin/layout4/scripts/layout.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/admin/layout4/scripts/demo.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/admin/pages/scripts/index3.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/admin/pages/scripts/tasks.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/admin/pages/scripts/ecommerce-index.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/global/scripts/datatable.js"/>"
    type="text/javascript"></script>
<script
    src="<c:url value="/templates/assets/admin/pages/scripts/ecommerce-products-edit.js"/>"
    type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        Metronic.init(); // init metronic core componets
        Layout.init(); // init layout
        Demo.init(); // init demo features
        Index.init(); // init index page
        Tasks.initDashboardWidget(); // init tash dashboard widget
        EcommerceIndex.init();
        EcommerceProductsEdit.init();
    });
</script> --%>
<!-- END JAVASCRIPTS -->
</body>
<dec:getProperty property="page.local_script"/>
<script type="text/javascript">

</script>
</html>
