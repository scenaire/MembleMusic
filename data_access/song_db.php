<?php

class Song {

  public function getGlobalChart() {
    include_once('db.php');
    $sql = "SELECT * FROM global_chart ORDER BY globle_no ASC";
    $db = new db;
    return $db->connectFetch($sql);
  }

  public function getBillBoardChart() {
    include_once('db.php');
    $sql = "SELECT * FROM billboard_chart ORDER BY billboard_no ASC";
    $db = new db;
    return $db->connectFetch($sql);
  }

  public function getThaiChart() {
    include_once('db.php');
    $sql = "SELECT * FROM thai_chart ORDER BY thaichart_no ASC";
    $db = new db;
    return $db->connectFetch($sql);
  }

  public function getSongbyAlbum($album_id)
  {
      include_once('db.php');
      $sql = "SELECT * FROM song WHERE song_album = '$album_id'";
      $db = new db;
      return $db->connectFetch($sql);
  }

  public function getSongbyID($song_id) {
    include_once('db.php');
    $sql = "SELECT * FROM song WHERE song_id = '$song_id'";
    $db = new db;
    return $db->connectFetch($sql)[0];
  }

  public function getSongNamebySongID($song_id) {
    include_once('db.php');
    $sql = "SELECT song_name FROM song WHERE song_id = '$song_id'";
    $db = new db;
    return $db->connectFetch($sql)[0]['song_name'];
  }

  public function getArtistbySong($song_id) {
    include_once('db.php');
    $sql = "SELECT artist.artist_name FROM artist INNER JOIN song_artist ON song_artist.artist_id = artist.artist_id WHERE song_artist.song_id = '$song_id'";
    $db = new db;
    $songSrc = $db->connectFetch($sql);
    $artist = "";

    if (sizeof($songSrc) > 1) {
      $artist = $songSrc[0]['artist_name']." ft. ";
      for ($i=1;$i<sizeof($songSrc);$i++) {
        if($i==sizeof($songSrc)-1){
          $artist = $artist.$songSrc[$i]['artist_name'];
        } else {
          $artist = $artist.$songSrc[$i]['artist_name'].", ";
        }
      }
    } else {
      $artist = $songSrc[0]['artist_name'];
    }

    return $artist;
  }

  public function getSongPicByID($song_id) {
    include_once('db.php');
    $sql = "SELECT album.album_pic FROM album INNER JOIN song ON song.song_album=album.album_id WHERE song.song_id='$song_id'";
    $db = new db;
    return $db->connectFetch($sql)[0][0];
  }

  public function getSongbyArtist($artist_id)
  {
      include_once('db.php');
      $sql = "SELECT song_id FROM song_artist WHERE artist_id = '$artist_id'";
      $db = new db;
      return $db->connectFetch($sql);
  }

  public function getAllSong()
  {
      include_once('db.php');
      $sql = "SELECT * FROM song";
      $db = new db;
      return $db->connectFetch($sql);
  }

  public function findArtistBySong($song_id)
  {
    include_once('db.php');
    $sql = "SELECT artist_id FROM song_artist WHERE song_id = '$song_id'";
    $db = new db;
    return $db->connectFetch($sql);
  }






}

 ?>
