-- récupérer des informations qui sont stockées sur plusieurs TABLE

produit nom / prix  / url


SELECT nom , prix , url 
FROM produit ;

/* no such column: url */


SELECT nom , prix , url 
FROM produit , image ;

/* ça fonctionne MAIS résultat invalide  */

SELECT nom , prix , url 
FROM produit 
JOIN image  /* la table de jointure où sont stockées les données */
ON produit.id = image.id_produit ;


SELECT nom , prix , url 
FROM  image
JOIN  produit /* la table de jointure où sont stockées les données */
ON produit.id = image.id_produit ; /* Quelle est la colonne de liaison entre les deux tables */


-- ajouter les valeurs suivantes dans les tables suivantes :

author 
 "La Fontaine" "Philosophe"
 "Victor Hugo"  "Ecrivain"
 "George Sand"  "Ecrivain"

INSERT INTO author 
( nom , role )
VALUES 
("La Fontaine" , "Philosophe"),
("Victor Hugo",  "Ecrivain"),
("Victor Hugo" , "Ecrivain");

DELETE FROM author WHERE id = 3 ;

INSERT INTO author 
( nom , role )
VALUES 
("George Sand" , "Ecrivain");


post 
"Les Misérables" 1800-01-01   => associé à Victor Hugo
"Notre Dame" 1800-02-01   => associé à Victor Hugo
"la Mare au Diable" 1800-02-01   => associé à George Sand
"Les Fables de la Fontaine" 1800-02-01   => associé à La Fontaine

PRAGMA foreign_keys = ON;

INSERT INTO post 
( titre, dt_creation , id_auteur )
VALUES 
("Les Misérables" , "1800-01-01" , 2),
("Notre Dame", "1800-02-01" , 2),
("la Mare au Diable" , "1800-02-01" , 4 ),
("Les Fables de la Fontaine" , "1800-02-01" , 1);

=> réaliser une requête SELECT 

nom auteur / nom du livre / dt publication du livre 

SELECT nom , titre , dt_creation 
FROM post 
JOIN author 
ON post.id_auteur = author.id ;

créer une table catégorie 
clé primaire
nom 

CREATE TABLE categorie(
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 nom VARCHAR(100)
);

INSERT INTO categorie
( nom )
VALUES 
("Orientale" ) , 
( "Méditerranéenne");

/* Orientale
Méditerranéenne */



créer une table recette 
clé primaire
nom 
prix
id_categorie
id_author 

CREATE TABLE recette (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(100),
    prix FLOAT ,
    id_categorie INTEGER ,
    id_author INTEGER ,
    FOREIGN KEY (id_categorie) REFERENCES categorie(id),
    FOREIGN KEY (id_author) REFERENCES author(id)
);

PRAGMA foreign_keys = ON;

INSERT INTO recette 
(nom , prix , id_categorie , id_author)
VALUES
("frite" , 5 , 2 , 1),
("blanquette de veau" , 15 , 1 , 4);


"frite"                 5   associé à catégorie Méditerranéenne et l'auteur La Fontaine
"blanquette de veau"   15   associé à catégorie Orientale et l'auteur George Sand 

=> réaliser une requête dans laquelle vous allez afficher
nom recette / nom catégorie / prix recette / nom de l'auteur 

SELECT 
    recette.nom AS `nom de la recette` , 
    categorie.nom AS `catégorie associée` ,
    recette.prix , 
    author.nom  AS `nom créateur`
FROM recette
JOIN categorie
ON recette.id_categorie = categorie.id 
JOIN author 
ON recette.id_author = author.id ; 




