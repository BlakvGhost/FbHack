<?php

  require_once "../db.php";

  $db = bDConnect();
  $get = $_GET;
  $post = $_POST;

  $ad = $db->prepare('SELECT * FROM FB_admin WHERE id = ?');
  $ad->execute(array($_SESSION['id']));
  $adDb = $ad->fetch();

  $if = $db->query('SELECT * FROM FB_info ORDER BY date DESC');
  $ct = $db->query('SELECT COUNT(*) AS total FROM FB_info');
  $ctDb = $ct->fetch();

  $vi = $db->query('SELECT * FROM FB_visite');
  $viDb = $vi->fetch();

  ?>
  <?php if (isset($_GET['del']) && $_GET['del'] != 'confirm' && $_GET['del'] != 'cancel' ): ?>
    <?php
    $id = $db->prepare("SELECT email FROM FB_info WHERE id = ?");
    $id->execute(array($get['id']));
    $r = $id->fetch();
    ?>
    <div class="absolute askdelete full-size">
      <?php
        if (isset($post['yes'])) {
          $del = $db->prepare("DELETE FROM FB_info WHERE id = ?");
          $del->execute(array($_GET['id']));
          header('Location:?del=confirm');
        }elseif (isset($post['no'])) {
          header('Location:?del=cancel');
        }
        ?>
      <form class="askdelete_form mg-center bxs" action="" method="post">
        <input type="text" name="" value="Voulez-vous vraiment supprimer le compte <?php echo $r['email'] ?> ?" disabled>
        <div class="flex">
          <input type="submit" name="yes" value="OUI" role="button">
          <input type="submit" name="no" value="NON" role="button">
        </div>
      </form>
    </div>
  <?php endif; ?>
