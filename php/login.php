<?php

session_start();

if (isset($_SESSION['member'])) {
    header("location:../index.php");
}
?>

<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

<head>
  <meta charset="utf-8">
  <title>Memble Music - login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/music.css" />
  <link rel="stylesheet" href="../css/login.css" />
  <link rel="icon" href="../photo/favicon-headphones.ico" type="image/x-icon" />

<body>

  <div class="content">
    <div class="navbar">
      <a href="../index.php" id="recommended">RECOMMENDED</a>
      <a href="#" id="new-release">NEW RELEASE</a>
      <a href="top-chart.php" id="top-chart">TOP CHART</a>
      <a href="premium.php" id="premium">PREMIUM <i class="fas fa-star"></i></a>
      <input type="text" placeholder="Search... ">
    </div>

    <div class="container">
      <div class="wrapperr">
        <h1>Login</h1>

        <div class="row">
          <div class="vl">
            <span class="vl-innertext">or</span>
          </div>

          <div class="col">
            <a href="#" class="fb btn">
            <i class="fab fa-facebook"></i> Login with Facebook
            </a>
            <a href="#" class="twitter btn">
              <i class="fab fa-twitter"></i></i> Login with Twitter
            </a>
            <a href="#" class="google btn">
              <i class="fab fa-google-plus-g"></i> Login with Google+
            </a>

          </div>

          <div class="col">
            <form action="controller.php" method="post">
              <input type="text" name="username" placeholder="Username" required>
              <input type="password" name="password" placeholder="Password" required>
              <input id="btnlogin" name="login" type="submit" value="Login">
            </form>
            <a href="#" class="fg btn">Forgot password?</a>
            <a href="register.php" class="su btn ">Sign up</a>
          </div>

        </div>
      </div>
  </div>

    <div class="sidenav">
      <ul>
        <li class="webbanner"><i class="fas fa-headphones"></i></li>
        <li ><a href="../index.php" ><i class="fas fa-home"></i><br /></a></li>
        <li class="active"><a href="#" class="active"><i class="fas fa-user-alt"></i></a></li>
        <li><a href="#"><i class="fas fa-broadcast-tower"></i></a></li>
      </ul>
    </div>

    <!--<div class="bottom-container">
    <div class="row">
      <div class="col">
        <a href="#"class="su btn ">Sign up</a>
      </div>
      <div class="col">
        <a href="#" class="fg btn">Forgot password?</a>
      </div>
    </div>
  </div> --->

</body>

</html>
