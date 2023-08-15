<?php
include_once 'dbConnect.php';
class combattant extends dbConnect
{

        public function getcombattant()
        {
                $dbConnect = $this->dbConnect;
                if (!isset($_GET['categorie'])) {
                        return [];
                }
                $categorieId = $_GET['categorie'];
                $sql = "SELECT * FROM `combattant` INNER JOIN `categorie`cat ON categorie_id = cat.id WHERE $categorieId = cat.id;";
                $stmt = $dbConnect->prepare($sql);
                $stmt->execute();
                return  $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        

        public function getCategories()

        {
                $dbConnect = $this->dbConnect;
                if (isset($_GET['combattant'])) {
                        return  $this->getGenre();
                }
                $sql = "SELECT * FROM `categorie`";
                $stmt = $dbConnect->prepare($sql);
                $stmt->execute();
                return  $stmt->fetchAll(PDO::FETCH_ASSOC);
        }


        public function getGenre()
        {

                $dbConnect = $this->dbConnect;

                $sexeId = $_GET['combattant'];
                $sql = "SELECT DISTINCT * FROM `combattant` JOIN `sexe` sexe ON sexe_id = sexe.id JOIN `categorie`cat ON categorie_id = cat.id WHERE sexe.id=$sexeId GROUP BY categorie_id;";

                $stmt = $dbConnect->prepare($sql);
                $stmt->execute();

                return  $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
}
