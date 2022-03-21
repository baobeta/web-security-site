<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<head>
    <title>Product</title>
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/select2/select2.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/bootstrap-datepicker/css/datepicker.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>"/>
    <link
            href="<c:url value="/templates/assets/global/plugins/fancybox/source/jquery.fancybox.css"/>"
            rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->

    <%@include file="/common/seller/theme.jsp" %>
</head>

<body>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <style type="text/css">
        #page-content {
            padding-top: 0px !important;
        }
    </style>
    <div class="page-content" id="page-content">
        <div class="row">
            <div class="col-md-12">
                <form id="main-form" class="form-horizontal form-row-seperated" action="productedit" method="post">
                    <input type="hidden" name="action" value="${action}"/>
                    <input type="hidden" name="id" value="${product.id}"/>
                    <div class="portlet light" style="margin-bottom: 0px">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="icon-basket font-green-sharp"></i> <span
                                    class="caption-subject font-green-sharp bold uppercase">
										Product </span>
                                <%--                                <span class="caption-helper">Man Tops</span>--%>
                            </div>
                            <div class="actions btn-set">
                                <a type="button" name="back" href="product"
                                        class="btn btn-default btn-circle">
                                    <i class="fa fa-angle-left"></i> Back
                                </a>
                                <button class="btn btn-default btn-circle" type="reset">
                                    <i class="fa fa-reply"></i> Reset
                                </button>
                                <button class="btn green-haze btn-circle" type="submit">
                                    <i class="fa fa-check"></i> Save
                                </button>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div class="tabbable">
                                <div class="tab-pane active" id="tab_general">
                                    <div class="form-body">
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Product name: <span
                                                    class="required"> * </span>
                                            </label>
                                            <div class="col-md-10">
                                                <input type="text" class="form-control" required
                                                       value="${product.name}" name="name" placeholder=""/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Description:
                                                <span class="required"> * </span>
                                            </label>
                                            <div class="col-md-10">
                                                    <textarea class="form-control" rows="5"
                                                              name="description">${product.description}</textarea>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12">
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Price: <span
                                                            class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-8">
                                                        <input type="number" min="0"  class="form-control" required
                                                               value="${product.price}" name="price" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Amount: <span
                                                            class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-8">
                                                        <input type="number" min="0" class="form-control" required
                                                               value="${product.amount}" name="amount" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Category: <span
                                                            class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-8">
                                                        <select required style="width: 100%"
                                                                class="table-group-action-input form-control"
                                                                name="categories">
                                                            <c:forEach items="${categories}" var="cate">
                                                                <option ${cate.id == product.category_id ? "selected" : ""}
                                                                        value="${cate.id}">${cate.name}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Brand: <span
                                                            class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-8">
                                                        <select required style="width: 100%"
                                                                class="table-group-action-input form-control"
                                                                name="brand">
                                                            <c:forEach items="${brands}" var="brand">
                                                                <option ${brand.id == product.brand_id ? "selected" : ""}
                                                                        value="${brand.id}">${brand.name}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Status: <span
                                                            class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-8">
                                                        <select required style="width: 100%"
                                                                class="table-group-action-input form-control"
                                                                name="status">
                                                            ${product.status == 1 ? "selected" : ""}
                                                            <option  ${product.status == 1 ? "selected" : ""}
                                                                    value="1">Published
                                                            </option>
                                                            <option  ${product.status == 0 ? "selected" : ""}
                                                                    value="0">Not Published
                                                            </option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-sm-12">
                                                <div style="width: 100%">
                                                    <input id="file-image" type="hidden" name="image"
                                                           value="${product.image}"/>
                                                    <img id="img-show" src="${product.image}"
                                                         style="max-height: 240px;max-width:100%;"/>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="portlet light ">
                    <form style="align-items: flex-end; display: flex; justify-content: flex-end;"
                          method="post" enctype="multipart/form-data" id="file-cloudinary">
                        <input style="visibility: hidden" class="btn btn-default btn-circle" type="file"
                               accept="image/*" id="file-chooser" name="files[]" multiple/>
                        <button class="btn btn-default btn-circle"
                                onclick="document.getElementById('file-chooser').click();">Browse...
                        </button>
                        <button style="visibility: hidden" id="file-cloudinary-submit" type="submit"
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
                                })
                                    .then((response) => {
                                        return response.text();
                                    })
                                    .then((data) => {
                                        let imglink = JSON.parse(data)['url'];
                                        document.getElementById("file-image").value = imglink;
                                        document.getElementById("img-show").src = imglink;
                                    });
                            }
                        });
                    </script>
                </div>
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>
</div>

<!-- END CONTENT -->
</body>

<content tag="local_script"> <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

    <%@include file="/common/seller/core_plugin.jsp" %>

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
            src="<c:url value="/templates/assets/admin/pages/scripts/ecommerce-products-edit.js"/>"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Demo.init(); // init demo features
            EcommerceProductsEdit.init();
        });

        // document.getElementById("page-content").style.paddingTop = "0px";
    </script>
    <!-- END JAVASCRIPTS -->
</content>