<?php

class Album {
  public function getAllAlbum()
  {
      include_once('db.php');
      $sql = "SELECT * FROM album";
      $db = new db;
      return $db->connectFetch($sql);
  }

  public function getAllAlbumDESC()
  {
      include_once('db.php');
      $sql = "SELECT * FROM `album` ORDER BY `album`.`album_year` DESC";
      $db = new db;
      return $db->connectFetch($sql);
  }

}

 ?>
