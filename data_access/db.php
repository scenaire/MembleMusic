<?php

class db {

  protected $servername = "localhost";
  protected $serverusername = "root";
  protected $serverpassword = "";
  protected $db = "memble";
  protected $con;

  public function __construct() {
    $this->con = mysqli_connect($this->servername, $this->serverusername, $this->serverpassword,$this->db);

    if (!$this->con) {
        die("Connection failed: " . mysqli_connect_error());
    }
    else {
      mysqli_set_charset($this->con,"utf8");
    }
  }

  public function getCon() {
    return $this->con;
  }

  public function connectFetch($sql) {
    $run_query = mysqli_query($this->con, $sql);
    $arr = array();
    while ($data = mysqli_fetch_array($run_query)) {
        $arr[] = $data;
    }
    $this->con->close();
    return $arr;
  }

  public function connectUpdate($sql) {
    if ($this->con->query($sql)===true) {
      $this->con->close();
      return true;
    } else {
      echo "Error description: " . mysqli_error($this->con);
      $this->con->close();
      return false;
    }
  }



}

?>
