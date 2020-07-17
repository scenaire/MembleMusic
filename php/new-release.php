<?php

include "../data_access/allRequire.php";

 ?>

 <div class="header">
 		<img id="bgImg" src="photo/header/blue.jpg">
 		<div class="wrapper">
 			<h1>New Release This Week<br><span id="hotPlaylist">I don't care - Ed Sheeran ft. Justin Bieber</span></h1>
 			<a id='button-play' class="button">play now</a>
 		</div>
 		<fade></fade>
 </div>
 <div class="group">
 	<h3><i style="color: #ED215D" class="fas fa-caret-square-right"></i> New Release for you</h3>

 		<?php
 			$album = new album;
 			$song = new song;
 			$a_list = $album->getAllAlbumDESC();
      $size = sizeof($a_list);
      $loop = ceil($size/6);
      $late = 6;

      for($i=0; $i<$loop; $i++) {
        if ($i==$loop-1) {
          $late = 2;
        }
        echo '<div class="carousel">';
        for($j=0; $j<$late; $j++) {
          if ($i==0) {
            $pic = $a_list[$j]['album_pic'];
     				$name = $a_list[$j]['album_name'];
     				$id = $a_list[$j]['album_id'];
          } else {
            $pic = $a_list[$i*6+$j]['album_pic'];
     				$name = $a_list[$i*6+$j]['album_name'];
     				$id = $a_list[$i*6+$j]['album_id'];
          }

   				$first_song = $song->getSongbyAlbum($id)[mt_rand(0,(sizeof($song->getSongbyAlbum($id))-1))];
   				$artist = $song->getArtistbySong($first_song['song_id']);
   				$songInfo = $first_song['song_name']."^".$first_song['song_url']."^".$pic."^".$artist;

   				echo '<div class="itembox">';
   				echo '<img class="play-this-song" id="'.$songInfo.'" src="'.$pic.'" /><br>';
   				echo '<span class="song-title">'.$name.'</span><br /></div>';
        }
        echo "</div><br />";
      }

 		 ?>

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
 			audioElement.setAttribute('src', 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212439&authkey=AJSE5eFcC_2N3p0');
 			$('#song-title').text("I Don't Care");
 			$('#song-artist').text("Ed Sheeran ft. Justin Bieber");
 			$('#song-img').attr('src', 'https://i.scdn.co/image/e6a08e84fa0838f58b340e0d0e7e27213459d661');

 			audioElement.play();
 			$('#play-btn').find('i').attr('class', 'fas fa-pause');
 		});
 	});
 </script>
