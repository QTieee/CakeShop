<?php 
    define('Access', TRUE);
    include "./AdditionalPHP/startSession.php";
?>

<?php
    include "connection.php";

    $uname = $password = "";
    $errCriteria = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        if ((empty($_POST['uname'])) || (empty($_POST['password']))) {
            $errCriteria = "Incorrect Username or Password!";
        } else {
            $uname = test_input($_POST['uname']);
            $password = test_input($_POST['password']);

            // select row
            $sql = "SELECT * FROM user WHERE uname='$uname'";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) === 1) {
                $row = mysqli_fetch_assoc($result);

                // check if hashed passwords match
                if (password_verify($password, $row['pass'])) {
                    include "./AdditionalPHP/startSession.php";

                    // store the user data in this session
                    $_SESSION['uname'] = $row['uname'];
                    $_SESSION['isAdmin'] = $row['isAdmin'];

                    header('location: checkAccount.php');
                } else {
                    $errCriteria = "Incorrect Username or Password!";
                }
            } else {
                $errCriteria = "Incorrect Username or Password!";
            }
        }
    }
      
    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
?>


<!DOCTYPE html>
<html lang="en-MU">
<head>
    <meta charset="utf-8">
    <title>ABC | Bakery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--CSS File-->
    <link rel="stylesheet" type="text/css" href="Common.css">
    <link rel="stylesheet" type="text/css" href="Account.css">
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/0e16635bd7.js" crossorigin="anonymous"></script>
    <!--BOXICONS-->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- Animate CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <title>MALAKO | Login</title>
</head>

<body>
    <?php $page = 'login';?>
    <!--Start Navigation Bar @media 1200px-->
    <?php include './Includes/PcNavBar.php';?>
    <!--End Navigation Bar @media 1200px-->


    <!--Start Background Image-->
    <div class="bg-image-container">
        <div class="bg-image"></div>
    </div>
    <!--End Background Image-->

    
    <!--Start Login Panel-->
    <div class="login-page">
        <div class="form">
            <div class="login">
                <div class="login-header">
                    <h3>LOGIN</h3>
                    <p>Please enter your credentials to login</p>
                </div>
            </div>

            <form class="login-form" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                <input type="text" name="uname" placeholder="Username" value="<?php echo $uname;?>"/>
                <input type="password" name="password" placeholder="Password"/>
                <span class="Password-Error"><?php if($errCriteria != ""){echo "$errCriteria <br><br>";}?></span>
                
                <button>login</button>
                <p class="message">Not registered? <a href="registration.php">Create an account</a></p>
                <br><span class="forget-text"><a href="forgetPassword.php">Forgot Password?</a></span>
                <!-- <p class="or-message"><b>OR</b></p> -->
            </form>

            <!-- <div class="social-login">
                <span class="login-text">Login with: </span>
                <span><a><i class="fab fa-facebook-f"></i></a></span>
                <span><a><i class="fab fa-twitter"></i></a></span>
                <span><a><i class="fab fa-google-plus-g"></i></a></span>
            </div> -->
        </div>
    </div>
    <!--End Login Panel-->

</body>
</html>
