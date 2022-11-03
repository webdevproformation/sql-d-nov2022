/*
créer une table articles avec 7 colonnes 
clé primaire
titre texte avec un maximum de 250 lettres 
contenu texte qui peut contenir maximum 65 000
duree chiffre entier maximum de 200
auteur texte avec un maximum de 250 lettres par défaut "la Fontaine"
dt_creation date et heure et par défaut c'est maintenant (instant enregistrement )
publie vrai / faux 

*/
DROP TABLE articles ; 

CREATE TABLE articles (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    titre VARCHAR(250) , /* commentaire */
    contenu TEXT ,
    duree TINYINT ,
    auteur VARCHAR(250) DEFAULT "la Fontaine" ,
    dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP ,
    publie BOOLEAN
);

-- peupler la table articles avec des valeurs suivantes : 

"article 1" "lorem ipsum" 20 "la Fontaine" maintenant true 
"article 2" "lorem ipsum sed" 15 "la Fontaine" hier à 12h00 false  
"article 3" "lorem ipsum dolor" 5 "Victor Hugo" maintenant false  
"article 4" "lorem ipsum" 30 "Victor Hugo" "1er Avril 2022 à 10h00" true  

INSERT INTO articles
(titre , contenu , duree  , auteur , dt_creation , publie)
VALUES
("article 1" , "lorem ipsum" ,20 ,"la Fontaine", CURRENT_TIMESTAMP , TRUE ),
("article 2", "lorem ipsum sed", 15, "la Fontaine", "2022-11-02 12:00:00" , FALSE  ),
("article 3" ,"lorem ipsum dolor", 5, "Victor Hugo", CURRENT_TIMESTAMP , FALSE ),
("article 4" ,"lorem ipsum", 30 ,"Victor Hugo", "2022-04-01 10:00:00" , TRUE );


------
-- récupérer toutes les colonnes et toutes les lignes de la table articles  
-- dans l'ordre dans lequel il y a eu l'INSERT 

SELECT * FROM articles ;

-------- 

-- sélectionner certaines colonnes 

SELECT titre , contenu 
FROM articles ;

-- sélectionner certaines colonnes et effectuer des traitements modifications 
-- sur la colonne duree + unite

SELECT titre , contenu , CONCAT(duree , " min") /* mySQL Maridb*/
FROM articles ;


SELECT titre , contenu , duree || " min" /* sqlite concatenation */
FROM articles ;

-- sélectionner certaines colonnes et effectuer des traitements  
-- sur la colonne duree + unite
-- renommer la nom de la colonne qui contient le traitement 
-- ne modifie pas le nom de la colonne dans la table articles 

SELECT titre , contenu , duree || " min" AS `duree en minutes`
FROM articles ;

-- exemple de traitement 
-- connaitre le nombre de lettre dans le titre

SELECT titre , LENGTH ( titre ) 
FROM articles ;


SELECT titre , LENGTH ( titre ) AS `nb de lettres dans le titre` 
FROM articles ;

-- Cas pratique créer une requête SELECT qui affiche les champs suivants de la table articles :
-- nom auteur 
-- contenu de l'article
-- nombre de caractères du contenu de l'article 
-- si la valeur publié = 1 => publié sinon afficher non publié 

SELECT 
    auteur AS `nom auteur` , 
    contenu AS `contenu de l'article` , 
    LENGTH(contenu) AS `nb caractères article` , 
    (CASE publie WHEN 1 THEN "publié" ELSE "non publié" END) AS `status`
FROM articles ;

// if( publie == 1 ){
//   "publie"
// } else {
//    "non publié"
// }

switch publie 
    case 1 : "publie" ; break ;
    else :  "non publié"

SELECT * FROM articles 
"function calcul(){
    return 10 + 2
}"

eval() // js 
exec()  // PHP 


