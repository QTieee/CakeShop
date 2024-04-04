<?php 
    define('Access', TRUE);
    include "./AdditionalPHP/startSession.php";
?>

<!DOCTYPE html>
<html lang="en-MU">
    <head>
        <meta charset="utf-8">
        <title>ABC | Bakery</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--CSS File-->
        <link rel="stylesheet" type="text/css" href="Common.css">
        <link rel="stylesheet" type="text/css" href="Atish.css">
        <!-- Font Awesome -->
        <script src="https://kit.fontawesome.com/0e16635bd7.js" crossorigin="anonymous"></script>
        <!--BOXICONS-->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- Animate CSS -->
        <link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <script src="Javascript/swapWaveImg.js"></script>
    </head>

    <body>
        <?php $page = 'index'?>

        <!--Start Navigation Bar @media 1200px-->
        <?php include './Includes/PcNavBar.php';?>
        <!--End Navigation Bar @media 1200px-->


        <!--Start Wave Image-->
        <div class="wave-image-group-media1200">
            <div class="wave-image-flip-media1200">
                <img src="Assets/images/1.index/NavBar_WaveWhiteThinFlip.png">
            </div>
        </div>
        <!--End Wave Image-->


        <!--Start Slideshow-->
        <div class="slideshow-container">

            <!-- Full-width images with number and caption text -->
            <div class="mySlides fade">
            <img src="Assets/images/1.index/Cake_1.jpg" style="width:100%">
            </div>
        
            <div class="mySlides fade">
            <img src="Assets/images/1.index/Cake_2.jpg" style="width:100%">
            </div>
        
            <div class="mySlides fade">
            <img src="Assets/images/1.index/Cake_3.jpg" style="width:100%">
            </div>
            
        </div>

        <script src="Javascript/SlideshowAuto.js"></script>
        <!--End Slideshow -->

        
        <!--Start Wave Image-->
        <div class="wave-image-group">
            <div class="wave-image">
                <img src="Assets/images/1.index/NavBar_WaveWhite.png">
            </div>
        </div>
        <!--End Wave Image-->

        <!--Start -->
        <div class="what-you-can-do">
            <div class="subtitle">
                <h2>Bạn có thể làm gì ?</h2>
            </div>

            <div class="row">

                <div class="column">
                    <i class="fas fa-cookie"  style="color: black;"></i>
                    <span class="what-you-can-do-subtitle buy-our-cake">Những chiếc bánh mới ra lò</span>
                    <span class="what-you-can-do-text">Hãy nếm thử những chiếc bánh mới được chuẩn bị của chúng tôi bằng cách đặt hàng trực tuyến!</span>
                </div>

                <div class="column">
                    <i class="fas fa-mitten"  style="color: black;"></i>
                    <span class="what-you-can-do-subtitle customize-cake">Tùy chỉnh chiếc bánh của bạn</span>
                    <span class="what-you-can-do-text">Bạn có thể tùy chỉnh chiếc bánh của mình với lớp kính, lớp phủ, màu sắc yêu thích và hơn thế nữa!</span>
                </div>
                
                <div class="column">
                    <i class="fas fa-boxes"  style="color: black;"></i>
                    <span class="what-you-can-do-subtitle create-box">Tùy chỉnh hộp bánh</span>
                    <span class="what-you-can-do-text">Bạn có thể thêm các loại bánh khác nhau vào hộp và chúng tôi sẽ giao hàng cho bạn!</span>
                </div>

            </div>
         </div>

        </div>
        <!--End What You Can Do-->
       
        
        <!--Start Special Offer-->
        <section class="offer-section">
            <div class="offer-bg">
                <div class="offer-data">
                    <div class="subtitle">
                        <h2>SPECIAL OFFER</h2>
                    </div>
                    <p class="offer-description">Valentine Trắng</p>
                    <div class="subscribe-button-container">
                        <a href="products.php"><button class="subscribe-button" name="subscribe">SHOP NOW</button></a>
                    </div>
                </div>
            </div>
        </section>
        <!--End Special Offer-->

        <!--Start How to Order-->
        <div class="how-to-order">
            <div class="subtitle">
                <h2 class="order-subtitle">Làm thế nào để đặt hàng</h2>
            </div>
            <div class="row" style="color: #FF7380FF;">
                <div class="column">
                  <i class="fas fa-birthday-cake"></i>
                  <p><b>Chọn bánh của bạn</b></p>
                </div>
                <div class="column">
                  <i class="fas fa-cart-plus"></i>
                  <p><b>Thêm vào giỏ hàng</b></p>
                </div>
                <div class="column">
                  <i class="fas fa-money-check-alt"></i>
                  <p><b>Thanh toán</b></p>
                </div>
                 <div class="column">
                 <i class="fas fa-box-open"></i>
                 <p><b>Chúng tôi sẽ đóng gói và gửi cho bạn</b></p>
                </div>
            </div>
         </div>
        <!--End How to Order-->


        <!--Start Wave Image Flip-->
        <div class="wave-image-group">
            <div class="wave-image-flip how-to-order-wave">
                <img src="Assets/images/1.index/NavBar_WaveWhiteFlip.png">
            </div>
        </div>
        <!--End Wave Image Flip-->


        <!-- Start Our Baker-->
        <div class="our-baker">

            <div class="subtitle">
                <h2>Người phụ trách</h2>
            </div>
            
            <div class="all-helper-info-index">
                <!-- 1 -->
                <div class="helper-individual-index">
                    <div class="helper-group helper0" style="width: 300px;">
                        <div class="helper-pic-group">
                            <div class="helper-pic"></div>
                        </div>
                        <div class = "helper-more-about">
                            <p class="name"><b>Lê Hùng Vinh</b></p>
                            <p class="hierarchy">PM - Project Manager</p>
                            <!-- Phân công công việc -->
                            <p class="description">Người quản lý công việc,theo dõi, báo cáo và update tiến trình.</p>
                        </div>
                    </div>
                </div>
                <!-- 2 -->
                <div class="helper-individual-index">
                    <div class="helper-group helper1" style="width: 300px;">
                        <div class="helper-pic-group">
                            <div class="helper-pic"></div>
                        </div>

                        <div class = "helper-more-about">
                            <p class="name"><b>Trần Quốc Thắng</b></p>
                            <p class="hierarchy">Dev - Developer Fullstack</p>
                            <!-- Công việc -->
                            <p class="description">Thiết kế UI và xử lý DB của website</p>
                        </div>
                    </div>
                </div>
                <!-- 3 -->
                <div class="helper-individual-index">
                    <div class="helper-group helper2" style="width: 300px;">
                        <div class="helper-pic-group">
                            <div class="helper-pic"></div>
                        </div>

                        <div class = "helper-more-about">
                            <p class="name"><b>Lữ Quốc Thiên</b></p>
                            <p class="hierarchy">Tester</p>
                            <!-- Công việc -->
                            <p class="description">Kiểm tra lỗi và tính năng của website.</p>
                        </div>
                    </div>
                </div>
                <!-- 4 -->
                <div class="helper-individual-index">
                    <div class="helper-group helper3" style="width: 300px;">
                        <div class="helper-pic-group">
                            <div class="helper-pic"></div>
                        </div>
                        <!-- Công việc -->
                        <div class = "helper-more-about">
                            <p class="name"><b>Bùi Văn Tuấn</b></p>
                            <p class="hierarchy">Tester</p>
                            <p class="description">Kiểm tra lỗi và tính năng của website.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Our Baker-->

        <!-- Start Google Map-->
        <?php include './Includes/GoogleMap.php';?>
        <!-- End Google Map-->

    </body>
</html>