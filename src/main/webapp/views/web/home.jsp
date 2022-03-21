<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<body>
<!-- BEGIN SLIDER -->
<div class="page-slider margin-bottom-35">
    <!-- LayerSlider start -->
    <div id="layerslider" style="width: 100%; height: 494px; margin: 0 auto;">

        <!-- slide one start -->
        <div class="ls-slide ls-slide1" data-ls="offsetxin: right; slidedelay: 7000; transition2d: 24,25,27,28;">

            <img src="https://wallpaperaccess.com/full/1881106.jpg" class="ls-bg" alt="Slide background">

            <div class="ls-l ls-title" style="top: 96px; left: 35%; white-space: nowrap;" data-ls="
            fade: true;
            fadeout: true;
            durationin: 750;
            durationout: 750;
            easingin: easeOutQuint;
            rotatein: 90;
            rotateout: -90;
            scalein: .5;
            scaleout: .5;
            showuntil: 4000;
          ">Cùng với <strong>HPT</strong> chinh phục tương lai</div>

            <div class="ls-l ls-mini-text" style="top: 338px; left: 35%; white-space: nowrap;" data-ls="
          fade: true;
          fadeout: true;
          durationout: 750;
          easingin: easeOutQuint;
          delayin: 300;
          showuntil: 4000;
          "><br >
            </div>
        </div>
        <!-- slide one end -->
        <!-- slide four start -->
        <div class="ls-slide ls-slide4" data-ls="offsetxin: right; slidedelay: 7000; transition2d: 110,111,112,113;">

            <img src="https://i.pinimg.com/originals/29/70/e7/2970e7b6c91e63e406b626aa95c31671.jpg" class="ls-bg" alt="Slide background">

            <div class="ls-l ls-title" style="top: 35%; left: 60%; white-space: nowrap;" data-ls="
          fade: true;
          fadeout: true;
          durationin: 750;
          durationout: 750;
          easingin: easeOutQuint;
          rotatein: 90;
          rotateout: -90;
          scalein: .5;
          scaleout: .5;
          showuntil: 4000;">
                Bắt đầu<br>
                Hành trình nào
            </div>

            <div class="ls-l ls-mini-text" style="top: 70%; left: 60%; white-space: nowrap;" data-ls="
          fade: true;
          fadeout: true;
          durationout: 750;
          easingin: easeOutQuint;
          delayin: 300;
          scalein: .8;
          scaleout: .8;
          showuntil: 4000;">
                <span>Ngay bây giờ</span>
                <a href="#">Buy It Now!</a>
            </div>

        </div>
        <!-- slide two start -->
        <div class="ls-slide ls-slide2" data-ls="offsetxin: right; slidedelay: 7000; transition2d: 110,111,112,113;">

            <img src="http://1.bp.blogspot.com/-dybm_gQ_UWM/VL6sDe0XcpI/AAAAAAAAVGc/P__ELsy3hUM/s1600/hinh-anh-xe-moto-7.jpg" class="ls-bg" alt="Slide background">

            <div class="ls-l ls-title" style="top: 40%; left: 21%; white-space: nowrap;" data-ls="
          fade: true;
          fadeout: true;
          durationin: 750; durationout: 109750;
          easingin: easeOutQuint;
          easingout: easeInOutQuint;
          delayin: 0;
          delayout: 0;
          rotatein: 90;
          rotateout: -90;
          scalein: .5;
          scaleout: .5;
          showuntil: 4000;
          "><strong>Không </strong> Giới hạn <em>Cháy hết mình</em>
            </div>


            <a href="#" class="ls-l ls-more" style="top: 72%; left: 21%; display: inline-block; white-space: nowrap;" data-ls="
          fade: true;
          fadeout: true;
          durationin: 750;
          durationout: 750;
          easingin: easeOutQuint;
          easingout: easeInOutQuint;
          delayin: 0;
          delayout: 0;
          rotatein: 90;
          rotateout: -90;
          scalein: .5;
          scaleout: .5;
          showuntil: 4000;">See More Details
            </a>
        </div>
        <!-- slide two end -->

        <!-- slide three start -->
        <div class="ls-slide ls-slide3" data-ls="offsetxin: right; slidedelay: 7000; transition2d: 92,93,105;">

            <img src="https://img4.thuthuatphanmem.vn/uploads/2020/04/28/hinh-nen-3d-xe-moto_025907885.jpg" class="ls-bg" alt="Slide background">

            <div class="ls-l ls-title" style="top: 83px; left: 33%; white-space: nowrap;" data-ls="
          fade: true;
          fadeout: true;
          durationin: 750;
          durationout: 750;
          easingin: easeOutQuint;
          rotatein: 90;
          rotateout: -90;
          scalein: .5;
          scaleout: .5;
          showuntil: 4000;
          ">Cháy hết mình <strong>CHIẾN THẮNG</strong> với ngọn lửa
            </div>
            <div class="ls-l" style="top: 333px; left: 33%; white-space: nowrap; font-size: 20px; font: 20px 'Open Sans Light', sans-serif;" data-ls="
          fade: true;
          fadeout: true;
          durationout: 750;
          easingin: easeOutQuint;
          delayin: 300;
          scalein: .8;
          scaleout: .8;
          showuntil: 4000;
          ">
                <a href="#" class="ls-buy">
                    Buy It Now!
                </a>
                <div class="ls-price">
                    <span>Sales Shock</span>

                </div>
            </div>
        </div>
        <!-- slide three end -->


        <!-- slide four end -->

    </div>
    <!-- LayerSlider end -->
</div>

<!-- END SLIDER -->

<div class="main">
    <div class="container">
        <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
        <div class="row margin-bottom-40">
            <!-- BEGIN SALE PRODUCT -->
            <div class="col-md-12 sale-product">
                <h2>NEW<Cars></Cars></h2>
                <div class="owl-carousel owl-carousel5">

                    <c:forEach items="${Topproducts}" var="i">
                    <div>

                        <div class="product-item" >
                            <div class="pi-img-wrapper">
                                <img width="200" height="125" src="${i.image}"   alt="${i.name}">
                                <div>
                                    <a href="${i.image}" class="btn btn-default fancybox-button">Zoom</a>
                                    <a href="/home/product?pid=${i.id}" class="btn btn-default fancybox-fast-view">View</a>
                                </div>
                            </div>
                            <h3><a href="/home/product?pid=${i.id}">${i.name}</a></h3>
                            <div class="pi-price">${i.price} VNĐ</div>


                        </div>

                    </div>
                    </c:forEach>

                </div>
            </div>
            <!-- END SALE PRODUCT -->
        </div>
        <!-- END SALE PRODUCT & NEW ARRIVALS -->



        <!-- BEGIN TWO PRODUCTS & PROMO -->
        <div class="row margin-bottom-35 ">
            <!-- BEGIN TWO PRODUCTS -->
            <div class="col-md-6 two-items-bottom-items">
                <h2>BEST SALES</h2>
                <div class="owl-carousel owl-carousel2">
                    <c:forEach items="${Topproducts}" var="i">
                        <div>

                            <div class="product-item">
                                <div class="pi-img-wrapper">
                                    <img src="${i.image}" class="img-responsive" alt="${i.name}">
                                    <div>
                                        <a href="${i.image}" class="btn btn-default fancybox-button">Zoom</a>
                                        <a href="/home/product?pid=${i.id}" class="btn btn-default fancybox-fast-view">View</a>
                                    </div>
                                </div>
                                <h3><a href="/home/product?pid=${i.id}">${i.name}</a></h3>
                                <div class="pi-price">${i.price} VNĐ</div>


                            </div>

                        </div>
                    </c:forEach>

                </div>
            </div>
            <!-- END TWO PRODUCTS -->
            <!-- BEGIN PROMO -->
            <div class="col-md-6 shop-index-carousel">
                <div class="content-slider">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="https://phattien.com/wp-content/uploads/2020/07/chon-honda-yeu-qua-chuan-dung-dieu-1110x780-1.jpg" class="img-responsive" alt="Berry Lace Dress">
                            </div>
                            <div class="item">
                                <img src="https://vn.yamaha.com/vi/files/av-san-sale-thang-11-voi-am-thanh-giai-tri-trong-nha-cung-yamaha-facebook_0a48c8ab45135c7b323cd573f79dba0e.jpg" class="img-responsive" alt="Berry Lace Dress">
                            </div>
                            <div class="item">
                                <img src="https://image-us.24h.com.vn/upload/4-2021/images/2021-12-03/khuyen-mai-xe-may-1-1638500783-562-width640height480.jpg" class="img-responsive" alt="Berry Lace Dress">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END PROMO -->
        </div>
        <!-- END TWO PRODUCTS & PROMO -->
    </div>
</div>


</body>
</html>