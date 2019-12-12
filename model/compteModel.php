<?php
    require_once 'bd.php';

    function getCompteActif(){
        $sql = "select *from compte where etat = 'actif'";
        global $bd;
        return $bd->query($sql)->fetchAll();
    }
    function getCompteBloquer(){
        $sql = "select *from compte where etat = 'bloquer'";
        global $bd;
        return $bd->query($sql)->fetchAll();
    }

    function bloquerCpt($idCpt){
        $sql ="update compte set etat ='bloquer' where id=$idCpt";
        global $bd;
        return $bd ->exec($sql);
    }
    function ActiverCpt($idCpt){
        $sql ="update compte set etat ='actif' where id=$idCpt";
        global $bd;
        return $bd ->exec($sql);
    }

    function genererNumero(){
    $id = 0;
    $sql = "SELECT max(id) FROM compte";
    global $bd;
    $array = $bd -> query($sql) -> fetch();
    if($array == NULL){
        $id=1;
    }else{
        $array[0]++;
        $id = $array[0];
    }
    $numero = "FSN_".date('d').date('m').date('Y')."_C".$id;
    return $numero;
    }

    function insertCompte($numero, $date, $solde, $idCli, $idGestCpt){
        $sql ="insert into compte (numero, dateCreation, solde, idClient, idGestCompte) 
                values ('$numero', '$date', '$solde', '$idCli', '$idGestCpt')";
        global $bd;
        return $bd->exec($sql);
    }

    function getAllCompteClient($idCli){
        $sql ="select *from compte where idClient=$idCli";
        global $bd;
        return $bd ->query($sql) ->fetchAll();
    }

    function deleteCompte($idcpt){
        $sql = "Delete from compte where id =$idcpt";
        global $bd;
        return $bd ->exec($sql);
    }