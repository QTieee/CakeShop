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
    </head>

    <body>
        <?php $page = 'contact';?>



        <!--Start Navigation Bar @media 1200px-->
        <?php include './Includes/PcNavBar.php';?>
        <!--End Navigation Bar @media 1200px-->


        <!--Start Page Header-->
        <div class="about-us-header contact-us-header">
            <div class="banner-group">
                <div class="banner"></div>
            </div>
        </div>
        <!--End Page Header-->




        <!-- Start Contact Us -->
        <?php include './Includes/ContactUsForm.php';?>
        <!-- End Contact Us-->
        

         <!-- Start Google Map-->
         <?php include './Includes/GoogleMap.php';?>
        <!-- End Google Map-->

        
        <!--Start Footer-->
        <footer class="footer-group">

            <div class="footer">

                <div class="logo">
                    <span class="logo-name">
                        <img src="https://abcbakery.co/wp-content/themes/abc-bakery/images/logo.png.webp" alt="">
                    </span>
                </div>
            
                <div class="social-media">
                    <span class="facebook">
                        <a href=#><i class="fab fa-facebook-square"></i></a>
                    </span>
                    <span class="twitter">
                        <a href=#><i class="fab fa-twitter-square"></i></a>
                    </span>
                    <span class="instagram">
                        <a href=#><i class="fab fa-instagram-square"></i></a>
                    </span>
                    <span class="pinterest">
                        <a href=#><i class="fab fa-pinterest-square"></i></a>
                    </span>
                </div>

                <hr size="2px" width="80%" color="white">
                <hr size="2px" width="80%" color="white">

                <div class="contact-links">
                    <span class="phone"><i class="fas fa-phone-square-alt"></i>(+84) 3770xxx</span>
                    <span class="address">390 Hoàng Văn Thụ,phường4,quận Tân Bình,TP Hồ Chí Minh</span>
                </div>



                <div class="copyright">
                    <span class="copyright-text">&#169; 2024 Design by QTieee</span>
                </div>

            </div>  

        </footer>
        <!--End Footer-->

    </body>
</html>