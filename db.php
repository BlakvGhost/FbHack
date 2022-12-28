<?php
    function bDConnect($dbname = 'fbHack', $user = 'root', $pass = '')
    {
        try {
            $db = new PDO("mysql:host=localhost;dbname=$dbname", "$user", "$pass");
            $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $db;
        } catch (\Exception $e) {
            echo "<div class='form_check fail'> Erreur de connexion à la Base de Données !</div> ";
            die();
        }
    }