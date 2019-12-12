<?php
    require_once '../model/compteModel.php';
    session_start();
    if(isset($_GET['idCptBloc'])){
        $bloquer = bloquerCpt($_GET['idCptBloc']);
        if ($bloquer){
            header('location:compte?view=compte&Actif');
        }
    }

    if(isset($_GET['idCptAct'])){
        $bloquer = ActiverCpt($_GET['idCptAct']);
        if ($bloquer){
            header('location:compte?view=compte&bloquer');
        }
    }

    if (isset($_POST['ajouter'])){
        extract($_POST);
        if($solde <500){
            header('location:compte?view=nouveauCompte&nonvalide&idCli='.$_GET['id'].'');
        }else{
            $date = date("d-m-Y");
            $cpt = insertCompte($num,$date,$solde,$_GET['id'],$_SESSION['idUser']);
            if ($cpt != null){
                header('location:compte?view=nouveauCompte&valide&idCli='.$_GET['id'].'');

            }else{
                header('location:compte?view=nouveauCompte&erreur&idCli='.$_GET['id'].'');

            }
        }
    }

    if(isset($_GET['idCptSupp'])){
        $idSup = $_GET['idCptSupp'];
        $sup = deleteCompte($idSup);
        if($sup>0){
            if(isset($_GET['Actif'])){
                header('location:compte?view=compte&Actif');
            }else{
                header('location:compte?view=compte&Bloquer');
            }

        }
    }
?>