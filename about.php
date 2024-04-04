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
        <?php $page = 'about';?>
        <!--Start Navigation Bar @media 1200px-->
        <?php include './Includes/PcNavBar.php';?>
        <!--End Navigation Bar @media 1200px-->


        <!--Start Page Header-->
        <div class="about-us-header">
            <div class="banner-group">
                <div class="banner"></div>
            </div>
            
            <div class="about-us-subtitle">
                <span>ABOUT US</span>
            </div>
        </div>
        <!--End Page Header-->


        <!--Start Baker Info-->
        <div class="baker-info-group">
            <div class="baker-info-container">
                <div class="baker-info-text">
                    <div class="baker-info-title" style="padding-top: 200px">
                        <span>Fresh From Our Hearts</span>
                    </div>
                    <div class="baker-description">
                        <p>The founder, Mr Kao Sieu Luc ( Picture of Mr Kao Sieu Luc) , together with over 30 years of experience is the driving force behind the high quality & innovation products constantly being introduced into the market. His name is well-known in the bakery industry and he is referred to the King of Bread of Vietnam.</p>
                    </div>
                    
                    <div class="baker-position">
                        <span>Mr Kao Sieu Luc</span>
                    </div>
                </div>
                
                <div class="baker-photo-group">
                    <div class=""><img src="Assets/images/4.aboutus/mrkao.jpg" alt="" class="mrkao" style="width: 500px;">
                </div>
            </div>
        </div>
        <!--End Baker Info-->

        <!--Start Team Info-->
        <div class="team-section">
            <div class="team-title">
                <span>Golden Hand</span>
            </div>

            <div class="subtitle">
                <h2>OUR TEAM</h2>
            </div>

            
            <div class="all-helper-info">
                <div class="helper-individual">
                    <div class="helper-group helper0">
                        <div class="helper-pic-group">
                            <div class="helper-pic"></div>
                        </div>

                        <div class = "helper-more-about">
                            <p class="name"><b>Lê Hùng Vinh</b></p>
                            <p class="hierarchy">PM - Project Manager</p>
                            <p class="description">Chuyện gì khó đã có chúng tôi</p>
                        </div>
                    </div>
                </div>
                
                <div class="helper-individual">
                    <div class="helper-group helper1">
                        <div class="helper-pic-group">
                            <div class="helper-pic"></div>
                        </div>

                        <div class = "helper-more-about">
                            <p class="name"><b>Trần Quốc Thắng</b></p>
                            <p class="hierarchy">Dev - Developer Fullstack</p>
                            <p class="description">Chuyện gì khó đã có chúng tôi</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End Team Info-->


        <!-- Start Google Map-->
        <?php include './Includes/GoogleMap.php';?>
        <!-- End Google Map-->
    </body>
</html>