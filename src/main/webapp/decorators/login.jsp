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
    <title>Login</title>
    <link rel="shortcut icon"
          href="https://cdn.iconscout.com/icon/premium/png-256-thumb/motorbike-1679262-1426949.png"/>
    <!-- CSS -->
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
            href="<c:url value="/templates/assets/admin/pages/css/login.css"/>"
            rel="stylesheet" type="text/css">
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE STYLES -->
    <link
            href="<c:url value="/templates/assets/admin/pages/css/tasks.css"/>"
            rel="stylesheet" type="text/css">
    <!-- END PAGE STYLES -->
    <!-- BEGIN THEME STYLES -->
    <!-- DOC: To use 'rounded corners' style just load 'components-rounded.css' stylesheet instead of 'components.css' in the below style tag -->
    <link
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
            rel="stylesheet" type="text/css">
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="<c:url value="/templates/favicon.ico"/>"/>
</head>
<body class="login">
<div class="logo">
    <a href="index.jsp"> <img
            src="<c:url value="/templates/assets/admin/layout4/img/logo-big.png"/>"
            alt=""/>
    </a>
</div>
<!-- BEGIN LOGIN -->
<div class="content">
    <div class="alert alert-warning ${param.errorMessage == null ? "display-hide" : ""}">
        <button class="close" data-close="alert"></button>
        <span> <c:out value="${param.errorMessage}"/>  </span>
    </div>
    <!-- BEGIN LOGIN FORM -->
    <form class="login-form" action="login" method="post">
        <h3 class="form-title">Sign In</h3>
        <div class="alert alert-danger display-hide">
            <button class="close" data-close="alert"></button>
            <span> Enter any username and password. </span>
        </div>
        <div class="alert alert-danger ${errorMessage == null ? "display-hide" : ""}">
            <button class="close" data-close="alert"></button>
            <span> <c:out value="${errorMessage}"/> </span>
        </div>
        <div class="form-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">Username</label>
            <input class="form-control form-control-solid placeholder-no-fix"
                   type="text" autocomplete="off" placeholder="Username"
                   name="username"/>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Password</label>
            <input class="form-control form-control-solid placeholder-no-fix"
                   type="password" autocomplete="off" placeholder="Password"
                   name="password"/>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-success uppercase">Login</button>
            </label> <a href="javascript:;" id="forget-password" class="forget-password">Forgot
            Password?</a>
        </div>

        <div class="create-account">
            <p>
                <a href="javascript:;" id="register-btn" class="uppercase">Create
                    an account</a>
            </p>
        </div>
    </form>
    <!-- END LOGIN FORM -->
    <!-- BEGIN FORGOT PASSWORD FORM -->
    <form class="forget-form" action="forget" method="post">
        <h3>Forget Password ?</h3>
        <p>Enter your e-mail address below to reset your password.</p>
        <div class="form-group">
            <input class="form-control placeholder-no-fix" type="text"
                   autocomplete="off" placeholder="Email" name="email"/>
        </div>
        <div class="form-actions">
            <button type="button" id="back-btn" class="btn btn-default">Back</button>
            <button type="submit" class="btn btn-success uppercase pull-right">Submit</button>
        </div>
    </form>
    <!-- END FORGOT PASSWORD FORM -->
    <!-- BEGIN REGISTRATION FORM -->
    <form class="register-form" action="register" method="post">
        <input type="hidden" name="image"/>
        <h3>Sign Up</h3>
        <p class="hint">Enter your personal details below:</p>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Full
                Name</label> <input class="form-control placeholder-no-fix" type="text"
                                    placeholder="Full Name" name="fullname"/>
        </div>
        <div class="form-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">Email</label> <input
                class="form-control placeholder-no-fix" type="text"
                placeholder="Email" name="email"/>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Phone</label>
            <input class="form-control placeholder-no-fix" type="text"
                   placeholder="Phone" name="phone"/>
        </div>
        <p class="hint">Enter your role you want:</p>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Role</label>
            <select required class="table-group-action-input form-control"
                    name="role_id">
                <option value="3">Customer</option>
                <option value="2">Seller</option>
            </select>
        </div>
        <p class="hint">Enter your account details below:</p>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Username</label>
            <input class="form-control placeholder-no-fix" type="text"
                   autocomplete="off" placeholder="Username" name="username"/>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Password</label>
            <input class="form-control placeholder-no-fix" type="password"
                   autocomplete="off" id="register_password" placeholder="Password"
                   name="password"/>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Re-type
                Your Password</label> <input class="form-control placeholder-no-fix"
                                             type="password" autocomplete="off"
                                             placeholder="Re-type Your Password" name="rpassword"/>
        </div>
        <div class="form-group margin-top-20 margin-bottom-20">
            <label class="check"> <input type="checkbox" name="tnc"/>
                I agree to the <a href="#"> Terms of Service </a> & <a href="#">
                    Privacy Policy </a>
            </label>
            <div id="register_tnc_error"></div>
        </div>
        <div class="form-actions">
            <button type="button" id="register-back-btn" class="btn btn-default">Back</button>
            <button type="submit" id="register-submit-btn"
                    class="btn btn-success uppercase pull-right">Submit
            </button>
        </div>
    </form>
    <!-- END REGISTRATION FORM -->
</div>
<div class="copyright">2021 &copy; HUNGPQ
</div>
<!-- END LOGIN -->
<script
        src="<c:url value="/templates/assets/global/plugins/jquery.min.js"/>"
        type="text/javascript"></script>
<script
        src="<c:url value="/templates/assets/global/plugins/jquery-migrate.min.js"/>"
        type="text/javascript"></script>
<script
        src="<c:url value="/templates/assets/global/plugins/bootstrap/js/bootstrap.min.js"/>"
        type="text/javascript"></script>
<script
        src="<c:url value="/templates/assets/global/plugins/jquery.blockui.min.js"/>"
        type="text/javascript"></script>
<script
        src="<c:url value="/templates/assets/global/plugins/uniform/jquery.uniform.min.js"/>"
        type="text/javascript"></script>
<script
        src="<c:url value="/templates/assets/global/plugins/jquery.cokie.min.js"/>"
        type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script
        src="<c:url value="/templates/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"/>"
        type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script
        src="<c:url value="/templates/assets/global/scripts/metronic.js"/>"
        type="text/javascript"></script>
<script
        src="<c:url value="/templates/assets/admin/layout/scripts/layout.js"/>"
        type="text/javascript"></script>
<script
        src="<c:url value="/templates/assets/admin/layout/scripts/demo.js"/>"
        type="text/javascript"></script>
<script
        src="<c:url value="/templates/assets/admin/pages/scripts/login.js"/>"
        type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Login.init();
        Demo.init();
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>