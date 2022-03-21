<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<head>
    <title>Profile</title>
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets1/global/plugins/select2/select2.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets1/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets1/global/plugins/bootstrap-datepicker/css/datepicker.css"/>"/>


    <!-- END PAGE LEVEL STYLES -->

    <%@include file="/common/seller/theme.jsp" %>


</head>
<body>

<div class="page-content-wrapper">
    <div class="page-content" style="padding-top: 0px">
        <!-- BEGIN PROFILE CONTENT -->

        <div class="profile-content" style="max-width: 1200px; margin: auto" >
            <div class="row">
                <div class="col-md-12">
                    <div class="note note-danger note-bordered">
                        <p>
                            NOTE: You must sign in again after making the change. That's completely automatic.
                        </p>
                    </div>
                    <div class="portlet light">
                        <div class="portlet-title tabbable-line">
                            <div class="caption caption-md">
                                <i class="icon-globe theme-font hide"></i>
                                <span class="caption-subject font-blue-madison bold uppercase">Profile Account</span>
                            </div>
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#tab_1_1" data-toggle="tab">Personal Info</a>
                                </li>
                                <li>
                                    <a href="#tab_1_2" data-toggle="tab">Change Avatar</a>
                                </li>
                                <li>
                                    <a href="#tab_1_3" data-toggle="tab">Change Password</a>
                                </li>
                            </ul>
                        </div>
                        <div class="portlet-body">
                            <div class="tab-content">
                                <!-- PERSONAL INFO TAB -->
                                <div class="tab-pane active" id="tab_1_1">
                                    <form role="form" action="userinfo?action=info" method="post">
                                        <div class="form-group">
                                            <label class="control-label">username: ${user.username}</label>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Full Name</label>
                                            <input name="fullname" type="text" value="${user.fullname}"
                                                   class="form-control"/>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Phone Number</label>
                                            <input name="phone" type="text" value="${user.phone}"
                                                   class="form-control"/>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Email</label>
                                            <input name="email" type="email" value="${user.mail}"
                                                   class="form-control"/>
                                        </div>
                                        <div class="margiv-top-10">
                                            <input type="submit" class="btn green-haze"
                                                   value="Save Change"/>
                                            <input type="reset" class="btn default"
                                                   value="Cancel"/>
                                        </div>
                                    </form>
                                </div>
                                <!-- END PERSONAL INFO TAB -->
                                <!-- CHANGE AVATAR TAB -->
                                <div class="tab-pane" id="tab_1_2">
                                    <form method="post" enctype="multipart/form-data" id="file-cloudinary">
                                        <input style="visibility: hidden" class="btn btn-default btn-circle"
                                               type="file"
                                               accept="image/*" id="file-chooser" name="files[]" multiple/>
                                        <button style="visibility: hidden" id="file-cloudinary-submit"
                                                type="submit"
                                                value="Upload Files" name="submit"></button>
                                    </form>
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                                    <script>
                                        $('#file-chooser').change(function () {
                                            var elem = document.getElementById("file-cloudinary-submit");
                                            elem.click();
                                        });

                                        const url = "https://api.cloudinary.com/v1_1/demo/image/upload";
                                        const form1 = document.getElementById("file-cloudinary");

                                        form1.addEventListener("submit", (e) => {
                                            e.preventDefault();

                                            const files = document.querySelector("[type=file]").files;
                                            const formData = new FormData();

                                            for (let i = 0; i < files.length; i++) {
                                                let file = files[i];
                                                formData.append("file", file);
                                                formData.append("upload_preset", "docs_upload_example_us_preset");

                                                fetch(url, {
                                                    method: "POST",
                                                    body: formData
                                                }).then((response) => {
                                                    return response.text();
                                                }).then((data) => {
                                                    let imglink = JSON.parse(data)['url'];
                                                    document.getElementById("file-image").value = imglink;
                                                    document.getElementById("img-show").src = imglink;
                                                });
                                            }
                                        });
                                    </script>
                                    <img id="img-show" src="${user.image}"
                                         style="max-height: 240px;max-width:100%;"/>
                                    <br/>
                                    <button class="btn btn-default btn-circle"
                                            onclick="document.getElementById('file-chooser').click();">
                                        Browse...
                                    </button>
                                    <form id="img-form" action="userinfo?action=image" role="form" method="post">
                                        <div class="form-group">
                                            <input id="file-image" type="hidden" name="image"
                                                   value="${user.image}"/>
                                        </div>
                                        <div class="margiv-top-10">
                                            <input type="submit" class="btn green-haze"
                                                   value="Submit"/>
                                            <input type="reset" class="btn default"
                                                   value="Cancel"/>
                                        </div>
                                    </form>
                                </div>
                                <!-- END CHANGE AVATAR TAB -->
                                <!-- CHANGE PASSWORD TAB -->
                                <div class="tab-pane" id="tab_1_3">
                                    <form action="userinfo?action=password" method="post">
                                        <div class="form-group">
                                            <label class="control-label">Current Password</label>
                                            <input type="password" class="form-control"
                                                   name="oldPassword" required/>
                                            <span id="old-pass-msg"></span>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">New Password</label>
                                            <input name="password" type="password" required
                                                   id="password" class="form-control"/>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Re-type New Password</label>
                                            <input id="confirm_password" type="password" required class="form-control"/>
                                            <span id='message'></span>
                                        </div>
                                        <div class="margiv-top-10">
                                            <input type="submit" class="btn green-haze"
                                                   id="pass-submit" value="Change Password"/>
                                            <input type="reset" class="btn default"
                                                   value="Cancel"/>
                                        </div>
                                    </form>
                                </div>
                                <!-- END CHANGE PASSWORD TAB -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END PROFILE CONTENT -->
    </div>
</div>
<dec:getProperty property="page.local_script"/>
<script type="text/javascript">

</script>

</body>

<content tag="local_script"> <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

    <%@include file="/common/seller/core_plugin.jsp" %>
    <script type="text/javascript">
        $('#password, #confirm_password').on('keyup', function () {
            if ($('#password').val() == $('#confirm_password').val()) {
                $('#message').html('Matching').css('color', 'green');
                document.getElementById("pass-submit").disabled = false;
            } else {
                $('#message').html('Not Matching').css('color', 'red');
                document.getElementById("pass-submit").disabled = true;
            }
        });
    </script>
</content>