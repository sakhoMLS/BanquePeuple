<?php
    require_once '../model/clientModel.php';
    session_start();
    if (isset($_POST['ajoutClient'])){
        extract($_POST);
        $user = insertClient($cni,$nomCli, $prenomCli, $adresseCli, $telCli);
        echo $user;
        if($user >0){
            header('location:compte?view=client');
        }
    }