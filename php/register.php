<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Memble Music</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="../css/music.css" />
  <script src="../js/music.js" type="text/javascript"></script>
  <link rel="icon" href="photo/favicon-headphones.ico" type="image/x-icon" />

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>

<body style="background-image:url('../photo/full/abstract.jpg');">
  <div class="content">
      <div class="navbar">
        <a href="../index.php" id="recommended">RECOMMENDED</a>
        <a href="#" id="new-release">NEW RELEASE</a>
        <a href="top-chart.php" id="top-chart">TOP CHART</a>
        <a href="premium.php" id="premium">PREMIUM <i class="fas fa-star"></i></a>
        <input type="text" placeholder="Search... ">
      </div>
    <div class="RegisterBox">
      <h1>Sign Up<br></h1>
      <div id="askRegister">Already have a Memble Music account? <a href="login.php"><span id="login_hover">Sign In </span></a></div>

      <form action="controller.php" method="post">
        <p> Username</p>
        <input type="text" name="username" placeholder="Username" required><br />
        <p> Email</p>
        <input type="email" name="email" placeholder="E-mail" required><br />
        <p> Password</p>
        <input type="password" name="password" placeholder="Password" required><br />
        <input name="register" type="submit" value="Login">
      </form>
    </div>
  </div>

      <div class="sidenav">
        <ul>
          <li class="webbanner"><i class="fas fa-headphones"></i></li>
          <li><a href="../index.php"><i class="fas fa-home"></i><br /></a></li>
          <li class="active"><a href="#" class="active"><i class="fas fa-user-alt"></i></a></li>
          <li><a href="#"><i class="fas fa-broadcast-tower"></i></a></li>
        </ul>
      </div>
</body>

</html>
