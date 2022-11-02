-- nous avons créé des tables pour l'instant vide 
-- nous avons créer le SCHEMA de la table MAIS AUCUNE DONNEE 

CREATE TABLE fleur(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(200),
    prix FLOAT ,
    dt_creation DATE DEFAULT CURRENT_DATE
);

/* 2022-11-02 CURRENT_DATE
// 15:48:03   CURRENT_TIME
// 2022-11-02 15:48:50  CURRENT_TIMESTAMP */

-- Maintenant je souhaite ajouter des lignes dans la table fleur
-- create 

INSERT INTO fleur 
()  -- préciser quelles colonnes on veut remplir 
VALUES 
() ; -- précier les valeurs que l'on veut remplir 

-- préciser toutes les colonnes de la table fleur SANS la colonne id 
-- insertion d'une ligne 
INSERT INTO fleur 
( `nom`    , dt_creation , prix  )
VALUES
( "rose" , "2022-11-01" , 12.8  ) ;

-- permet de voir le table (colonnes) et leur contenu !!
SELECT * FROM fleur ;

-- insérer une autr ligne
INSERT INTO fleur 
( `nom`    , dt_creation , prix  )
VALUES
( "tulipe" , "2022-11-02" , 21  ) ;


SELECT * FROM fleur ;

-- insérer 3 lignes dans la requête INSERT 
INSERT INTO fleur 
( `nom`    , dt_creation , prix  )
VALUES
( "jasmin" , "2022-01-01" , 5  ) ,
( "tournesol" , "2022-02-01" , 15  ),
( "violette" , "2022-03-01" , 10  ) ;


SELECT * FROM fleur ;

-- INSERT et DEFAULT 

INSERT INTO fleur
(nom , prix )
VALUES 
("Géranium" , 20  ),
("Lys" , 30  ); 

SELECT * FROM fleur ;

-- cas pratique créer la table exo4
-- clé primaire
-- nom text max de 60 caractère valeur par défaut "titre document"
-- nb_like  chiffre entier maximum de 4 milliards valeur par défaut 0
-- auteur text nom maximum de 30 lettres par défaut "Victor Hugo"

-- remplir la table avec des datas (=> peupler la table) avec 4 lignes suivantes :

CREATE TABLE exo4  (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(60) DEFAULT "titre document" ,
    nb_like INT DEFAULT 0 ,
    auteur VARCHAR(30) DEFAULT "Victor Hugo"
);

INSERT INTO exo4
(nom , nb_like , auteur)
VALUES 
("Les Misérables" ,  50000 , "Victor Hugo"),
("La Mare au diable"  , 100000 , "George Sand"),
("Notre Dame" ,  4000, "Victor Hugo"),
("encours écriture" ,  0 , "inconnu");

SELECT * FROM exo4 ;

-- utiliser les default des colonnes du tableau
INSERT INTO exo4
(nom , nb_like )
VALUES 
("Les Misérables" ,  50000 ),
("Notre Dame" ,  4000);

INSERT INTO exo4
(nom  , auteur)
VALUES 
("encours écriture" , "inconnu");

INSERT INTO exo4
(nom , nb_like , auteur)
VALUES 
("La Mare au diable"  , 100000 , "George Sand");


"Les Misérables"   50000  "Victor Hugo"
"La Mare au diable"   100000  "George Sand"
"Notre Dame"   4000  "Victor Hugo"
"encours écriture"   0  "inconnu"


// https://github.com/webdevproformation/
// https://github.com/webdevproformation/sql-d-nov2022
