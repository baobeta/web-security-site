<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>



<!-- BEGIN HEADER -->
<div class="header">
    <div class="container">
        <a class="site-logo" href="/home"><img src="../templates/assets1/frontend/layout/img/logos/logo-shop-red.png" alt="Metronic Shop UI"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN CART -->

        <div class="top-cart-block" href="/checkout">

            <div class="top-cart-info" >

                <c:set var="count" value="${0}" />
                <c:forEach items="${sessionScope.cart}" var="map">
                    <c:set var="count" value="${count + map.value.quantity}" />
                </c:forEach>
                <a href="/home/cart" class="top-cart-info-count">CART</a>
                <a href="/home/cart" class="top-cart-info-value">${count} </a>
            </div>

            <a href ="/home/cart" > <i  class="fa fa-shopping-cart" ></i></a>

        </div>


        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
            <ul>
                <li class="dropdown active">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">
                        Pages

                    </a>

                    <ul class="dropdown-menu">
                        <li><a href="/home">Home Default</a></li>
                        <li><a href="shop-checkout.html">Checkout</a></li>
                        <li><a href="shop-about.html">About</a></li>
                        <li><a href="shop-contacts.html">Contacts</a></li>
                        <li><a href="shop-standart-forms.html">Standart Forms</a></li>
                        <li><a href="shop-faq.html">FAQ</a></li>
                        <li><a href="shop-privacy-policy.html">Privacy Policy</a></li>
                        <li><a href="shop-terms-conditions-page.html">Terms &amp; Conditions</a></li>
                    </ul>
                </li>


                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="/home/category?cid=0" href="/home/category?cid=0">
                        CATEGORY

                    </a>

                    <ul class="dropdown-menu">

                    <c:forEach items="${AllCate}" var ="c">
                        <li><a href="/home/category?cid=${c.id}"> ${c.name}</a></li>
                    </c:forEach>

                    </ul>
                </li>



                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href=" ${sessionScope.loginedUser != null ? "/home/userinfo?id=3": "/login"}">
                        ${sessionScope.loginedUser != null ? sessionScope.loginedUser.fullname : "LOGIN"}
                            <img alt=""  width="22" height="22"
                                 src="${sessionScope.loginedUser != null ? sessionScope.loginedUser.image : "https://png.pngtree.com/png-clipart/20190516/original/pngtree-male-avatar-vector-icon-png-image_4005072.jpg"}" />
                    </a>

                    <!-- BEGIN DROPDOWN MENU -->
                    <ul class="dropdown-menu">

                        <li><a href="/home/userinfo?id=${sessionScope.loginedUser.id}">
                            My Profile
                        </a></li>
                        <li><a href="/home/order">My Oders</a></li>
                        <li><a href="../logout">${sessionScope.loginedUser != null ? "Log Out" : "Log In"}</a></li>
                    </ul>
                    <!-- END DROPDOWN MENU -->
                </li>



                <!-- BEGIN TOP SEARCH -->
                <li class="menu-search">
                    <span class="sep"></span>
                    <i class="fa fa-search search-btn"></i>
                    <div class="search-box">
                        <form action="/home/search">
                            <div class="input-group">
                                <input type="text" name="txt" value="${txtS}" placeholder="Search" class="form-control">
                                <span class="input-group-btn">
                      <button class="btn btn-primary" type="submit">Search</button>
                    </span>
                            </div>
                        </form>
                    </div>
                </li>
                <!-- END TOP SEARCH -->
            </ul>
        </div>
        <!-- END NAVIGATION -->
    </div>
</div>
<!-- Header END -->

