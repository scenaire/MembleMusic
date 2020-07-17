<?php

class member {

  public function check_login($username,$password) {
    include_once('db.php');
    $db = new db;

    $username = mysqli_real_escape_string($db->getCon(),$username);
    $password = mysqli_real_escape_string($db->getCon(),$password);

    $sql = "SELECT * FROM member WHERE username = '$username' AND password = '$password'";

    if(!($db->connectFetch($sql))) {
      return false;
    } else {
      return true;
    }

  }

  public function register($username,$email,$password) {
    include_once('db.php');
    $db = new db;

    $username = mysqli_real_escape_string($db->getCon(),$username);
    $email = mysqli_real_escape_string($db->getCon(),$email);
    $password = mysqli_real_escape_string($db->getCon(),$password);

    $sql = "INSERT INTO member (username,password,email)
    VALUES('$username','$password','$email')";

    return $db->connectUpdate($sql);

  }

  public function addPremium($username,$premium) {
    include_once('db.php');
    $db = new db;

    $username = mysqli_real_escape_string($db->getCon(),$username);

    $sql = "UPDATE member SET premium = '$premium' WHERE username = '$username'";

    return $db->connectUpdate($sql);

  }

  public function getPremiumStatus($username) {
    include_once('db.php');
    $db = new db;
    $username = mysqli_real_escape_string($db->getCon(),$username);
    $sql = "SELECT premium FROM member WHERE username = '$username'";
    $stat = $db->connectFetch($sql)[0][0];
    switch ($stat) {
      case 1: return '<i style="color:#DD9B01;" class="fas fa-chess-bishop"></i>';
      case 2: return '<i style="background-image: linear-gradient(to right bottom, #ffcda5, #fcb189, #f99373, #f57365, #ee4d5f); -webkit-background-clip: text; -webkit-text-fill-color: transparent;" class="fas fa-chess-queen"></i>';
      case 3: return '<i style="background-image: linear-gradient(to right bottom, #ff94b2, #f683c0, #e178d3, #bc74ea, #7d77ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent;" class="fas fa-chess-king"></i>';
      default: return '<i style="color:#8e8e8e;" class="fas fa-chess-pawn"></i>';
    }
  }



}

 ?>
