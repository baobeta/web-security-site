<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<head>
    <title>Payments</title>
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

        <div class="modal fade" id="add" tabindex="-1" role="basic" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="" method="post">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Add Payment</h4>
                        </div>
                        <div class="modal-body">
                            <div class="">
                                <input class="form-control" type="text" name="name"/>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn default" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn blue">Save changes</button>
                        </div>
                    </form>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <div class="modal fade" id="update" tabindex="-1" role="basic" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="" method="post">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Edit Payment</h4>
                        </div>
                        <div class="modal-body">
                            <div class="">
                                <input id="updateID" name="id" type="hidden" name="id" />
                                <input id="updateName" class="form-control" type="text" name="name"/>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn default" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn blue">Save changes</button>
                        </div>
                    </form>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-warning ${param.msg == null ? "display-hide" : ""}">
                    <button class="close" data-close="alert"></button>
                    <span> <c:out value="${param.msg}"/>  </span>
                </div>
                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="fa fa-gift font-green-sharp"></i> <span
                                class="caption-subject font-green-sharp bold uppercase">Payments</span>
                            <span class="caption-helper">manage payments...</span>
                        </div>
                        <div class="actions">
                            <a data-toggle="modal" href="#add" class="btn green-haze btn-circle">
                                <i class="fa fa-plus"></i>
                                <span class="hidden-480"> New Payment </span>
                            </a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="table-container">

                            <table id="example" class="table table-striped table-bordered"
                                   style="width: 100%">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Name</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${payments}" var="payment" varStatus="STT">
                                    <tr>
                                        <td>${STT.index + 1}</td>
                                        <td>${payment.name}</td>
                                        <td>
                                            <button class="btn btn-primary"
                                                    onclick="document.getElementById('updateID').value = ${payment.id};
                                                    document.getElementById('updateName').value = '${payment.name}'"
                                               data-toggle="modal" href="#update">Edit</button>
                                            <a class="btn btn-danger" href="payments?action=delete&id=${payment.id}"
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

    <%@include file="/common/admin/core_plugin.jsp" %>


    <script
            src="<c:url value="/templates/assets/global/scripts/metronic.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/layout2/scripts/layout.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/layout2/scripts/demo.js"/>"
            type="text/javascript"></script>
    <%--    <script--%>
    <%--            src="<c:url value="/templates/assets/global/scripts/datatable.js"/>"></script>--%>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        // function
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Demo.init(); // init demo features
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