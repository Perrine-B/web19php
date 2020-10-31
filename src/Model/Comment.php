<?php
namespace src\Model;

class Comment
{
    private $Id;
    private $Texte;
    private $DateAjout;
    private $Auteur;
    private $EmailAuteur;
    private $ArticleId;


    /**
     * Get the value of ArticleId
     */
    public function getArticleId()
    {
        return $this->ArticleId;
    }

    /**
     * Set the value of ArticleId
     *
     * @return  self
     */
    public function setArticleId($ArticleId)
    {
        $this->ArticleId = $ArticleId;

        return $this;
    }
    /**
     * Get the value of EmailAuteur
     */
    public function getEmailAuteur()
    {
        return $this->EmailAuteur;
    }

    /**
     * Set the value of EmailAuteur
     *
     * @return  self
     */
    public function setEmailAuteur($EmailAuteur)
    {
        $this->EmailAuteur = $EmailAuteur;

        return $this;
    }

    /**
     * Get the value of Auteur
     */
    public function getAuteur()
    {
        return $this->Auteur;
    }

    /**
     * Set the value of Auteur
     *
     * @return  self
     */
    public function setAuteur($Auteur)
    {
        $this->Auteur = $Auteur;

        return $this;
    }

    /**
     * Get the value of DateAjout
     */
    public function getDateAjout()
    {
        return $this->DateAjout;
    }

    /**
     * Set the value of DateAjout
     *
     * @return  self
     */
    public function setDateAjout($DateAjout)
    {
        $this->DateAjout = $DateAjout;

        return $this;
    }

    /**
     * Get the value of Texte
     */
    public function getTexte()
    {
        return $this->Texte;
    }

    /**
     * Set the value of Texte
     *
     * @return  self
     */
    public function setTexte($Texte)
    {
        $this->Texte = $Texte;

        return $this;
    }

    /**
     * Get the value of Id
     */
    public function getId()
    {
        return $this->Id;
    }

    /**
     * Set the value of Id
     *
     * @return  self
     */
    public function setId($Id)
    {
        $this->Id = $Id;

        return $this;
    }

    // Requests

    // Get all comments

    public function SqlGetAll(\PDO $bdd)
    {
        $requete = $bdd->prepare("SELECT * FROM commentaires");
        $requete->execute();
        $datas =  $requete->fetchAll(\PDO::FETCH_CLASS, 'src\Model\Comment');
        return $datas;
    }

    // Get by ID

    public function SqlGetById(\PDO $bdd, $Id)
    {
        $requete = $bdd->prepare("SELECT * FROM commentaires WHERE Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        $requete->setFetchMode(\PDO::FETCH_CLASS, 'src\Model\Comment');
        $categorie = $requete->fetch();

        return $categorie;
    }

    // Add

    public function SqlAdd(\PDO $bdd)
    {
        try {
            $requete = $bdd->prepare("INSERT INTO commentaires (Texte, DateAjout, Auteur, EmailAuteur, ArticleId) VALUES(:Texte, :DateAjout, :Auteur, :EmailAuteur, :ArticleId)");

            $requete->execute([
            'Texte' => $this->getTexte(),
            'DateAjout' => $this->getDateAjout(),
            'Auteur' => $this->getAuteur(),
            'EmailAuteur' => $this->getEmailAuteur(),
            'ArticleId' => $this->getArticleId()
        ]);
            return $bdd->lastInsertId();
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    // Update 

    public function SqlUpdate(\PDO $bdd)
    {
        try {
            $requete = $bdd->prepare("UPDATE commentaires 
        set Texte= :Texte, 
        DateAjout = :DateAjout, 
        Auteur = :Auteur, 
        EmailAuteur = :EmailAuteur,
        ArticleId = :ArticleId
        WHERE Id = :Id");

            $requete->execute([
            'Texte' => $this->getTexte(),
            'DateAjout' => $this->getDateAjout(),
            'Auteur' => $this->getAuteur(),
            'EmailAuteur' => $this->getEmailAuteur(),
            'ArticleId' => $this->getArticleId(),
            'Id' => $this->getId()
        ]);
            return "OK";
        } catch (\Exception $e) {
            var_dump($e);
            return $e->getMessage();
        }
    }
    // Delete

    public function SqlDeleteById(\PDO $bdd, $Id)
    {
        $requete = $bdd->prepare("DELETE FROM commentaires WHERE Id=:Id");
        $requete->execute([
            "Id" => $Id
        ]);
        return true;
    }


    // Get all comments by article

    public function SqlCommentbyArticle(\PDO $bdd, $Id)
    {
        $rqst = $bdd->prepare("SELECT * from commentaires WHERE ArticleId = :ArticleId");
        $rqst->execute([
            'ArticleId' => $Id
        ]);
        $rqst->setFetchMode(\PDO::FETCH_CLASS, 'src\Model\Comment');
        $comments = $rqst->fetchAll();
        return $comments;
    }
}
