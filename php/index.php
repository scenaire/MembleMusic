<?php

include "../data_access/allRequire.php";

 ?>

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

<script>
	$(document).ready(function() {
		$('.play-this-song').click(function() {
			let info = $(this).attr('id');
			info = info.split("^");

			audioElement.setAttribute('src', info[1]);
			$('#song-title').text(info[0]);
			$('#song-artist').text(info[3]);
			$('#song-img').attr('src', info[2]);

			audioElement.play();
			$('#play-btn').find('i').attr('class', 'fas fa-pause');
		});
    $('#button-play').click(function() {
      audioElement.play();
      $('#play-btn').find('i').attr('class', 'fas fa-pause');
    });
	});
</script>
