<?php
namespace src\Model;

class Categorie {
    private $Id;
    private $Libelle;
    private $Icone;


// Getters and setters

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->Id;
    }

    /**
     * @param mixed $Id
     * @return Article
     */
    public function setId($Id)
    {
        $this->Id = $Id;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getLibelle()
    {
        return $this->Libelle;
    }

    /**
     * @param mixed $Titre
     * @return Article
     */
    public function setLibelle($Libelle)
    {
        $this->Libelle = $Libelle;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getIcone()
    {
        return $this->Icone;
    }

    /**
     * @param mixed $Description
     * @return Article
     */
    public function setIcone($Icone)
    {
        $this->Icone = $Icone;
        return $this;
    }


// Requests

// Get all categories

   public function SqlGetAll(\PDO $bdd){
        $requete = $bdd->prepare("SELECT * FROM categories");
        $requete->execute();
        $datas =  $requete->fetchAll(\PDO::FETCH_CLASS,'src\Model\Categorie');
        return $datas;
    }

// Get by ID

       public function SqlGetById(\PDO $bdd, $Id){
            $requete = $bdd->prepare("SELECT * FROM categories WHERE Id=:Id");
            $requete->execute([
                "Id" => $Id
            ]);
            $requete->setFetchMode(\PDO::FETCH_CLASS,'src\Model\Categorie');
            $categorie = $requete->fetch();

            return $categorie;
        }

// Add

    public function SqlAdd(\PDO $bdd){
        try {
            $requete = $bdd->prepare("INSERT INTO categories (Libelle, Icone) VALUES(:Libelle, :Icone)");

            $requete->execute([
                "Libelle" => $this->getLibelle(),
                "Icone" => $this->getIcone()
            ]);
            return $bdd->lastInsertId();
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }

// Update

    public function SqlUpdate(\PDO $bdd){
        try {
            $requete = $bdd->prepare("UPDATE categories set Libelle= :Libelle, Icone = :Icone WHERE Id = :Id");

            $requete->execute([
                 "Libelle" => $this->getLibelle(),
                 "Icone" => $this->getIcone()
            ]);
            return "OK";
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }
// Delete

        public function SqlDeleteById(\PDO $bdd, $Id){
            $requete = $bdd->prepare("DELETE FROM categories WHERE Id=:Id");
            $requete->execute([
                "Id" => $Id
            ]);
            return true;
        }


}