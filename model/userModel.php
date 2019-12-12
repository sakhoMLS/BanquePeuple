<?php
    require_once 'bd.php';

    function verifierConnexion($login, $mdp){
        $sql ="select *from utilisateur where login = '$login' and password = '$mdp'";
        global $bd;
        return $bd ->query($sql) ->fetch();

    }