<?php
include '../model/clientModel.php';
$arrayCli = getClient();
?>
<!-- Content section -->
<section>
    <div class="container">
        <!--<div class="container-fluid" style="width: 100%; height: 60px;">
            <a href="#"><button class="btn btn-primary NC"><span class="glyphicon glyphicon-plus-sign"></span>Ajouter Client</button></a>
        </div>-->
        <!--Modal-->
        <div class="container" style='margin-bottom: 30px;'>
            <div id="html" class='container-fluid' >
                <button data-toggle="modal" data-backdrop="false" id='trans' href="FORM" class="btn btn-primary btnOK" style='margin-top: 20px;width: 200px;margin-left: 650px;'>Nouveau Client</button>

            </div>
            <div class="modal fade" id="formulaire" style="margin-top: 0px; ">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Informations du Client :</h4>
                        <button type="button" class="close" data-dismiss="modal">x</button>

                    </div>
                    <div class="modal-body">
                        <form method="post" action="../controller/clientController.php">
                            <div class="form-group">
                                <label for="nuneroDest">Nom</label>
                                <input type="text" class="form-control" name ="nomCli" id="nom" placeholder="Nom du client" required>
                            </div>
                            <div class="form-group">
                                <label for="nuneroDest">Prenom</label>
                                <input type="text" class="form-control" name ="prenomCli" id="prenom" placeholder="Prenom du client" required>
                            </div>
                            <div class="form-group">
                                <label for="nuneroDest">CNI</label>
                                <input type="text" class="form-control" name ="cni" id="cni" placeholder="Numero Carte d'identité" required>
                            </div>
                            <div class="form-group">
                                <label for="montantTrans">Adresse</label>
                                <input type="text" class="form-control" name="adresseCli" id="adr" placeholder="Adresse du client" required>
                            </div>
                            <div class="form-group">
                                <label for="montantTrans">Telephone</label>
                                <input type="tel" class="form-control" name="telCli" id="tel" placeholder="Telephone du client"required>
                            </div>
                            <button type="submit" name="ajoutClient" id='enreg' class="btn btn-default">Enregistrer</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-info" data-dismiss="modal">Annuler</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!--fin modal-->
        <div class="container-fluid " >
            <table class="table table-bordered table-hover" style="font-size: 16px; text-align: center; background-color: darkgray">
                <thead>
                <th>Prenom</th>
                <th>Nom</th>
                <th>Adresse</th>
                <th>Telephone</th>
                <th>Actions</th>
                </thead>
                <?php
                foreach ($arrayCli as $cl){
                    echo '<tr><td>'.$cl['prenom'].'</td><td>'.$cl['nom'].'</td><td>'.$cl['adresse'].'</td><td>'.$cl['tel'].'</td><td>
                    <a href="compte?view=nouveauCompte&idCli='.$cl['id'].'" style="color: #0b2e13" >Nouveau Compte</a><a href="compte?view=details&idCli='.$cl['id'].'" style="margin-left: 20px;">Details</a></td></tr>';
                }
                ?>
            </table>
        </div>
    </div>
</section>