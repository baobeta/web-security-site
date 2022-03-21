<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="dashboard"> <img
				src="<c:url value="/templates/assets/admin/layout4/img/logo-light.png"></c:url>"
<%--				src="https://res.cloudinary.com/dfkpopvkp/image/upload/v1638088328/motoo_zkucu3.png"--%>
				alt="logo" class="logo-default" />
			</a>
<%--			<div class="menu-toggler sidebar-toggler">--%>
<%--				<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->--%>
<%--			</div>--%>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler"
			data-toggle="collapse" data-target=".navbar-collapse"> </a>
		<!-- END RESPONSIVE MENU TOGGLER -->

		<!-- BEGIN PAGE TOP -->
		<div class="page-top">

			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
					<li class="separator hide"></li>
					<!-- BEGIN NOTIFICATION DROPDOWN -->

					<li class="dropdown dropdown-user"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-close-others="true"> <span
							class="username username-hide-on-mobile">
						${sessionScope.loginedUser != null ? sessionScope.loginedUser.fullname : "username"} </span> <!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
							&nbsp; <img alt="" class="img-circle"
							src="${sessionScope.loginedUser != null ? sessionScope.loginedUser.image : "http://www.danhgiaxe.com/images/avatar.jpg"}" />
					</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li><a href="userinfo?id=${sessionScope.loginedUser.id}"> <i class="icon-user"></i>
									My Profile
							</a></li>
							<li><a href="../logout"> <i class="icon-key"></i>
								${sessionScope.loginedUser != null ? "Log Out" : "Log In"}
							</a></li>
						</ul></li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END PAGE TOP -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix"></div>