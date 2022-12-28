<?php
  session_start();
  require_once "../db.php";
  $post = $_POST;
  if (isset($post['submit']) && !empty($post['id']) && !empty($post['mdp'])){
    $id = htmlentities($post['id']);
    $mdp = htmlentities($post['mdp']);
    $db = bDConnect();
    $query = $db->prepare('SELECT * FROM FB_admin WHERE idf = ?');
    $query->execute(array($id));
  
    if ($data = $query->fetch()){
      if (password_verify($mdp, $data['mdp'])){
        $_SESSION['online'] = true;
        $_SESSION['id'] = $data['id'];
        header('Location:static.php');
      }else {
        header('Location:../admin/?msg=Mot de passe Incorrect');
      }
    }else {
      header('Location:../admin/?msg=Id Incorrect');
    }
  }
