<?php
include_once 'data/dbConnect.php';
class User extends dbConnect{
    function connexion($mdp, $identifiant){
        $dbConnect=$this->dbConnect;
        
        $query = "SELECT `email`,  `password` FROM `utilisateur` WHERE email= :email";
                    $stmt = $dbConnect->prepare($query);
                    $stmt->bindParam( ':email' ,  $identifiant);
                    $stmt->execute();
                    
        
                    if ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        
                        if ($mdp == $row['password']) {
        
                            $_SESSION['email'] =  $identifiant;
        
                            echo '<p class="connect">Vous êtes maintenant connecté</p>';
                            
                            exit;
                        }
                    }
        
                echo '<p class="connect-error">Mot de passe ou identifiant incorrect</p>';
                header("refresh:1;?categorie=connexion");
    }               
    function inscription($identifiant, $mdp){
        $dbConnect=$this->dbConnect;
        
        $sql = "INSERT INTO `utilisateur`(`email`,`password`)
         VALUES ('$identifiant','$mdp')";
       $stmt = $dbConnect->prepare($sql);
       $stmt->execute();
    }
    }
    