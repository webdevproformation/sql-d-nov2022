-- 04-table-divers.sql

-- je dois créer un table salle de reunion // espace
-- clé primaire id
-- nom salle texte max de 20 caractères  // espace
-- text texte max de 30 caractères   // colonne nom est déjà un mot clé du langage sql 

CREATE TABLE `salle de reunion` (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    `nom salle` VARCHAR(20) ,
    `text`      VARCHAR(30) 
);

-- backtick sont facultatifs si le nom de la table / colonne ne contient pas d'espace ou n'est pas un mot clé du langage SQL
-- si la colonne / table contient un espace ou est un mot clé de SQL => OBLIGATOIRE 

-- ajouter au niveau de la définition de chaque colonne est ce que le SGBD pour accepter d'ajouter une nouvelle ligne avec colonne vide 

CREATE TABLE `exemple 1` (
    id INTEGER NOT NULL PRIMARY KEY  AUTOINCREMENT ,
    `nom salle` VARCHAR(20) NOT NULL,
    `text`      VARCHAR(30) NOT NULL 
);
-- NOT NULL permet de préciser que le SGBD ne doit pas accepter la valeur NULL pour les colonnes id / nom salle / text  
DROP TABLE `salle de reunion` ; 

-- il est possible d'ajouter des valeurs par défaut pour les descriptions de colonnes 

CREATE TABLE prof (
     id INTEGER NOT NULL PRIMARY KEY  AUTOINCREMENT ,
     nom VARCHAR(20) NOT NULL DEFAULT "nom professeur" ,
     age TINYINT DEFAULT 20 ,
     dt_arrivee DATE DEFAULT CURRENT_DATE
) ;

-- DEFAULT permettent de mettre moins de code par la suite 

-- cas pratique
-- créer la table exo3 
-- contient plusieurs colonnes 
-- id clé primaire
-- nom text maximum de 65000 caractères
-- prix chiffre à virgule et par défaut sa valeur est de 0 
-- couleur text de 7 caractères par défaut sa valeur est #ffffff
-- dt_creation AAAA MM JJ et la valeur par défaut est le jour où l'insertion est effectuée

CREATE TABLE exo3 (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom TEXT ,
    prix FLOAT DEFAULT 0 ,
    couleur CHAR(7) DEFAULT "#ffffff" ,
    dt_creation DATE DEFAULT CURRENT_DATE 
);


-- créer des tables => structures des tables 
-- effectuer les 4 opérations de base sur une table 
-- CRUD 
-- Create => ajouter de nouvelles lignes dans la table
-- Read   => recupérer des informations dans la table (lire)
-- Update => modifier une information sur une ligne existante
-- Delete => supprimer une ou plusieurs lignes dans une table 

-- bon café @ toute suite rdv 15h35 !!!! 

