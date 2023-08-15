<?php
Session_start();
include 'Class/dbConnect.php';
include 'Class/combattant.php';
include 'Class/utilisateur.php';

$dbConnect = new dbConnect();
$combattant = new combattant();
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
                        <li><a class="btn" href="?evenement=evenement">Evenement</li></a>
                        <a href="?index=index"><img class="logo" src="image/logo.png" alt=""></a>
                        <li><a class="btn" href="?page=athletes">Athlètes</li></a>
                        <?php
                        if (isset($_SESSION) and !empty($_SESSION)) { ?>
                            <input class="deconnexion" type="submit" name="submitDeconnexion" value="Deconnexion">
                        <?php } else { ?>
                            <li><a class="btnConnexion" href="?connexion=connexion">Connexion / inscription</a></li>
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



// athletes function

function afficheCategorie($combattant)
{       
echo
'<div class="categorie">
    <ul class="fond2">
     <a class="btn1"href="?page=athletes"><li>TOUT</li></a>
    <a class="btn2"href="?combattant=2&page=athletes"><li>FEMMES</li></a>
    <a class="btn3"href="?combattant=1&page=athletes"><li>HOMMES</li></a>  
</div>';

?>
    <div class="ensemble_card">
        <?php

        
             $result = $combattant->getCategories();
                foreach ($result as $value) {
                     echo '
                    <div class="cards">
                    <a href="?categorie=' . $value["id"] . '">
                    <div class=" img_cards"><img class="img_photo" src="' . $value["affiche_categorie"] . '"alt="#"></div>
                    <div class="fond-card">
                    <p class="texte-card"><strong>Categorie</strong>:<br>' . '<br>' . $value['categorie'] . '<br><br>' . '
                </div>
            </div>';

        }
}
        
// affichage atlhetes

    if (!isset($_GET['categorie']) && (isset($_GET["page"])) == $ATHLETES) {
             afficheCategorie($combattant);      
        }
        
        
        $result = $combattant->getcombattant();
        foreach ($result as $value) {

            echo '
            <br><br>
            <div class="card">
            <a href="?categorie_heavyweight" class="card-link">
                <img class="photo" src="' . $value["affiche"] . '" alt="#">
                <div class="card-content">
                  <p class="texte-info"><strong class="info">Nom:</strong>' . $value['nom'] . '</p><div class="barre">' .
                ' </div><p class="texte-info"><strong class="info">Pays:</strong>' . $value["pays"] . '</p><div class="barre">' .
                ' </div>' .
                ' <p class="texte-info"><strong class="info">âge:</strong>' . $value["âge"] . '</p><div class="barre">' .
                ' </div>' .
                ' <p class="texte-info"><strong class="info">Victoire/Defaite/Egalié:</strong>' . $value["score k/d"] . '</p><div class="barre">' .
                ' </div>' .
                ' <p class="texte-info"><strong class="info">Categorie:</strong>' . $value["categorie"] . '</p>' . '
                        </a>
                    </div>
                </div>
            </div>}';

        }
        
        

 // Index //

       

        if (isset($_GET['index'])) {
           echo'
        <div class="index">
           <img  class="baki" src="image/baki.jpg" alt="">
           <img  class="baki" src="image/ares.jpg" alt="">
           <img  class="baki" src="image/mma.jpg" alt="">
           </div>
           <div class="fond_index">
           <h1 class="ares"> Les meilleurs moments de l\'ares</h1>
            <div class="video_1">
           <p class="video"><iframe width="300" height="200" src="https://www.youtube.com/embed/LnithZPs9UY" 
            title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
            clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe> </p>

            <p class="video"><iframe width="300" height="200"
             src="https://www.youtube.com/embed/PRI8ltEgH_A" 
             title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;
              clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
              
              <p class="video"><iframe width="300" height="200" src="https://www.youtube.com/embed/qbaTOjtrZ_M"
     title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;
      clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
      
      <footer>
      <div class="footer">
      </div>
      </footer>
      </div>
        ';
        }

        
    ?>   
    </body>

    </html>