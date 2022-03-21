<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<head>
    <title>Dashboard</title>
    <%@include file="/common/admin/theme.jsp" %>
</head>
<body>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper ">
    <div class="page-content">
        <!-- BEGIN PAGE HEAD -->
        <div class="page-head">
            <!-- BEGIN PAGE TITLE -->
            <div class="page-title">
                <h1>
                    Dashboard <small>statistics & reports</small>
                </h1>
            </div>
            <!-- END PAGE TITLE -->


        </div>
        <!-- END PAGE HEAD -->

        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="dashboard-stat green-haze">
                    <div class="visual">
                        <i class="fa fa-group fa-icon-medium"></i>
                    </div>
                    <div class="details">
                        <div class="number">${countCustomer}</div>
                        <div class="desc">Number of Customer</div>
                    </div>
                    <a class="more" href="/admin/users"> View more <i
                            class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="dashboard-stat purple-plum">
                    <div class="visual">
                        <i class="fa fa-globe fa-icon-medium"></i>
                    </div>
                    <div class="details">
                        <div class="number">${countSeller}</div>
                        <div class="desc">Number of Seller</div>
                    </div>
                    <a class="more" href="/admin/users"> View more <i
                            class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="dashboard-stat yellow-gold">
                    <div class="visual">
                        <i class="fa fa-btc"></i>
                    </div>
                    <div class="details">
                        <div class="number"> ${countProduct} </div>
                        <div class="desc">Number of Products</div>
                    </div>
                    <a class="more" href="/admin/products"> View more <i
                            class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="dashboard-stat blue-madison">
                    <div class="visual">
                        <i class="fa fa-bar-chart fa-icon-medium"></i>
                    </div>
                    <div class="details">
                        <div class="number"><fmt:formatNumber
                                value="${orderMoneyTotal}"
                                type="currency"
                                maxFractionDigits="0"
                                currencySymbol="VNĐ"/></div>
                        <div class="desc">Total value of orders</div>
                    </div>
                    <a class="more" href="/admin/orders"> View more <i
                            class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="dashboard-stat red-intense">
                    <div class="visual">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <div class="details">
                        <div class="number"> ${countOrder} </div>
                        <div class="desc">Number of orders</div>
                    </div>
                    <a class="more" href="/admin/orders"> View more <i
                            class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-bar-chart font-green-sharp"></i> <span
                                class="caption-subject font-green-sharp bold uppercase">Overview</span>
                            <span class="caption-helper">general stats...</span>
                        </div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"> </a> <a
                                href="#portlet-config" data-toggle="modal" class="config">
                        </a> <a href="javascript:;" class="reload"> </a> <a
                                href="javascript:;" class="fullscreen"> </a> <a
                                href="javascript:;" class="remove"> </a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="tabbable-line">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#overview_1" data-toggle="tab">Best Seller </a>
                                </li>
                                <li>
                                    <a href="#overview_2" data-toggle="tab"> Customers</a>
                                </li>
                                <li>
                                    <a href="#overview_3" data-toggle="tab"> Top Selling</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="overview_1">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>Seller Name</th>
                                                <th>Total Orders</th>
                                                <th>Total Amount</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${topSeller}" var="user">
                                                <tr>
                                                    <td><a href="useredit?action=edit&id=${user.id}">
                                                            ${user.fullname}</a></td>
                                                    <td>${user.mail}</td>
                                                        <%-- số lượng đơn hàng --%>
                                                    <td><fmt:formatNumber
                                                            value="${user.phone}"
                                                            type="currency"
                                                            maxFractionDigits="0"
                                                            currencySymbol="VNĐ"/>
                                                    </td>
                                                        <%-- tổng tiền đơn hàng --%>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane" id="overview_2">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>Customer Name</th>
                                                <th>Total Orders</th>
                                                <th>Total Amount</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${topCustomer}" var="user">
                                                <tr>
                                                    <td>
                                                        <a href="useredit?action=edit&id=${user.id}">
                                                                ${user.fullname}</a>
                                                    </td>
                                                    <td>${user.mail}</td>
                                                        <%--số lượng đơn hàng--%>
                                                    <td><fmt:formatNumber
                                                            value="${user.phone}"
                                                            type="currency"
                                                            maxFractionDigits="0"
                                                            currencySymbol="VNĐ"/>
                                                    </td>
                                                        <%-- tổng tiền đơn hàng --%>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane" id="overview_3">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Price</th>
                                                <th>Sold</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${topSelling}" var="item">
                                                <tr>
                                                    <td>
                                                        <a href="productedit?action=edit&id=${item.id}">
                                                                ${item.name} </a></td>
                                                    <td><fmt:formatNumber
                                                            value="${item.price}"
                                                            type="currency"
                                                            maxFractionDigits="0"
                                                            currencySymbol="VNĐ"/></td>
                                                    <td>${item.amount}</td>
                                                    <td><a href="productedit?action=edit&id=${item.id}"
                                                           class="btn default btn-xs green-stripe"> View </a></td>
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
                <!-- End: life time stats -->
            </div>
            <div class="col-md-6">
                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-share font-red-sunglo"></i> <span
                                class="caption-subject font-red-sunglo bold uppercase">Revenue and sales</span>
                            <span class="caption-helper">monthly stats...</span>
                        </div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"> </a> <a
                                href="#portlet-config" data-toggle="modal" class="config">
                        </a> <a href="javascript:;" class="reload"> </a> <a
                                href="javascript:;" class="fullscreen"> </a> <a
                                href="javascript:;" class="remove"> </a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="tabbable-line pull-right">
                            <ul class="nav nav-tabs">
                                <li><a href="#portlet_tab2" data-toggle="tab"
                                       id="statistics_amounts_tab"> Orders </a></li>
                                <li class="active">
                                    <a href="#portlet_tab1"
                                       data-toggle="tab"> Revenue </a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <div class="tab-pane active" id="portlet_tab1">
                                <canvas id="myChart" style="width:100%;max-width:700px"></canvas>
                                <input type="hidden" id="revenue" value="${revenue}">
                            </div>
                            <div class="tab-pane" id="portlet_tab2">
                                <canvas id="myChart2" style="width:100%;max-width:700px"></canvas>
                                <input type="hidden" id="orderCount" value="${orderCount}">
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
    <!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js />"for drag & drop support -->
    <script
            src="<c:url value="/templates/assets/global/plugins/morris/morris.min.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/morris/raphael-min.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery.sparkline.min.js"/>"
            type="text/javascript"></script> <!-- END PAGE LEVEL PLUGINS --> <!-- BEGIN PAGE LEVEL SCRIPTS -->
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
            type="text/javascript"></script> <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Demo.init(); // init demo features
            Index.init(); // init index page
        });

    </script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
    </script>
    <script>
        function getRandomRgb() {
            var num = Math.round(0xffffff * Math.random());
            var r = num >> 16;
            var g = num >> 8 & 255;
            var b = num & 255;
            return 'rgb(' + r + ', ' + g + ', ' + b + ')';
        }

        var ren = document.getElementById("revenue").value;
        var orderCount = document.getElementById("orderCount").value;
        var ren_data = JSON.parse(ren);
        var orderCount_data = JSON.parse(orderCount);
        // alert(ren_data);
        var xValues = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        var ran_color = [];
        for (let i = 0; i < 12; i++
        ) {
            ran_color.push(getRandomRgb());
        }

        new Chart("myChart", {
            type: "bar",
            data: {
                labels: xValues,
                datasets: [{
                    backgroundColor: ran_color,
                    data: ren_data
                }]
            },
            options: {
                legend: {display: false},
                title: {
                    display: true,
                    text: ""
                }
            }
        });
        new Chart("myChart2", {
            type: "bar",
            data: {
                labels: xValues,
                datasets: [{
                    backgroundColor: ran_color,
                    data: orderCount_data
                }]
            },
            options: {
                legend: {display: false},
                title: {
                    display: true,
                    text: ""
                }
            }
        });
    </script>
</content>

