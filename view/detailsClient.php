<?php
require_once '../model/clientModel.php';
require_once '../model/compteModel.php';
    if(isset($_GET['idCli'])){
        $client = getOneClient($_GET['idCli']);
        $compte = getAllCompteClient($_GET['idCli']);

    }

    ?>

<div class="container">
    <div class="divD">
        <table class="table table-hover tableD table-borderless table-dark">
            <tr>
                <td><label>NOM COMPLET:</label><span><?php echo $client['prenom']." ".$client['nom'].""; ?></span>
                </td>
            </tr>
            <tr>
                <td><label>ADRESSE:</label>
                <span><?php echo $client['adresse']; ?></span>
                </td>
            </tr>
            <tr>
                <td>
                    <label>TEL:</label><span> <?php echo $client['tel']; ?></span>
                </td>
            </tr>
        </table>
    </div>
    <div class="container-fluid divD2">
        <h4 CLASS="h4">LES COMPTES DU CLIENT</h4>
        <table class="table table-bordered table-hover">
            <thead>
            <th>Numero</th>
            <th>Solde</th>
            <th>Date Creation</th>
            <th>Actions</th>
            </thead>
            <?php

                foreach ($compte as $c){
                    if($c['etat']=="bloquer")
                    {
                        echo '<tr><td>'.$c['numero'].'</td><td>'.$c['solde'].'</td><td>'.$c['dateCreation'].'</td><td><a class="btn btn-danger" href="#">Bloquer</a></td></tr>';

                    }else{
                        echo '<tr><td>'.$c['numero'].'</td><td>'.$c['solde'].'</td><td>'.$c['dateCreation'].'</td><td><a class="btn btn-success" href="#">Actif</a></td></tr>';

                    }
                }

            ?>
        </table>
    </div>

</div>
