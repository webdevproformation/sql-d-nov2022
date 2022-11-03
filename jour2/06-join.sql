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