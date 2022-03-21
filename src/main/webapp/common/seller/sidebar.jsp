<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper" style="position: fixed;">
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <div class="page-sidebar  navbar-collapse collapse ">
        <!-- BEGIN SIDEBAR MENU -->
        <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
        <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
        <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
        <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
        <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
        <ul class="page-sidebar-menu page-sidebar-menu-hover-submenu1"
            data-keep-expanded="false" data-auto-scroll="true"
            id="sidebar-menu-seller"
            data-slide-speed="200">
            <li class="heading">
                <h3>GENERAL</h3>
            </li>

            <li class="${active==1 ? "active":""}"><a href="dashboard">
                <i class="icon-bar-chart"></i> <span class="title">Dashboard</span>
            </a></li>

            <li class="${active==2 ? "active":"" }"><a href="order"> <i
                    class="icon-basket"></i> <span class="title">Orders</span>
            </a></li>
            <li class="${active==3 ? "active":"" }"><a href="orderview"> <i
                    class="icon-tag"></i> <span class="title">Orders view</span>
            </a></li>
            <li class="${active==4 ? "active":"" }"><a href="product"> <i
                    class="icon-handbag"></i> <span class="title">Products</span>
            </a></li>
            <li class="${active==5 ? "active":"" }"><a href="productedit?action=add"> <i
                    class="icon-pencil"></i> <span class="title">Products edit</span>
            </a></li>
            <c:if test="${active==6}">
                <li class="active"><a href="#"> <i
                        class="icon-pencil"></i> <span class="title">Profile</span>
                </a></li>
            </c:if>
        </ul>
        <!-- END SIDEBAR MENU -->
    </div>
</div>
<!-- END SIDEBAR -->