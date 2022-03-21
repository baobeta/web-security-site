<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<head>
    <title>Products</title>
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/select2/select2.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/bootstrap-datepicker/css/datepicker.css"/>"/>
    <!-- END PAGE LEVEL STYLES -->
    <%@include file="/common/seller/theme.jsp" %>
    <link rel="stylesheet"
          href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
    <link rel="stylesheet"
          href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
</head>
<body>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <style type="text/css">
        #page-content {
            padding-top: 0 !important;
        }
    </style>
    <div class="page-content" id="page-content">

        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-warning ${param.msg == null ? "display-hide" : ""}">
                    <button class="close" data-close="alert"></button>
                    <span> <c:out value="${param.msg}" />  </span>
                </div>
                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="fa fa-gift font-green-sharp"></i> <span
                                class="caption-subject font-green-sharp bold uppercase">Products</span>
                            <span class="caption-helper">manage products...</span>
                        </div>
                        <div class="actions">
                            <a href="productedit?action=add" class="btn green-haze btn-circle">
                                <i class="fa fa-plus"></i>
                                <span class="hidden-480"> New Product </span>
                            </a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="table-container">
                            <style>
                                td {
                                    white-space: nowrap;
                                    overflow: hidden;
                                    height: 60px;
                                }

                                table {
                                    table-layout: fixed;
                                    width: 200px;
                                }
                            </style>
                            <table id="example" class="table table-striped table-bordered"
                                   style="width: 100%">
                                <thead>
                                <tr>
                                    <th width="3%">No.</th>
                                    <th width="10%">Image</th>
                                    <th width="10%">Name</th>
                                    <th width="10%">Price</th>
                                    <th width="15%">Description</th>
                                    <th width="10%">Category</th>
                                    <th width="6%">Brand</th>
                                    <th width="6%">Amount</th>
                                    <th width="8%">Status</th>
                                    <th width="12%">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%--                                <fmt:setLocale value="fr_CA"/>--%>
                                <c:forEach items="${products}" var="pro" varStatus="STT">
                                    <tr>
                                        <td>${STT.index+1}</td>
                                        <td style="text-align: center; vertical-align: middle;">
                                            <img src="${pro.image}" height="60px"/></td>
                                        <td>${pro.name}</td>
                                        <td>
                                            <fmt:formatNumber value="${pro.price}" type="currency"
                                                              maxFractionDigits="0" currencySymbol="VNĐ"/>
                                        </td>
                                        <td class="description" style="max-height: 60px">${pro.description}</td>
                                        <td>${pro.getCategoryName()}</td>
                                        <td>${pro.getBrandName()}</td>
                                        <td>${pro.amount}</td>
                                        <td>${pro.status == 1 ? "Published" : "Unpublished"}</td>
                                        <td>
                                            <a class="btn btn-primary"
                                               href="productedit?action=edit&id=${pro.id}">Edit</a>
                                                <%--                                            <a class="btn btn-danger" href="product?action=delete&id=${pro.id}">Xóa</a>--%>
                                            <a class="btn btn-danger" href="product?action=delete&id=${pro.id}"
                                               onclick="return confirm('Do you want to delete?');">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- End: life time stats -->
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>
</div>
<!-- END CONTENT -->
</body>

<content tag="local_script"> <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

    <%@include file="/common/seller/core_plugin.jsp" %>

    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script type="text/javascript"
            src="<c:url value="/templates/assets/global/plugins/select2/select2.min.js"/>"></script>
    <script type="text/javascript"
            src="<c:url value="/templates/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"/>"></script>
    <script type="text/javascript"
            src="<c:url value="/templates/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"/>"></script>
    <script type="text/javascript"
            src="<c:url value="/templates/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"/>"></script>
    <!-- END PAGE LEVEL PLUGINS --> <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script
            src="<c:url value="/templates/assets/global/scripts/metronic.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/layout2/scripts/layout.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/layout2/scripts/demo.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/scripts/datatable.js"/>"></script>
    <script
            src="<c:url value="/templates/assets/admin/pages/scripts/ecommerce-products.js"/>"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        // function
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Demo.init(); // init demo features
            EcommerceProducts.init();
        });
    </script>
<%--    <script type="text/javascript"--%>
<%--            src="https://code.jquery.com/jquery-2.1.1.min.js"></script>--%>

    <!--Data Table-->
    <script type="text/javascript"
            src=" https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript"
            src=" https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>

    <!--Export table buttons-->
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/pdfmake.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/vfs_fonts.js"></script>
    <script type="text/javascript"
            src="https://cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.datatables.net/buttons/1.2.1/js/buttons.print.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable();
        });

        $('#example').DataTable({
            dom: 'Bfrtip',
            buttons: ['copy', 'excel', 'pdf', 'print']
        });
    </script>
    <!-- END JAVASCRIPTS -->
</content>