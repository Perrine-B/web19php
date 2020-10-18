<?php
namespace src\Model;

class Article {
    private $Id;
    private $Titre;
    private $Description;
    private $DateAjout;
    private $Auteur;
    private $ImageRepository;
    private $ImageFileName;
    private $CategorieId;

    /**
     * Cette fonction retourne les X premiers mots de la description
     * @param $limitWord = LA limite en question
     * @return string
     */
    public function getShortDesc($limitWord){
        $arr = explode(' ',trim($this->Description));
        $arrayFirst = array_slice($arr, 0, $limitWord);
        return implode(" ", $arrayFirst);
    }

    public function SqlAdd(\PDO $bdd){
        try {
            $requete = $bdd->prepare(
                "INSERT INTO articles (
                    Titre, Description, DateAjout, Auteur, ImageRepository, ImageFilename, CategorieId) 
                VALUES(
                    :Titre, :Description, :DateAjout, :Auteur, :ImageRepository, :ImageFilename, :CategorieId)");

            $requete->execute([
                "Titre" => $this->getTitre(),
                "Description" => $this->getDescription(),
                "DateAjout" => $this->getDateAjout(),
                "Auteur" => $this->getAuteur(),
                "ImageRepository" => $this->getImageRepository(),
                "ImageFilename" => $this->getImageFileName(),
                "CategorieId" => $this->getCategorieId()
            ]);
            return $bdd->lastInsertId();
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }

    public function SqlUpdate(\PDO $bdd){
        try {
            $requete = $bdd->prepare(
                "UPDATE articles set 
                    Titre= :Titre, 
                    Description = :Description, 
                    Auteur = :Auteur, 
                    DateAjout = :DateAjout, 
                    ImageRepository= :ImageRepository, 
                    ImageFilename= :ImageFilename,
                    CategorieId = :CategorieId,
                WHERE Id = :Id");

            $requete->execute([
                "Titre" => $this->getTitre(),
                "Description" => $this->getDescription(),
                "DateAjout" => $this->getDateAjout(),
                "Auteur" => $this->getAuteur(),
                "ImageRepository" => $this->getImageRepository(),
                "ImageFilename" => $this->getImageFileName(),
                "CategorieId" => $this->getCategorieId(),
                "Id" => $this->getId()
            ]);
            return "OK";
        }catch (\Exception $e){
            return $e->getMessage();
        }

    }
    /**
     * Récupère tous les articles
     * @param \PDO $bdd
     * @return array
     */
    public function SqlGetAll(\PDO $bdd){
        $requete = $bdd->prepare("SELECT * FROM articles");
        $requete->execute();
        //$datas =  $requete->fetchAll(\PDO::FETCH_ASSOC);
        $datas =  $requete->fetchAll(\PDO::FETCH_CLASS,'src\Model\Article');
        return $datas;

    }

    public function SqlGetById(\PDO $bdd, $Id){
        $requete = $bdd->prepare("SELECT * FROM articles WHERE Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        $requete->setFetchMode(\PDO::FETCH_CLASS,'src\Model\Article');
        $article = $requete->fetch();

        return $article;
    }

    public function SqlDeleteById(\PDO $bdd, $Id){
        $requete = $bdd->prepare("DELETE FROM articles WHERE Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        return true;
    }
    public function SqlTruncate(\PDO $bdd){
        $requete = $bdd->prepare("TRUNCATE TABLE articles");
        $requete->execute();
    }
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
    public function getTitre()
    {
        return $this->Titre;
    }

    /**
     * @param mixed $Titre
     * @return Article
     */
    public function setTitre($Titre)
    {
        $this->Titre = $Titre;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getDescription()
    {
        return $this->Description;
    }

    /**
     * @param mixed $Description
     * @return Article
     */
    public function setDescription($Description)
    {
        $this->Description = $Description;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getDateAjout()
    {
        return $this->DateAjout;
    }

    /**
     * @param mixed $DateAjout
     * @return Article
     */
    public function setDateAjout($DateAjout)
    {
        $this->DateAjout = $DateAjout;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getAuteur()
    {
        return $this->Auteur;
    }

    /**
     * @param mixed $Auteur
     * @return Article
     */
    public function setAuteur($Auteur)
    {
        $this->Auteur = $Auteur;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getImageRepository()
    {
        return $this->ImageRepository;
    }

    /**
     * @param mixed $ImageRepository
     * @return Article
     */
    public function setImageRepository($ImageRepository)
    {
        $this->ImageRepository = $ImageRepository;
        return $this;
    }

    /**
     * @return mixed
     */
    public function getImageFileName()
    {
        return $this->ImageFileName;
    }

    /**
     * @param mixed $ImageFileName
     * @return Article
     */
    public function setImageFileName($ImageFileName)
    {
        $this->ImageFileName = $ImageFileName;
        return $this;
    }

    /**
     * Get the value of CategorieId
     */ 
    public function getCategorieId()
    {
        return $this->CategorieId;
    }

    /**
     * Set the value of CategorieId
     *
     * @return  self
     */ 
    public function setCategorieId($CategorieId)
    {
        $this->CategorieId = $CategorieId;

        return $this;
    }
}