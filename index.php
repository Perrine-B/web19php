<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>BLOG CESI</title>
</head>
<body>
    <h1>Blog CESI</h1>
    <p>Welcome sur le bog de CESI</p>
    <?php
    // Ici le code interprété par PHP.exe
    $a = false;
    $b = 12;
    $c = 12.5;
    $chaine = "Ceci est une chaine de caractère";

    echo "<p>".$b."</p>"; //Afficher des variables

    var_dump($chaine); //Exclusivement pour du DEBUG
    //Déclaration Tableau
    $arrayHomme = array("Brice","Benoit","Emmanuel","Fabien","Clément");
    $arrayFemme = ["Marion", "Sylvie", "Laurianne", "Isabelle"];

    echo $arrayHomme[0]."<br/>".$arrayHomme[3];

    $arrayHomme[] = "Xavier";
    $arrayFemme[] = "Virginie";

    var_dump($arrayHomme);

    $arrayHomme[0] = "Bricette";

    var_dump($arrayHomme);

    //Différence entre Guillemet simple et double
    $var = "Ma phrase intéressante";
    echo "<p>".$var."</p>";
    echo '<p>'.$var.'</p>';

    //Exo : Ecrire dans une balise <p> "Bonjour Emmanuel"
    // en utilisant $arrayHomme
    echo "<p>Bonjour ".$arrayHomme[2]."</p>";

    // L'intéret d'un tableau c'est de le parcourir
    //Parcours avec "for"
    for($i=0;$i<=count($arrayHomme) - 1;$i++){
        echo "<p>Salut ".$arrayHomme[$i].", comment ça va ?<p>";
    }

    // Tableau associatif
    $arrayFruits = ["F" => "Fraise","A" => "Abricot", "P" => "Pomme"];
    var_dump($arrayFruits);
    $arrayFruits["F"] = "Framboise";
    $arrayFruits["K"] = "Kiwi";
    var_dump($arrayFruits);

    //Parcour foreach
    foreach ($arrayFruits as $key => $value){
        //EXO : faire un echo qui affiche :
        // "L'index F correspond à Framboise"
        // Dans une balise <p>, pour chaque élément
        echo "<p>L'index ".$key." correspond à ".$value."</p>";


    }

    // Tableau milti-dimension
    //Tableau qui contient des tableaux, qui contient des taeaux ...
    $achats = [
            "A" => ["Prenom" => "Amandine", "Prix" => 85,
                "Panier" =>
                ["Fruit" => ["Fraise", "Framboise", "Pomme"]
                ,"Legume" => ["Salade", "Endive"]
                ]
            ],
            "B" => ["Prenom" => "Brice", "Prix" => 680,
            "Panier" =>
                ["Fruit" => ["Litchi", "Kiwi", "Pomme"]
                    ,"Legume" => ["Avocat", "Pomme de Terre"]
                ]
            ],
            "E" => ["Prenom" => "Emmanuel", "Prix" => 156,
                "Panier" =>
                    ["Fruit" => ["Peche", "Pomme", "Banane"]
                        ,"Legume" => ["Tomate", "Carotte", "Endive"]
                    ]
                ]
    ];
    var_dump($achats);

    $prix = 0;
    echo "<ul>";
    foreach ($achats as $key => $acheteur) {
        $prix = $prix + $acheteur["Prix"];
        echo "<li>Voici le panier de : ".$acheteur["Prenom"];

            $fruits = $acheteur["Panier"]["Fruit"];
            $legumes = $acheteur["Panier"]["Legume"];

            echo "<ul>";

                echo "<li> FRUITS : ";
                foreach ($fruits as $fruit){
                    echo $fruit.", ";
                }
                echo "</li>";

                echo "<li> LEGUMES : ";
                foreach ($legumes as $legume){
                    echo $legume.", ";
                }
                echo "</li>";
            echo "</ul>";

        echo "</li>";




    }
    echo "</ul>";

    echo "<h2>LE CA est de : ".$prix."€</h2>";

    $bibliotheques = [
        "ABC1" => ["Nom" => "Notre dame de Paris", "Page" => 655, "Année"=> 1831 ]
        ,"DEF2" => ["Nom" => "Les misérables", "Page" => 543, "Année"=> 1962 ]
        ,"GHI3" => ["Nom" => "Les 3 mousquetaires", "Page" => 389, "Année"=> 1920 ]
       , "JKL4" => ["Nom" => "50 nuances de Grey", "Page" => 224, "Année"=> 2010 ]
    ];

    // 1. Combien de page en tout
    $page = 0;
    $moyenne = 0;
    foreach($bibliotheques as $key => $livre){
        $page = $page + $livre["Page"];
        $moyenne = $moyenne + $livre["Année"];
    }

    $moyenne = $moyenne / count($bibliotheques);

    echo "<p>Le nombre de page est de : ".$page."</p>";
    echo "<p>La moyenne d'année est de : ".$moyenne."</p>";


   //  2/ Combien le "ABC1" a-t-il de page en plus que "JKL4" ?
    $diffPage = $bibliotheques["ABC1"]["Page"] - $bibliotheques["JKL4"]["Page"];
    echo "<h2>Nb page différence : ".$diffPage."</h2>";



    ?>
    <!-- ICI le code PHP ne sera pas interprété -->
</body>
</html>