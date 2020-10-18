<?php
namespace src\Controller;

use src\Model\Categorie;
use src\Model\BDD;

class CategorieController extends AbstractController {

    // CRUD

    // 1. READ

    public function All(){
        $categories = new Categorie();
        $datas = $categories->SqlGetAll(BDD::getInstance());
        // Modifier le return pour l'affichage des catégories
        return $this->twig->render("Categorie/all.html.twig", [
           "categories"=>$datas
        ]);
    }


    public function Show($id){
        $categories = new Categorie();
        $datas = $categories->SqlGetById(BDD::getInstance(),$id);
        return $this->twig->render("Categorie/show.html.twig", [
            "categorie"=>$datas
        ]);
    }

// 2. ADD



    public function Add(){
        if($_POST){

            var_dump($_POST["Libelle"]);
            $objCategorie = new Categorie();
            $objCategorie->setLibelle($_POST["Libelle"]);
            $objCategorie->setIcone($_POST["Icone"]);

            //Exécuter l'insertion
            $id = $objCategorie->SqlAdd(BDD::getInstance());
            // Redirection - arefaire
            header("Location:/cesiblog/web19php/public/Categorie/show/$id");
        }else{
            return $this->twig->render("Categorie/add.html.twig");
        }


    }


  // 3. UPDATE

public function Update($id){
    $categories = new Categorie();
    $datas = $categories->SqlGetById(BDD::getInstance(),$id);

    if($_POST){
        $objCategorie = new Categorie();
        $objCategorie->setLibelle($_POST["Libelle"]);
        $objCategorie->setIcone($_POST["Icone"]);

        //Exécuter la mise à jour
        $objCategorie->SqlUpdate(BDD::getInstance());
        // Redirection -- a refaire
        header("Location:/Categorie/show/$id");
    }else{
        return $this->twig->render("Categorie/update.html.twig", [
            "categorie"=>$datas
        ]);
    }

}

// DELETE

    public function Delete($id){
        $categories = new Categorie();
        $datas = $categories->SqlDeleteById(BDD::getInstance(),$id);

        header("Location:/cesiblog/web19php/public/Categorie/All");
    }

}