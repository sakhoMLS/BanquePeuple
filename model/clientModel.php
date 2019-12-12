<?php
    require_once 'bd.php';
    require_once 'compteModel.php';

    function getClient(){
        $sql = "select *from client";
        global $bd;
        return $bd ->query($sql) ->fetchAll();
    }

    function insertClient($cni,$nomCli, $prenomCli, $adresseCli, $telCli){
        $insert = "INSERT INTO  client(cni,nom, prenom, adresse, tel) VALUES ('$cni','$nomCli', '$prenomCli','$adresseCli','$telCli')";
        global $bd;
        $bd ->exec($insert);
        $idClient = $bd ->lastInsertId();
        if ($idClient>0){
            $num = genererNumero();
            $date = date("d-m-Y");
            $idUser = $_SESSION['idUser'];
            $cpt = "insert into compte (numero, dateCreation, idClient, idGestCompte)
                  values ('$num', '$date','$idClient','$idUser')";
            $bd ->exec($cpt);
            return $bd ->lastInsertId();
        }
        return 0;
    }

    function getOneClient($id){
        $sql = "select *from client where id = $id";
        global $bd;
        return $bd->query($sql)->fetch();
    }