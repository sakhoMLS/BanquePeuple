<?php
    session_start();

    if($_SESSION == null){
        header('location:/banqueDuPeuple/index.php');
    }else{
        include '../includes/navbar.php';
        echo '<div>';
        if(isset($_GET['view'])){
            switch ($_GET['view']){
                case 'accueil':
                    include 'accueil.php';

                    break;
                case 'compte':
                    include 'gestCompte.php';
                    break;
                case 'client':
                    include "gestClient.php";
                    break;
                case 'nouveauCompte':
                    include 'nouveauCompte.php';
                    break;
                case 'details':
                    include 'detailsClient.php';
                    break;
                default:
                    include 'erreur.php';
                    break;


            }
        }else{
            include 'accueil.php';
        }
        echo '</div>';
        include '../includes/footer.php';
    }