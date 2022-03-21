<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<head>
    <title>Order Details</title>
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/select2/select2.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/bootstrap-datepicker/css/datepicker.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>"/>
    <!-- END PAGE LEVEL STYLES -->

    <%@include file="/common/admin/theme.jsp" %>
</head>

<body>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <style type="text/css">
        #page-content {
            padding-top: 0px !important;
            min-height: auto;
        }
    </style>
    <div class="page-content" id="page-content">
        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-md-12">
                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-basket font-green-sharp"></i> <span
                                class="caption-subject font-green-sharp bold uppercase">
									Order #${order.id} </span> <span class="caption-helper">${order.buy_date}</span>
                        </div>
                        <div class="actions">
                            <a href="/home/order" class="btn btn-default btn-circle"> <i
                                    class="fa fa-angle-left"></i> <span class="hidden-480">
										Back </span>
                            </a>

                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="tabbable">
                            <div class="tab-pane active" id="tab_1">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="portlet yellow-crusta box">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <i class="fa fa-cogs"></i>Order Details
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Order #:</div>
                                                    <div class="col-md-7 value">
                                                        ${order.id}
                                                    </div>
                                                </div>
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Order Date & Time:</div>
                                                    <div class="col-md-7 value">${order.buy_date}</div>
                                                </div>
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Grand Total:</div>

                                                    <div class="col-md-7 value">
                                                        <fmt:formatNumber value="${total}" type="currency"
                                                                          maxFractionDigits="0"
                                                                          currencySymbol="VNĐ"/></div>
                                                </div>
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Payment Information:</div>
                                                    <div class="col-md-7 value">${order.getPayment()}</div>
                                                </div>
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Order Status:</div>
                                                    <div class="col-md-7 value">
                                                        <form id="order-status" method="post" action="orderview">
                                                            <%--   span class="label label-success"> ${order.getOrderStatus()} </span>--%>
                                                            <select required style="width:auto"
                                                                    class="table-group-action-input form-control"
                                                                    name="status">
                                                                <c:forEach items="${orderStatuses}" var="status">
                                                                    <option ${status.id == order.status ? "selected" : ""}
                                                                            value="${status.id}">
                                                                            ${status.name}
                                                                    </option>
                                                                </c:forEach>
                                                            </select>
                                                            <input type="text" hidden name="id" value="${order.id}"/>
                                                            <input id="btn-change" type="submit" hidden/>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-sm-12">
                                        <div class="portlet blue-hoki box">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <i class="fa fa-cogs"></i>Customer Information
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Customer Name:</div>
                                                    <div class="col-md-7 value">${order.getCustomerName()}</div>
                                                </div>
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Email:</div>
                                                    <div class="col-md-7 value">${order.getCustomerEmail()}</div>
                                                </div>
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Phone Number:</div>
                                                    <div class="col-md-7 value">${order.getCustomerPhone()}</div>
                                                </div>
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Address:</div>
                                                    <div class="col-md-7 value">${order.address}</div>
                                                </div>
                                                <div class="row static-info">
                                                    <div class="col-md-5 name">Receiver:</div>
                                                    <div class="col-md-7 value">${order.receiver}</div>
                                                </div>
                                            </br>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </div>
                            <div class="row">




                                <div class="row">
                                    <div class="col-md-12 col-sm-12">
                                        <div class="portlet grey-cascade box">
                                            <div class="portlet-title">
                                                <div class="caption">
                                                    <i class="fa fa-cogs"></i>Shopping Cart
                                                </div>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="table-responsive">
                                                    <table
                                                            class="table table-hover table-bordered table-striped">
                                                        <thead>
                                                        <tr>
                                                            <th>No.</th>
                                                            <th>Product</th>
                                                            <th>Seller</th>
                                                            <th>Original Price</th>
                                                            <th>Price</th>
                                                            <th>Quantity</th>
                                                            <th>Total</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach items="${ordersDetails}" var="od" varStatus="STT">
                                                            <tr>
                                                                <td>${STT.index + 1}</td>
                                                                <td>
                                                                    <a href="/home/product?pid=${od.product_id}">${od.getProductName()}</a>
                                                                </td>
                                                                <td>
                                                                    <a>Phạm Quang Hưng</a>
                                                                </td>
                                                                <td><fmt:formatNumber
                                                                        value="${od.getOriginalPrice()}"
                                                                        type="currency"
                                                                        maxFractionDigits="0"
                                                                        currencySymbol="VNĐ"/></td>
                                                                <td><fmt:formatNumber
                                                                        value="${od.unit_price}"
                                                                        type="currency"
                                                                        maxFractionDigits="0"
                                                                        currencySymbol="VNĐ"/></td>
                                                                <td>${od.quantity}</td>
                                                                <td><fmt:formatNumber
                                                                        value="${od.quantity * od.unit_price}"
                                                                        type="currency"
                                                                        maxFractionDigits="0"
                                                                        currencySymbol="VNĐ"/></td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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

    <!-- BEGIN PAGE LEVEL PLUGINS -->
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
            src="<c:url value="/templates/assets/admin/pages/scripts/ecommerce-orders-view.js"/>"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Demo.init(); // init demo features
            EcommerceOrdersView.init();
        });
    </script> <!-- END JAVASCRIPTS --> </content>