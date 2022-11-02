/*
    commentaire en SQL
    multiligne 
*/

-- commentaire monoligne en SQL 

-- $connexion  =  new PDO();
-- $connexion->exec(" .... ")

-- SQL permet de réaliser des traitements sur des données 

-- données vont être organisés en block 

-- base de données (block qui contient l'ensemble de vos données)
-- élément le plus important 

-- dans une base de données => organiser les données en TABLE 

-- dans une TABLE => contient des COLUMNS 

-- données (valeurs) 

-- BASE DE DONNEES => TABLES => COLUMN => VALEURS 

-- avec Sqlite => si j'ai besoin de créer une base de données
-- j'ai juste besoin de créer un fichier .....db 

-- créer une table 
-- mots en majuscule sont des mots clé du langage SQL 
-- créer une table qui s'appelle premier 
-- contient 2 colonnes 
-- prenom => qui contient du texte avec un nombre maximum de lettres de 200
-- nom    => qui contient du texte avec un nombre maximum de lettres de 200
CREATE TABLE premier (
    prenom VARCHAR(200) ,
    nom    VARCHAR(200)
);

-- requête (demande) SQL ==> donner cette requete à un SGBD (SQLITE)

-- je viens de réussir de créer une table 

-- explorer le contenu de la base de données demo.db 

-- cas pratique
-- créer table qui s'appelle exo1
-- cette table contient 3 colonnes 
-- adresse texte avec un maximum de 100 caractères
-- ville texte avec un maximum de 60 caractères
-- pays  texte avec un maximum de 2 caractères


CREATE TABLE exo1 (
    adresse VARCHAR(100) ,
    ville   VARCHAR(60) ,
    pays    VARCHAR(2) 
) ; 

-- créer la requête SQL permettant de créer la table 
-- afficher cette table dans l'explorateur SQLITE 

-- SQLITE 
-- si je veux modifier la structure (SCHEMA) de ma table 
-- les colonnes et leurs types

DROP TABLE exo1 ; -- supprimer la table exo1
CREATE TABLE exo1 (
    adresse VARCHAR(200) ,
    ville   VARCHAR(60) ,
    pays    VARCHAR(2) 
) ; -- recréer la table avec les valeurs qui vont bien 

-- MariaDB ou MySQL 
ALTER TABLE exo1 MODIFY adresse VARCHAR(200) ; 



