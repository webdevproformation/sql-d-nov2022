-- rechercher tous les articles sont le contenu contient le texte sed 

SELECT * FROM articles ;

SELECT * 
FROM articles
WHERE contenu LIKE "%sed%"; 


UPDATE articles SET contenu = "lorem sed ipsum" WHERE id = 3;
UPDATE articles SET contenu = "lorem ipsum dolor sed" WHERE id = 4;


SELECT * 
FROM articles
WHERE contenu LIKE "%sed%"; -- rechercher dans le texte stocké dans chaque cellule de la colonne contenu ;

-- cas pratique
-- modifier le contenu du titre de l'article 1 => Formation Javascript
-- modifier le contenu du titre de l'article 2 => Formation nodeJS
-- modifier le contenu du titre de l'article 4 => Découverte de HTML / CSS
-- afficher tous les articles dont le titre contient la lettre F 

UPDATE articles SET titre = "Formation Javascript" WHERE id = 1;
UPDATE articles SET titre = "Formation nodeJS" WHERE id = 2;
UPDATE articles SET titre = "Découverte de HTML / CSS" WHERE id = 4;

SELECT * 
FROM articles 
WHERE titre LIKE "%F%" ;

-- article ayant l'id 1 2 4 

SELECT * 
FROM articles 
WHERE id = 1 OR id = 2 OR id = 4 ;

-- équivalent avec IN

SELECT *
FROM articles
WHERE id IN ( 1, 2, 4 ) ;

-- récupérer tous les articles rédigés entre 01/01/2022 et le 01/09/2022 

SELECT *
FROM articles
WHERE dt_creation >= "2022-01-01" AND dt_creation <= "2022-09-01" ;

-- équivalent avec BETWEEN

SELECT *
FROM articles
WHERE dt_creation BETWEEN "2022-01-01" AND "2022-09-01" ;

-- cas pratique 
-- récupérer tous les articles dont le titre contient la lettre "o" ET publié entre le 1er novembre 2022 et 2 novembre 2022 ET dont la durée est > à 6 

SELECT * FROM articles

SELECT *
FROM articles
WHERE titre LIKE "%o%" AND 
      (dt_creation BETWEEN "2022-11-01 00:00:00" AND "2022-11-02 23:59:59") AND 
      duree > 6  ;

plusieurs boucle for ET if 

