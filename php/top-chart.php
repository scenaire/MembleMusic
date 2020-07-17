<?php

include "../data_access/allRequire.php";

 ?>

<div class="header">
	<img id="bgImg" src="photo/header/cowboy.png">
	<div class="wrapper">
		<h1>Top of the Billborad Chart<br><span id="hotPlaylist">Old Town Road - Lil Nas X, Billy Ray Cyrus</span></h1>
		<a id='button-play' class="button">play now</a>
	</div>
	<fade></fade>
</div>
<div class="chart-verticle">
	<div class="chart-wrap">
		<h3> Top 100 Billborad Chart&nbsp; <i style="background-image: linear-gradient(to right bottom, #ffcf1b, #ffae17, #ff8b28, #ff683b, #ff414d); -webkit-background-clip: text; -webkit-text-fill-color: transparent;"class="fas fa-crown"></i></h3>
		<?php

		$song = new song;
		$b_chart = $song->getBillBoardChart();

		for ($i=0; $i<8; $i++) {
			$song_id = $b_chart[$i]['song_id'];
			$song_pic = $song->getSongPicByID($song_id);
			$song_artist = $song->getArtistbySong($song_id);
			$song_ = $song->getSongbyID($song_id);
			$songInfo = $song_['song_name']."^".$song_['song_url']."^".$song_pic."^".$song_artist;


			echo '<div class="itembox play-this-song" id="'.$songInfo.'">';
			echo '<img src="'.$song_pic.'" /><br>';
			echo '<span class"song-title">'.$song_['song_name'].'</span><br />';
			echo '<span class"song-artist">'.$song_artist.'</span>';
			echo '</div>';

		}

		 ?>
	</div>
	<div class="chart-wrap">
		<h3> Thailand Top 50 &nbsp; <i style="background-image: linear-gradient(to right bottom, #ffcf1b, #ffae17, #ff8b28, #ff683b, #ff414d); -webkit-background-clip: text; -webkit-text-fill-color: transparent;;"class="fas fa-crown"></i></h3>
		<?php

		$song = new song;
		$t_chart = $song->getThaiChart();

		for ($i=0; $i<8; $i++) {
			$song_id = $t_chart[$i]['song_id'];
			$song_pic = $song->getSongPicByID($song_id);
			$song_artist = $song->getArtistbySong($song_id);
			$song_ = $song->getSongbyID($song_id);
			$songInfo = $song_['song_name']."^".$song_['song_url']."^".$song_pic."^".$song_artist;


			echo '<div class="itembox play-this-song" id="'.$songInfo.'">';
			echo '<img src="'.$song_pic.'" /><br>';
			echo '<span class"song-title">'.$song_['song_name'].'</span><br />';
			echo '<span class"song-artist">'.$song_artist.'</span>';
			echo '</div>';

		}

		 ?>
	</div>

	<div class="chart-wrap">
		 <h3>Global Top 50 &nbsp; <i style="background-image: linear-gradient(to right bottom, #ffcf1b, #ffae17, #ff8b28, #ff683b, #ff414d); -webkit-background-clip: text; -webkit-text-fill-color: transparent;"class="fas fa-crown"></i></h3>
		 <?php

		$song = new song;
		$t_chart = $song->getGlobalChart();

		for ($i=0; $i<8; $i++) {
			$song_id = $t_chart[$i]['song_id'];
			$song_pic = $song->getSongPicByID($song_id);
			$song_artist = $song->getArtistbySong($song_id);
			$song_ = $song->getSongbyID($song_id);
			$songInfo = $song_['song_name']."^".$song_['song_url']."^".$song_pic."^".$song_artist;


			echo '<div class="itembox play-this-song" id="'.$songInfo.'">';
			echo '<img src="'.$song_pic.'" /><br>';
			echo '<span class"song-title">'.$song_['song_name'].'</span><br />';
			echo '<span class"song-artist">'.$song_artist.'</span>';
			echo '</div>';

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
	});
  $('#button-play').click(function() {
    audioElement.setAttribute('src', 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212451&authkey=AJDAKrTa1ZuICso');
    $('#song-title').text("Old Town Road");
    $('#song-artist').text("LIL NAS X, BILLY RAY CYRUS");
    $('#song-img').attr('src', 'https://is3-ssl.mzstatic.com/image/thumb/Music113/v4/49/26/86/4926869b-03ee-8c8a-4326-b002b5d6efc2/886447622827.jpg/600x600bf.png');

    audioElement.play();
    $('#play-btn').find('i').attr('class', 'fas fa-pause');
  });
</script>
