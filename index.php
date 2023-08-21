<?php
Session_start();
include_once "vue/vue.php";
include 'data/dbConnect.php';
include 'data/combattant.php';
include 'Class/utilisateur.php';

$dbConnect = new dbConnect();
$combattant = new combattant();
$vue = new Vue();
$connexion = new User();
$ATHLETES = 'athletes';

?>
        
    <!DOCTYPE html>
    <html lang="fr">

    <head>
        <link rel="stylesheet" href="style/style.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>

    <!-- Tête de page -->

    <body>
        <header>
            <div class="fond_navbar">
                <form action="index.php" method="POST">
                    <ul class="btn_navbar">
                        <a href="?index=index"><img class="logo" src="image/logo.png" alt=""></a>
                        <li><a class="btn" href="?page=athletes">Athlètes</li></a>
                        <?php
                        if (isset($_SESSION) and !empty($_SESSION)) { ?>
                            <input class="deconnexion" type="submit" name="submitDeconnexion" value="Deconnexion">
                        <?php } else { ?>
                            <li><a class="btnConnexion" href="?connexion=connexion">Connexion / inscription / Admin</a></li>
                        <?php }
                        ?>
                    </ul>
        </header>



 <!-- // connexion -->


        <div class="containerConnexion">
            <?php
            if ((isset($_GET['connexion']) && $_GET['connexion'] == "connexion")) { ?>
                <div class="card-container1">
                    <div class="form">
                        <form action="index.php" class="formConnexion" method="POST">
                            <label for="identifiant">Identifiant</label>
                            <br>
                            <input type="text" name="identifiant">
                            <br>
                            <label for="identifiant">Mot de passe</label>
                            <br>
                            <input type="password" name="password_connexion">
                            <br>
                            <input type="submit" name="submitConnexion" value="Se connecter">
                        </form>
                    </div>
                </div>
            <?php }


            if (isset($_POST['submitConnexion'])) {
                $mdp = $_POST['password_connexion'];
                $identifiant = $_POST['identifiant'];

                $connexion->connexion($mdp, $identifiant);
                header("refresh:1;?index");
            }


            if (isset($_POST['submitDeconnexion'])) {
                session_destroy(); ?>
                <p class="alert success">Vous êtes maintenant déconnecté</p>
            <?php
                header("refresh:1;?categorie=athletes");
            }

            ?>


<!-- // Inscription -->


            <?php
            if ((isset($_GET['connexion']) && $_GET['connexion'] == "connexion")) { ?>
                <div class="card-container1">
                    <div class="form">
                        <form action="" class="formConnexion" method="POST">
                            <label for="identifiant">E-mail</label>
                            <br>
                            <input type="text" name="email">
                            <br>
                            <label for="identifiant">Mot de passe</label>
                            <br>
                            <input type="password" name="password">
                            <br>
                            <input type="submit" name="submitInscription" value="s'enregistrer">
                        </form>
                    </div>
                </div>
            <?php

                if (isset($_POST['submitInscription'])) {
                    $mdp = $_POST['password'];
                    $identifiant = $_POST['email'];
                    $connexion->inscription($mdp, $identifiant);
                    header("refresh:1;?connexion=connexion");
                }
            } ?>
        </div>
        <?php

if ((isset($_GET['connexion']) && $_GET['connexion'] == "connexion")) { ?>
    <div class="card-container1">
        <div class="form">
            <form action="index.php" class="formConnexion" method="POST">
                <h2>Admin</h2>
                <label for="identifiant">Identifiant</label>
                <br>
                <input type="text" name="identifiant">
                <br>
                <label for="identifiant">Mot de passe</label>
                <br>
                <input type="password" name="password_connexionAdmin">
                <br>
                <input type="submit" name="submitConnexionAdmin" value="Se connecter">
            </form>
        </div>
    </div>
<?php }




            // Card categorie
    if (!isset($_GET['categorie']) && (isset($_GET["page"])) == $ATHLETES) {
             $vue->afficheCategorie($combattant);
        }


            // Card descriptif
        $vue->afficheCard($combattant);
       
        
        

                // Index //

        if (isset($_GET['index'])) {
            $vue->afficheHome();
        }

        
    ?>   
    </body>

    </html>