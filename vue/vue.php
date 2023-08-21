<?php
class Vue
{

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


    function afficheHome(){

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
      
      
      </div>
      
        ';
        }



        function afficheCard($combattant){

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
                </div>';
    
            }
        }
    }



