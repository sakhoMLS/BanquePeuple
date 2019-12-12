<?php
    include '../model/compteModel.php';
    $arrayCompteA = getCompteActif();
    $arrayCompteB = getCompteBloquer();
?>
<!-- Content section -->
<section>
    <div class="container">
            <?php
            if (isset($_GET['Actif'])){
                echo " <div class=\"container-fluid\" style=\"width: 100%; height: 60px;\">
                <a href=\"compte?view=compte&bloquer\"><button class=\"btn btn-primary NC\"><span class=\"glyphicon glyphicon-plus-sign\"></span>Voir les Comptes Bloquer</button></a>
                 </div>";
            }else{
                echo " <div class=\"container-fluid\" style=\"width: 100%; height: 60px;\">
                <a href=\"compte?view=compte&Actif\"><button class=\"btn btn-primary NC\"><span class=\"glyphicon glyphicon-plus-sign\"></span>Voir les Comptes Actif</button></a>
            </div>";
            }
            ?>

        <div class="container-fluid " >
            <table class="table table-bordered table-hover" style="background-color: darkgray; font-size: 16px;">
                <thead>
                <th>Numero</th>
                <th>Solde</th>
                <th>Date Creation</th>
                <th>Actions</th>
                </thead>
                <?php
                if(isset($_GET['Actif'])){
                    foreach ($arrayCompteA as $c){
                        echo '<tr class="trAction"><td>'.$c['numero'].'</td><td>'.$c['solde'].'</td><td>'.$c['dateCreation'].'</td><td><a class="btn btn-danger btnAction" href="controllerCpt?idCptBloc='.$c['id'].'">Bloquer</a><a class="btn btn-default btnSupp btnAction" href="controllerCpt?idCptSupp='.$c['id'].'&Actif">Supprimer</a></td></tr>';
                    }
                }else{
                    foreach ($arrayCompteB as $c){
                        echo '<tr class="trAction"><td>'.$c['numero'].'</td><td>'.$c['solde'].'</td><td>'.$c['dateCreation'].'</td><td><a class="btn btn-success btnAction" href="controllerCpt?idCptAct='.$c['id'].'">Actif</a><a class="btn btn-default btnSupp btnAction" href="controllerCpt?idCptSupp='.$c['id'].'&Bloquer">Supprimer</a></td></tr>';
                    }
                }

                ?>
            </table>
        </div>
    </div>
</section>