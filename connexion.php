<?php
include 'includes/header.php';
?>
<body style="background-image: url('background');">
<?php
if(isset($_GET['connexion']) && $_GET['connexion'] == 0)
{
    echo 'LOGIN OU MOT DE PASSE INCORRECT...';
}
?>
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto divConnex" >
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center" STYLE="color: white; ">CONNEXION</h5>
                    <form class="form-signin" method="post" action="controllerUser" style="padding-top: 40px;">
                        <div class="form-label-group">
                            <input type="text" id="inputLogin" class="form-control" name="login" placeholder="Login" required>
                            <label>Login</label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="inputPassword" name="mdp" class="form-control" placeholder="Password" required>
                            <label>Password</label>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="connexion">Se Connecter</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>