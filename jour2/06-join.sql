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

post 
"Les Misérables" 1800-01-01   => associé à Victor Hugo
"Notre Dame" 1800-02-01   => associé à Victor Hugo
"la Mare au Diable" 1800-02-01   => associé à George Sand
"Les Fables de la Fontaine" 1800-02-01   => associé à La Fontaine


=> réaliser une requête SELECT 

nom auteur / nom du livre / dt publication du livre 
