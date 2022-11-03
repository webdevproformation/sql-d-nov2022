SELECT * FROM articles ;

-- afficher les articles qui sont rédigés par La Fontaine

SELECT * 
FROM articles 
WHERE auteur = "la Fontaine";

-- afficher la liste de tous les articles dont la durée est < 15 

SELECT * 
FROM articles 
WHERE duree <= 15 ;
-- afficher moi toutes les lignes qui respectent la condition décrite dans la clause WHERE
-- la condition duree <= 15

// > < = >= <= 
// != différent
// <> différent 
// === ou !== n'existe pas en SQL 

// &&  || !  => javascript en PHP 
// AND OR NOT  => en SQL 

-- récupérer tous les articles publiée ET rédigés par Victor Hugo 

SELECT * 
FROM articles 
WHERE publie = TRUE AND auteur = "Victor Hugo" ;

cas pratique 
récupérer l'ensemble des articles qui ont une durée > 10 et qui sont publiés 

SELECT *
FROM articles 
WHERE duree > 10 AND publie = TRUE ;

--- WHERE
--- RELATION 
