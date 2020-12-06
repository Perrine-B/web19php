### Rattrapage PHP 
#### Modifications pour fonctionner sous l'environnement: 
- pour éviter les problèmes de compatibilité, un dump complet de la base de données utilisée est disponible dans le dossier Base SQL. 
Les identifiants par défaut recommandés sont  :

``` php     
$hostname = "localhost";
$username = "cesi";
$password = "cesi";
$dbname = "cesiblog";
```
#### Sujet 

Intégrer un système de commentaire dans le site

- Chaque commentaire dispose d'un texte, d'une date, d'un auteur et de l'email de l'auteur 

Dans la page qui affiche le détail d'un article, il faut : 
- Pouvoir afficher un commentaire
    - L'auteur ainsi que l'adresse email sont libres (champ input text et email)
    - La date ne doit pas pouvoir être changée mais doit être la date du jour de l'ajout
- Afficher les commentaires de cet article

- Pensez à associer commentaires et articles. 

