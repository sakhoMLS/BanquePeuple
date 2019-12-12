<?php
    session_start();
    require_once '../model/userModel.php';

    if (isset($_POST['connexion'])){
        extract($_POST);
        $user = verifierConnexion($login, $mdp);
        if($user == null){
            header('location:connexion?connexion=0');
        }else{
            $_SESSION['profil'] = $user['profil'];
            $_SESSION['nomComplet'] = $user['nom'].' '.$user['prenom'];
            $_SESSION['idUser'] = $user['id'];
            header('location:menuAccueil');
        }
    }

if (isset($_GET['deconnexion']))
{
    session_unset();
    $_SESSION = array();
    header('location:connexion.php');
}