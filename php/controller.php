<?php

session_start();
include "../data_access/allRequire.php";

function goback()
{
	header("Location: {$_SERVER['HTTP_REFERER']}");
	exit;
}

if (isset($_POST['login'])) {
    $member = new member;

    $user = $_POST['username'];
    $pass = $_POST['password'];

    $check = $member->check_login($user, $pass);
    if ($check) {
        $_SESSION['member'] = $_POST['username'];
				setcookie('member',$_POST['username'],time() +2592000,'/');
        header("location:../index.php");
    } else {
      //header("location:login.php?status=wrong");
    }
}

if (isset($_GET['l'])) {
  unset($_SESSION['member']);
	if (isset($_COOKIE['member'])) {
    unset($_COOKIE['member']);
    setcookie('member', '', time() - 3600, '/');
	}
  session_destroy();
  goback();
}

if (isset($_POST['register'])) {
  $member = new member;
  $user = $_POST['username'];
  $pass = $_POST['password'];
  $mail = $_POST['email'];

  $check = $member->register($user,$mail,$pass);
  if ($check) {
    $_SESSION['member'] = $user;
    header("location:../index.php");
  } else {

  }
}

if (isset($_GET['register-premium'])) {

  if (!isset($_SESSION['member'])){
    header("location:login.php");
  } else {
    $member = new member;
    $premium = $_GET['register-premium'];

    $check = $member->addPremium($_SESSION['member'],$premium);
    if($check) {
     goback();
    }
}




}

 ?>
