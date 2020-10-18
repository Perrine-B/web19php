<?php
namespace src\Controller;

use src\Model\Article;
use src\Model\BDD;
use src\Model\Categorie;

class ArticleController extends AbstractController {


    // CRUD 
    public function Add(){
        if($_POST){
            $objArticle = new Article();
            $objArticle->setTitre($_POST["Titre"]);
            $objArticle->setDescription($_POST["Description"]);
            $objArticle->setDateAjout($_POST["DateAjout"]);
            $objArticle->setAuteur($_POST["Auteur"]);
            $objArticle->setCategorieId($_POST["CategorieId"]);
            //Exécuter l'insertion
            $id = $objArticle->SqlAdd(BDD::getInstance());
            // Redirection
            header("Location:/cesiblog/web19php/public/article/show/$id");
        }else{
            $allCategories = new Categorie(); 
            $queryCategories = $allCategories->SqlGetAll(BDD::getInstance());

            $categories = [];
            foreach ($queryCategories as $categorie){
                array_push($categories, $categorie->getLibelle());
            }


            return $this->twig->render("Article/add.html.twig", [
                'categories' => $categories
            ]);
        }


    }

    // READ
    public function All(){
        $articles = new Article();
        $datas = $articles->SqlGetAll(BDD::getInstance());

/********************** Partie 4 non terminée
        // Replace numbers by name -- 4 inachevé

        // Charger les données venant de catégorie
        $categories = new Categorie();
        $categoriesList = $categories->SqlGetAll(BDD::getInstance());

*******/

        return $this->twig->render("Article/all.html.twig", [
            "articleList"=>$datas
        ]);
    }

    // UPDATE

    public function Show($id){
        $articles = new Article();
        $datas = $articles->SqlGetById(BDD::getInstance(),$id);

        return $this->twig->render("Article/show.html.twig", [
            "article"=>$datas
        ]);
    }

    // DELETE
    public function Delete($id){
        $articles = new Article();
        $datas = $articles->SqlDeleteById(BDD::getInstance(),$id);

        header("Location:/cesiblog/web19php/public/Article/All");
    }

    public function Update($id){
        $articles = new Article();
        $datas = $articles->SqlGetById(BDD::getInstance(),$id);

        if($_POST){
            $objArticle = new Article();
            $objArticle->setTitre($_POST["Titre"]);
            $objArticle->setDescription($_POST["Description"]);
            $objArticle->setDateAjout($_POST["DateAjout"]);
            $objArticle->setAuteur($_POST["Auteur"]);
            $objArticle->setId($id);
            //Exécuter la mise à jour
            $objArticle->SqlUpdate(BDD::getInstance());
            // Redirection
            header("Location:/cesiblog/web19php/public/article/show/$id");
        }else{
            return $this->twig->render("Article/update.html.twig", [
                "article"=>$datas
            ]);
        }

    }

    public function Fixtures(){
        //Vider la table
        $article = new Article();
        $article->SqlTruncate(BDD::getInstance());

//Tableau "Jeu de donnée"
        $Titres = ["PHP en force", "Java en baisse", "JS un jour ça marchera", "Flutter valeur montante", "GO le futur"];
        $Prenoms = ["Rebecca", "Alexandre", "Emilie", "Léo", "Aegir"];
        $datedujour = new \DateTime();
        for($i = 0;$i < 200;$i++){
            $datedujour->modify("+1 day");
            shuffle($Titres);
            shuffle($Prenoms);

            //Objet Article
            $objArticle = new Article();
            $objArticle->setTitre($Titres[0]);
            $objArticle->setDescription("Ceci est une excellent description");
            $objArticle->setDateAjout($datedujour->format("Y-m-d"));
            $objArticle->setAuteur($Prenoms[0]);

            //Exécuter l'insertion
            $objArticle->SqlAdd(BDD::getInstance());
        }
        header("Location:/?controller=Article&action=All");
    }


   


}