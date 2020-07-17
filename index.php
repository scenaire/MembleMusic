<?php

session_start();
include "data_access/allRequire.php";

$check_status = true;

if(isset($_COOKIE["member"])) {
	$_SESSION['member'] = $_COOKIE['member'];
}

if(!isset($_SESSION['member'])){
	$check_status = false;
}



?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>Memble Music</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="css/music.css" />
  <script src="js/music.js" type="text/javascript"></script>
  <link rel="icon" href="photo/favicon-headphones.ico" type="image/x-icon" />

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

</head>

<body>
  <div class="content">
		<div class="navbar">
			<a id="recommended" class="active">RECOMMENDED</a>
			<a id="new-release">NEW RELEASE</a>
			<a id="top-chart">TOP CHART</a>
			<a id="premium">PREMIUM <i class="fas fa-star"></i></a>
			<input type="text" placeholder="Search... ">
		</div>
    <div class="page-load">
			<div class="header">
	        <img id="bgImg" src="photo/header/sunset.jpg">
	        <div class="wrapper">
	          <h1>What is hot now?<br><span id="hotPlaylist">Weekend groove playlist</span></h1>
	          <a id='button-play' class="button">play now</a>
	        </div>
	        <fade></fade>
	    </div>
			<div class="group">
	      <h3><i style="color: #ED215D" class="fas fa-caret-square-right"></i> Recommended</h3>
	      <div class="carousel">

					<?php
						$album = new album;
						$song = new song;
						$a_list = $album->getAllAlbum();

						shuffle($a_list);

						for($i = 0; $i<6; $i++) {
							$pic = $a_list[$i]['album_pic'];
							$name = $a_list[$i]['album_name'];
							$id = $a_list[$i]['album_id'];
							$first_song = $song->getSongbyAlbum($id)[mt_rand(0,(sizeof($song->getSongbyAlbum($id))-1))];
							$artist = $song->getArtistbySong($first_song['song_id']);
							$songInfo = $first_song['song_name']."^".$first_song['song_url']."^".$pic."^".$artist;


							echo '<div class="itembox">';
							echo '<img class="play-this-song" id="'.$songInfo.'" src="'.$pic.'" /><br>';
							echo '<span class="song-title">'.$name.'</span><br /></div>';
						}

					 ?>
	      </div>
	    </div>
	    <div class="group">
	      <h3><i style="color: #ED215D" class="fas fa-caret-square-right"></i> New Release for you</h3>
	      <div class="carousel">

					<?php
						$album = new album;
						$song = new song;
						$a_list = $album->getAllAlbumDESC();


						for($i = 0; $i<6; $i++) {
							$pic = $a_list[$i]['album_pic'];
							$name = $a_list[$i]['album_name'];
							$id = $a_list[$i]['album_id'];
							$first_song = $song->getSongbyAlbum($id)[mt_rand(0,(sizeof($song->getSongbyAlbum($id))-1))];
							$artist = $song->getArtistbySong($first_song['song_id']);
							$songInfo = $first_song['song_name']."^".$first_song['song_url']."^".$pic."^".$artist;


							echo '<div class="itembox">';
							echo '<img class="play-this-song" id="'.$songInfo.'" src="'.$pic.'" /><br>';
							echo '<span class="song-title">'.$name.'</span><br /></div>';
						}

					 ?>
	      </div>
	    </div>
    </div>

    <div class="footer">
			<?php

			$mem = new member;

			if ($check_status) {
				echo '<div class="user-profile">';
				echo 'Hey, <span style="color:pink;">'.$_SESSION['member'].' '.$mem->getPremiumStatus($_SESSION['member']).'</span><br>';
				echo 'How are you today? <i class="fas fa-grin-squint"></i>';
				echo '</div>';
			}
			 ?>
      <div class="song-container">
        <div class="song-info">
          <img id="song-img" src="" alt="">
          <div class="wrap">
            <span id="song-title" class="song-title"></span><br />
            <span id="song-artist" class="song-artist">Artist</span>
          </div>
        </div>
        <div class="song-player">
          <div class="song-status">
						<span id="current-time">--:--</span>
	          <span id="total-time">--:--</span>
	          <div class="song-slider" data-direction="horizontal">
	            <div class="progress">
	              <div class="pin" id="progress-pin" data-method="rewind"></div>
	            </div>
	          </div>
          </div>
					<br/>
          <div class="player-control">
            <span id="loop-btn"><i class="fas fa-undo"></i></span>
            <span id="previous-btn"><i class="fa fa-step-backward fa-fw" aria-hidden="true"></i></span>
            <span id="play-btn"><i class="fas fa-play"></i></span>
            <span id="next-btn"><i class="fa fa-step-forward fa-fw"></i></span>
            <i class="fas fa-random"></i>
            <span id="fav-btn"><i class="far fa-heart"></i></span>
            <span id="upnext-btn"><i class="fas fa-list"></i></span>
          </div>
        </div>
      </div>
    </div>
    <div class="footblank">

    </div>
  </div>
  <div class="sidenav">
    <ul>
      <li class="webbanner"><i class="fas fa-headphones"></i></li>
      <li class="active"><a id='home-icon' class="active"><i class="fas fa-home"></i><br /></a></li>

      <?php
				if($check_status) {
					echo "<li><a href='#'><i class='fas fa-user-alt'></i></a></li>";
					echo "<li><a href='#'><i class='far fa-heart'></i></a></li>";
					echo '<li><a href="#"><i class="fas fa-broadcast-tower"></i></a></li>';
					echo '<li><a href="php/controller.php?l=logout"><i class="fas fa-sign-out-alt"></i></a></li>';
				} else {
					echo "<li><a href='php/login.php'><i class='fas fa-user-alt'></i></a></li>";
					echo '<li><a href="#"><i class="fas fa-broadcast-tower"></i></a></li>';
				}
			 ?>

    </ul>
  </div>
	<script type="text/javascript">
		let audioElement = document.createElement('audio');
	</script>
</body>

</html>
