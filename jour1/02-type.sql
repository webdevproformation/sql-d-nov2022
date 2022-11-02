-- base de données 
-- qui contient une ou plusieurs TABLE
-- contient une ou plusieurs colonnes 
-- chaque column nom ET un TYPE 
-- DANS chaque colonne ont va déterminer qu'est ce que l'on va stocker comme information ????

-- 3 grandes familles d'informations que l'on va stocker dans des colonnes :

-- chiffres 
---- chiffre entier 1 2 3 .... 
------ entre 0 et 255 TINYINT 
------ entre 255  et 65 000  SMALLINT
------ entre 65000  et 16 millions MEDIUMINT
------ entre 16 millions et 4 milliards INT 
------ entre 4 milliards et 18 milliards de milliards BIGINT 

---- chiffre à virgule 1.3 12.5 
------ FLOAT 12.0  120.01 
------ DOUBLE 
------ DECIMAL  

---- chiffres spéciaux BOOLEAN 0 1 

-- texte 
---- la taille du texte 
------ inférieur ou égal à 255 = 2^8 caractères => VARCHAR()
------ entre 255 caractères et 65 000 2^16 caractères TEXT
------ entre 65 000 caractères et 16 millions 2^24    MEDIUMTEXT
------ entre 4 millions caractères et plusieurs milliard  2^32 LONGTEXT
------ > 4 milliards caractère BLOB Binary Large OBject

-- date 
------ AAAA-MM-JJ   DATE 
------ HH:MM:SS     TIME
------ AAAA-MM-JJ HH:MM:SS  DATETIME


-- créer une table 
-- etudiant 
-- contenant 6 colonnes  :
-- prenom maximum de lettre de 100 
-- age chiffre entier maximum 120
-- status Vrai faux
-- sexe homme / femme 
-- description maximum de 65000 lettres 
-- dt_naissance AAAA-MM-JJ

CREATE TABLE etudiant(
    prenom VARCHAR(100),
    age TINYINT ,
    status BOOLEAN ,
    sexe BOOLEAN ,
    description TEXT ,
    dt_naissance DATE 
);

-- cas pratique créer une requête sql qui permet de créer la table exo2
-- dans cette table il y a 7 colonnes :
-- distance chiffre entre 0 et 100 000
-- prix chiffre à virgule 
-- etat vrai / faux 
-- explication texte maximum de 650000 caractères
-- dt_creation AAAA-MM-JJ HH:MM:SS
-- dt_update AAAA-MM-JJ HH:MM:SS
-- titre texte maximum de 255 caractères 

DROP TABLE exo2 ; 
CREATE TABLE exo2(
    distance MEDIUMINT ,
    prix FLOAT ,
    etat BOOLEAN ,
    explication MEDIUMTEXT ,
    dt_creation DATETIME ,
    dt_update DATETIME , 
    titre VARCHAR(255)
) ;
