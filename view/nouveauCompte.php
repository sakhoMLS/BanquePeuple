<?php
//session_start();
    require_once '../model/clientModel.php';
    require_once '../model/compteModel.php';
    if(isset($_GET['idCli'])){
        $client = getOneClient($_GET['idCli']);
        $num = genererNumero();
    }

?>
<div class="container row">
    <div class="col-md-6 divN">
        <h4 class="h4">INFORMATION DU CLIENT</h4>
        <table class="table tab-content table-hover">
            <tr>
                <td class="td"><strong>Nom:</strong></td>
                <td class="td1"><?php echo $client['nom']?></td>
            </tr>
            <tr>
                <td class="td"><strong>Prenom:</strong></td>
                <td class="td1"><?php echo $client['prenom']?></td>
            </tr>
            <tr>
                <td class="td"><strong>Adresse:</strong></td>
                <td class="td1"><?php echo $client['adresse']?></td>
            </tr>
            <tr>
                <td class="td"><strong>Numero Carte d'identité:</strong></td>
                <td class="td1"><?php echo $client['cni']?></td>
            </tr>
            <tr>
                <td class="td"><strong>Telephone:</strong></td>
                <td class="td1"><?php echo $client['tel']?></td>
            </tr>

        </table>
    </div>
    <div class="col-md-6 divN">
        <H4 class="h4">INFORMATION DU NOUVEAU COMPTE</H4>
        <?php
            if(isset($_GET['nonvalide'])){
                echo "<h6>Solde non valide minimum 500f</h6>";
            }elseif (isset($_GET["valide"])){
                echo "<h6>Compte Ajouter avec succés</h6>";
            }
            if (isset($_GET['erreur'])){
                echo "<h6>Erreur sur la base de donnee contacter l'administration Mor Diagne</h6>";
            }
        ?>
        <form method="post" action="controllerCpt?id=<?php echo $_GET['idCli']?>">
            <table class="table tab-content table-hover">
                <tr>
                    <td class="td"><strong>Numero Compte:</strong></td>
                    <td class="td1"><input type="text" name="num" value="<?php echo $num;?>" readonly></td>
                </tr>
                <tr>
                    <td class="td"><label><strong>Solde: </strong></label></td>
                    <td class="td1"><input type="number" name="solde" min="0"></td>
                </tr>
                <tr>
                    <td class="aj" colspan="2"><button class="btn btn-dark" name="ajouter">AJOUTER</button></td>
                </tr>

            </table>
        </form>
    </div>
</div>