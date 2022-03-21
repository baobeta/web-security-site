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
<%@include file="/common/admin/header.jsp" %>
<!-- end header -->

<!-- BEGIN CONTAINER -->
<div class="page-container">

    <!-- begin sidebar -->
    <%@include file="/common/admin/sidebar.jsp" %>
    <!-- end sidebar -->

    <!-- content -->
    <dec:body/>
    <!-- end content -->


</div>
<!-- END CONTAINER -->


<!-- footer -->
<%@include file="/common/admin/footer.jsp" %>
<!-- end footer -->

</body>
<dec:getProperty property="page.local_script"/>
<script type="text/javascript">

</script>
</html>
