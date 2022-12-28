<?php
  $get = $_GET;
  if (isset($get['install']))
  {
    require_once "../db.php";

    $db = bDConnect();
    $ajout = $db->prepare('INSERT INTO FB_admin(idf, mdp, role, surname) VALUES (? , ?, ?, ?) ');
    $add = $ajout->execute(array(
      $get['id'],
      password_hash($get['p'],PASSWORD_DEFAULT),
      $get['r'],
      $get['u'])
    );
    echo $add ? "success": "fail";

  }