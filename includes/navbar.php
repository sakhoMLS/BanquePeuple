<?php
    include 'header.php';
?>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#"><label class="brand">Banque Du Peuple</label></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="?view=accueil">Accueil
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?view=compte&Actif">Gestion Comptes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?view=client">Gestion Clients</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="deconnexion?deconnexion=1">Deconnexion</a>
                </li>
            </ul>
        </div>
    </div>
</nav>