<?php
namespace src\Controller;

use src\Model\Article;
use src\Model\BDD;
use src\Model\Categorie;
use src\Model\Comment;

class CommentController extends AbstractController
{
    // CRUD

    public function Add($id)
    {
        var_dump('tartine');
        var_dump($_POST['Article']);

        $objComment = new Comment();
        $objComment->setTexte($_POST["Comment"]);
        $objComment->setAuteur($_POST["Auteur"]);
        $objComment->setEmailAuteur($_POST["Email"]);
        $objComment->setArticleId($_POST["Article"]);
        //Exécuter l'insertion
        $id = $objComment->SqlAdd(BDD::getInstance());
        $location = $_POST["Article"];

        // Redirection
        header("Location:/cesiblog/web19php/public/article/show/$location");
    }

    // DELETE
    public function Delete($id)
    {
        // Get the corresponding Article
        $comment = new Comment();
        $comments = $comment->SqlGetById(BDD::getInstance(), $id);
        $correspondingArticle = $comments->getArticleId();

        // Delete comment
        $dComment = new Comment();
        $dComment->SqlDeleteById(BDD::getInstance(), $id);

        header("Location:/cesiblog/web19php/public/Article/Show/$correspondingArticle");
    }

    public function Update($id)
    {
        // Get the corresponding Article
        $comment = new Comment();
        $targetComment = $comment->SqlGetById(BDD::getInstance(), $id);
        $correspondingArticle = $targetComment->getArticleId();

        $targetComment->setTexte($_POST["ChangeText"]);
        $targetComment->getDateAjout();
        $targetComment->getAuteur();
        $targetComment->getEmailAuteur();
        $targetComment->getArticleId();

            //Exécuter la mise à jour
        $targetComment->SqlUpdate(BDD::getInstance(), $targetComment->getId());
            // Redirection -- a refaire
        header("Location:/cesiblog/web19php/public/Article/Show/$correspondingArticle");
    }
}
